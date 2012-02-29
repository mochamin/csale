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
# Table structure for table quotation
#

CREATE TABLE `quotation` (
  `qt_id` int(11) NOT NULL auto_increment,
  `qt_kode` varchar(255) collate latin1_general_ci default NULL,
  `qt_date` date default NULL,
  `qt_up_id` int(11) default NULL,
  `qt_pic` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`qt_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
