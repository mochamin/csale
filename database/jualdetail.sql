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
# Table structure for table jualdetail
#

DROP TABLE IF EXISTS `jualdetail`;
CREATE TABLE `jualdetail` (
  `jd_id` int(11) NOT NULL auto_increment,
  `jd_kode` varchar(255) collate latin1_general_ci default NULL,
  `jd_tgl` date default NULL,
  `jd_kd_barang` int(11) default NULL,
  `jd_nama_barang` varchar(255) collate latin1_general_ci default NULL,
  `jd_qty` int(11) default NULL,
  `jd_harga_pokok` double default NULL,
  `jd_harga_jual` double default NULL,
  `jd_discrp` double default NULL,
  `jd_disc_persen` tinyint(3) default NULL,
  `jd_total` double default NULL,
  `jd_margin` double default NULL,
  PRIMARY KEY  (`jd_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
