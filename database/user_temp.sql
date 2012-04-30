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
# Table structure for table user_temp
#

CREATE TABLE `user_temp` (
  `ut_id` int(11) NOT NULL auto_increment,
  `ut_firstname` varchar(255) character set latin1 default NULL,
  `ut_lastname` varchar(255) character set latin1 default NULL,
  `ut_password` varchar(255) collate latin1_general_ci default NULL,
  `ut_kota` varchar(255) collate latin1_general_ci default NULL,
  `ut_negara` varchar(255) collate latin1_general_ci default NULL,
  `ut_username` varchar(255) collate latin1_general_ci default NULL,
  `ut_email` varchar(255) collate latin1_general_ci default NULL,
  `ut_confirm_code` varchar(255) character set latin1 default NULL,
  PRIMARY KEY  (`ut_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
