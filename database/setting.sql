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
# Table structure for table setting
#

CREATE TABLE `setting` (
  `se_id` int(11) NOT NULL auto_increment,
  `se_email` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`se_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
