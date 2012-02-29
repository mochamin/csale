# MySQL-Front 5.0  (Build 1.0)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;


# Host: localhost    Database: merp
# ------------------------------------------------------
# Server version 5.0.27-community-nt

USE `merp`;

#
# Table structure for table akun_klas
#

CREATE TABLE `akun_klas` (
  `kl_id` int(11) NOT NULL auto_increment,
  `kl_kode` tinyint(3) default NULL,
  `kl_klasifikasi` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`kl_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `akun_klas` VALUES (1,1,'Harta');
INSERT INTO `akun_klas` VALUES (2,2,'Kewajiban');
INSERT INTO `akun_klas` VALUES (3,3,'Modal');
INSERT INTO `akun_klas` VALUES (4,4,'Pendapatan');
INSERT INTO `akun_klas` VALUES (5,5,'Biaya atas Pendapatan');
INSERT INTO `akun_klas` VALUES (6,6,'Pengeluaran Operasional');
INSERT INTO `akun_klas` VALUES (7,7,'Pendapatan Lain');
INSERT INTO `akun_klas` VALUES (8,8,'Pengeluaran Lain');

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
