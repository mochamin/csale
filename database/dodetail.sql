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
# Table structure for table dodetail
#

CREATE TABLE `dodetail` (
  `dd_id` int(11) NOT NULL auto_increment,
  `dd_kode` varchar(255) collate latin1_general_ci default NULL,
  `dd_kd_barang` varchar(255) collate latin1_general_ci default NULL,
  `dd_nama_barang` varchar(255) collate latin1_general_ci default NULL,
  `dd_type` varchar(255) collate latin1_general_ci default NULL,
  `dd_qty` tinyint(5) default NULL,
  PRIMARY KEY  (`dd_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
