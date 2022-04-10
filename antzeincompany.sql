/*
SQLyog Community v13.1.9 (64 bit)
MySQL - 8.0.28 : Database - javawebmedia_webci4
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`javawebmedia_webci4` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `javawebmedia_webci4`;

/*Table structure for table `berita` */

DROP TABLE IF EXISTS `berita`;

CREATE TABLE `berita` (
  `id_berita` int NOT NULL AUTO_INCREMENT,
  `id_user` int NOT NULL,
  `id_kategori` int NOT NULL,
  `slug_berita` varchar(255) NOT NULL,
  `judul_berita` varchar(255) NOT NULL,
  `ringkasan` varchar(500) NOT NULL,
  `isi` text NOT NULL,
  `status_berita` varchar(20) NOT NULL,
  `jenis_berita` varchar(20) NOT NULL,
  `keywords` text NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `hits` int NOT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal_publish` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_berita`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

/*Data for the table `berita` */

insert  into `berita`(`id_berita`,`id_user`,`id_kategori`,`slug_berita`,`judul_berita`,`ringkasan`,`isi`,`status_berita`,`jenis_berita`,`keywords`,`gambar`,`icon`,`hits`,`tanggal_post`,`tanggal_publish`,`tanggal`) values 
(25,4,6,'antzein-books','Antzein Books','“Always questioning, always evolving”','<p>A meeting point, where digital design professionals from across the globe find inspiration, impart knowledge and experience, connect, and share constructive, respectful critiques.&nbsp;</p>','Publish','Profil','','taxi-sleeping-bat-one-leg-higher.png','fa fa-building',0,'2022-04-10 17:47:19','2022-04-10 17:43:00','2022-04-10 17:52:24'),
(26,4,6,'antzein-profile','Antzein Profile',' for design, creativity and innovation ','To have a tangible collection of the best sites, every year we publish The 365 Best Websites Around the World. A complete collection of every single Site of the Day, Site of the Month and Honorable Mention from the previous year, immortalized in a timeless hardback book.','Publish','Profil','','taxi-sleeping-bat-one-leg-higher.png','fa fa-book',0,'2022-04-10 17:47:19','2022-04-10 17:43:00','2022-04-10 17:51:07'),
(27,4,6,'antzein-product','Antzein Product','Think exclusive. Think elegant. Tasteful. ','Think exclusive. Think elegant. Tasteful. Timeless. Or colourful,\r\ncharacterful and contemporary. We create exquisite interiors as\r\nunique and individual as our clients. From bold, exciting\r\nconcept to precise, pristine finish. With care, craft and a\r\nreassuring calm.','Publish','Profil','','taxi-sleeping-bat-one-leg-higher.png','fa fa-cube ',0,'2022-04-10 17:47:19','2022-04-10 17:43:00','2022-04-10 17:57:11');

/*Table structure for table `client` */

DROP TABLE IF EXISTS `client`;

CREATE TABLE `client` (
  `id_client` int NOT NULL AUTO_INCREMENT,
  `id_user` int DEFAULT NULL,
  `jenis_client` enum('Perorangan','Perusahaan','Organisasi') NOT NULL,
  `nama` varchar(255) NOT NULL,
  `pimpinan` varchar(255) DEFAULT NULL,
  `alamat` varchar(300) DEFAULT NULL,
  `telepon` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `isi_testimoni` text,
  `gambar` varchar(200) DEFAULT NULL,
  `status_client` varchar(20) NOT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_client`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `client` */

/*Table structure for table `download` */

DROP TABLE IF EXISTS `download`;

CREATE TABLE `download` (
  `id_download` int NOT NULL AUTO_INCREMENT,
  `id_kategori_download` int NOT NULL,
  `id_user` int NOT NULL,
  `judul_download` varchar(200) DEFAULT NULL,
  `jenis_download` varchar(20) NOT NULL,
  `isi` text,
  `gambar` varchar(255) NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `hits` int NOT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_download`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `download` */

/*Table structure for table `galeri` */

DROP TABLE IF EXISTS `galeri`;

CREATE TABLE `galeri` (
  `id_galeri` int NOT NULL AUTO_INCREMENT,
  `id_kategori_galeri` int NOT NULL,
  `id_user` int NOT NULL,
  `judul_galeri` varchar(200) DEFAULT NULL,
  `jenis_galeri` varchar(20) NOT NULL,
  `isi` text,
  `gambar` varchar(255) NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `hits` int DEFAULT NULL,
  `status_text` enum('Ya','Tidak','','') NOT NULL,
  `tanggal_post` datetime DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_galeri`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `galeri` */

insert  into `galeri`(`id_galeri`,`id_kategori_galeri`,`id_user`,`judul_galeri`,`jenis_galeri`,`isi`,`gambar`,`website`,`hits`,`status_text`,`tanggal_post`,`tanggal`) values 
(4,5,4,'Antzein Company Profile','Homepage','<div class=\"align-items-center d-none d-md-flex\">In general, business owners love a company profile. They want to delve into every little detail of how their firm grew into the commercial powerhouse it is today &ndash; faithfully recounting every step from the childhood lemonade stand to the board meeting 15 minutes ago.</div>','photo-1514565131-fce0801e5785.jpg','github.com/zaynzzz',NULL,'Ya',NULL,'2022-04-10 17:08:45'),
(14,5,4,'Antzein Company Profile','Homepage','<p>And this is just the beginning. With Tesla building its most affordable car yet, Tesla continues to make products accessible and affordable to more and more people, ultimately accelerating the advent of clean transport and clean energy production.</p>','524171.jpg','github.com/zaynzzz',NULL,'Ya','2022-04-10 17:27:37','2022-04-10 17:30:03'),
(15,5,4,'Antzein Company Profile','Homepage','<p>A panel of specialists formed by the most important designers, creative directors, bloggers and agencies in the industry, dedicate themselves to the challenging task of assessing the talent and effort invested in the web projects that are submitted to Awwwards on a daily basis.</p>','city-night-buildings-sky-4k_1538068511.jpg','github.com/zaynzzz',NULL,'Ya','2022-04-10 17:28:32','2022-04-10 17:29:54');

/*Table structure for table `kategori` */

DROP TABLE IF EXISTS `kategori`;

CREATE TABLE `kategori` (
  `id_kategori` int NOT NULL AUTO_INCREMENT,
  `id_user` int NOT NULL,
  `slug_kategori` varchar(255) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `urutan` int DEFAULT NULL,
  `hits` int NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `kategori` */

insert  into `kategori`(`id_kategori`,`id_user`,`slug_kategori`,`nama_kategori`,`urutan`,`hits`,`tanggal`) values 
(1,1,'web-design','Web Design',1,0,'2021-04-21 05:20:49'),
(2,1,'berita','Berita',2,0,'2021-04-21 05:20:57'),
(3,1,'antzein-media','Antzein Media',3,0,'2022-04-10 17:45:52'),
(4,1,'updates','Updates',4,0,'2021-04-21 05:26:59'),
(5,1,'web-programming','Web Programming',5,8,'2021-05-03 08:17:08'),
(6,1,'kursus-web','Kursus Web',2,3,'2021-04-25 06:10:52');

/*Table structure for table `kategori_download` */

DROP TABLE IF EXISTS `kategori_download`;

CREATE TABLE `kategori_download` (
  `id_kategori_download` int NOT NULL AUTO_INCREMENT,
  `id_user` int NOT NULL,
  `slug_kategori_download` varchar(255) NOT NULL,
  `nama_kategori_download` varchar(255) NOT NULL,
  `urutan` int DEFAULT NULL,
  `hits` int NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_kategori_download`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `kategori_download` */

insert  into `kategori_download`(`id_kategori_download`,`id_user`,`slug_kategori_download`,`nama_kategori_download`,`urutan`,`hits`,`tanggal`) values 
(1,0,'formulir-pendaftaran','Formulir Pendaftaran',1,0,'2021-04-21 07:37:58'),
(2,1,'promosi-java-web-media-2021','Promosi Java Web Media 2021',2,0,'2021-04-21 08:08:19');

/*Table structure for table `kategori_galeri` */

DROP TABLE IF EXISTS `kategori_galeri`;

CREATE TABLE `kategori_galeri` (
  `id_kategori_galeri` int NOT NULL AUTO_INCREMENT,
  `id_user` int NOT NULL,
  `slug_kategori_galeri` varchar(255) NOT NULL,
  `nama_kategori_galeri` varchar(255) NOT NULL,
  `urutan` int DEFAULT NULL,
  `hits` int NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_kategori_galeri`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `kategori_galeri` */

insert  into `kategori_galeri`(`id_kategori_galeri`,`id_user`,`slug_kategori_galeri`,`nama_kategori_galeri`,`urutan`,`hits`,`tanggal`) values 
(4,0,'kegiatan','Kegiatan',4,0,'2021-04-21 07:38:46'),
(5,0,'banner-website','Banner Website',4,0,'2021-04-21 07:38:46'),
(6,1,'family-gathering','Family gathering',2,0,'2021-04-21 07:40:52');

/*Table structure for table `kategori_staff` */

DROP TABLE IF EXISTS `kategori_staff`;

CREATE TABLE `kategori_staff` (
  `id_kategori_staff` int NOT NULL AUTO_INCREMENT,
  `id_user` int NOT NULL,
  `slug_kategori_staff` varchar(255) NOT NULL,
  `nama_kategori_staff` varchar(255) NOT NULL,
  `urutan` int DEFAULT NULL,
  `hits` int NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_kategori_staff`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `kategori_staff` */

insert  into `kategori_staff`(`id_kategori_staff`,`id_user`,`slug_kategori_staff`,`nama_kategori_staff`,`urutan`,`hits`,`tanggal`) values 
(1,0,'pejabat-eselon-1','Pejabat Eselon 1',1,0,'2021-04-21 07:44:24'),
(2,0,'pejabat-struktural','Pejabat Struktural',2,0,'2021-04-21 07:44:24'),
(3,1,'team-inti','Team Inti',2,0,'2021-04-21 08:54:27');

/*Table structure for table `konfigurasi` */

DROP TABLE IF EXISTS `konfigurasi`;

CREATE TABLE `konfigurasi` (
  `id_konfigurasi` int NOT NULL AUTO_INCREMENT,
  `id_user` int NOT NULL,
  `namaweb` varchar(200) NOT NULL,
  `singkatan` varchar(255) DEFAULT NULL,
  `tagline` varchar(200) DEFAULT NULL,
  `tentang` text,
  `deskripsi` text,
  `website` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_cadangan` varchar(255) DEFAULT NULL,
  `alamat` text,
  `telepon` varchar(50) DEFAULT NULL,
  `hp` varchar(50) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `keywords` varchar(400) DEFAULT NULL,
  `metatext` text,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `nama_facebook` varchar(255) DEFAULT NULL,
  `nama_twitter` varchar(255) DEFAULT NULL,
  `nama_instagram` varchar(255) DEFAULT NULL,
  `nama_youtube` varchar(255) DEFAULT NULL,
  `google_map` text,
  `protocol` varchar(255) NOT NULL,
  `smtp_host` varchar(255) NOT NULL,
  `smtp_port` int NOT NULL,
  `smtp_timeout` int NOT NULL,
  `smtp_user` varchar(255) NOT NULL,
  `smtp_pass` varchar(255) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_konfigurasi`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `konfigurasi` */

insert  into `konfigurasi`(`id_konfigurasi`,`id_user`,`namaweb`,`singkatan`,`tagline`,`tentang`,`deskripsi`,`website`,`email`,`email_cadangan`,`alamat`,`telepon`,`hp`,`logo`,`icon`,`keywords`,`metatext`,`facebook`,`twitter`,`instagram`,`youtube`,`nama_facebook`,`nama_twitter`,`nama_instagram`,`nama_youtube`,`google_map`,`protocol`,`smtp_host`,`smtp_port`,`smtp_timeout`,`smtp_user`,`smtp_pass`,`tanggal`) values 
(1,4,'Antzein Company','Antz ID','If you want your website to stand out from the competition, you need a stand-out design company.','Elite is a high end residential interior design company founded\r\nin 2015 by Cassie Heathcock & Gemma Merrick, two interior\r\ndesigners with over 25 years of combined experience in the\r\ninterior design industry.\r\n\r\nGemma and Cassie have collaborated their strong background\r\nand extensive experience in designing for high end luxury\r\nresidential clients. They have been extremely fortunate to work\r\non some outstanding, award winning designs and projects,\r\nranging in style and scope both nationally and internationally.\r\n\r\nThe Cheshire based luxury design studio provides a complete\r\ndesign service by effortlessly coordinating every element of the\r\nproject to an exemplary standard. Our multi-disciplined team of\r\nInterior Architects and Designers boast a wealth of knowledge\r\nand skills from many years of industry experience.','Clarity is king\r\n',' Jl. Taman Suropati No.5, RT.5/RW.5, Menteng, Kec. Menteng, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10310','zairulzayn@gmail.com','zairulzayn@gmail.com','<p><b>Antzein Company</b></p><p>&nbsp;Jl. Taman Suropati No.5, RT.5/RW.5, Menteng, Kec. Menteng, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10310<br>Telepon: +6285892397632<br>Whatsapp: +6285892397632<br>Email: zairulzayn@gmail.com</p>','+6285892397632','+6285892397632','dizzy-ginger-cat.png','1.gif','','','https://www.facebook.com/zairulantzein','-','https://instagram.com/antzein','https://www.youtube.com/channel/UCgNsNDhZv-nNptTYUx5N5hQ','zairul ant zein','-','antzein','Zayniverse','','smtp','ssl://mail.websitemu.com',465,7,'contact@websitemu.com','muhammad','2022-04-10 18:41:42');

/*Table structure for table `staff` */

DROP TABLE IF EXISTS `staff`;

CREATE TABLE `staff` (
  `id_staff` int NOT NULL AUTO_INCREMENT,
  `id_user` int DEFAULT NULL,
  `id_kategori_staff` int DEFAULT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(300) DEFAULT NULL,
  `telepon` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `jabatan` varchar(200) DEFAULT NULL,
  `keahlian` text,
  `gambar` varchar(200) DEFAULT NULL,
  `status_staff` varchar(20) NOT NULL,
  `urutan` int DEFAULT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_staff`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `staff` */

insert  into `staff`(`id_staff`,`id_user`,`id_kategori_staff`,`nama`,`alamat`,`telepon`,`website`,`email`,`jabatan`,`keahlian`,`gambar`,`status_staff`,`urutan`,`tempat_lahir`,`tanggal_lahir`,`tanggal`) values 
(10,4,3,'Zairul Antasya Zein','Depok, Indonesia','+6285892397632','github.com/zaynzzz','zairulzayn@gmail.com','CEO','Codeigniter 3, Codeigniter 4, Laravel, AJAX, JQUERY, JavaScript, TailWind CSS, Bootstrap, Datatables ','default.jpg','Publish',2,'Depok','2002-03-19','2022-04-10 16:54:35');

/*Table structure for table `user_logs` */

DROP TABLE IF EXISTS `user_logs`;

CREATE TABLE `user_logs` (
  `id_user_log` int NOT NULL AUTO_INCREMENT,
  `id_user` int NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `tanggal_updates` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_user_log`)
) ENGINE=InnoDB AUTO_INCREMENT=291 DEFAULT CHARSET=latin1;

/*Data for the table `user_logs` */

insert  into `user_logs`(`id_user_log`,`id_user`,`ip_address`,`username`,`url`,`tanggal_updates`) values 
(1,1,'::1','javawebmedia','http://localhost/webci4/admin/dasbor','2021-05-03 08:19:34'),
(2,1,'::1','javawebmedia','http://localhost/antzeincompany/admin/dasbor','2022-04-03 22:08:39'),
(3,1,'::1','javawebmedia','http://localhost/antzeincompany/admin/dasbor','2022-04-05 19:37:33'),
(4,1,'::1','javawebmedia','http://localhost/antzeincompany/admin/user','2022-04-05 19:38:45'),
(5,1,'::1','javawebmedia','http://localhost/antzeincompany/admin/user/delete/3','2022-04-05 19:38:54'),
(6,1,'::1','javawebmedia','http://localhost/antzeincompany/admin/user','2022-04-05 19:38:55'),
(7,1,'::1','javawebmedia','http://localhost/antzeincompany/admin/user/delete/2','2022-04-05 19:38:59'),
(8,1,'::1','javawebmedia','http://localhost/antzeincompany/admin/user','2022-04-05 19:39:00'),
(9,1,'::1','javawebmedia','http://localhost/antzeincompany/admin/user/delete/1','2022-04-05 19:39:04'),
(10,1,'::1','javawebmedia','http://localhost/antzeincompany/admin/user','2022-04-05 19:39:05'),
(11,1,'::1','javawebmedia','http://localhost/antzeincompany/admin/user','2022-04-05 19:39:11'),
(12,1,'::1','javawebmedia','http://localhost/antzeincompany/admin/user','2022-04-05 19:41:36'),
(13,1,'::1','javawebmedia','http://localhost/antzeincompany/admin/user','2022-04-05 19:42:30'),
(14,1,'::1','javawebmedia','http://localhost/antzeincompany/admin/user','2022-04-05 19:42:38'),
(15,1,'::1','javawebmedia','http://localhost/antzeincompany/admin/user','2022-04-05 19:43:02'),
(16,1,'::1','javawebmedia','http://localhost/antzeincompany/admin/user','2022-04-05 19:43:02'),
(17,1,'::1','javawebmedia','http://localhost/antzeincompany/admin/user','2022-04-05 19:43:22'),
(18,1,'::1','javawebmedia','http://localhost/antzeincompany/admin/user/edit/4','2022-04-05 19:43:43'),
(19,1,'::1','javawebmedia','http://localhost/antzeincompany/admin/user','2022-04-05 19:43:48'),
(20,1,'::1','javawebmedia','http://localhost/antzeincompany/admin/akun','2022-04-05 19:43:54'),
(21,1,'::1','javawebmedia','http://localhost/antzeincompany/admin/akun','2022-04-05 19:43:54'),
(22,1,'::1','javawebmedia','http://localhost/antzeincompany/admin/user','2022-04-05 19:44:07'),
(23,1,'::1','javawebmedia','http://localhost/antzeincompany/admin/user','2022-04-05 19:44:07'),
(24,1,'::1','javawebmedia','http://localhost/antzeincompany/admin/dasbor','2022-04-05 19:44:17'),
(25,1,'::1','javawebmedia','http://localhost/antzeincompany/admin/download','2022-04-05 19:44:26'),
(26,1,'::1','javawebmedia','http://localhost/antzeincompany/admin/download','2022-04-05 19:44:27'),
(27,4,'::1','zayn','http://localhost/antzeincompany/admin/dasbor','2022-04-05 19:44:33'),
(28,4,'::1','zayn','http://localhost/antzeincompany/admin/berita','2022-04-05 19:44:45'),
(29,4,'::1','zayn','http://localhost/antzeincompany/admin/berita','2022-04-05 19:44:47'),
(30,4,'::1','zayn','http://localhost/antzeincompany/admin/user','2022-04-05 19:44:54'),
(31,4,'::1','zayn','http://localhost/antzeincompany/admin/user','2022-04-05 19:48:26'),
(32,4,'::1','zayn','http://localhost/antzeincompany/admin/user','2022-04-05 19:49:19'),
(33,4,'::1','zayn','http://localhost/antzeincompany/admin/user','2022-04-05 19:49:43'),
(34,4,'::1','zayn','http://localhost/antzeincompany/admin/user','2022-04-05 19:49:43'),
(35,4,'::1','zayn','http://localhost/antzeincompany/admin/user','2022-04-05 19:49:44'),
(36,4,'::1','zayn','http://localhost/antzeincompany/admin/user','2022-04-05 19:49:45'),
(37,4,'::1','zayn','http://localhost/antzeincompany/admin/user/delete/5','2022-04-05 19:49:50'),
(38,4,'::1','zayn','http://localhost/antzeincompany/admin/user','2022-04-05 19:49:51'),
(39,4,'::1','zayn','http://localhost/antzeincompany/admin/akun','2022-04-05 19:50:03'),
(40,4,'::1','zayn','http://localhost/antzeincompany/admin/akun','2022-04-05 19:50:03'),
(41,4,'::1','zayn','http://localhost/antzeincompany/admin/akun','2022-04-05 19:51:21'),
(42,4,'::1','zayn','http://localhost/antzeincompany/admin/akun','2022-04-05 19:51:22'),
(43,4,'::1','zayn','http://localhost/antzeincompany/admin/akun','2022-04-05 19:51:22'),
(44,4,'::1','zayn','http://localhost/antzeincompany/admin/akun','2022-04-05 19:52:26'),
(45,4,'::1','zayn','http://localhost/antzeincompany/admin/konfigurasi','2022-04-05 19:52:32'),
(46,4,'::1','zayn','http://localhost/antzeincompany/admin/konfigurasi','2022-04-05 19:56:22'),
(47,4,'::1','zayn','http://localhost/antzeincompany/admin/konfigurasi','2022-04-05 19:56:24'),
(48,4,'::1','zayn','http://localhost/antzeincompany/admin/konfigurasi','2022-04-05 19:57:06'),
(49,4,'::1','zayn','http://localhost/antzeincompany/admin/konfigurasi','2022-04-05 19:57:58'),
(50,4,'::1','zayn','http://localhost/antzeincompany/admin/konfigurasi','2022-04-05 19:58:03'),
(51,4,'::1','zayn','http://localhost/antzeincompany/admin/konfigurasi','2022-04-05 19:58:07'),
(52,4,'::1','zayn','http://localhost/antzeincompany/admin/konfigurasi','2022-04-05 19:58:09'),
(53,4,'::1','zayn','http://localhost/antzeincompany/admin/konfigurasi','2022-04-05 19:58:19'),
(54,4,'::1','zayn','http://localhost/antzeincompany/admin/konfigurasi','2022-04-05 19:58:35'),
(55,4,'::1','zayn','http://localhost/antzeincompany/admin/konfigurasi','2022-04-05 19:58:35'),
(56,4,'::1','zayn','http://localhost/antzeincompany/admin/konfigurasi','2022-04-05 19:58:52'),
(57,4,'::1','zayn','http://localhost/antzeincompany/admin/konfigurasi','2022-04-05 19:59:01'),
(58,4,'::1','zayn','http://localhost/antzeincompany/admin/konfigurasi','2022-04-05 19:59:14'),
(59,4,'::1','zayn','http://localhost/antzeincompany/admin/konfigurasi','2022-04-05 19:59:26'),
(60,4,'::1','zayn','http://localhost/antzeincompany/admin/konfigurasi','2022-04-05 19:59:37'),
(61,4,'::1','zayn','http://localhost/antzeincompany/admin/konfigurasi','2022-04-05 19:59:51'),
(62,4,'::1','zayn','http://localhost/antzeincompany/admin/konfigurasi','2022-04-05 20:00:00'),
(63,4,'::1','zayn','http://localhost/antzeincompany/admin/konfigurasi','2022-04-05 20:00:07'),
(64,4,'::1','zayn','http://localhost/antzeincompany/admin/konfigurasi','2022-04-05 20:00:15'),
(65,4,'::1','zayn','http://localhost/antzeincompany/admin/akun','2022-04-05 20:00:17'),
(66,4,'::1','zayn','http://localhost/antzeincompany/admin/dasbor','2022-04-05 20:00:19'),
(67,4,'::1','zayn','http://localhost/antzeincompany/admin/konfigurasi','2022-04-05 20:00:28'),
(68,4,'::1','zayn','http://localhost/antzeincompany/admin/konfigurasi','2022-04-05 20:00:28'),
(69,4,'::1','zayn','http://localhost/antzeincompany/admin/konfigurasi','2022-04-05 20:00:34'),
(70,4,'::1','zayn','http://localhost/antzeincompany/admin/konfigurasi','2022-04-05 20:01:31'),
(71,4,'::1','zayn','http://localhost/antzeincompany/admin/konfigurasi','2022-04-05 20:01:49'),
(72,4,'::1','zayn','http://localhost/antzeincompany/admin/konfigurasi','2022-04-05 20:01:58'),
(73,4,'::1','zayn','http://localhost/antzeincompany/admin/dasbor','2022-04-05 20:02:04'),
(74,4,'::1','zayn','http://localhost/antzeincompany/admin/dasbor','2022-04-05 20:02:17'),
(75,4,'::1','zayn','http://localhost/antzeincompany/Dashboard','2022-04-05 20:02:19'),
(76,4,'::1','zayn','http://localhost/antzeincompany/Dashboard','2022-04-05 20:03:01'),
(77,4,'::1','zayn','http://localhost/antzeincompany/admin/berita','2022-04-05 20:03:34'),
(78,4,'::1','zayn','http://localhost/antzeincompany/admin/client','2022-04-05 20:03:39'),
(79,4,'::1','zayn','http://localhost/antzeincompany/admin/client','2022-04-05 20:05:23'),
(80,4,'::1','zayn','http://localhost/antzeincompany/admin/client','2022-04-05 20:07:20'),
(81,4,'::1','zayn','http://localhost/antzeincompany/admin/client','2022-04-05 20:08:19'),
(82,4,'::1','zayn','http://localhost/antzeincompany/admin/client','2022-04-05 20:08:36'),
(83,4,'::1','zayn','http://localhost/antzeincompany/admin/client','2022-04-05 20:08:41'),
(84,4,'::1','zayn','http://localhost/antzeincompany/admin/konfigurasi/icon','2022-04-05 20:10:00'),
(85,4,'::1','zayn','http://localhost/antzeincompany/admin/konfigurasi/icon','2022-04-05 20:10:09'),
(86,4,'::1','zayn','http://localhost/antzeincompany/admin/konfigurasi/icon','2022-04-05 20:10:23'),
(87,4,'::1','zayn','http://localhost/antzeincompany/admin/konfigurasi/icon','2022-04-05 20:10:23'),
(88,4,'::1','zayn','http://localhost/antzeincompany/admin/konfigurasi/icon','2022-04-05 20:10:36'),
(89,4,'::1','zayn','http://localhost/antzeincompany/admin/konfigurasi/icon','2022-04-05 20:11:07'),
(90,4,'::1','zayn','http://localhost/antzeincompany/admin/konfigurasi/icon','2022-04-05 20:11:07'),
(91,4,'::1','zayn','http://localhost/antzeincompany/admin/konfigurasi/icon','2022-04-05 20:11:11'),
(92,4,'::1','zayn','http://localhost/antzeincompany/admin/konfigurasi/icon','2022-04-05 20:11:12'),
(93,4,'::1','zayn','http://localhost/antzeincompany/admin/konfigurasi','2022-04-05 20:11:42'),
(94,4,'::1','zayn','http://localhost/antzeincompany/admin/konfigurasi/icon','2022-04-05 20:12:27'),
(95,4,'::1','zayn','http://localhost/antzeincompany/admin/konfigurasi/icon','2022-04-05 20:12:46'),
(96,4,'::1','zayn','http://localhost/antzeincompany/admin/konfigurasi/icon','2022-04-05 20:12:47'),
(97,4,'::1','zayn','http://localhost/antzeincompany/admin/konfigurasi/icon','2022-04-05 20:12:47'),
(98,4,'::1','zayn','http://localhost/antzeincompany/admin/konfigurasi/icon','2022-04-05 20:12:51'),
(99,4,'::1','zayn','http://localhost/antzeincompany/admin/akun','2022-04-05 20:12:56'),
(100,4,'::1','zayn','http://localhost/antzeincompany/admin/akun','2022-04-05 20:13:13'),
(101,4,'::1','zayn','http://localhost/antzeincompany/admin/akun','2022-04-05 20:13:13'),
(102,4,'::1','zayn','http://localhost/antzeincompany/admin/konfigurasi/seo','2022-04-05 20:13:22'),
(103,4,'::1','zayn','http://localhost/antzeincompany/admin/konfigurasi/seo','2022-04-05 20:13:29'),
(104,4,'::1','zayn','http://localhost/antzeincompany/admin/konfigurasi/seo','2022-04-05 20:13:29'),
(105,4,'::1','zayn','http://localhost/antzeincompany/admin/panduan','2022-04-05 20:13:35'),
(106,4,'::1','zayn','http://localhost/antzeincompany/admin/panduan','2022-04-05 20:14:07'),
(107,4,'::1','zayn','http://localhost/antzeincompany/admin/konfigurasi','2022-04-05 20:14:16'),
(108,4,'::1','zayn','http://localhost/antzeincompany/admin/staff','2022-04-05 20:14:20'),
(109,4,'::1','zayn','http://localhost/antzeincompany/admin/konfigurasi','2022-04-05 20:14:24'),
(110,4,'::1','zayn','http://localhost/antzeincompany/admin/staff','2022-04-05 20:15:54'),
(111,4,'::1','zayn','http://localhost/antzeincompany/admin/konfigurasi','2022-04-05 20:18:20'),
(112,4,'::1','zayn','http://localhost/antzeincompany/admin/staff','2022-04-05 20:18:24'),
(113,4,'::1','zayn','http://localhost/antzeincompany/admin/staff','2022-04-05 20:18:45'),
(114,4,'::1','zayn','http://localhost/antzeincompany/admin/staff','2022-04-05 20:19:13'),
(115,4,'::1','zayn','http://localhost/antzeincompany/admin/staff','2022-04-05 20:19:33'),
(116,4,'::1','zayn','http://localhost/antzeincompany/admin/staff','2022-04-05 20:20:24'),
(117,4,'::1','zayn','http://localhost/antzeincompany/admin/staff','2022-04-05 20:21:14'),
(118,4,'::1','zayn','http://localhost/antzeincompany/admin/staff','2022-04-05 20:21:19'),
(119,4,'::1','zayn','http://localhost/antzeincompany/admin/staff','2022-04-05 20:21:25'),
(120,4,'::1','zayn','http://localhost/antzeincompany/admin/staff','2022-04-05 20:21:30'),
(121,4,'::1','zayn','http://localhost/antzeincompany/admin/staff','2022-04-05 20:22:25'),
(122,4,'::1','zayn','http://localhost/antzeincompany/admin/staff','2022-04-05 20:22:29'),
(123,4,'::1','zayn','http://localhost/antzeincompany/admin/staff','2022-04-05 20:24:03'),
(124,4,'::1','zayn','http://localhost/antzeincompany/admin/staff','2022-04-05 20:24:09'),
(125,4,'::1','zayn','http://localhost/antzeincompany/admin/staff','2022-04-05 20:24:12'),
(126,4,'::1','zayn','http://localhost/antzeincompany/admin/staff','2022-04-05 20:24:20'),
(127,4,'::1','zayn','http://localhost/antzeincompany/admin/staff','2022-04-05 20:24:27'),
(128,4,'::1','zayn','http://localhost/antzeincompany/admin/staff','2022-04-05 20:24:32'),
(129,4,'::1','zayn','http://localhost/antzeincompany/admin/staff','2022-04-05 20:24:37'),
(130,4,'::1','zayn','http://localhost/antzeincompany/admin/staff','2022-04-05 20:25:16'),
(131,4,'::1','zayn','http://localhost/antzeincompany/admin/staff','2022-04-05 20:26:34'),
(132,4,'::1','zayn','http://localhost/antzeincompany/admin/staff','2022-04-05 20:27:20'),
(133,4,'::1','zayn','http://localhost/antzeincompany/admin/staff/edit/10','2022-04-05 20:27:29'),
(134,4,'::1','zayn','http://localhost/antzeincompany/admin/staff/edit/10','2022-04-05 20:29:09'),
(135,4,'::1','zayn','http://localhost/antzeincompany/admin/staff/edit/10','2022-04-05 20:30:53'),
(136,4,'::1','zayn','http://localhost/antzeincompany/admin/staff/edit/10','2022-04-05 20:32:47'),
(137,4,'::1','zayn','http://localhost/antzeincompany/admin/staff/edit/10','2022-04-05 20:33:15'),
(138,4,'::1','zayn','http://localhost/antzeincompany/admin/staff/edit/10','2022-04-05 20:34:59'),
(139,4,'::1','zayn','http://localhost/antzeincompany/admin/staff/edit/10','2022-04-05 20:36:05'),
(140,4,'::1','zayn','http://localhost/antzeincompany/admin/staff/edit/10','2022-04-05 20:36:12'),
(141,4,'::1','zayn','http://localhost/antzeincompany/admin/staff/edit/10','2022-04-05 20:37:28'),
(142,4,'::1','zayn','http://localhost/antzeincompany/admin/staff/edit/10','2022-04-05 20:37:31'),
(143,4,'::1','zayn','http://localhost/antzeincompany/admin/staff','2022-04-05 20:37:33'),
(144,4,'::1','zayn','http://localhost/antzeincompany/admin/konfigurasi','2022-04-05 20:37:36'),
(145,4,'::1','zayn','http://localhost/antzeincompany/admin/panduan','2022-04-05 20:37:37'),
(146,4,'::1','zayn','http://localhost/antzeincompany/admin/konfigurasi','2022-04-05 20:37:38'),
(147,4,'::1','zayn','http://localhost/antzeincompany/admin/staff','2022-04-05 20:37:40'),
(148,4,'::1','zayn','http://localhost/antzeincompany/admin/staff','2022-04-05 20:38:18'),
(149,4,'::1','zayn','http://localhost/antzeincompany/admin/staff','2022-04-05 20:38:23'),
(150,4,'::1','zayn','http://localhost/antzeincompany/admin/staff','2022-04-05 20:38:40'),
(151,4,'::1','zayn','http://localhost/antzeincompany/admin/staff/edit/10','2022-04-05 20:38:44'),
(152,4,'::1','zayn','http://localhost/antzeincompany/admin/staff/edit/10','2022-04-05 20:40:10'),
(153,4,'::1','zayn','http://localhost/antzeincompany/admin/staff','2022-04-05 20:40:11'),
(154,4,'::1','zayn','http://localhost/antzeincompany/admin/staff/edit/10','2022-04-05 20:40:18'),
(155,4,'::1','zayn','http://localhost/antzeincompany/admin/staff/edit/10','2022-04-05 20:40:25'),
(156,4,'::1','zayn','http://localhost/antzeincompany/admin/staff','2022-04-05 20:40:25'),
(157,4,'::1','zayn','http://localhost/antzeincompany/admin/dasbor','2022-04-09 18:50:04'),
(158,4,'::1','zayn','http://localhost/antzeincompany/admin/dasbor','2022-04-09 18:50:09'),
(159,4,'::1','zayn','http://localhost/antzeincompany/admin/dasbor','2022-04-10 08:55:27'),
(160,4,'::1','zayn','http://localhost/antzeincompany/admin/berita','2022-04-10 08:55:57'),
(161,4,'::1','zayn','http://localhost/antzeincompany/admin/berita','2022-04-10 09:02:43'),
(162,4,'::1','zayn','http://localhost/antzeincompany/admin/berita','2022-04-10 09:25:22'),
(163,4,'::1','zayn','http://localhost/antzeincompany/admin/konfigurasi/logo','2022-04-10 09:25:27'),
(164,4,'::1','zayn','http://localhost/antzeincompany/admin/konfigurasi/logo','2022-04-10 09:25:43'),
(165,4,'::1','zayn','http://localhost/antzeincompany/admin/konfigurasi/logo','2022-04-10 09:25:44'),
(166,4,'::1','zayn','http://localhost/antzeincompany/admin/dasbor','2022-04-10 16:39:06'),
(167,4,'::1','zayn','http://localhost/antzeincompany/admin/video','2022-04-10 16:39:18'),
(168,4,'::1','zayn','http://localhost/antzeincompany/admin/video/edit/3','2022-04-10 16:45:34'),
(169,4,'::1','zayn','http://localhost/antzeincompany/admin/video/edit/3','2022-04-10 16:47:47'),
(170,4,'::1','zayn','http://localhost/antzeincompany/admin/video','2022-04-10 16:47:53'),
(171,4,'::1','zayn','http://localhost/antzeincompany/admin/video/edit/3','2022-04-10 16:48:03'),
(172,4,'::1','zayn','http://localhost/antzeincompany/admin/video/edit/3','2022-04-10 16:48:18'),
(173,4,'::1','zayn','http://localhost/antzeincompany/admin/video','2022-04-10 16:48:19'),
(174,4,'::1','zayn','http://localhost/antzeincompany/admin/video/edit/2','2022-04-10 16:48:29'),
(175,4,'::1','zayn','http://localhost/antzeincompany/admin/video/edit/2','2022-04-10 16:49:00'),
(176,4,'::1','zayn','http://localhost/antzeincompany/admin/video','2022-04-10 16:49:00'),
(177,4,'::1','zayn','http://localhost/antzeincompany/admin/video/edit/1','2022-04-10 16:49:33'),
(178,4,'::1','zayn','http://localhost/antzeincompany/admin/video/edit/1','2022-04-10 16:50:08'),
(179,4,'::1','zayn','http://localhost/antzeincompany/admin/video','2022-04-10 16:50:09'),
(180,4,'::1','zayn','http://localhost/antzeincompany/admin/client','2022-04-10 16:52:39'),
(181,4,'::1','zayn','http://localhost/antzeincompany/admin/client/edit/5','2022-04-10 16:52:47'),
(182,4,'::1','zayn','http://localhost/antzeincompany/admin/client/edit/5','2022-04-10 16:53:03'),
(183,4,'::1','zayn','http://localhost/antzeincompany/admin/client','2022-04-10 16:53:04'),
(184,4,'::1','zayn','http://localhost/antzeincompany/admin/client/delete/5','2022-04-10 16:53:41'),
(185,4,'::1','zayn','http://localhost/antzeincompany/admin/client','2022-04-10 16:53:42'),
(186,4,'::1','zayn','http://localhost/antzeincompany/admin/client/delete/3','2022-04-10 16:53:46'),
(187,4,'::1','zayn','http://localhost/antzeincompany/admin/client','2022-04-10 16:53:46'),
(188,4,'::1','zayn','http://localhost/antzeincompany/admin/client/delete/2','2022-04-10 16:53:50'),
(189,4,'::1','zayn','http://localhost/antzeincompany/admin/client','2022-04-10 16:53:51'),
(190,4,'::1','zayn','http://localhost/antzeincompany/admin/staff','2022-04-10 16:54:00'),
(191,4,'::1','zayn','http://localhost/antzeincompany/admin/staff/edit/9','2022-04-10 16:54:09'),
(192,4,'::1','zayn','http://localhost/antzeincompany/admin/staff','2022-04-10 16:54:13'),
(193,4,'::1','zayn','http://localhost/antzeincompany/admin/staff/delete/9','2022-04-10 16:54:18'),
(194,4,'::1','zayn','http://localhost/antzeincompany/admin/staff','2022-04-10 16:54:18'),
(195,4,'::1','zayn','http://localhost/antzeincompany/admin/staff/edit/10','2022-04-10 16:54:22'),
(196,4,'::1','zayn','http://localhost/antzeincompany/admin/staff/edit/10','2022-04-10 16:54:35'),
(197,4,'::1','zayn','http://localhost/antzeincompany/admin/staff','2022-04-10 16:54:36'),
(198,4,'::1','zayn','http://localhost/antzeincompany/admin/download','2022-04-10 16:55:14'),
(199,4,'::1','zayn','http://localhost/antzeincompany/admin/download/delete/8','2022-04-10 16:55:23'),
(200,4,'::1','zayn','http://localhost/antzeincompany/admin/download','2022-04-10 16:55:24'),
(201,4,'::1','zayn','http://localhost/antzeincompany/admin/download/delete/6','2022-04-10 16:55:33'),
(202,4,'::1','zayn','http://localhost/antzeincompany/admin/download','2022-04-10 16:55:33'),
(203,4,'::1','zayn','http://localhost/antzeincompany/admin/download/delete/5','2022-04-10 16:55:37'),
(204,4,'::1','zayn','http://localhost/antzeincompany/admin/download','2022-04-10 16:55:38'),
(205,4,'::1','zayn','http://localhost/antzeincompany/admin/download/delete/4','2022-04-10 16:55:42'),
(206,4,'::1','zayn','http://localhost/antzeincompany/admin/download','2022-04-10 16:55:43'),
(207,4,'::1','zayn','http://localhost/antzeincompany/admin/download/delete/3','2022-04-10 16:55:47'),
(208,4,'::1','zayn','http://localhost/antzeincompany/admin/download','2022-04-10 16:55:48'),
(209,4,'::1','zayn','http://localhost/antzeincompany/admin/galeri','2022-04-10 16:56:26'),
(210,4,'::1','zayn','http://localhost/antzeincompany/admin/galeri/edit/13','2022-04-10 16:56:43'),
(211,4,'::1','zayn','http://localhost/antzeincompany/admin/galeri','2022-04-10 16:56:50'),
(212,4,'::1','zayn','http://localhost/antzeincompany/admin/galeri/delete/13','2022-04-10 16:56:56'),
(213,4,'::1','zayn','http://localhost/antzeincompany/admin/galeri','2022-04-10 16:56:57'),
(214,4,'::1','zayn','http://localhost/antzeincompany/admin/galeri/delete/12','2022-04-10 16:57:00'),
(215,4,'::1','zayn','http://localhost/antzeincompany/admin/galeri','2022-04-10 16:57:00'),
(216,4,'::1','zayn','http://localhost/antzeincompany/admin/galeri/delete/10','2022-04-10 16:57:04'),
(217,4,'::1','zayn','http://localhost/antzeincompany/admin/galeri','2022-04-10 16:57:05'),
(218,4,'::1','zayn','http://localhost/antzeincompany/admin/galeri/delete/9','2022-04-10 16:57:39'),
(219,4,'::1','zayn','http://localhost/antzeincompany/admin/galeri','2022-04-10 16:57:41'),
(220,4,'::1','zayn','http://localhost/antzeincompany/admin/galeri/delete/8','2022-04-10 16:57:45'),
(221,4,'::1','zayn','http://localhost/antzeincompany/admin/galeri','2022-04-10 16:57:46'),
(222,4,'::1','zayn','http://localhost/antzeincompany/admin/galeri/delete/7','2022-04-10 16:57:50'),
(223,4,'::1','zayn','http://localhost/antzeincompany/admin/galeri','2022-04-10 16:57:52'),
(224,4,'::1','zayn','http://localhost/antzeincompany/admin/galeri/delete/5','2022-04-10 16:58:07'),
(225,4,'::1','zayn','http://localhost/antzeincompany/admin/galeri','2022-04-10 16:58:07'),
(226,4,'::1','zayn','http://localhost/antzeincompany/admin/galeri/edit/4','2022-04-10 16:58:11'),
(227,4,'::1','zayn','http://localhost/antzeincompany/admin/galeri/edit/4','2022-04-10 17:08:40'),
(228,4,'::1','zayn','http://localhost/antzeincompany/admin/galeri','2022-04-10 17:08:52'),
(229,4,'::1','zayn','http://localhost/antzeincompany/admin/galeri/edit/4','2022-04-10 17:09:53'),
(230,4,'::1','zayn','http://localhost/antzeincompany/admin/galeri/edit/4','2022-04-10 17:10:10'),
(231,4,'::1','zayn','http://localhost/antzeincompany/admin/galeri','2022-04-10 17:10:10'),
(232,4,'::1','zayn','http://localhost/antzeincompany/admin/galeri/tambah','2022-04-10 17:11:22'),
(233,4,'::1','zayn','http://localhost/antzeincompany/admin/galeri/tambah','2022-04-10 17:11:51'),
(234,4,'::1','zayn','http://localhost/antzeincompany/admin/galeri/tambah','2022-04-10 17:24:13'),
(235,4,'::1','zayn','http://localhost/antzeincompany/admin/galeri/tambah','2022-04-10 17:25:10'),
(236,4,'::1','zayn','http://localhost/antzeincompany/admin/galeri/tambah','2022-04-10 17:27:36'),
(237,4,'::1','zayn','http://localhost/antzeincompany/admin/galeri','2022-04-10 17:27:38'),
(238,4,'::1','zayn','http://localhost/antzeincompany/admin/galeri/tambah','2022-04-10 17:27:44'),
(239,4,'::1','zayn','http://localhost/antzeincompany/admin/galeri/tambah','2022-04-10 17:28:31'),
(240,4,'::1','zayn','http://localhost/antzeincompany/admin/galeri','2022-04-10 17:28:32'),
(241,4,'::1','zayn','http://localhost/antzeincompany/admin/galeri/edit/15','2022-04-10 17:29:50'),
(242,4,'::1','zayn','http://localhost/antzeincompany/admin/galeri/edit/15','2022-04-10 17:29:54'),
(243,4,'::1','zayn','http://localhost/antzeincompany/admin/galeri','2022-04-10 17:29:55'),
(244,4,'::1','zayn','http://localhost/antzeincompany/admin/galeri/edit/14','2022-04-10 17:29:59'),
(245,4,'::1','zayn','http://localhost/antzeincompany/admin/galeri/edit/14','2022-04-10 17:30:02'),
(246,4,'::1','zayn','http://localhost/antzeincompany/admin/galeri','2022-04-10 17:30:03'),
(247,4,'::1','zayn','http://localhost/antzeincompany/admin/berita','2022-04-10 17:30:24'),
(248,4,'::1','zayn','http://localhost/antzeincompany/admin/berita','2022-04-10 17:31:23'),
(249,4,'::1','zayn','http://localhost/antzeincompany/admin/berita','2022-04-10 17:36:04'),
(250,4,'::1','zayn','http://localhost/antzeincompany/admin/berita','2022-04-10 17:36:33'),
(251,4,'::1','zayn','http://localhost/antzeincompany/admin/berita','2022-04-10 17:36:45'),
(252,4,'::1','zayn','http://localhost/antzeincompany/admin/berita','2022-04-10 17:38:48'),
(253,4,'::1','zayn','http://localhost/antzeincompany/admin/dasbor','2022-04-10 17:38:53'),
(254,4,'::1','zayn','http://localhost/antzeincompany/admin/dasbor','2022-04-10 17:40:58'),
(255,4,'::1','zayn','http://localhost/antzeincompany/admin/berita','2022-04-10 17:41:23'),
(256,4,'::1','zayn','http://localhost/antzeincompany/admin/download','2022-04-10 17:41:30'),
(257,4,'::1','zayn','http://localhost/antzeincompany/admin/konfigurasi','2022-04-10 17:42:08'),
(258,4,'::1','zayn','http://localhost/antzeincompany/admin/client','2022-04-10 17:42:22'),
(259,4,'::1','zayn','http://localhost/antzeincompany/admin/berita','2022-04-10 17:42:28'),
(260,4,'::1','zayn','http://localhost/antzeincompany/admin/berita/delete/24','2022-04-10 17:42:40'),
(261,4,'::1','zayn','http://localhost/antzeincompany/admin/berita','2022-04-10 17:42:41'),
(262,4,'::1','zayn','http://localhost/antzeincompany/admin/berita/delete/23','2022-04-10 17:42:44'),
(263,4,'::1','zayn','http://localhost/antzeincompany/admin/berita','2022-04-10 17:42:45'),
(264,4,'::1','zayn','http://localhost/antzeincompany/admin/berita/delete/22','2022-04-10 17:42:47'),
(265,4,'::1','zayn','http://localhost/antzeincompany/admin/berita','2022-04-10 17:42:48'),
(266,4,'::1','zayn','http://localhost/antzeincompany/admin/berita/delete/21','2022-04-10 17:42:50'),
(267,4,'::1','zayn','http://localhost/antzeincompany/admin/berita','2022-04-10 17:42:51'),
(268,4,'::1','zayn','http://localhost/antzeincompany/admin/berita/delete/7','2022-04-10 17:42:53'),
(269,4,'::1','zayn','http://localhost/antzeincompany/admin/berita','2022-04-10 17:42:54'),
(270,4,'::1','zayn','http://localhost/antzeincompany/admin/berita/delete/6','2022-04-10 17:42:57'),
(271,4,'::1','zayn','http://localhost/antzeincompany/admin/berita','2022-04-10 17:42:57'),
(272,4,'::1','zayn','http://localhost/antzeincompany/admin/berita/delete/4','2022-04-10 17:43:00'),
(273,4,'::1','zayn','http://localhost/antzeincompany/admin/berita','2022-04-10 17:43:00'),
(274,4,'::1','zayn','http://localhost/antzeincompany/admin/berita/delete/3','2022-04-10 17:43:03'),
(275,4,'::1','zayn','http://localhost/antzeincompany/admin/berita','2022-04-10 17:43:04'),
(276,4,'::1','zayn','http://localhost/antzeincompany/admin/berita/delete/2','2022-04-10 17:43:30'),
(277,4,'::1','zayn','http://localhost/antzeincompany/admin/berita','2022-04-10 17:43:31'),
(278,4,'::1','zayn','http://localhost/antzeincompany/admin/berita/delete/1','2022-04-10 17:43:37'),
(279,4,'::1','zayn','http://localhost/antzeincompany/admin/berita','2022-04-10 17:43:38'),
(280,4,'::1','zayn','http://localhost/antzeincompany/admin/berita/tambah','2022-04-10 17:43:40'),
(281,4,'::1','zayn','http://localhost/antzeincompany/admin/berita/tambah','2022-04-10 17:47:19'),
(282,4,'::1','zayn','http://localhost/antzeincompany/admin/berita/jenis_berita/Profil','2022-04-10 17:47:21'),
(283,4,'::1','zayn','http://localhost/antzeincompany/admin/berita/edit/25','2022-04-10 17:47:52'),
(284,4,'::1','zayn','http://localhost/antzeincompany/admin/berita/edit/25','2022-04-10 17:48:05'),
(285,4,'::1','zayn','http://localhost/antzeincompany/admin/berita/jenis_berita/Profil','2022-04-10 17:48:07'),
(286,4,'::1','zayn','http://localhost/antzeincompany/admin/berita/edit/25','2022-04-10 17:48:18'),
(287,4,'::1','zayn','http://localhost/antzeincompany/admin/berita/edit/25','2022-04-10 17:48:29'),
(288,4,'::1','zayn','http://localhost/antzeincompany/admin/berita/jenis_berita/Profil','2022-04-10 17:48:30'),
(289,4,'::1','zayn','http://localhost/antzeincompany/admin/berita/jenis_berita/Profil','2022-04-10 17:51:12'),
(290,4,'::1','zayn','http://localhost/antzeincompany/admin/berita/jenis_berita/Profil','2022-04-10 18:39:04');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `akses_level` varchar(20) NOT NULL,
  `kode_rahasia` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `keterangan` text,
  `tanggal_post` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`id_user`,`nama`,`email`,`username`,`password`,`akses_level`,`kode_rahasia`,`gambar`,`keterangan`,`tanggal_post`,`tanggal`) values 
(4,'Zairul Antasya Zein','zairulzayn@gmail.com','zayn','40bd001563085fc35165329ea1ff5c5ecbdbbeef','Admin',NULL,'1649164393_00b736ef2dee7ea2fe7d.gif',NULL,'2022-04-05 19:43:02','2022-04-05 20:13:13'),
(6,'DINDA PUTRI AMELIA CITRA','dindaputri@gmail.com','dindapac','59130467d177a8ed9a371b37e61e89c0feb0676d','User',NULL,NULL,NULL,'2022-04-05 19:49:43','2022-04-05 19:49:43');

/*Table structure for table `video` */

DROP TABLE IF EXISTS `video`;

CREATE TABLE `video` (
  `id_video` int NOT NULL AUTO_INCREMENT,
  `id_user` int NOT NULL,
  `judul` varchar(200) NOT NULL,
  `keterangan` text,
  `video` text NOT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_video`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `video` */

insert  into `video`(`id_video`,`id_user`,`judul`,`keterangan`,`video`,`tanggal_post`,`tanggal`) values 
(1,1,'OMAR HISHAM AL ARABI - AD DHARIYAT','OMAR HISHAM AL ARABI AD DHARIYAT RECITATION','HQdJKlZOVt8&list=PLS46OqkAU_ZK4sCXrzqsFD_kmy3PjFOs5&index=6','0000-00-00 00:00:00','2022-04-10 16:50:08'),
(2,1,'OMAR HISHAM AL ARABI - AL MULK','Recitation Al Mulk','WT54-syfquk','0000-00-00 00:00:00','2022-04-10 16:49:00'),
(3,1,'OMAR HISHAM AL ARABI - AR RAHMAN','Surat Ar-Rahman Omar Hisham Al-Arabi','sHDmxMrCfCw','0000-00-00 00:00:00','2022-04-10 16:48:18');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
