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
# Table structure for table neraca
#

CREATE TABLE `neraca` (
  `ne_id` int(11) NOT NULL auto_increment,
  `ne_tgl` date default NULL,
  `ne_ref` varchar(255) collate latin1_general_ci default NULL,
  `ne_desc` varchar(255) collate latin1_general_ci default NULL,
  `ne_akun` varchar(255) collate latin1_general_ci default NULL,
  `ne_amount` double default NULL,
  `ne_debet` double default NULL,
  `ne_kredit` double default NULL,
  PRIMARY KEY  (`ne_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
