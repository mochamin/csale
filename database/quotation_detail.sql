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
# Table structure for table quotation_detail
#

CREATE TABLE `quotation_detail` (
  `qd_id` int(11) NOT NULL auto_increment,
  `qd_kode` varchar(255) collate latin1_general_ci default NULL,
  `qd_date` date default NULL,
  `qd_kd_barang` int(11) default NULL,
  `qd_nama_barang` varchar(255) collate latin1_general_ci default NULL,
  `qd_type` varchar(255) collate latin1_general_ci default NULL,
  `qd_unit` varchar(255) collate latin1_general_ci default NULL,
  `qd_qty` tinyint(3) default NULL,
  `qd_harga` double default NULL,
  `qd_total` double default NULL,
  PRIMARY KEY  (`qd_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
