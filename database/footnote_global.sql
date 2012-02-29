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
# Table structure for table footnote_global
#

CREATE TABLE `footnote_global` (
  `fg_id` int(11) NOT NULL auto_increment,
  `fg_blok1` varchar(255) collate latin1_general_ci default NULL,
  `fg_blok2` varchar(255) collate latin1_general_ci default NULL,
  `fg_blok3` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`fg_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `footnote_global` VALUES (1,'1.','Price','Include VAT 10%. Include Delivery Cost. Exclude Wall Bracket & Installation Cost.');
INSERT INTO `footnote_global` VALUES (2,'2.','Validity','14 (Fourteen) days from above date');
INSERT INTO `footnote_global` VALUES (3,'3.','Payment','1 (one) weeks after delivery, by bank transfer to:');
INSERT INTO `footnote_global` VALUES (4,NULL,NULL,'PT. Sigma Visualindo - Bank Mandiri KCP Bekasi Grand Wisata - ACc.no: 156-00-0257266-9');
INSERT INTO `footnote_global` VALUES (5,NULL,NULL,'PT. Sigma Visualindo - BCA Ruko Kalimas Bekasi - Acc.no: 578-0483-212');
INSERT INTO `footnote_global` VALUES (6,'4.','Delivery','1  (one) weeks after PO received, franco Kota Lokasi Instalasi Video Conference PKH Kemensos');
INSERT INTO `footnote_global` VALUES (7,'5.','Warranty','1 (one) year for service+spare parts from manufacturing');

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
