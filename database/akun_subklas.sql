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
# Table structure for table akun_subklas
#

CREATE TABLE `akun_subklas` (
  `sk_id` int(11) NOT NULL auto_increment,
  `sk_kl` tinyint(3) default NULL,
  `sk_desc` varchar(255) collate latin1_general_ci default NULL,
  `sk_ak` tinyint(3) default NULL,
  PRIMARY KEY  (`sk_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `akun_subklas` VALUES (1,11,'Kas',1);
INSERT INTO `akun_subklas` VALUES (2,12,'Bank',1);
INSERT INTO `akun_subklas` VALUES (3,13,'Piutang Dagang',1);
INSERT INTO `akun_subklas` VALUES (4,14,'Persediaan',1);
INSERT INTO `akun_subklas` VALUES (5,15,'Biaya Dibayar Dimuka',1);
INSERT INTO `akun_subklas` VALUES (6,16,'Investasi Jangka Panjang',1);
INSERT INTO `akun_subklas` VALUES (7,17,'Harta Tetap Berwujud',1);
INSERT INTO `akun_subklas` VALUES (8,18,'Harta Tetap Tidak Berwujud',1);
INSERT INTO `akun_subklas` VALUES (9,19,'Harta Lainnya',1);
INSERT INTO `akun_subklas` VALUES (10,21,'Hutang Lancar',2);
INSERT INTO `akun_subklas` VALUES (11,22,'Pendapatan yang Diterima Dimuka',2);
INSERT INTO `akun_subklas` VALUES (12,23,'Hutang Jangka Panjang',2);
INSERT INTO `akun_subklas` VALUES (13,31,'Modal',3);
INSERT INTO `akun_subklas` VALUES (14,32,'Laba',3);
INSERT INTO `akun_subklas` VALUES (15,41,'Pendapatan Usaha',4);
INSERT INTO `akun_subklas` VALUES (16,51,'Biaya Produksi',5);
INSERT INTO `akun_subklas` VALUES (17,52,'Biaya Lain',5);
INSERT INTO `akun_subklas` VALUES (18,61,'Biaya Operasional',6);
INSERT INTO `akun_subklas` VALUES (19,62,'Biaya Non Operasional',6);
INSERT INTO `akun_subklas` VALUES (20,71,'Pendapatan Luar Usaha',7);
INSERT INTO `akun_subklas` VALUES (21,81,'Pengeluaran Luar Usaha',8);

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
