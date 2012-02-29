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
# Table structure for table akun
#

CREATE TABLE `akun` (
  `ak_id` int(11) NOT NULL auto_increment,
  `ak_no` varchar(255) collate latin1_general_ci default NULL,
  `ak_desc` varchar(255) collate latin1_general_ci default NULL,
  `ak_subclass` tinyint(3) default NULL,
  `ak_class_id` tinyint(3) default NULL,
  PRIMARY KEY  (`ak_id`)
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `akun` VALUES (1,'110-10','Kas Kecil',11,1);
INSERT INTO `akun` VALUES (2,'110-20','Kas',11,1);
INSERT INTO `akun` VALUES (3,'120-10','Bank',12,1);
INSERT INTO `akun` VALUES (4,'130-10','Piutang Giro',13,1);
INSERT INTO `akun` VALUES (5,'130-20','Piutang Usaha',13,1);
INSERT INTO `akun` VALUES (6,'130-40','Cadangan Kerugian Piutang',13,1);
INSERT INTO `akun` VALUES (7,'130-50','Piutang Non Usaha',13,1);
INSERT INTO `akun` VALUES (8,'140-10','Persediaan 1',14,1);
INSERT INTO `akun` VALUES (9,'140-20','Persediaan 2',14,1);
INSERT INTO `akun` VALUES (10,'140-30','Persediaan 3',14,1);
INSERT INTO `akun` VALUES (11,'140-40','Persediaan 4',14,1);
INSERT INTO `akun` VALUES (12,'150-10','Pajak Dibayar Dimuka',15,1);
INSERT INTO `akun` VALUES (13,'150-20','Asuransi Dibayar Dimuka',15,1);
INSERT INTO `akun` VALUES (14,'160-10','Investasi Saham',16,1);
INSERT INTO `akun` VALUES (15,'160-20','Investasi Obligasi',16,1);
INSERT INTO `akun` VALUES (16,'170-10','Tanah',17,1);
INSERT INTO `akun` VALUES (17,'170-20','Bangunan',17,1);
INSERT INTO `akun` VALUES (18,'170-21','Akumulasi Penyusutan Bangunan',17,1);
INSERT INTO `akun` VALUES (19,'170-30','Mesin dan Peralatan',17,1);
INSERT INTO `akun` VALUES (20,'170-31','Akumulasi Penyusutan Mesin dan Peralatan',17,1);
INSERT INTO `akun` VALUES (21,'170-40','Mebel dan Alat Tulis Kantor',17,1);
INSERT INTO `akun` VALUES (22,'170-41','Akumulasi Penyusutan Mebel dan Alat Kantor',17,1);
INSERT INTO `akun` VALUES (23,'170-50','Kendaraan',17,1);
INSERT INTO `akun` VALUES (24,'170-51','Akumulasi Penyusutan Kendaraan',17,1);
INSERT INTO `akun` VALUES (25,'170-70','Harta Lainnya',17,1);
INSERT INTO `akun` VALUES (26,'170-71','Akumulasi Penyusutan Harta Lainnya',17,1);
INSERT INTO `akun` VALUES (27,'180-10','Hak Merek',18,1);
INSERT INTO `akun` VALUES (28,'180-20','Hak Cipta',18,1);
INSERT INTO `akun` VALUES (29,'180-30','Good Will',18,1);
INSERT INTO `akun` VALUES (30,'190-20','Biaya Pra Operasi dan Operasi',19,1);
INSERT INTO `akun` VALUES (31,'190-21','Akumulasi Amortisasi Pra Operasi dan Operasi',19,1);
INSERT INTO `akun` VALUES (32,'210-10','Wesel Bayar',21,2);
INSERT INTO `akun` VALUES (33,'210-15','Hutang Giro',21,2);
INSERT INTO `akun` VALUES (34,'210-20','Hutang Usaha',21,2);
INSERT INTO `akun` VALUES (35,'210-30','Hutang Konsinyasi',21,2);
INSERT INTO `akun` VALUES (36,'210-40','Uang Muka Penjualan',21,2);
INSERT INTO `akun` VALUES (37,'210-55','Hutang Deviden',21,2);
INSERT INTO `akun` VALUES (38,'210-60','Hutang Bunga',21,2);
INSERT INTO `akun` VALUES (39,'210-65','Biaya yang Masih Harus Dibayar',21,2);
INSERT INTO `akun` VALUES (40,'210-75','Kartu Kredit',21,2);
INSERT INTO `akun` VALUES (41,'210-80','Hutang Pajak Penjualan',21,2);
INSERT INTO `akun` VALUES (42,'210-82','Hutang Komisi Penjualan',21,2);
INSERT INTO `akun` VALUES (43,'210-85','Hutang Gaji',21,2);
INSERT INTO `akun` VALUES (44,'210-90','Hutang Jangka Pendek',21,2);
INSERT INTO `akun` VALUES (45,'220-10','Sewa diterima di Muka',22,2);
INSERT INTO `akun` VALUES (46,'230-10','Pinjaman Hipotik',23,2);
INSERT INTO `akun` VALUES (47,'230-20','Hutang Bank',23,2);
INSERT INTO `akun` VALUES (48,'310-10','Saham Preferen',31,3);
INSERT INTO `akun` VALUES (49,'310-20','Modal Disetor',31,3);
INSERT INTO `akun` VALUES (50,'310-30','Saham Biasa',31,3);
INSERT INTO `akun` VALUES (51,'320-10','Laba Ditahan',32,3);
INSERT INTO `akun` VALUES (52,'320-20','Laba Tahun Berjalan',32,3);
INSERT INTO `akun` VALUES (53,'320-99','Historical Balancing',32,3);
INSERT INTO `akun` VALUES (54,'410-10','Penjualan Produk 1',41,4);
INSERT INTO `akun` VALUES (55,'410-20','Penjualan Produk 2',41,4);
INSERT INTO `akun` VALUES (56,'410-30','Penjualan Produk 3',41,4);
INSERT INTO `akun` VALUES (57,'410-40','Penjualan Lain',41,4);
INSERT INTO `akun` VALUES (58,'410-70','Potongan Penjualan',41,4);
INSERT INTO `akun` VALUES (59,'410-80','Pendapatan Denda Keterlambatan',41,4);
INSERT INTO `akun` VALUES (60,'410-90','Pendapatan atas Pengantaran',41,4);
INSERT INTO `akun` VALUES (61,'510-10','Biaya 1',51,5);
INSERT INTO `akun` VALUES (62,'510-20','Biaya 2',51,5);
INSERT INTO `akun` VALUES (63,'510-30','Biaya 3',51,5);
INSERT INTO `akun` VALUES (64,'510-40','Komisi Penjualan',51,5);
INSERT INTO `akun` VALUES (65,'510-70','Potongan Pembelian',51,5);
INSERT INTO `akun` VALUES (66,'510-80','Biaya atas Pengiriman Barang',51,5);
INSERT INTO `akun` VALUES (67,'520-10','Kerugian Piutang',52,5);
INSERT INTO `akun` VALUES (68,'520-20','Biaya Denda Keterlambatan',52,5);
INSERT INTO `akun` VALUES (69,'520-30','Kerusakan dan Kegagalan Material',52,5);
INSERT INTO `akun` VALUES (70,'610-10','Gaji Direksi dan Karyawan',61,6);
INSERT INTO `akun` VALUES (71,'610-30','Listrik Air dan Telepon',61,6);
INSERT INTO `akun` VALUES (72,'610-50','Promosi dan Iklan',61,6);
INSERT INTO `akun` VALUES (73,'610-60','Administrasi Kantor',61,6);
INSERT INTO `akun` VALUES (74,'660-10','Penyusutan Bangunan',62,6);
INSERT INTO `akun` VALUES (75,'660-11','Penyusutan Mesin dan Peralatan',62,6);
INSERT INTO `akun` VALUES (76,'660-12','Penyusutan Mebel dan ATK',62,6);
INSERT INTO `akun` VALUES (77,'660-13','Penyusutan Kendaraan',62,6);
INSERT INTO `akun` VALUES (78,'660-15','Penyusutan Harta Lainnya',62,6);
INSERT INTO `akun` VALUES (79,'660-16','Amortisasi Pra Operasi dan Operasi',62,6);
INSERT INTO `akun` VALUES (80,'810-20','Laba Rugi Selisih Kurs',71,7);
INSERT INTO `akun` VALUES (81,'810-30','Hasil Sewa',71,7);
INSERT INTO `akun` VALUES (82,'910-10','Biaya Bunga',81,8);
INSERT INTO `akun` VALUES (83,'910-11','Jasa Bank',81,8);

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
