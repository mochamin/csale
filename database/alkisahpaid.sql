# MySQL-Front 5.0  (Build 1.0)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;


# Host: localhost    Database: alkisahpaid
# ------------------------------------------------------
# Server version 5.0.27-community-nt

USE `alkisahpaid`;

#
# Table structure for table admin
#

CREATE TABLE `admin` (
  `ad_id` int(11) NOT NULL auto_increment,
  `ad_username` varchar(255) collate latin1_general_ci default NULL,
  `ad_fullname` varchar(255) collate latin1_general_ci default NULL,
  `ad_email` varchar(255) collate latin1_general_ci default NULL,
  `ad_password` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ad_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `admin` VALUES (1,'mocha','Mochamad Amin','mocha@majalah-alkisah.com','c4ca4238a0b923820dcc509a6f75849b');

#
# Table structure for table barang
#

CREATE TABLE `barang` (
  `br_id` int(11) NOT NULL auto_increment,
  `br_kode` varchar(255) collate latin1_general_ci default NULL,
  `br_kk_id` int(11) default NULL,
  `br_point` int(11) default NULL,
  `br_nama` varchar(255) collate latin1_general_ci default NULL,
  `br_desc` varchar(255) collate latin1_general_ci default NULL,
  `br_photo` varchar(255) collate latin1_general_ci default NULL,
  `br_link` varchar(255) collate latin1_general_ci default NULL,
  `br_size` varchar(255) collate latin1_general_ci default NULL,
  `br_count` int(11) default '0',
  `br_vendor_kode` varchar(255) collate latin1_general_ci default NULL,
  `br_percent_share` tinyint(3) default NULL,
  `br_approved` tinyint(1) default '0',
  PRIMARY KEY  (`br_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `barang` VALUES (1,'VM-000001',1,100,'Video Maulid [video]','Penuh Khidmat bersama alHabib menambah syukur dan rasa iman serta kesejukan hati',NULL,'download/video.flv','1635',3,'VE-00001',NULL,0);
INSERT INTO `barang` VALUES (2,'VM-000002',1,7000,'Video Maulid 2 [video]','Serie Kedua Video Khidmat',NULL,NULL,'2670',0,'VE-00002',NULL,0);
INSERT INTO `barang` VALUES (11,'EM-000003',NULL,200,'Keajaiban Doa','Mengungkap Rahasia dibalik pengkabulan doa..',NULL,NULL,'587.8',0,'VE-00002',NULL,1);
INSERT INTO `barang` VALUES (12,'EM-000004',NULL,300,'Mengingat Allah dalam Lapang dan Sempit','Sebuah Pencerahan dari konsep dasar kehidupan tentang mengingat Allah',NULL,NULL,'1215.7',0,'VE-00002',NULL,1);
INSERT INTO `barang` VALUES (14,'EM-000005',NULL,300,'Menguak Tabir Rizki','Inilah buku yang sangat fenomenal karena menyuguhkan rahasia-rahasia rizki yang misterius',NULL,'download/Menguak Tabir Rizki.pdf','81.447265625',0,'VE-00002',NULL,1);

#
# Table structure for table kategori
#

CREATE TABLE `kategori` (
  `kt_id` int(11) NOT NULL auto_increment,
  `kt_nama` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`kt_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `kategori` VALUES (1,'ebook');
INSERT INTO `kategori` VALUES (2,'doa');
INSERT INTO `kategori` VALUES (3,'mp3');
INSERT INTO `kategori` VALUES (4,'video');

#
# Table structure for table konfirmasi
#

CREATE TABLE `konfirmasi` (
  `kn_id` int(11) NOT NULL auto_increment,
  `kn_nama` varchar(255) collate latin1_general_ci default NULL,
  `kn_email` varchar(255) collate latin1_general_ci default NULL,
  `kn_tgl` date default NULL,
  `kn_bank` varchar(255) collate latin1_general_ci default NULL,
  `kn_rekening` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`kn_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

#
# Table structure for table kontent_kategori
#

CREATE TABLE `kontent_kategori` (
  `kk_id` int(11) NOT NULL auto_increment,
  `kk_nama` varchar(255) collate latin1_general_ci default NULL,
  `kk_kategori_id` int(11) default NULL,
  `kk_kode` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`kk_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `kontent_kategori` VALUES (1,'Video Dakwah',4,'VD');
INSERT INTO `kontent_kategori` VALUES (2,'e-book Motivasi',NULL,'EM');

#
# Table structure for table menu
#

CREATE TABLE `menu` (
  `mn_id` int(11) NOT NULL auto_increment,
  `mn_menu` varchar(255) collate latin1_general_ci default NULL,
  `mn_icon` varchar(255) collate latin1_general_ci default NULL,
  `mn_link` varchar(255) collate latin1_general_ci default NULL,
  `mn_title` varchar(255) collate latin1_general_ci default NULL,
  `mn_group` tinyint(1) default '0',
  PRIMARY KEY  (`mn_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `menu` VALUES (1,'Profil',NULL,'profil.php','Profil',0);
INSERT INTO `menu` VALUES (2,'Konfirmasi Pembayaran',NULL,'konfirmasi.php','Konfirmasi',0);
INSERT INTO `menu` VALUES (3,'Point Anda',NULL,'point.php','Point Anda',0);
INSERT INTO `menu` VALUES (4,'Q&A',NULL,'qa.php','Q&A',0);
INSERT INTO `menu` VALUES (5,'Promo',NULL,'promo.php','Promo',0);
INSERT INTO `menu` VALUES (6,'Cek Pembayaran Member',NULL,'payment_list.php','Pembayaran Member',1);
INSERT INTO `menu` VALUES (7,'Content Approval',NULL,'content_approval.php','Content Approval',1);
INSERT INTO `menu` VALUES (8,'Product Summary',NULL,'product_summary.php','Product Summary',2);
INSERT INTO `menu` VALUES (9,'Tambah Product',NULL,'product_add_loader.php','Tambah Product',2);

#
# Table structure for table payment
#

CREATE TABLE `payment` (
  `py_id` int(11) NOT NULL auto_increment,
  `py_us_email` varchar(255) collate latin1_general_ci default NULL,
  `py_us_id` int(11) default NULL,
  `py_bank` varchar(255) collate latin1_general_ci default NULL,
  `py_no_rek` varchar(255) collate latin1_general_ci default NULL,
  `py_date` date default NULL,
  `py_transfer_date` varchar(255) collate latin1_general_ci default NULL,
  `py_time` time default NULL,
  `py_amount` double default NULL,
  `py_approved` tinyint(1) default NULL,
  `py_token` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`py_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `payment` VALUES (11,'mocha@mocha.com',1,'BCA','998 77 44 55','2012-03-20','20 Maret 2012','07:44:31',50000,1,'f4046c3eb993ab47c8c5023cb15ea41b');
INSERT INTO `payment` VALUES (12,'mocha@mocha.com',1,'Mandiri','123 456 789','2012-03-20','20 Maret 2012','07:44:51',75000,NULL,'6a3e00093e0835c5ee1a7edb53fe1451');
INSERT INTO `payment` VALUES (13,'mocha@mocha.com',1,'BCA','59 11 22 33 44','2012-03-27','27 Maret 2012','09:52:10',50000,NULL,'534c62c11e36422c43279ce14091f245');

#
# Table structure for table point
#

CREATE TABLE `point` (
  `po_id` int(11) NOT NULL auto_increment,
  `po_us_id` int(11) default NULL,
  `po_point` double default NULL,
  PRIMARY KEY  (`po_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `point` VALUES (1,1,100);

#
# Table structure for table point_history
#

CREATE TABLE `point_history` (
  `ph_id` int(11) NOT NULL auto_increment,
  `ph_us_id` int(11) default NULL,
  `ph_tgl` date default NULL,
  `ph_br_kode` varchar(255) collate latin1_general_ci default NULL,
  `ph_point_deduct` double default NULL,
  `ph_point_balance` double default NULL,
  `ph_time` time default NULL,
  `ph_notes` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ph_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `point_history` VALUES (1,1,'2012-03-19','VM-0001',100,3700,'20:05:57',NULL);
INSERT INTO `point_history` VALUES (2,1,'2012-03-19','VM-0001',100,3500,'21:05:57',NULL);
INSERT INTO `point_history` VALUES (3,1,'2012-03-19','VM-0001',100,3400,'21:16:45',NULL);
INSERT INTO `point_history` VALUES (4,1,'2012-03-19','VM-0001',100,3300,'21:17:09',NULL);
INSERT INTO `point_history` VALUES (5,1,'2012-03-19','VM-0001',100,3200,'21:21:54','Download Video Maulid [video]');
INSERT INTO `point_history` VALUES (6,1,'2012-03-19','VM-0001',100,3100,'21:56:33','Download Video Maulid [video]');
INSERT INTO `point_history` VALUES (7,1,'2012-03-19','VM-0001',100,3000,'21:59:30','Download Video Maulid [video]');
INSERT INTO `point_history` VALUES (8,1,'2012-03-19','VM-0001',100,2900,'21:59:43','Download Video Maulid [video]');
INSERT INTO `point_history` VALUES (9,0,'2012-03-20','',1000,1000,'07:08:25','Refill Point');
INSERT INTO `point_history` VALUES (10,0,'2012-03-20','',1000,1000,'07:11:12','Refill Point');
INSERT INTO `point_history` VALUES (11,1,'2012-03-20','',1000,4900,'07:25:05','Refill Point');
INSERT INTO `point_history` VALUES (12,1,'2012-03-20','',1000,5900,'07:27:37','Refill Point');
INSERT INTO `point_history` VALUES (13,1,'2012-03-20','',1000,6900,'07:30:32','Refill Point');
INSERT INTO `point_history` VALUES (14,1,'2012-03-20','',1000,7900,'07:45:09','Refill Point');
INSERT INTO `point_history` VALUES (15,1,'2012-03-20','',1000,6900,'07:50:58','Cancelation Refill');
INSERT INTO `point_history` VALUES (16,1,'2012-03-20','VM-0001',100,6800,'10:04:14','Download Video Maulid [video]');
INSERT INTO `point_history` VALUES (17,1,'2012-03-21','',1000,7800,'14:12:57','Refill Point');
INSERT INTO `point_history` VALUES (18,1,'2012-03-21','',1000,6800,'16:33:08','Cancelation Refill');
INSERT INTO `point_history` VALUES (19,1,'2012-03-27','',1000,7800,'06:12:32','Refill Point');
INSERT INTO `point_history` VALUES (20,1,'2012-03-27','',1000,6800,'06:12:34','Cancelation Refill');
INSERT INTO `point_history` VALUES (21,1,'2012-03-27','',100,100,'09:52:42','Refill Point');

#
# Table structure for table user
#

CREATE TABLE `user` (
  `us_id` int(11) NOT NULL auto_increment,
  `us_firstname` varchar(255) collate latin1_general_ci default NULL,
  `us_lastname` varchar(255) collate latin1_general_ci default NULL,
  `us_photo` varchar(255) collate latin1_general_ci default NULL,
  `us_password` varchar(255) collate latin1_general_ci default NULL,
  `us_username` varchar(255) collate latin1_general_ci default NULL,
  `us_email` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`us_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `user` VALUES (1,'Mochamad','Amin',NULL,'c4ca4238a0b923820dcc509a6f75849b','mocha','mocha@mocha.com');

#
# Table structure for table vendor
#

CREATE TABLE `vendor` (
  `ve_id` int(11) NOT NULL auto_increment,
  `ve_kode` varchar(255) collate latin1_general_ci default NULL,
  `ve_nama` varchar(255) collate latin1_general_ci default NULL,
  `ve_alamat` varchar(255) collate latin1_general_ci default NULL,
  `ve_kota` varchar(255) collate latin1_general_ci default NULL,
  `ve_email` varchar(255) collate latin1_general_ci default NULL,
  `ve_username` varchar(255) collate latin1_general_ci default NULL,
  `ve_password` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ve_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `vendor` VALUES (1,'VE-00001','alKisah',NULL,NULL,'mochamadamin76@gmail.com','alkisah','c4ca4238a0b923820dcc509a6f75849b');
INSERT INTO `vendor` VALUES (2,'VE-00002','Gema Insani Press',NULL,NULL,'mochamadamin76@yahoo.com','gema','c4ca4238a0b923820dcc509a6f75849b');

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
