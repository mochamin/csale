# MySQL-Front 5.0  (Build 1.0)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;


# Host: 192.168.1.71    Database: merp
# ------------------------------------------------------
# Server version 5.0.27-community-nt

USE `merp`;

#
# Table structure for table foot_note
#

CREATE TABLE `foot_note` (
  `fn_id` int(11) NOT NULL auto_increment,
  `fn_supplier_id` varchar(5) collate latin1_general_ci default NULL,
  `fn_blok1` varchar(255) collate latin1_general_ci default NULL,
  `fn_blok2` varchar(255) collate latin1_general_ci default NULL,
  `fn_blok3` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`fn_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
