<?php

namespace App\Controllers;

use App\Models\Konfigurasi_model;
use App\Models\User_model;

class Login extends BaseController
{
    public function __construct()
    {
        helper('form');
    }

    // Homepage
    public function index()
    {
        $session       = \Config\Services::session();
        $m_konfigurasi = new Konfigurasi_model();
        $m_user        = new User_model();
        $konfigurasi   = $m_konfigurasi->listing();

        // Start validasi
        if ($this->request->getMethod() === 'post' && $this->validate(
            [
                'username' => 'required|min_length[3]',
                'password' => 'required|min_length[3]',
            ]
        )) {
            $username = $this->request->getPost('username');
            $password = $this->request->getPost('password');
            $user     = $m_user->login($username, $password);
            // dd($user);
            // Proses login
            if ($user) {
                // Jika username password benar
                $this->session->set('username', $username);
                $this->session->set('id_user', $user['id_user']);
                $this->session->set('akses_level', $user['akses_level']);
                $this->session->set('nama', $user['nama']);
                $this->session->setFlashdata('sukses', 'Hai ' . $user['nama'] . ', Anda berhasil login');

                return redirect()->to(base_url('/Admin/Dashboard'));
            }
            // jika username password salah
            $this->session->setFlashdata('warning', 'Username atau password salah');

            return redirect()->to(base_url('login'));
        }
        // End validasi
        $data = [
            'title'  => 'Login Administrator',
            'description' => $konfigurasi['namaweb'] . ', ' . $konfigurasi['tentang'],
            'keywords'    => $konfigurasi['namaweb'] . ', ' . $konfigurasi['keywords'],
            'session'     => $session,
        ];
        echo view('login/index', $data);

        // End proses
    }

    // lupa
    public function forget()
    {
        $session       = \Config\Services::session();
        $m_konfigurasi = new Konfigurasi_model();
        $m_user        = new User_model();
        $konfigurasi   = $m_konfigurasi->listing();
        $username = $this->request->getVar('username');
        $password = sha1($this->request->getVar('password'));

        $sql = $m_user->where('username', $username)->first();
        $row = db_connect()->query("UPDATE users SET users.password = '$password' ");
        // echo $row;
        // exit;
        // dd($row);
        if ($row) {
            $this->session->setFlashdata('sukses', 'Hai ' . $sql['nama'] . ', Anda berhasil Mengubah Password');
            return redirect()->to(base_url('login'));
        } else {
            $this->session->setFlashdata('warning', 'Gagal Mengubah Password');
            return redirect()->to('login');
        }
    }
    public function lupa()
    {
        $session       = \Config\Services::session();
        $m_konfigurasi = new Konfigurasi_model();
        $m_user        = new User_model();
        $konfigurasi   = $m_konfigurasi->listing();

        $data = [
            'title'  => 'Lupa Password',
            'description' => $konfigurasi['namaweb'] . ', ' . $konfigurasi['tentang'],
            'keywords'    => $konfigurasi['namaweb'] . ', ' . $konfigurasi['keywords'],
            'session'     => $session,
        ];
        echo view('login/lupa', $data);
    }

    // Logout
    public function logout()
    {
        $this->session->destroy();

        return redirect()->to(base_url('login?logout=sukses'));
    }
}
