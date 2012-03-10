# MySQL-Front 5.0  (Build 1.0)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;


# Host: localhost    Database: merp
# ------------------------------------------------------
# Server version 5.0.27-community-nt

CREATE DATABASE `merp` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci */;
USE `merp`;

#
# Table structure for table adjustment_category
#

CREATE TABLE `adjustment_category` (
  `ac_id` int(11) NOT NULL auto_increment,
  `ac_deduction_or_addition` varchar(255) collate latin1_general_ci default NULL,
  `ac_description` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ac_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

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
) ENGINE=MyISAM AUTO_INCREMENT=85 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
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
INSERT INTO `akun` VALUES (84,'210-81','Hutang PPh 21',21,2);

#
# Table structure for table akun_klas
#

CREATE TABLE `akun_klas` (
  `kl_id` int(11) NOT NULL auto_increment,
  `kl_kode` tinyint(3) default NULL,
  `kl_klasifikasi` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`kl_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `akun_klas` VALUES (1,1,'Harta');
INSERT INTO `akun_klas` VALUES (2,2,'Kewajiban');
INSERT INTO `akun_klas` VALUES (3,3,'Modal');
INSERT INTO `akun_klas` VALUES (4,4,'Pendapatan');
INSERT INTO `akun_klas` VALUES (5,5,'Biaya atas Pendapatan');
INSERT INTO `akun_klas` VALUES (6,6,'Pengeluaran Operasional');
INSERT INTO `akun_klas` VALUES (7,7,'Pendapatan Lain');
INSERT INTO `akun_klas` VALUES (8,8,'Pengeluaran Lain');

#
# Table structure for table akun_subklas
#

CREATE TABLE `akun_subklas` (
  `sk_id` int(11) NOT NULL auto_increment,
  `sk_kl` tinyint(3) default NULL,
  `sk_desc` varchar(255) collate latin1_general_ci default NULL,
  `sk_ak` tinyint(3) default NULL,
  PRIMARY KEY  (`sk_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `akun_subklas` VALUES (1,11,'Kas',1);
INSERT INTO `akun_subklas` VALUES (2,12,'Bank',1);
INSERT INTO `akun_subklas` VALUES (3,13,'Piutang Dagang',1);
INSERT INTO `akun_subklas` VALUES (4,14,'Persediaan',1);
INSERT INTO `akun_subklas` VALUES (5,15,'Biaya Dibayar Dimuka',1);
INSERT INTO `akun_subklas` VALUES (6,16,'Investasi Jangka Panjang',1);
INSERT INTO `akun_subklas` VALUES (7,17,'Harta Tetap Berwujud',1);
INSERT INTO `akun_subklas` VALUES (8,18,'Harta Tetap Tidak Berwujud',1);
INSERT INTO `akun_subklas` VALUES (9,19,'Harta Lainnya',1);
INSERT INTO `akun_subklas` VALUES (10,21,'Hutang Lancar',2);
INSERT INTO `akun_subklas` VALUES (11,22,'Pendapatan yang Diterima Dimuka',2);
INSERT INTO `akun_subklas` VALUES (12,23,'Hutang Jangka Panjang',2);
INSERT INTO `akun_subklas` VALUES (13,31,'Modal',3);
INSERT INTO `akun_subklas` VALUES (14,32,'Laba',3);
INSERT INTO `akun_subklas` VALUES (15,41,'Pendapatan Usaha',4);
INSERT INTO `akun_subklas` VALUES (16,51,'Biaya Produksi',5);
INSERT INTO `akun_subklas` VALUES (17,52,'Biaya Lain',5);
INSERT INTO `akun_subklas` VALUES (18,61,'Biaya Operasional',6);
INSERT INTO `akun_subklas` VALUES (19,62,'Biaya Non Operasional',6);
INSERT INTO `akun_subklas` VALUES (20,71,'Pendapatan Luar Usaha',7);
INSERT INTO `akun_subklas` VALUES (21,81,'Pengeluaran Luar Usaha',8);

#
# Table structure for table bank
#

CREATE TABLE `bank` (
  `bk_id` int(11) NOT NULL auto_increment,
  `bk_nama` varchar(255) collate latin1_general_ci default NULL,
  `bk_alamat` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`bk_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `bank` VALUES (1,'BCA KCP Boulevar Hijau - Bekasi','Jl Boulevar Hijau Bekasi');
INSERT INTO `bank` VALUES (2,'Mandiri Pondok Ungu','Pondok Ungu-Bekasi');

#
# Table structure for table barang
#

CREATE TABLE `barang` (
  `br_id` int(11) NOT NULL auto_increment,
  `br_kode` varchar(255) collate latin1_general_ci default NULL,
  `br_barcode` varchar(255) collate latin1_general_ci default NULL,
  `br_nama` varchar(255) collate latin1_general_ci default NULL,
  `br_kategori` varchar(255) collate latin1_general_ci default NULL,
  `br_type` varchar(255) collate latin1_general_ci default NULL,
  `br_vendor` varchar(255) collate latin1_general_ci default NULL,
  `br_unit` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`br_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1223 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `barang` VALUES (1,'BR-00001',NULL,'Panasonic LCD TV','1','KA-003','4','unit');
INSERT INTO `barang` VALUES (2,'BR-00002',NULL,'Panasonic Air Conditioner PN-002','5','PN-02 A','4','unit');
INSERT INTO `barang` VALUES (3,'BR-00003',NULL,'LG OPTIMA DISPLAY','1','LGD-OA 331','2','unit');
INSERT INTO `barang` VALUES (8,NULL,NULL,'COLOR TV 14\" SLIM','1','14FU7AB','2','unit');
INSERT INTO `barang` VALUES (9,NULL,NULL,'COLOR TV 21\" SLIM','1','21SB6RD','2','unit');
INSERT INTO `barang` VALUES (10,NULL,NULL,'COLOR TV 21\" SLIM','1','21SD1RD','2','unit');
INSERT INTO `barang` VALUES (11,NULL,NULL,'COLOR TV 21\" SLIM','1','21SD2RD','2','unit');
INSERT INTO `barang` VALUES (12,NULL,NULL,'COLOR TV 21\" SLIM','1','21SA1RL','2','unit');
INSERT INTO `barang` VALUES (13,NULL,NULL,'COLOR TV 21\" SLIM','1','21SA1AG','2','unit');
INSERT INTO `barang` VALUES (14,NULL,NULL,'COLOR TV 21\" SLIM','1','21SA3RL','2','unit');
INSERT INTO `barang` VALUES (15,NULL,NULL,'COLOR TV 21\" SLIM','1','21SA3AD','2','unit');
INSERT INTO `barang` VALUES (16,NULL,NULL,'COLOR TV 21\" SLIM','1','21SA4RL','2','unit');
INSERT INTO `barang` VALUES (17,NULL,NULL,'COLOR TV 21\" SLIM','1','21SC1RL (New)','2','unit');
INSERT INTO `barang` VALUES (18,NULL,NULL,'COLOR TV 21\" SLIM','1','21FU2RD','2','unit');
INSERT INTO `barang` VALUES (19,NULL,NULL,'COLOR TV 21\" SLIM','1','21FU4RD','2','unit');
INSERT INTO `barang` VALUES (20,NULL,NULL,'COLOR TV 21\" SLIM','1','21FU3RL','2','unit');
INSERT INTO `barang` VALUES (21,NULL,NULL,'COLOR TV 21\" SLIM','1','21FU6RL','2','unit');
INSERT INTO `barang` VALUES (22,NULL,NULL,'COLOR TV 21\" SLIM','1','21FU6AD','2','unit');
INSERT INTO `barang` VALUES (23,NULL,NULL,'COLOR TV 29\" SLIM','1','29FU1RL','2','unit');
INSERT INTO `barang` VALUES (24,NULL,NULL,'COLOR TV 29\" SLIM','1','29FU3RL','2','unit');
INSERT INTO `barang` VALUES (25,NULL,NULL,'COLOR TV 29\" SLIM','1','29FU6RL','2','unit');
INSERT INTO `barang` VALUES (26,NULL,NULL,'COLOR TV 29\" SLIM','1','29FS4RL','2','unit');
INSERT INTO `barang` VALUES (27,NULL,NULL,'LCD TV 22\"','4','22LK311','2','unit');
INSERT INTO `barang` VALUES (28,NULL,NULL,'LCD TV 22\"','4','22LK310','2','unit');
INSERT INTO `barang` VALUES (29,NULL,NULL,'LCD TV 22\"','4','22LK230','2','unit');
INSERT INTO `barang` VALUES (30,NULL,NULL,'LED TV 22\"','5','22LV2130','2','unit');
INSERT INTO `barang` VALUES (31,NULL,NULL,'LCD TV 26\"','4','26LK311','2','unit');
INSERT INTO `barang` VALUES (32,NULL,NULL,'LED TV 26\"','5','26LE5300','2','unit');
INSERT INTO `barang` VALUES (33,NULL,NULL,'LED TV 26\"','5','26LV2130','2','unit');
INSERT INTO `barang` VALUES (34,NULL,NULL,'PLASMA TV 42\"','PLASMA TV','42PT250','2','unit');
INSERT INTO `barang` VALUES (35,NULL,NULL,'PLASMA TV 42\"','PLASMA TV','42PT350','2','unit');
INSERT INTO `barang` VALUES (36,NULL,NULL,'PLASMA TV 50\"','PLASMA TV','50PT350','','unit');
INSERT INTO `barang` VALUES (37,NULL,NULL,'LCD TV 32\"','4','32LK311(Silver Line)','2','unit');
INSERT INTO `barang` VALUES (38,NULL,NULL,'LCD TV 32\"','4','32LK313(Black Line)','2','unit');
INSERT INTO `barang` VALUES (39,NULL,NULL,'LCD TV 32\"','4','32LK330','2','unit');
INSERT INTO `barang` VALUES (40,NULL,NULL,'LCD TV 32\"','4','32LK450','2','unit');
INSERT INTO `barang` VALUES (41,NULL,NULL,'LED TV 32\"','5','32LV2130','2','unit');
INSERT INTO `barang` VALUES (42,NULL,NULL,'LED TV 32\"','5','32LV2530','2','unit');
INSERT INTO `barang` VALUES (43,NULL,NULL,'LED TV 32\"','5','32LV3500','2','unit');
INSERT INTO `barang` VALUES (44,NULL,NULL,'LED TV 32\"','5','32LV3730 (Smart TV)','2','unit');
INSERT INTO `barang` VALUES (45,NULL,NULL,'LED TV 32\" 3D','6','32LW4500 (Cinema 3D)','2','unit');
INSERT INTO `barang` VALUES (46,NULL,NULL,'LCD TV 42\"','4','42LK450','2','unit');
INSERT INTO `barang` VALUES (47,NULL,NULL,'LED TV 42\"','5','42LV3500','2','unit');
INSERT INTO `barang` VALUES (48,NULL,NULL,'LED TV 42\" 3D','6','42LV3730 (Smart TV)','2','unit');
INSERT INTO `barang` VALUES (49,NULL,NULL,'LED TV 42\" 3D','6','42LW4500 (Cinema 3D)','2','unit');
INSERT INTO `barang` VALUES (50,NULL,NULL,'LED TV 42\" 3D','6','42LW5700 (Cinema 3D - Smart TV)','2','unit');
INSERT INTO `barang` VALUES (51,NULL,NULL,'LED TV 42\" 3D','6','42LW6500 (Cinema 3D - Smart TV)','2','unit');
INSERT INTO `barang` VALUES (52,NULL,NULL,'LED TV 47\"','5','47LV3500','2','unit');
INSERT INTO `barang` VALUES (53,NULL,NULL,'LED TV 47\"','5','47LV3730 (Smart TV)','2','unit');
INSERT INTO `barang` VALUES (54,NULL,NULL,'LED TV 47\" 3D','6','47LW4500 (Cinema 3D)','2','unit');
INSERT INTO `barang` VALUES (55,NULL,NULL,'LED TV 47\" 3D','6','47LW5700 (Cinema 3D - Smart TV)','2','unit');
INSERT INTO `barang` VALUES (56,NULL,NULL,'LED TV 47\" 3D','6','47LW6500 (Cinema 3D - Smart TV)','2','unit');
INSERT INTO `barang` VALUES (57,NULL,NULL,'LED TV 55\"','5','55LV3730','2','unit');
INSERT INTO `barang` VALUES (58,NULL,NULL,'LED TV 55\" 3D','6','55LW5700 (Cinema 3D - Smart TV)','2','unit');
INSERT INTO `barang` VALUES (59,NULL,NULL,'LED TV 55\" 3D','6','55LW6500','2','unit');
INSERT INTO `barang` VALUES (60,NULL,NULL,'','','42LW6500 (Cinema 3D - Smart TV)','','unit');
INSERT INTO `barang` VALUES (61,NULL,NULL,'KULKAS 1 PINTU','7','GC-051SA ','2','unit');
INSERT INTO `barang` VALUES (62,NULL,NULL,'KULKAS 1 PINTU','7','GN-U171SL','2','unit');
INSERT INTO `barang` VALUES (63,NULL,NULL,'KULKAS 1 PINTU','7','GN-U171SL (New Model)','2','unit');
INSERT INTO `barang` VALUES (64,NULL,NULL,'KULKAS 1 PINTU','7','GN-U171S','2','unit');
INSERT INTO `barang` VALUES (65,NULL,NULL,'KULKAS 1 PINTU','7','GN-V191SL','2','unit');
INSERT INTO `barang` VALUES (66,NULL,NULL,'KULKAS 1 PINTU','7','GN-V191RL ','2','unit');
INSERT INTO `barang` VALUES (67,NULL,NULL,'KULKAS 1 PINTU','7','GN-V191RL  (Metalic)','2','unit');
INSERT INTO `barang` VALUES (68,NULL,NULL,'KULKAS 1 PINTU','7','GN-V191RL ( with key  - Discontinue)','2','unit');
INSERT INTO `barang` VALUES (69,NULL,NULL,'KULKAS 1 PINTU','7','GN-V231SL','2','unit');
INSERT INTO `barang` VALUES (70,NULL,NULL,'KULKAS 1 PINTU','7','GN-V231RL ','2','unit');
INSERT INTO `barang` VALUES (71,NULL,NULL,'KULKAS 2 PINTU','7','GN-V212RL/RLCT','2','unit');
INSERT INTO `barang` VALUES (72,NULL,NULL,'KULKAS 2 PINTU','7','GN-V212RP (Petit Garden)','2','unit');
INSERT INTO `barang` VALUES (73,NULL,NULL,'KULKAS 2 PINTU','7','GN-V212RL (Ungu)','2','unit');
INSERT INTO `barang` VALUES (74,NULL,NULL,'KULKAS 2 PINTU','7','GN-V212R (Metalic)','2','unit');
INSERT INTO `barang` VALUES (75,NULL,NULL,'KULKAS 2 PINTU','7','GN-V212SL','2','unit');
INSERT INTO `barang` VALUES (76,NULL,NULL,'KULKAS 2 PINTU','7','GN-V212SLT','2','unit');
INSERT INTO `barang` VALUES (77,NULL,NULL,'KULKAS 2 PINTU','7','GN-V212RPT (Sumatera & Kalimantan Only)','2','unit');
INSERT INTO `barang` VALUES (78,NULL,NULL,'KULKAS 2 PINTU','7','GN-V222RLT ','2','unit');
INSERT INTO `barang` VALUES (79,NULL,NULL,'KULKAS 2 PINTU','7','GN-V222R  (Metalic)','2','unit');
INSERT INTO `barang` VALUES (80,NULL,NULL,'KULKAS 2 PINTU','7','GN-V222RP (Petit Garden)','2','unit');
INSERT INTO `barang` VALUES (81,NULL,NULL,'KULKAS 2 PINTU','7','GN-V222RL (Ungu)','2','unit');
INSERT INTO `barang` VALUES (82,NULL,NULL,'KULKAS 2 PINTU','7','GN-V222SLT ','2','unit');
INSERT INTO `barang` VALUES (83,NULL,NULL,'KULKAS 2 PINTU','7','GN-V222RPT (Sumatera & Kalimantan Only)','2','unit');
INSERT INTO `barang` VALUES (84,NULL,NULL,'KULKAS 2 PINTU','7','GN-V262RLCT','2','unit');
INSERT INTO `barang` VALUES (85,NULL,NULL,'KULKAS 2 PINTU','7','GN-V262RC  (Metalic)','2','unit');
INSERT INTO `barang` VALUES (86,NULL,NULL,'KULKAS 2 PINTU','7','GN-V262RPC (Petit Garden)','2','unit');
INSERT INTO `barang` VALUES (87,NULL,NULL,'KULKAS 2 PINTU','7','GN-V282RLCT','2','unit');
INSERT INTO `barang` VALUES (88,NULL,NULL,'KULKAS 2 PINTU','7','GN-V282RC   (Metalic)','2','unit');
INSERT INTO `barang` VALUES (89,NULL,NULL,'KULKAS 2 PINTU','7','GN-V282RPC (Petit Garden)','2','unit');
INSERT INTO `barang` VALUES (90,NULL,NULL,'BIG REF','7','GR-M652YSQ','2','unit');
INSERT INTO `barang` VALUES (91,NULL,NULL,'BIG REF','7','GR-M712YSQ','2','unit');
INSERT INTO `barang` VALUES (92,NULL,NULL,'BIG REF','7','GN-B352CLC','2','unit');
INSERT INTO `barang` VALUES (93,NULL,NULL,'BIG REF','7','GN-B392CLC','2','unit');
INSERT INTO `barang` VALUES (94,NULL,NULL,'BIG REF','7','GN-B492CLC','2','unit');
INSERT INTO `barang` VALUES (95,NULL,NULL,'BIG REF','7','GN-M352CPC (Petit Garden) - Silkroad2','2','unit');
INSERT INTO `barang` VALUES (96,NULL,NULL,'BIG REF','7','GN-M392CPC (Petit Garden) - Silkroad2','2','unit');
INSERT INTO `barang` VALUES (97,NULL,NULL,'BIG REF','7','GN-M492CPC (Petit garden) - Silkroad2','2','unit');
INSERT INTO `barang` VALUES (98,NULL,NULL,'BIG REF','7','GN-M352CLN','2','unit');
INSERT INTO `barang` VALUES (99,NULL,NULL,'BIG REF','7','GN-M492CLN','2','unit');
INSERT INTO `barang` VALUES (100,NULL,NULL,'BIG REF','7','GN-M492CLNA (Energy Saving) - Silkroad2','2','unit');
INSERT INTO `barang` VALUES (101,NULL,NULL,'BIG REF','7','GN-B562YLC','2','unit');
INSERT INTO `barang` VALUES (102,NULL,NULL,'BIG REF','7','GN-M562YSQ','2','unit');
INSERT INTO `barang` VALUES (103,NULL,NULL,'BIG REF','7','GN-M562YPC','2','unit');
INSERT INTO `barang` VALUES (104,NULL,NULL,'BIG REF','7','GN-M602YPC','2','unit');
INSERT INTO `barang` VALUES (105,NULL,NULL,'BIG REF','7','GN-B602YLC','2','unit');
INSERT INTO `barang` VALUES (106,NULL,NULL,'BIG REF','7','GN-M602YSQ','2','unit');
INSERT INTO `barang` VALUES (107,NULL,NULL,'FREZZER','7','GN-V204RL','2','unit');
INSERT INTO `barang` VALUES (108,NULL,NULL,'FREZZER','7','GN-V204R  (Metalic)','2','unit');
INSERT INTO `barang` VALUES (109,NULL,NULL,'FREZZER','7','GN-V204RL ( with key)','2','unit');
INSERT INTO `barang` VALUES (110,NULL,NULL,'','7','GC-B207CLC.CPVPGSA','2','unit');
INSERT INTO `barang` VALUES (111,NULL,NULL,'','7','GC-B207CPC.CBWPGSA','2','unit');
INSERT INTO `barang` VALUES (112,NULL,NULL,'','7','GC-B207BLQ.CPVPGSA','2','unit');
INSERT INTO `barang` VALUES (113,NULL,NULL,'','7','GC-L207BLK.CPVPGSA','2','unit');
INSERT INTO `barang` VALUES (114,NULL,NULL,'','7','GC-P207BLF.CPVPGSA','2','unit');
INSERT INTO `barang` VALUES (115,NULL,NULL,'','7','GC-R207BLJ.CPVPGSA','2','unit');
INSERT INTO `barang` VALUES (116,NULL,NULL,'','7','GR-B207FLC','2','unit');
INSERT INTO `barang` VALUES (117,NULL,NULL,'','7','GR-B207WLQ','2','unit');
INSERT INTO `barang` VALUES (118,NULL,NULL,'','7','GR-A207WPJ','2','unit');
INSERT INTO `barang` VALUES (119,NULL,NULL,'','7','GR-L207WLK','2','unit');
INSERT INTO `barang` VALUES (120,NULL,NULL,'','7','GR-R207WTC','2','unit');
INSERT INTO `barang` VALUES (121,NULL,NULL,'','7','GR-P207WTF','2','unit');
INSERT INTO `barang` VALUES (122,NULL,NULL,'','7','GR-P227ZGK','2','unit');
INSERT INTO `barang` VALUES (123,NULL,NULL,'','7','GR-P227ZCK','2','unit');
INSERT INTO `barang` VALUES (124,NULL,NULL,'','7','GR-P217LGL ','2','unit');
INSERT INTO `barang` VALUES (125,NULL,NULL,'','7','GR-P247JHM','2','unit');
INSERT INTO `barang` VALUES (126,NULL,NULL,'','7','GR-B217LGJ','2','unit');
INSERT INTO `barang` VALUES (127,NULL,NULL,'','7','GR-A217LGJ ','2','unit');
INSERT INTO `barang` VALUES (128,NULL,NULL,'','7','GR-P217LGK','2','unit');
INSERT INTO `barang` VALUES (129,NULL,NULL,'STANDARD, 1/2 PK','27','S05LT','2','unit');
INSERT INTO `barang` VALUES (130,NULL,NULL,'STANDARD, 1/2 PK','27','S05LT-2','2','unit');
INSERT INTO `barang` VALUES (131,NULL,NULL,'STANDARD, 1 PK','27','S09LT','2','unit');
INSERT INTO `barang` VALUES (132,NULL,NULL,'STANDARD, 1 PK','27','S09LT-2','2','unit');
INSERT INTO `barang` VALUES (133,NULL,NULL,'GOLDFIN, 1/2 PK','27','S05LFG','2','unit');
INSERT INTO `barang` VALUES (134,NULL,NULL,'GOLDFIN, 1/2 PK','27','S05LFG-2','2','unit');
INSERT INTO `barang` VALUES (135,NULL,NULL,'GOLDFIN, 3/4 PK','27','S07LFG','2','unit');
INSERT INTO `barang` VALUES (136,NULL,NULL,'GOLDFIN, 3/4 PK','27','S07LFG-2','2','unit');
INSERT INTO `barang` VALUES (137,NULL,NULL,'GOLDFIN, 1 PK','27','S09LFG','2','unit');
INSERT INTO `barang` VALUES (138,NULL,NULL,'GOLDFIN, 1 PK','27','S09LFG-2','2','unit');
INSERT INTO `barang` VALUES (139,NULL,NULL,'GOLDFIN, 1.5 PK','27','S12LFG','2','unit');
INSERT INTO `barang` VALUES (140,NULL,NULL,'GOLDFIN, 2 PK','27','S18LFG','2','unit');
INSERT INTO `barang` VALUES (141,NULL,NULL,'GOLDFIN, 2.5 PK','27','S24LFG','2','unit');
INSERT INTO `barang` VALUES (142,NULL,NULL,'NEO PLASMA, 1/2 PK','27','S05LPBX-R','2','unit');
INSERT INTO `barang` VALUES (143,NULL,NULL,'NEO PLASMA, 1/2 PK','27','S05LPBX-R2','2','unit');
INSERT INTO `barang` VALUES (144,NULL,NULL,'NEO PLASMA, 1/2 PK','27','S05LPBX-2','2','unit');
INSERT INTO `barang` VALUES (145,NULL,NULL,'NEO PLASMA, 1/2 PK','27','S05LPBX-3','2','unit');
INSERT INTO `barang` VALUES (146,NULL,NULL,'NEO PLASMA, 1/2 PK','27','S05LPBX-P','2','unit');
INSERT INTO `barang` VALUES (147,NULL,NULL,'NEO PLASMA, 1/2 PK','27','S05LVX-2','2','unit');
INSERT INTO `barang` VALUES (148,NULL,NULL,'NEO PLASMA, 1/2 PK','27','S05LVX-3','2','unit');
INSERT INTO `barang` VALUES (149,NULL,NULL,'NEO PLASMA, 3/4 PK','27','S07LPBX-2','2','unit');
INSERT INTO `barang` VALUES (150,NULL,NULL,'NEO PLASMA, 3/4 PK','27','S07LPBX-3','2','unit');
INSERT INTO `barang` VALUES (151,NULL,NULL,'NEO PLASMA, 3/4 PK','27','S07LVX-2','2','unit');
INSERT INTO `barang` VALUES (152,NULL,NULL,'NEO PLASMA, 3/4 PK','27','S07LVX-3','2','unit');
INSERT INTO `barang` VALUES (153,NULL,NULL,'NEO PLASMA, 1 PK','27','S09LPBX-2','2','unit');
INSERT INTO `barang` VALUES (154,NULL,NULL,'NEO PLASMA, 1 PK','27','S09LPBX-3','2','unit');
INSERT INTO `barang` VALUES (155,NULL,NULL,'NEO PLASMA, 1 PK','27','S09LPBX-P','2','unit');
INSERT INTO `barang` VALUES (156,NULL,NULL,'NEO PLASMA, 1 PK','27','S09LVX-2','2','unit');
INSERT INTO `barang` VALUES (157,NULL,NULL,'NEO PLASMA, 1 PK','27','S09LVX-3','2','unit');
INSERT INTO `barang` VALUES (158,NULL,NULL,'NEO PLASMA, 1.5 PK','27','S12LPBX-2','2','unit');
INSERT INTO `barang` VALUES (159,NULL,NULL,'NEO PLASMA, 1.5 PK','27','S12LPBX-3','2','unit');
INSERT INTO `barang` VALUES (160,NULL,NULL,'ART COOL DELUXE, 1 PK','27','C09LCR-1','2','unit');
INSERT INTO `barang` VALUES (161,NULL,NULL,'ART COOL DELUXE, 1 PK','27','C09LCWM-1','2','unit');
INSERT INTO `barang` VALUES (162,NULL,NULL,'ART COOL DELUXE, 1.5 PK','27','C12LCR-1','2','unit');
INSERT INTO `barang` VALUES (163,NULL,NULL,'ART COOL DELUXE, 1.5 PK','27','C12LCWM-1','2','unit');
INSERT INTO `barang` VALUES (164,NULL,NULL,'ART COOL DELUXE, 2 PK','27','C18LCR-1','2','unit');
INSERT INTO `barang` VALUES (165,NULL,NULL,'INVERTER, 1 PK','27','S10SIV','2','unit');
INSERT INTO `barang` VALUES (166,NULL,NULL,'INVERTER, 1.5 PK','27','S13SIV','2','unit');
INSERT INTO `barang` VALUES (167,NULL,NULL,'INVERTER, 2 PK','27','S18SIV','2','unit');
INSERT INTO `barang` VALUES (168,NULL,NULL,'INVERTER, 1 PK','27','S10INV-2','2','unit');
INSERT INTO `barang` VALUES (169,NULL,NULL,'INVERTER, 1.5 PK','27','S13INV-2','2','unit');
INSERT INTO `barang` VALUES (170,NULL,NULL,'FLOOR STANDING, 3 PK','27','LP-C2863G','2','unit');
INSERT INTO `barang` VALUES (171,NULL,NULL,'FLOOR STANDING, 3 PK','27','LP-C2863R','2','unit');
INSERT INTO `barang` VALUES (172,NULL,NULL,'FLOOR STANDING, 3 PK','27','LP-C2863B','2','unit');
INSERT INTO `barang` VALUES (173,NULL,NULL,'TERMINATOR LOWATT, 1/2 PK','27','S05ICEX','2','unit');
INSERT INTO `barang` VALUES (174,NULL,NULL,'TERMINATOR INVERTER, 1 PK','27','S10ICEV','2','unit');
INSERT INTO `barang` VALUES (175,NULL,NULL,'TERMINATOR INVERTER, 1.5 PK','27','S13ICEV','2','unit');
INSERT INTO `barang` VALUES (176,NULL,NULL,'2 TABUNG / TWIN TUB WASHER','9','WP-600N','2','unit');
INSERT INTO `barang` VALUES (177,NULL,NULL,'2 TABUNG / TWIN TUB WASHER','9','WP-700N','2','unit');
INSERT INTO `barang` VALUES (178,NULL,NULL,'2 TABUNG / TWIN TUB WASHER','9','WP-1060R','2','unit');
INSERT INTO `barang` VALUES (179,NULL,NULL,'2 TABUNG / TWIN TUB WASHER','9','WP-1460R','2','unit');
INSERT INTO `barang` VALUES (180,NULL,NULL,'1 TABUNG / TOP LOADING','9','WF-L7000TC','2','unit');
INSERT INTO `barang` VALUES (181,NULL,NULL,'1 TABUNG / TOP LOADING','9','WF-L7001TC','2','unit');
INSERT INTO `barang` VALUES (182,NULL,NULL,'1 TABUNG / TOP LOADING','9','WF-L880NTC','2','unit');
INSERT INTO `barang` VALUES (183,NULL,NULL,'1 TABUNG / TOP LOADING','9','WF-L711TC','2','unit');
INSERT INTO `barang` VALUES (184,NULL,NULL,'1 TABUNG / TOP LOADING','9','WF-L650NTC','2','unit');
INSERT INTO `barang` VALUES (185,NULL,NULL,'1 TABUNG / TOP LOADING','9','WF-L800TC','2','unit');
INSERT INTO `barang` VALUES (186,NULL,NULL,'1 TABUNG / TOP LOADING','9','WF-L801TC','2','unit');
INSERT INTO `barang` VALUES (187,NULL,NULL,'1 TABUNG / TOP LOADING','9','WF-S800C','2','unit');
INSERT INTO `barang` VALUES (188,NULL,NULL,'1 TABUNG / TOP LOADING','9','WF-S950C','2','unit');
INSERT INTO `barang` VALUES (189,NULL,NULL,'1 TABUNG / TOP LOADING','9','WF-S850CP','2','unit');
INSERT INTO `barang` VALUES (190,NULL,NULL,'1 TABUNG / TOP LOADING','9','WF-S850CR','2','unit');
INSERT INTO `barang` VALUES (191,NULL,NULL,'1 TABUNG / TOP LOADING','9','WF-S950CP','2','unit');
INSERT INTO `barang` VALUES (192,NULL,NULL,'1 TABUNG / TOP LOADING','9','WF-S950CR','2','unit');
INSERT INTO `barang` VALUES (193,NULL,NULL,'1 TABUNG / TOP LOADING','9','WF-S1100CR','2','unit');
INSERT INTO `barang` VALUES (194,NULL,NULL,'1 TABUNG / TOP LOADING','9','WF-S14D6*','2','unit');
INSERT INTO `barang` VALUES (195,NULL,NULL,'1 TABUNG / TOP LOADING','9','WF-S16D6','2','unit');
INSERT INTO `barang` VALUES (196,NULL,NULL,'FRONT LOADING','9','WD-M1070TD','2','unit');
INSERT INTO `barang` VALUES (197,NULL,NULL,'FRONT LOADING','9','WD-M8070TD','2','unit');
INSERT INTO `barang` VALUES (198,NULL,NULL,'FRONT LOADING','9','WD-M8060TD','2','unit');
INSERT INTO `barang` VALUES (199,NULL,NULL,'FRONT LOADING','9','WD-K1212RD6','2','unit');
INSERT INTO `barang` VALUES (200,NULL,NULL,'FRONT LOADING','9','WD-E1212TD','2','unit');
INSERT INTO `barang` VALUES (201,NULL,NULL,'FRONT LOADING','9','WD-P1480D6*','2','unit');
INSERT INTO `barang` VALUES (202,NULL,NULL,'FRONT LOADING','9','WD-P1410RD6','2','unit');
INSERT INTO `barang` VALUES (203,NULL,NULL,'DVD PLAYER','10','DV520','2','unit');
INSERT INTO `barang` VALUES (204,NULL,NULL,'DVD PLAYER','10','DV522','2','unit');
INSERT INTO `barang` VALUES (205,NULL,NULL,'DVD PLAYER','10','DV551','2','unit');
INSERT INTO `barang` VALUES (206,NULL,NULL,'DVD PLAYER','10','DV552','2','unit');
INSERT INTO `barang` VALUES (207,NULL,NULL,'DVD PLAYER','10','DV581','2','unit');
INSERT INTO `barang` VALUES (208,NULL,NULL,'DVD PLAYER','10','DV582H','2','unit');
INSERT INTO `barang` VALUES (209,NULL,NULL,'DVD PLAYER','10','DV586','2','unit');
INSERT INTO `barang` VALUES (210,NULL,NULL,'DVD PLAYER','10','DV6H','2','unit');
INSERT INTO `barang` VALUES (211,NULL,NULL,'DVD PLAYER','10','BD550','2','unit');
INSERT INTO `barang` VALUES (212,NULL,NULL,'DVD PLAYER','10','BD560','2','unit');
INSERT INTO `barang` VALUES (213,NULL,NULL,'DVD PLAYER','10','BD570','2','unit');
INSERT INTO `barang` VALUES (214,NULL,NULL,'DVD PLAYER','10','BD620','2','unit');
INSERT INTO `barang` VALUES (215,NULL,NULL,'DVD PLAYER','10','BD660','2','unit');
INSERT INTO `barang` VALUES (216,NULL,NULL,'DVD PLAYER','10','BD670','2','unit');
INSERT INTO `barang` VALUES (217,NULL,NULL,'DVD PLAYER','10','BX580','2','unit');
INSERT INTO `barang` VALUES (218,NULL,NULL,'DVD PLAYER','10','RH387H','2','unit');
INSERT INTO `barang` VALUES (219,NULL,NULL,'HIFI','10','XB12','2','unit');
INSERT INTO `barang` VALUES (220,NULL,NULL,'HIFI','10','MDT505','2','unit');
INSERT INTO `barang` VALUES (221,NULL,NULL,'HIFI','10','MDS715','2','unit');
INSERT INTO `barang` VALUES (222,NULL,NULL,'HIFI','10','XB14-F0U','2','unit');
INSERT INTO `barang` VALUES (223,NULL,NULL,'HIFI','10','FB166-FOF','2','unit');
INSERT INTO `barang` VALUES (224,NULL,NULL,'HIFI','10','MDD104','2','unit');
INSERT INTO `barang` VALUES (225,NULL,NULL,'HIFI','10','MDD64','2','unit');
INSERT INTO `barang` VALUES (226,NULL,NULL,'HIFI','10','XD123','2','unit');
INSERT INTO `barang` VALUES (227,NULL,NULL,'HIFI','10','XD203','2','unit');
INSERT INTO `barang` VALUES (228,NULL,NULL,'HIFI','10','XD63','2','unit');
INSERT INTO `barang` VALUES (229,NULL,NULL,'HOME THEATER SYSTEM','10','HB806TM','2','unit');
INSERT INTO `barang` VALUES (230,NULL,NULL,'HOME THEATER SYSTEM','10','HB905TAW','2','unit');
INSERT INTO `barang` VALUES (231,NULL,NULL,'HOME THEATER SYSTEM','10','HT306SU','2','unit');
INSERT INTO `barang` VALUES (232,NULL,NULL,'HOME THEATER SYSTEM','10','HT356SD','2','unit');
INSERT INTO `barang` VALUES (233,NULL,NULL,'HOME THEATER SYSTEM','10','HT805TH','2','unit');
INSERT INTO `barang` VALUES (234,NULL,NULL,'HOME THEATER SYSTEM','10','HT805VM-F2','2','unit');
INSERT INTO `barang` VALUES (235,NULL,NULL,'HOME THEATER SYSTEM','10','HT806PM','2','unit');
INSERT INTO `barang` VALUES (236,NULL,NULL,'HOME THEATER SYSTEM','10','HT806TM','2','unit');
INSERT INTO `barang` VALUES (237,NULL,NULL,'HOME THEATER SYSTEM','10','HT906TA','2','unit');
INSERT INTO `barang` VALUES (238,NULL,NULL,'HOME THEATER SYSTEM','10','HX906TX','2','unit');
INSERT INTO `barang` VALUES (239,NULL,NULL,'HOME THEATER SYSTEM','10','HX995TZW','2','unit');
INSERT INTO `barang` VALUES (240,NULL,NULL,'AIR PURIFIER','22','PS-Q450WC','2','unit');
INSERT INTO `barang` VALUES (241,NULL,NULL,'AIR PURIFIER','22','PS-R200WC','2','unit');
INSERT INTO `barang` VALUES (242,NULL,NULL,'','','','','unit');
INSERT INTO `barang` VALUES (243,NULL,NULL,'','','','','unit');
INSERT INTO `barang` VALUES (244,NULL,NULL,'','','','','unit');
INSERT INTO `barang` VALUES (245,NULL,NULL,'','','','','unit');
INSERT INTO `barang` VALUES (246,NULL,NULL,'','','','','unit');
INSERT INTO `barang` VALUES (247,NULL,NULL,'','','','','unit');
INSERT INTO `barang` VALUES (248,NULL,NULL,'','','','','unit');
INSERT INTO `barang` VALUES (249,NULL,NULL,'','','','','unit');
INSERT INTO `barang` VALUES (250,NULL,NULL,'','','','','unit');
INSERT INTO `barang` VALUES (251,NULL,NULL,'','','','','unit');
INSERT INTO `barang` VALUES (252,NULL,NULL,'','','','','unit');
INSERT INTO `barang` VALUES (253,NULL,NULL,'','','','','unit');
INSERT INTO `barang` VALUES (254,NULL,NULL,'','','','','unit');
INSERT INTO `barang` VALUES (255,NULL,NULL,'','','','','unit');
INSERT INTO `barang` VALUES (256,NULL,NULL,'','','','','unit');
INSERT INTO `barang` VALUES (257,NULL,NULL,'','','','','unit');
INSERT INTO `barang` VALUES (258,NULL,NULL,'','','','','unit');
INSERT INTO `barang` VALUES (259,NULL,NULL,'','','','','unit');
INSERT INTO `barang` VALUES (260,NULL,NULL,'','','','','unit');
INSERT INTO `barang` VALUES (261,NULL,NULL,'','','','','unit');
INSERT INTO `barang` VALUES (262,NULL,NULL,'','','','','unit');
INSERT INTO `barang` VALUES (263,NULL,NULL,'','','','','unit');
INSERT INTO `barang` VALUES (264,NULL,NULL,'','','','','unit');
INSERT INTO `barang` VALUES (265,NULL,NULL,'','','','','unit');
INSERT INTO `barang` VALUES (266,NULL,NULL,'','','','','unit');
INSERT INTO `barang` VALUES (267,NULL,NULL,'ALOWA, 1/2 PK','27',' CS/CU - KCMKJ','6','unit');
INSERT INTO `barang` VALUES (268,NULL,NULL,'ALOWA, 3/4PK','27',' CS/CU - KC7MKJ','6','unit');
INSERT INTO `barang` VALUES (269,NULL,NULL,'ALOWA, 1 PK','27',' CS/CU - KC9MKJ','6','unit');
INSERT INTO `barang` VALUES (270,NULL,NULL,'STANDARD, 1/2  PK','27',' CS/CU - PC5MKJ','6','unit');
INSERT INTO `barang` VALUES (271,NULL,NULL,'STANDARD, 3/4  PK','27',' CS/CU - PC7MKJ','6','unit');
INSERT INTO `barang` VALUES (272,NULL,NULL,'STANDARD, 1  PK','27',' CS/CU - PC9MKJ','6','unit');
INSERT INTO `barang` VALUES (273,NULL,NULL,'ENVIO INVERTER, 1 PK','27',' CS/CU-S10MKP','6','unit');
INSERT INTO `barang` VALUES (274,NULL,NULL,'ENVIO INVERTER, 1.5 PK','27',' CS/CU-S13MKP','6','unit');
INSERT INTO `barang` VALUES (275,NULL,NULL,'ENVIO INVERTER, 2 PK','27',' CS/CU-S18MKP','6','unit');
INSERT INTO `barang` VALUES (276,NULL,NULL,'ENVIO INVERTER, 2.5 PK','27',' CS/CU-S24MKP','6','unit');
INSERT INTO `barang` VALUES (277,NULL,NULL,'ENVIO , 3/4 PK','27',' CS/CU-C7MKP','6','unit');
INSERT INTO `barang` VALUES (278,NULL,NULL,'ENVIO , 1 PK','27',' CS/CU-C9MKP','6','unit');
INSERT INTO `barang` VALUES (279,NULL,NULL,'ENVIO , 1.5 PK','27',' CS/CU-C12MKP','6','unit');
INSERT INTO `barang` VALUES (280,NULL,NULL,'ENVIO , 2 PK','27',' CS/CU-C18MKP','6','unit');
INSERT INTO `barang` VALUES (281,NULL,NULL,'ENVIO , 2.5 PK','27',' CS/CU-C24MKP','6','unit');
INSERT INTO `barang` VALUES (282,NULL,NULL,'STANDARD, 1.5 PK','27',' CS/CU - PC12KKP','6','unit');
INSERT INTO `barang` VALUES (283,NULL,NULL,'STANDARD, 2  PK','27',' CS/CU - PC18KKP','6','unit');
INSERT INTO `barang` VALUES (284,NULL,NULL,'STANDARD, 2.5  PK','27',' CS/CU - PC24KKP','6','unit');
INSERT INTO `barang` VALUES (285,NULL,NULL,'2 TABUNG / TWIN TUB WASHER','9',' NA-W60BB4H','6','unit');
INSERT INTO `barang` VALUES (286,NULL,NULL,'2 TABUNG / TWIN TUB WASHER','9',' NA-W70BB4H','6','unit');
INSERT INTO `barang` VALUES (287,NULL,NULL,'2 TABUNG / TWIN TUB WASHER','9',' NA-W60BC1B/R','6','unit');
INSERT INTO `barang` VALUES (288,NULL,NULL,'2 TABUNG / TWIN TUB WASHER','9',' NA-W60FC1B/R','6','unit');
INSERT INTO `barang` VALUES (289,NULL,NULL,'2 TABUNG / TWIN TUB WASHER','9',' NA-W70BC1B/R','6','unit');
INSERT INTO `barang` VALUES (290,NULL,NULL,'2 TABUNG / TWIN TUB WASHER','9',' NA-W70FC1B/R','6','unit');
INSERT INTO `barang` VALUES (291,NULL,NULL,'2 TABUNG / TWIN TUB WASHER','9',' NA-W80BB1W','6','unit');
INSERT INTO `barang` VALUES (292,NULL,NULL,'2 TABUNG / TWIN TUB WASHER','9',' NA-W85BC1B/R','6','unit');
INSERT INTO `barang` VALUES (293,NULL,NULL,'2 TABUNG / TWIN TUB WASHER','9',' NA-W80FB1W','6','unit');
INSERT INTO `barang` VALUES (294,NULL,NULL,'2 TABUNG / TWIN TUB WASHER','9',' NA-W85FC1B/R','6','unit');
INSERT INTO `barang` VALUES (295,NULL,NULL,'2 TABUNG / TWIN TUB WASHER','9',' NA-W90FB1W','6','unit');
INSERT INTO `barang` VALUES (296,NULL,NULL,'2 TABUNG / TWIN TUB WASHER','9',' NA-W95FC1B/R','6','unit');
INSERT INTO `barang` VALUES (297,NULL,NULL,'1 TABUNG / TOP LOADING','9',' NA-F701BHSG','6','unit');
INSERT INTO `barang` VALUES (298,NULL,NULL,'1 TABUNG / TOP LOADING','9',' NA-F852BHSG-1','6','unit');
INSERT INTO `barang` VALUES (299,NULL,NULL,'1 TABUNG / TOP LOADING','9',' NA-F801BHSG','6','unit');
INSERT INTO `barang` VALUES (300,NULL,NULL,'1 TABUNG / TOP LOADING','9',' NA-F902BHSG-1','6','unit');
INSERT INTO `barang` VALUES (301,NULL,NULL,'1 TABUNG / TOP LOADING','9',' NA-F821HLSG','6','unit');
INSERT INTO `barang` VALUES (302,NULL,NULL,'1 TABUNG / TOP LOADING','9',' NA-F902HLSG','6','unit');
INSERT INTO `barang` VALUES (303,NULL,NULL,'1 TABUNG / TOP LOADING','9',' NA-FS80X1WSG','6','unit');
INSERT INTO `barang` VALUES (304,NULL,NULL,'1 TABUNG / TOP LOADING','9',' NA-FS90X1WRV/WSG','6','unit');
INSERT INTO `barang` VALUES (305,NULL,NULL,'1 TABUNG / TOP LOADING','9',' NA-F1011TWSG','6','unit');
INSERT INTO `barang` VALUES (306,NULL,NULL,'1 TABUNG / TOP LOADING','9',' NA-F1002BHSG','6','unit');
INSERT INTO `barang` VALUES (307,NULL,NULL,'1 TABUNG / TOP LOADING','9',' NA-128VA2WNE','6','unit');
INSERT INTO `barang` VALUES (308,NULL,NULL,'1 TABUNG / TOP LOADING','9',' NA-168VX2WNE','6','unit');
INSERT INTO `barang` VALUES (309,NULL,NULL,'KULKAS 1 PINTU','7',' NR-AK5ED','6','unit');
INSERT INTO `barang` VALUES (310,NULL,NULL,'KULKAS 1 PINTU','7',' NR-A17AD-S','6','unit');
INSERT INTO `barang` VALUES (311,NULL,NULL,'KULKAS 1 PINTU','7',' NR-A17KX-H','6','unit');
INSERT INTO `barang` VALUES (312,NULL,NULL,'KULKAS 1 PINTU','7',' NR-AK17AD-H  ','6','unit');
INSERT INTO `barang` VALUES (313,NULL,NULL,'KULKAS 1 PINTU','7',' NR-A18BE-H','6','unit');
INSERT INTO `barang` VALUES (314,NULL,NULL,'KULKAS 1 PINTU','7',' NR-A171S-H','6','unit');
INSERT INTO `barang` VALUES (315,NULL,NULL,'KULKAS 1 PINTU','7',' NR-A171M-S','6','unit');
INSERT INTO `barang` VALUES (316,NULL,NULL,'KULKAS 1 PINTU','7',' NR-A171D-ST','6','unit');
INSERT INTO `barang` VALUES (317,NULL,NULL,'KULKAS 1 PINTU','7',' NR-A191S-H','6','unit');
INSERT INTO `barang` VALUES (318,NULL,NULL,'KULKAS 1 PINTU','7',' NR-A191M-S','6','unit');
INSERT INTO `barang` VALUES (319,NULL,NULL,'KULKAS 1 PINTU','7',' NR-A191D-ST','6','unit');
INSERT INTO `barang` VALUES (320,NULL,NULL,'KULKAS 1 PINTU','7',' NR-A22KN-G/H ','6','unit');
INSERT INTO `barang` VALUES (321,NULL,NULL,'KULKAS 2 PINTU','7',' NR-B203G-S','6','unit');
INSERT INTO `barang` VALUES (322,NULL,NULL,'KULKAS 2 PINTU','7',' NR-B21KX-S','6','unit');
INSERT INTO `barang` VALUES (323,NULL,NULL,'KULKAS 2 PINTU','7',' NR-B23CF-S ','6','unit');
INSERT INTO `barang` VALUES (324,NULL,NULL,'KULKAS 2 PINTU','7',' NR-B23CF-ST','6','unit');
INSERT INTO `barang` VALUES (325,NULL,NULL,'KULKAS 2 PINTU','7',' NR-B25BF-S','6','unit');
INSERT INTO `barang` VALUES (326,NULL,NULL,'KULKAS 2 PINTU','7',' NR-B25GF-S','6','unit');
INSERT INTO `barang` VALUES (327,NULL,NULL,'KULKAS 2 PINTU','7',' NR-B25GF-ST','6','unit');
INSERT INTO `barang` VALUES (328,NULL,NULL,'KULKAS 2 PINTU','7',' NR-B283G-S','6','unit');
INSERT INTO `barang` VALUES (329,NULL,NULL,'FREEZER','7',' NR-S17A','6','unit');
INSERT INTO `barang` VALUES (330,NULL,NULL,'FREEZER','7',' NR-S16G','6','unit');
INSERT INTO `barang` VALUES (331,NULL,NULL,'KULKAS 2 PINTU','7',' NR-B243G-S','6','unit');
INSERT INTO `barang` VALUES (332,NULL,NULL,'KULKAS 2 PINTU','7',' NR-BW414VSWA','6','unit');
INSERT INTO `barang` VALUES (333,NULL,NULL,'KULKAS 2 PINTU','7',' NR-BW414VS1D','6','unit');
INSERT INTO `barang` VALUES (334,NULL,NULL,'KULKAS 2 PINTU','7',' NR-BW414XN1D','6','unit');
INSERT INTO `barang` VALUES (335,NULL,NULL,'KULKAS 2 PINTU','7',' NR-BW464VSWA','6','unit');
INSERT INTO `barang` VALUES (336,NULL,NULL,'KULKAS 2 PINTU','7',' NR-BW464VS1D','6','unit');
INSERT INTO `barang` VALUES (337,NULL,NULL,'KULKAS 2 PINTU','7',' NR-BW464XN1D','6','unit');
INSERT INTO `barang` VALUES (338,NULL,NULL,'KULKAS 2 PINTU','7',' NR-BY551XSWA','6','unit');
INSERT INTO `barang` VALUES (339,NULL,NULL,'KULKAS 2 PINTU','7',' NR-BY551XS1D','6','unit');
INSERT INTO `barang` VALUES (340,NULL,NULL,'KULKAS 2 PINTU','7',' NR-BY551VSWA','6','unit');
INSERT INTO `barang` VALUES (341,NULL,NULL,'KULKAS 2 PINTU','7',' NR-BY551VS1D','6','unit');
INSERT INTO `barang` VALUES (342,NULL,NULL,'KULKAS 2 PINTU','7',' NR-BY601XSWA','6','unit');
INSERT INTO `barang` VALUES (343,NULL,NULL,'KULKAS 2 PINTU','7',' NR-BY601XS1D','6','unit');
INSERT INTO `barang` VALUES (344,NULL,NULL,'KULKAS 2 PINTU','7',' NR-BY601VSWA','6','unit');
INSERT INTO `barang` VALUES (345,NULL,NULL,'KULKAS 2 PINTU','7',' NR-BY601VS1D','6','unit');
INSERT INTO `barang` VALUES (346,NULL,NULL,'KULKAS 2 PINTU','7',' NR-B53VI-X1D','6','unit');
INSERT INTO `barang` VALUES (347,NULL,NULL,' DESK FAN  ','11',' F-EK306-GP','6','unit');
INSERT INTO `barang` VALUES (348,NULL,NULL,' BOX FAN','11',' F-ER303-G1','6','unit');
INSERT INTO `barang` VALUES (349,NULL,NULL,'WALL FAN','11',' F-EU309-GP','6','unit');
INSERT INTO `barang` VALUES (350,NULL,NULL,'WALL FAN','11',' F-EU409-GP','6','unit');
INSERT INTO `barang` VALUES (351,NULL,NULL,'AUTO FAN','11',' F-EQ405-G            ','6','unit');
INSERT INTO `barang` VALUES (352,NULL,NULL,'STAND FAN','11',' F-ES404-G','6','unit');
INSERT INTO `barang` VALUES (353,NULL,NULL,'STAND FAN','11',' F-EP404-G','6','unit');
INSERT INTO `barang` VALUES (354,NULL,NULL,'STAND FAN','11',' F-EP405-G','6','unit');
INSERT INTO `barang` VALUES (355,NULL,NULL,'CEILING FAN','11',' F-EY153-WP','6','unit');
INSERT INTO `barang` VALUES (356,NULL,NULL,' STAND FAN R/C','11',' F-400KI-C','6','unit');
INSERT INTO `barang` VALUES (357,NULL,NULL,' WALL FAN DOUBLE STRING BLADE','11',' F-EU4007-G','6','unit');
INSERT INTO `barang` VALUES (358,NULL,NULL,' WALL FAN R/C BLADE ','11',' F-400MI-W','6','unit');
INSERT INTO `barang` VALUES (359,NULL,NULL,'VENT','12',' FV-25TGU2-TP','6','unit');
INSERT INTO `barang` VALUES (360,NULL,NULL,'VENT','12',' FV-20TGU1-TP','6','unit');
INSERT INTO `barang` VALUES (361,NULL,NULL,'VENT','12',' FV-25RUN3-G ','6','unit');
INSERT INTO `barang` VALUES (362,NULL,NULL,'VENT','12',' FV-30RUN3-G','6','unit');
INSERT INTO `barang` VALUES (363,NULL,NULL,'VENT','12',' FV-40AFU- HP','6','unit');
INSERT INTO `barang` VALUES (364,NULL,NULL,'WATER PUMP','13',' GA-110JBE-P','6','unit');
INSERT INTO `barang` VALUES (365,NULL,NULL,'WATER PUMP','13',' GP-129 JXV-P ','6','unit');
INSERT INTO `barang` VALUES (366,NULL,NULL,'WATER PUMP','13',' GP-129 JXK-P ','6','unit');
INSERT INTO `barang` VALUES (367,NULL,NULL,'WATER PUMP','13',' GA-129JBX-P     ','6','unit');
INSERT INTO `barang` VALUES (368,NULL,NULL,'WATER PUMP','13',' GA-130JAK-P','6','unit');
INSERT INTO `barang` VALUES (369,NULL,NULL,'WATER PUMP','13',' GA-125JBCN-P','6','unit');
INSERT INTO `barang` VALUES (370,NULL,NULL,'WATER PUMP','13',' GA-130JACK-P','6','unit');
INSERT INTO `barang` VALUES (371,NULL,NULL,'WATER PUMP','13',' GP-130JB-P','6','unit');
INSERT INTO `barang` VALUES (372,NULL,NULL,'WATER PUMP','13',' GP-200JA- P    ','6','unit');
INSERT INTO `barang` VALUES (373,NULL,NULL,'WATER PUMP','13',' GP-200JXK-P','6','unit');
INSERT INTO `barang` VALUES (374,NULL,NULL,'WATER PUMP','13',' GA-200JBX-P','6','unit');
INSERT INTO `barang` VALUES (375,NULL,NULL,'WATER PUMP','13',' GA-200JAK-P','6','unit');
INSERT INTO `barang` VALUES (376,NULL,NULL,'WATER PUMP','13',' GN-125 H-P    ','6','unit');
INSERT INTO `barang` VALUES (377,NULL,NULL,'WATER PUMP','13',' GN-130 H-P','6','unit');
INSERT INTO `barang` VALUES (378,NULL,NULL,'WATER PUMP','13',' GN-205HX-P','6','unit');
INSERT INTO `barang` VALUES (379,NULL,NULL,'WATER PUMP','13',' GF-205HCX-P ','6','unit');
INSERT INTO `barang` VALUES (380,NULL,NULL,'WATER PUMP','13',' GF-255HCX-P','6','unit');
INSERT INTO `barang` VALUES (381,NULL,NULL,'MICROWAVE OVEN','14',' NN-C784MFTTE','6','unit');
INSERT INTO `barang` VALUES (382,NULL,NULL,'MICROWAVE OVEN','14',' NN-S235MFTTE','6','unit');
INSERT INTO `barang` VALUES (383,NULL,NULL,'MICROWAVE OVEN','14',' NN-CS599SYTE','6','unit');
INSERT INTO `barang` VALUES (384,NULL,NULL,'MICROWAVE OVEN','14',' NN-GD579STTE','6','unit');
INSERT INTO `barang` VALUES (385,NULL,NULL,'MICROWAVE OVEN','14',' NN-GF569MTTE','6','unit');
INSERT INTO `barang` VALUES (386,NULL,NULL,'MICROWAVE OVEN','14',' NN-SF559WTTE','6','unit');
INSERT INTO `barang` VALUES (387,NULL,NULL,'MICROWAVE OVEN','14',' NN-ST557MTTE','6','unit');
INSERT INTO `barang` VALUES (388,NULL,NULL,'MICROWAVE OVEN','14',' NN-GT547WTTE ','6','unit');
INSERT INTO `barang` VALUES (389,NULL,NULL,'MICROWAVE OVEN','14',' NN-SM209WTTE','6','unit');
INSERT INTO `barang` VALUES (390,NULL,NULL,'MAGIC COM','15',' SR-TEG18HLSR','6','unit');
INSERT INTO `barang` VALUES (391,NULL,NULL,'MAGIC COM','15',' SR-TEG18MBSR','6','unit');
INSERT INTO `barang` VALUES (392,NULL,NULL,'MAGIC COM','15',' SR-MG182WSR','6','unit');
INSERT INTO `barang` VALUES (393,NULL,NULL,'MAGIC COM','15',' SR-DE182WSR','6','unit');
INSERT INTO `barang` VALUES (394,NULL,NULL,'MAGIC COM','15',' SR-TMG18LSR','6','unit');
INSERT INTO `barang` VALUES (395,NULL,NULL,'BLENDER','16',' MX-J1GWSR','6','unit');
INSERT INTO `barang` VALUES (396,NULL,NULL,'BLENDER','16',' MX-J1GWSR-S','6','unit');
INSERT INTO `barang` VALUES (397,NULL,NULL,'BLENDER','16',' MX-J1GWSR-M','6','unit');
INSERT INTO `barang` VALUES (398,NULL,NULL,'BLENDER','16',' MX-J210GNWSR','6','unit');
INSERT INTO `barang` VALUES (399,NULL,NULL,'JUICER','17',' MJ-68MWTC','6','unit');
INSERT INTO `barang` VALUES (400,NULL,NULL,'ELECTRIC IRON','18',' NI-22AWTSR','6','unit');
INSERT INTO `barang` VALUES (401,NULL,NULL,'ELECTRIC IRON','18','  NI-222FR ','6','unit');
INSERT INTO `barang` VALUES (402,NULL,NULL,'ELECTRIC IRON','18','  NI-318FR','6','unit');
INSERT INTO `barang` VALUES (403,NULL,NULL,'STEAM IRON','19',' NI-S200TSASR/TSGSR','6','unit');
INSERT INTO `barang` VALUES (404,NULL,NULL,'STEAM IRON','19',' NI-S500TSASR','6','unit');
INSERT INTO `barang` VALUES (405,NULL,NULL,'SHAVER DRY','20',' ES-7111W453','6','unit');
INSERT INTO `barang` VALUES (406,NULL,NULL,'SHAVER DRY','20',' ES-RT30-S453','6','unit');
INSERT INTO `barang` VALUES (407,NULL,NULL,'SHAVER DRY','20',' ES-2027VP451','6','unit');
INSERT INTO `barang` VALUES (408,NULL,NULL,'SHAVER DRY','20',' ES-4036S451','6','unit');
INSERT INTO `barang` VALUES (409,NULL,NULL,'HAIR DRYER','HAIR DRYER',' EH-5201AP415','6','unit');
INSERT INTO `barang` VALUES (410,NULL,NULL,'HAIR DRYER','HAIR DRYER',' EH-5271A615','6','unit');
INSERT INTO `barang` VALUES (411,NULL,NULL,'HAIR DRYER','HAIR DRYER',' EH-5373A615','6','unit');
INSERT INTO `barang` VALUES (412,NULL,NULL,'VACUUM CLEANER','21',' MC-4620J/Z186','6','unit');
INSERT INTO `barang` VALUES (413,NULL,NULL,'VACUUM CLEANER','21',' MC-3920 A 586','6','unit');
INSERT INTO `barang` VALUES (414,NULL,NULL,'VACUUM CLEANER','21',' MC-3920 G 586','6','unit');
INSERT INTO `barang` VALUES (415,NULL,NULL,'AIR PURIFIER','22',' F-PXC50ASN','6','unit');
INSERT INTO `barang` VALUES (416,NULL,NULL,'AIR PURIFIER','22',' F-PJD35AWN','6','unit');
INSERT INTO `barang` VALUES (417,NULL,NULL,'LCD TV 19\"','4','TH - L19C20X','6','unit');
INSERT INTO `barang` VALUES (418,NULL,NULL,'LCD TV 24\"','4','TH - L24C20X','6','unit');
INSERT INTO `barang` VALUES (419,NULL,NULL,'LCD TV 32\"','4','TH - L32C20X','6','unit');
INSERT INTO `barang` VALUES (420,NULL,NULL,'LCD TV 32\"','4','TH - L32D25S','6','unit');
INSERT INTO `barang` VALUES (421,NULL,NULL,'LCD TV 32\"','4','TH - L32U20S','6','unit');
INSERT INTO `barang` VALUES (422,NULL,NULL,'LCD TV 32\"','4','TH - L32X20S','6','unit');
INSERT INTO `barang` VALUES (423,NULL,NULL,'LCD TV 37\"','4','TH - L37X20X','6','unit');
INSERT INTO `barang` VALUES (424,NULL,NULL,'LCD TV 42\"','4','TH - L37U20S','6','unit');
INSERT INTO `barang` VALUES (425,NULL,NULL,'LCD TV 42\"','4','TH - L42D25S','6','unit');
INSERT INTO `barang` VALUES (426,NULL,NULL,'LCD TV 42\"','4','TH - L42S10X','6','unit');
INSERT INTO `barang` VALUES (427,NULL,NULL,'LCD TV 42\"','4','TH - L42U20S','6','unit');
INSERT INTO `barang` VALUES (428,NULL,NULL,'LCD TV 42\"','4','TH - L42D20S','6','unit');
INSERT INTO `barang` VALUES (429,NULL,NULL,'LCD TV 42\"','4','TH - L42S25S','6','unit');
INSERT INTO `barang` VALUES (430,NULL,NULL,'PLASMA TV 42\"','PLASMA TV','TH - P42A2G','6','unit');
INSERT INTO `barang` VALUES (431,NULL,NULL,'PLASMA TV 42\"','PLASMA TV','TH - P42C10S','6','unit');
INSERT INTO `barang` VALUES (432,NULL,NULL,'PLASMA TV 42\"','PLASMA TV','TH - P42A2G','6','unit');
INSERT INTO `barang` VALUES (433,NULL,NULL,'PLASMA TV 42\"','PLASMA TV','TH - P42G10S','6','unit');
INSERT INTO `barang` VALUES (434,NULL,NULL,'PLASMA TV 42\"','PLASMA TV','TH - P42S10S','6','unit');
INSERT INTO `barang` VALUES (435,NULL,NULL,'PLASMA TV 42\"','PLASMA TV','TH - P42X10S','6','unit');
INSERT INTO `barang` VALUES (436,NULL,NULL,'PLASMA TV 42\"','PLASMA TV','TH - P42X20G','6','unit');
INSERT INTO `barang` VALUES (437,NULL,NULL,'PLASMA TV 42\"','PLASMA TV','TH - P42V20G','6','unit');
INSERT INTO `barang` VALUES (438,NULL,NULL,'PLASMA TV 46\"','PLASMA TV','TH - P46X2G','6','unit');
INSERT INTO `barang` VALUES (439,NULL,NULL,'PLASMA TV 46\"','PLASMA TV','TH - P46U20G','6','unit');
INSERT INTO `barang` VALUES (440,NULL,NULL,'PLASMA TV 46\"','PLASMA TV','TH - P46V20G','6','unit');
INSERT INTO `barang` VALUES (441,NULL,NULL,'PLASMA TV 50\"','PLASMA TV','TH - P50C10S','6','unit');
INSERT INTO `barang` VALUES (442,NULL,NULL,'PLASMA TV 50\"','PLASMA TV','TH - P50X10S','6','unit');
INSERT INTO `barang` VALUES (443,NULL,NULL,'PLASMA TV 50\"','PLASMA TV','TH - P50X20G','6','unit');
INSERT INTO `barang` VALUES (444,NULL,NULL,'PLASMA TV 50\"','PLASMA TV','TH - P50V10S','6','unit');
INSERT INTO `barang` VALUES (445,NULL,NULL,'PLASMA TV 50\"','PLASMA TV','TH - P50S10S','6','unit');
INSERT INTO `barang` VALUES (446,NULL,NULL,'PLASMA TV 50\"','PLASMA TV','TH - P50U20G','6','unit');
INSERT INTO `barang` VALUES (447,NULL,NULL,'PLASMA TV 50\"','PLASMA TV','TH - P50VT20G','6','unit');
INSERT INTO `barang` VALUES (448,NULL,NULL,'PLASMA TV 54\"','PLASMA TV','TH - P54Z1S','6','unit');
INSERT INTO `barang` VALUES (449,NULL,NULL,'PLASMA TV 65\"','PLASMA TV','TH - P65V10S','6','unit');
INSERT INTO `barang` VALUES (450,NULL,NULL,'PLASMA TV 65\"','PLASMA TV','TH - P65VT20G','6','unit');
INSERT INTO `barang` VALUES (451,NULL,NULL,'MINI COMPO','10',' SC - VK 480GCSK','6','unit');
INSERT INTO `barang` VALUES (452,NULL,NULL,'MINI COMPO','10',' SC - VK 680GA-K','6','unit');
INSERT INTO `barang` VALUES (453,NULL,NULL,'MINI COMPO','10',' SC - VK 880GA-K','6','unit');
INSERT INTO `barang` VALUES (454,NULL,NULL,'MINI COMPO','10',' SC - HC 20GA-K','6','unit');
INSERT INTO `barang` VALUES (455,NULL,NULL,'MINI COMPO','10',' SC - HC 30GA-S','6','unit');
INSERT INTO `barang` VALUES (456,NULL,NULL,'MINI COMPO','10',' SC - SP 100GS-K','6','unit');
INSERT INTO `barang` VALUES (457,NULL,NULL,'HOME THEATER SYSTEM','10',' SC - BT735GA-K','6','unit');
INSERT INTO `barang` VALUES (458,NULL,NULL,'HOME THEATER SYSTEM','10',' SC - BT230GA-K','6','unit');
INSERT INTO `barang` VALUES (459,NULL,NULL,'HOME THEATER SYSTEM','10',' SC - PT22GA-K','6','unit');
INSERT INTO `barang` VALUES (460,NULL,NULL,'HOME THEATER SYSTEM','10',' SC - PT580GA-K','6','unit');
INSERT INTO `barang` VALUES (461,NULL,NULL,'HOME THEATER SYSTEM','10',' SC - PT75GA-K','6','unit');
INSERT INTO `barang` VALUES (462,NULL,NULL,'HOME THEATER SYSTEM','10',' SC - PT870GA-K','6','unit');
INSERT INTO `barang` VALUES (463,NULL,NULL,'HOME THEATER SYSTEM','10',' SC - PT980GA-K','6','unit');
INSERT INTO `barang` VALUES (464,NULL,NULL,'DVD PLAYER','10',' DVD-KA84GA-K','6','unit');
INSERT INTO `barang` VALUES (465,NULL,NULL,'DVD PLAYER','10',' DVD-LS84GA-K','6','unit');
INSERT INTO `barang` VALUES (466,NULL,NULL,'DVD PLAYER','10',' DVD-LS86GCSK','6','unit');
INSERT INTO `barang` VALUES (467,NULL,NULL,'DVD PLAYER','10',' DVD-S38GA-K','6','unit');
INSERT INTO `barang` VALUES (468,NULL,NULL,'DVD PLAYER','10',' DVD-S58GA-K','6','unit');
INSERT INTO `barang` VALUES (469,NULL,NULL,'DVD PLAYER','10',' DMP-B100GA-S','6','unit');
INSERT INTO `barang` VALUES (470,NULL,NULL,'DVD PLAYER','10',' DMP-BDT300GA','6','unit');
INSERT INTO `barang` VALUES (471,NULL,NULL,'DVD PLAYER','10',' DMP-BD85GA-K','6','unit');
INSERT INTO `barang` VALUES (472,NULL,NULL,'DVD PLAYER','10',' DMP-BD45GA-K','6','unit');
INSERT INTO `barang` VALUES (473,NULL,NULL,'DVD PLAYER','10',' DMP-BD60GA-K','6','unit');
INSERT INTO `barang` VALUES (474,NULL,NULL,'LCD TV 19\"','4','LC-19LE520M-BK/RD/WH','3','unit');
INSERT INTO `barang` VALUES (475,NULL,NULL,'LCD TV 22\"','4','LC-22LE520M-BK/RD/WH','3','unit');
INSERT INTO `barang` VALUES (476,NULL,NULL,'LCD TV 22\"','4','LC-22L10M-GY/BK','3','unit');
INSERT INTO `barang` VALUES (477,NULL,NULL,'LCD TV 22\"','4','LC-22L50M-BK/RD','3','unit');
INSERT INTO `barang` VALUES (478,NULL,NULL,'LCD TV 32\"','4','LC-32A37M','3','unit');
INSERT INTO `barang` VALUES (479,NULL,NULL,'LCD TV 32\"','4','LC-32A39I','3','unit');
INSERT INTO `barang` VALUES (480,NULL,NULL,'LCD TV 32\"','4','LC-32L50M-BK/WH/RD','3','unit');
INSERT INTO `barang` VALUES (481,NULL,NULL,'LCD TV 32\"','4','LC-32L400M','3','unit');
INSERT INTO `barang` VALUES (482,NULL,NULL,'LCD TV 32\"','4','LC-32L400M-(BK/WH/RD)','3','unit');
INSERT INTO `barang` VALUES (483,NULL,NULL,'LCD TV 32\"','4','LC-32L450M','3','unit');
INSERT INTO `barang` VALUES (484,NULL,NULL,'LCD TV 32\"','4','LC-32L450M-WH','3','unit');
INSERT INTO `barang` VALUES (485,NULL,NULL,'LCD TV 32\"','4','LC-32L407I','3','unit');
INSERT INTO `barang` VALUES (486,NULL,NULL,'LCD TV 32\"','4','LC-32L407I/BB/TB/MB','3','unit');
INSERT INTO `barang` VALUES (487,NULL,NULL,'LCD TV 32\"','4','LC-32L407I-SS/MM/RR','3','unit');
INSERT INTO `barang` VALUES (488,NULL,NULL,'LCD TV 32\"','4','LC-32L407I-KB/KS','3','unit');
INSERT INTO `barang` VALUES (489,NULL,NULL,'LCD TV 40\"','4','LC-40L50M','3','unit');
INSERT INTO `barang` VALUES (490,NULL,NULL,'LCD TV 40\"','4','LC-40L55M','3','unit');
INSERT INTO `barang` VALUES (491,NULL,NULL,'LCD TV 40\"','4','LC-40L500M','3','unit');
INSERT INTO `barang` VALUES (492,NULL,NULL,'LCD TV 40\"','4','LC-40L500M-WH','3','unit');
INSERT INTO `barang` VALUES (493,NULL,NULL,'LCD TV 40\"','4','LC-40L550M','3','unit');
INSERT INTO `barang` VALUES (494,NULL,NULL,'LCD TV 40\"','4','LC-40L650M','3','unit');
INSERT INTO `barang` VALUES (495,NULL,NULL,'LED TV 40\"','5','LC-40LE700M','3','unit');
INSERT INTO `barang` VALUES (496,NULL,NULL,'LED TV 40\"','5','LC-40LE820M','3','unit');
INSERT INTO `barang` VALUES (497,NULL,NULL,'LED TV 40\"','5','LC-40LE830M','3','unit');
INSERT INTO `barang` VALUES (498,NULL,NULL,'LED TV 40\"','5','LC-40LB700M','3','unit');
INSERT INTO `barang` VALUES (499,NULL,NULL,'LED TV 46\"','5','LC-46LE820M','3','unit');
INSERT INTO `barang` VALUES (500,NULL,NULL,'LED TV 46\"','5','LC-46LE830M','3','unit');
INSERT INTO `barang` VALUES (501,NULL,NULL,'LED TV 46\"','5','LC-46LB700M','3','unit');
INSERT INTO `barang` VALUES (502,NULL,NULL,'LCD TV 46\"','4','LC-46A66M','3','unit');
INSERT INTO `barang` VALUES (503,NULL,NULL,'LCD TV 46\"','4','LC-46A77M','3','unit');
INSERT INTO `barang` VALUES (504,NULL,NULL,'LED TV 52\"','5','LC-52LE820M','3','unit');
INSERT INTO `barang` VALUES (505,NULL,NULL,'LED TV 52\"','5','LC-52LE830M','3','unit');
INSERT INTO `barang` VALUES (506,NULL,NULL,'LCD TV 52\"','4','LC-52A77M','3','unit');
INSERT INTO `barang` VALUES (507,NULL,NULL,'LCD TV 60\"','4','LC-60A77M','3','unit');
INSERT INTO `barang` VALUES (508,NULL,NULL,'LED TV 60\"','5','LC-60LE925M','3','unit');
INSERT INTO `barang` VALUES (509,NULL,NULL,'LCD TV 65\"','4','LC-65XS1M','3','unit');
INSERT INTO `barang` VALUES (510,NULL,NULL,'LCD TV 37\"','4','LC-37A66M','3','unit');
INSERT INTO `barang` VALUES (511,NULL,NULL,'LED TV 3D','5','AN-3DG10-S','3','unit');
INSERT INTO `barang` VALUES (512,NULL,NULL,'COLOR TV 14\"','1','14GX20MK2','3','unit');
INSERT INTO `barang` VALUES (513,NULL,NULL,'COLOR TV 14\"','1','14GX20A','3','unit');
INSERT INTO `barang` VALUES (514,NULL,NULL,'COLOR TV 14\"','1','14GX200/MK2','3','unit');
INSERT INTO `barang` VALUES (515,NULL,NULL,'COLOR TV 14\"','1','14GX200A','3','unit');
INSERT INTO `barang` VALUES (516,NULL,NULL,'COLOR TV 14\"','1','14S20D2/D3','3','unit');
INSERT INTO `barang` VALUES (517,NULL,NULL,'COLOR TV 14\"','1','14S20DA','3','unit');
INSERT INTO `barang` VALUES (518,NULL,NULL,'COLOR TV 14\"','1','14V20D2/D3','3','unit');
INSERT INTO `barang` VALUES (519,NULL,NULL,'COLOR TV 14\"','1','14V20A','3','unit');
INSERT INTO `barang` VALUES (520,NULL,NULL,'COLOR TV 14\"','1','14A20D2/D3','3','unit');
INSERT INTO `barang` VALUES (521,NULL,NULL,'COLOR TV 14\"','1','14R20D3','3','unit');
INSERT INTO `barang` VALUES (522,NULL,NULL,'COLOR TV 14\"','1','14R20A','3','unit');
INSERT INTO `barang` VALUES (523,NULL,NULL,'COLOR TV 14\"','1','14X20D2/D3','3','unit');
INSERT INTO `barang` VALUES (524,NULL,NULL,'COLOR TV 14\"','1','14X20A','3','unit');
INSERT INTO `barang` VALUES (525,NULL,NULL,'COLOR TV 14\"','1','14E25MK3','3','unit');
INSERT INTO `barang` VALUES (526,NULL,NULL,'COLOR TV 14\"','1','14E25A','3','unit');
INSERT INTO `barang` VALUES (527,NULL,NULL,'COLOR TV 14\"','1','14E35MK2/MK3','3','unit');
INSERT INTO `barang` VALUES (528,NULL,NULL,'COLOR TV 14\"','1','14E35A','3','unit');
INSERT INTO `barang` VALUES (529,NULL,NULL,'COLOR TV 14\"','1','14B25MK2','3','unit');
INSERT INTO `barang` VALUES (530,NULL,NULL,'COLOR TV 14\"','1','14B25A','3','unit');
INSERT INTO `barang` VALUES (531,NULL,NULL,'COLOR TV 20\"','1','20S20D2/D3','3','unit');
INSERT INTO `barang` VALUES (532,NULL,NULL,'COLOR TV 21\"','1','21V20D3','3','unit');
INSERT INTO `barang` VALUES (533,NULL,NULL,'COLOR TV FLAT 21\"','1','21EF25MK3','3','unit');
INSERT INTO `barang` VALUES (534,NULL,NULL,'COLOR TV FLAT 21\"','1','21EF25A','3','unit');
INSERT INTO `barang` VALUES (535,NULL,NULL,'COLOR TV FLAT 21\"','1','21EF35MK3','3','unit');
INSERT INTO `barang` VALUES (536,NULL,NULL,'COLOR TV FLAT 21\"','1','21EF35A','3','unit');
INSERT INTO `barang` VALUES (537,NULL,NULL,'COLOR TV FLAT 21\"','1','21EF250 / 21EF250MK2/MK3','3','unit');
INSERT INTO `barang` VALUES (538,NULL,NULL,'COLOR TV FLAT 21\"','1','21EXS253E','3','unit');
INSERT INTO `barang` VALUES (539,NULL,NULL,'COLOR TV FLAT 21\"','1','21EXS253E2','3','unit');
INSERT INTO `barang` VALUES (540,NULL,NULL,'COLOR TV FLAT 21\"','1','21EXS288RD/WH','3','unit');
INSERT INTO `barang` VALUES (541,NULL,NULL,'COLOR TV FLAT 21\"','1','21EXS288WH2','3','unit');
INSERT INTO `barang` VALUES (542,NULL,NULL,'COLOR TV FLAT 21\"','1','21EXS288RD2','3','unit');
INSERT INTO `barang` VALUES (543,NULL,NULL,'COLOR TV FLAT 21\"','1','21EXS350','3','unit');
INSERT INTO `barang` VALUES (544,NULL,NULL,'COLOR TV FLAT 21\"','1','21EXS350MK2','3','unit');
INSERT INTO `barang` VALUES (545,NULL,NULL,'COLOR TV FLAT 21\"','1','21EXS388RD','3','unit');
INSERT INTO `barang` VALUES (546,NULL,NULL,'COLOR TV FLAT 21\"','1','21EXS388RD2','3','unit');
INSERT INTO `barang` VALUES (547,NULL,NULL,'COLOR TV FLAT 21\"','1','21AS253E2','3','unit');
INSERT INTO `barang` VALUES (548,NULL,NULL,'COLOR TV FLAT 21\"','1','21AS253E3','3','unit');
INSERT INTO `barang` VALUES (549,NULL,NULL,'COLOR TV FLAT 21\"','1','21AS258E2','3','unit');
INSERT INTO `barang` VALUES (550,NULL,NULL,'COLOR TV FLAT 21\"','1','21AS258E3','3','unit');
INSERT INTO `barang` VALUES (551,NULL,NULL,'COLOR TV FLAT 21\"','1','21AS353E2','3','unit');
INSERT INTO `barang` VALUES (552,NULL,NULL,'COLOR TV FLAT 21\"','1','21AS353E3','3','unit');
INSERT INTO `barang` VALUES (553,NULL,NULL,'COLOR TV FLAT 21\"','1','21AS355E2','3','unit');
INSERT INTO `barang` VALUES (554,NULL,NULL,'COLOR TV FLAT 21\"','1','21AS355E3','3','unit');
INSERT INTO `barang` VALUES (555,NULL,NULL,'COLOR TV FLAT 21\"','1','21EJF250E2/E3','3','unit');
INSERT INTO `barang` VALUES (556,NULL,NULL,'COLOR TV FLAT 21\"','1','21EF250A','3','unit');
INSERT INTO `barang` VALUES (557,NULL,NULL,'COLOR TV FLAT 21\"','1','21EJF250EA','3','unit');
INSERT INTO `barang` VALUES (558,NULL,NULL,'COLOR TV FLAT 21\"','1','21ESF250E3','3','unit');
INSERT INTO `barang` VALUES (559,NULL,NULL,'COLOR TV FLAT 21\"','1','21ESF250EA','3','unit');
INSERT INTO `barang` VALUES (560,NULL,NULL,'COLOR TV FLAT 21\"','1','21ESF251E3','3','unit');
INSERT INTO `barang` VALUES (561,NULL,NULL,'COLOR TV FLAT 21\"','1','21ESF251EA','3','unit');
INSERT INTO `barang` VALUES (562,NULL,NULL,'COLOR TV FLAT 21\"','1','21ES251E','3','unit');
INSERT INTO `barang` VALUES (563,NULL,NULL,'COLOR TV FLAT 21\"','1','21ES251E2','3','unit');
INSERT INTO `barang` VALUES (564,NULL,NULL,'COLOR TV FLAT 21\"','1','21ES353E','3','unit');
INSERT INTO `barang` VALUES (565,NULL,NULL,'COLOR TV FLAT 21\"','1','21ES353E2','3','unit');
INSERT INTO `barang` VALUES (566,NULL,NULL,'COLOR TV FLAT 21\"','1','21ES253E','3','unit');
INSERT INTO `barang` VALUES (567,NULL,NULL,'COLOR TV FLAT 21\"','1','21ES253E2','3','unit');
INSERT INTO `barang` VALUES (568,NULL,NULL,'COLOR TV FLAT 21\"','1','21PF255EA','3','unit');
INSERT INTO `barang` VALUES (569,NULL,NULL,'COLOR TV FLAT 21\"','1','21PF352E3','3','unit');
INSERT INTO `barang` VALUES (570,NULL,NULL,'COLOR TV FLAT 21\"','1','21PF353E2','3','unit');
INSERT INTO `barang` VALUES (571,NULL,NULL,'COLOR TV FLAT 21\"','1','21PF355E3','3','unit');
INSERT INTO `barang` VALUES (572,NULL,NULL,'COLOR TV FLAT 21\"','1','21PF355EA','3','unit');
INSERT INTO `barang` VALUES (573,NULL,NULL,'COLOR TV FLAT 21\"','1','21PF353E3','3','unit');
INSERT INTO `barang` VALUES (574,NULL,NULL,'COLOR TV FLAT 21\"','1','21PF353EA','3','unit');
INSERT INTO `barang` VALUES (575,NULL,NULL,'COLOR TV FLAT 21\"','1','21PXF250E3','3','unit');
INSERT INTO `barang` VALUES (576,NULL,NULL,'COLOR TV FLAT 21\"','1','21PXF250EA','3','unit');
INSERT INTO `barang` VALUES (577,NULL,NULL,'COLOR TV FLAT 21\"','1','21GXF250E3','3','unit');
INSERT INTO `barang` VALUES (578,NULL,NULL,'COLOR TV FLAT 21\"','1','21GF352E3','3','unit');
INSERT INTO `barang` VALUES (579,NULL,NULL,'COLOR TV FLAT 21\"','1','21GF353E','3','unit');
INSERT INTO `barang` VALUES (580,NULL,NULL,'COLOR TV FLAT 21\"','1','21GF353E2','3','unit');
INSERT INTO `barang` VALUES (581,NULL,NULL,'COLOR TV FLAT 21\"','1','21GXS200','3','unit');
INSERT INTO `barang` VALUES (582,NULL,NULL,'COLOR TV FLAT 21\"','1','21GXS250E','3','unit');
INSERT INTO `barang` VALUES (583,NULL,NULL,'COLOR TV FLAT 21\"','1','21GXS288RD','3','unit');
INSERT INTO `barang` VALUES (584,NULL,NULL,'COLOR TV FLAT 21\"','1','21GXS500','3','unit');
INSERT INTO `barang` VALUES (585,NULL,NULL,'COLOR TV FLAT 21\"','1','21GXS500MK2','3','unit');
INSERT INTO `barang` VALUES (586,NULL,NULL,'COLOR TV FLAT 21\"','1','21GXS600U','3','unit');
INSERT INTO `barang` VALUES (587,NULL,NULL,'COLOR TV FLAT 21\"','1','21GS353E','3','unit');
INSERT INTO `barang` VALUES (588,NULL,NULL,'COLOR TV FLAT 21\"','1','21GS352E','3','unit');
INSERT INTO `barang` VALUES (589,NULL,NULL,'COLOR TV FLAT 21\"','1','21DS350E','3','unit');
INSERT INTO `barang` VALUES (590,NULL,NULL,'COLOR TV FLAT 21\"','1','21DS350E2','3','unit');
INSERT INTO `barang` VALUES (591,NULL,NULL,'COLOR TV FLAT 21\"','1','21DS353E','3','unit');
INSERT INTO `barang` VALUES (592,NULL,NULL,'COLOR TV FLAT 21\"','1','21DS353E2','3','unit');
INSERT INTO `barang` VALUES (593,NULL,NULL,'COLOR TV FLAT 21\"','1','21DS355E','3','unit');
INSERT INTO `barang` VALUES (594,NULL,NULL,'COLOR TV FLAT 21\"','1','21DS355E2','3','unit');
INSERT INTO `barang` VALUES (595,NULL,NULL,'COLOR TV FLAT 21\"','1','21DXS200','3','unit');
INSERT INTO `barang` VALUES (596,NULL,NULL,'COLOR TV FLAT 21\"','1','21DXS200MK2','3','unit');
INSERT INTO `barang` VALUES (597,NULL,NULL,'COLOR TV FLAT 21\"','1','21DXS250E','3','unit');
INSERT INTO `barang` VALUES (598,NULL,NULL,'COLOR TV FLAT 21\"','1','21DXS250E2','3','unit');
INSERT INTO `barang` VALUES (599,NULL,NULL,'COLOR TV FLAT 21\"','1','21DXS288BR/MB','3','unit');
INSERT INTO `barang` VALUES (600,NULL,NULL,'COLOR TV FLAT 21\"','1','21DXS288BR2/MB2','3','unit');
INSERT INTO `barang` VALUES (601,NULL,NULL,'COLOR TV FLAT 21\"','1','21DXS288MR','3','unit');
INSERT INTO `barang` VALUES (602,NULL,NULL,'COLOR TV FLAT 21\"','1','21DXS288MR2','3','unit');
INSERT INTO `barang` VALUES (603,NULL,NULL,'COLOR TV FLAT 21\"','1','21DXS288RD','3','unit');
INSERT INTO `barang` VALUES (604,NULL,NULL,'COLOR TV FLAT 21\"','1','21DXS288RD2','3','unit');
INSERT INTO `barang` VALUES (605,NULL,NULL,'COLOR TV FLAT 21\"','1','21DXS500','3','unit');
INSERT INTO `barang` VALUES (606,NULL,NULL,'COLOR TV FLAT 21\"','1','21DXS500MK2','3','unit');
INSERT INTO `barang` VALUES (607,NULL,NULL,'COLOR TV FLAT 21\"','1','21DXS888RD','3','unit');
INSERT INTO `barang` VALUES (608,NULL,NULL,'COLOR TV FLAT 21\"','1','21DXS888BR/MB/MR','3','unit');
INSERT INTO `barang` VALUES (609,NULL,NULL,'COLOR TV FLAT 21\"','1','21PXF500 / 21PXF500MK2','3','unit');
INSERT INTO `barang` VALUES (610,NULL,NULL,'COLOR TV FLAT 21\"','1','21GXF500 / 21GXF500MK2','3','unit');
INSERT INTO `barang` VALUES (611,NULL,NULL,'COLOR TV FLAT 21\"','1','21AHS253E2','3','unit');
INSERT INTO `barang` VALUES (612,NULL,NULL,'COLOR TV FLAT 21\"','1','21AXS250E2','3','unit');
INSERT INTO `barang` VALUES (613,NULL,NULL,'COLOR TV FLAT 21\"','1','21AXS250E3','3','unit');
INSERT INTO `barang` VALUES (614,NULL,NULL,'COLOR TV FLAT 21\"','1','21AXS288RD','3','unit');
INSERT INTO `barang` VALUES (615,NULL,NULL,'COLOR TV FLAT 21\"','1','21AXS288RD2','3','unit');
INSERT INTO `barang` VALUES (616,NULL,NULL,'COLOR TV FLAT 21\"','1','21JS250EB','3','unit');
INSERT INTO `barang` VALUES (617,NULL,NULL,'COLOR TV FLAT 21\"','1','21JS250TB','3','unit');
INSERT INTO `barang` VALUES (618,NULL,NULL,'COLOR TV FLAT 21\"','1','29PTF250/MK2','3','unit');
INSERT INTO `barang` VALUES (619,NULL,NULL,'COLOR TV FLAT 21\"','1','29GTF250/MK2','3','unit');
INSERT INTO `barang` VALUES (620,NULL,NULL,'COLOR TV FLAT 21\"','1','29PXF200MK2','3','unit');
INSERT INTO `barang` VALUES (621,NULL,NULL,'COLOR TV FLAT 21\"','1','29GXF200MK2','3','unit');
INSERT INTO `barang` VALUES (622,NULL,NULL,'COLOR TV FLAT 21\"','1','29DXS200','3','unit');
INSERT INTO `barang` VALUES (623,NULL,NULL,'COLOR TV FLAT 21\"','1','29DXS200MK2','3','unit');
INSERT INTO `barang` VALUES (624,NULL,NULL,'COLOR TV FLAT 21\"','1','29DXS250E','3','unit');
INSERT INTO `barang` VALUES (625,NULL,NULL,'COLOR TV FLAT 21\"','1','29DXS250E2','3','unit');
INSERT INTO `barang` VALUES (626,NULL,NULL,'COLOR TV FLAT 21\"','1','29DXS253E','3','unit');
INSERT INTO `barang` VALUES (627,NULL,NULL,'COLOR TV FLAT 21\"','1','29DXS253E2','3','unit');
INSERT INTO `barang` VALUES (628,NULL,NULL,'COLOR TV FLAT 21\"','1','29DXS288BR/MB/MR','3','unit');
INSERT INTO `barang` VALUES (629,NULL,NULL,'COLOR TV FLAT 21\"','1','29DXS288BR2/MB2/MR2','3','unit');
INSERT INTO `barang` VALUES (630,NULL,NULL,'COLOR TV FLAT 21\"','1','29DXS288RD','3','unit');
INSERT INTO `barang` VALUES (631,NULL,NULL,'COLOR TV FLAT 21\"','1','29DXS288RD2','3','unit');
INSERT INTO `barang` VALUES (632,NULL,NULL,'COLOR TV FLAT 21\"','1','29DXS500','3','unit');
INSERT INTO `barang` VALUES (633,NULL,NULL,'COLOR TV FLAT 21\"','1','29AXS250E/29AXS250E2','3','unit');
INSERT INTO `barang` VALUES (634,NULL,NULL,'COLOR TV FLAT 21\"','1','29AXS250E3','3','unit');
INSERT INTO `barang` VALUES (635,NULL,NULL,'COLOR TV FLAT 21\"','1','29AXS288RD2','3','unit');
INSERT INTO `barang` VALUES (636,NULL,NULL,'COLOR TV FLAT 21\"','1','14B25','3','unit');
INSERT INTO `barang` VALUES (637,NULL,NULL,'COLOR TV FLAT 21\"','1','14GX20','3','unit');
INSERT INTO `barang` VALUES (638,NULL,NULL,'COLOR TV FLAT 21\"','1','14X20D / 14X20D2','3','unit');
INSERT INTO `barang` VALUES (639,NULL,NULL,'COLOR TV FLAT 21\"','1','14E25 / 14E25MK2','3','unit');
INSERT INTO `barang` VALUES (640,NULL,NULL,'COLOR TV FLAT 21\"','1','14R20D / 14R20D2','3','unit');
INSERT INTO `barang` VALUES (641,NULL,NULL,'COLOR TV FLAT 21\"','1','21AXS888RD','3','unit');
INSERT INTO `barang` VALUES (642,NULL,NULL,'COLOR TV FLAT 21\"','1','21AXS888GY','3','unit');
INSERT INTO `barang` VALUES (643,NULL,NULL,'COLOR TV FLAT 21\"','1','21BXS353','3','unit');
INSERT INTO `barang` VALUES (644,NULL,NULL,'COLOR TV FLAT 21\"','1','21CF250 / 21CF250MK2','3','unit');
INSERT INTO `barang` VALUES (645,NULL,NULL,'COLOR TV FLAT 21\"','1','21QXF250E2','3','unit');
INSERT INTO `barang` VALUES (646,NULL,NULL,'COLOR TV FLAT 21\"','1','21DF251E / 21DF251E2','3','unit');
INSERT INTO `barang` VALUES (647,NULL,NULL,'COLOR TV FLAT 21\"','1','21DF351E / 21DF351E2','3','unit');
INSERT INTO `barang` VALUES (648,NULL,NULL,'COLOR TV FLAT 21\"','1','21DXF252E / 21DXF252E2','3','unit');
INSERT INTO `barang` VALUES (649,NULL,NULL,'COLOR TV FLAT 21\"','1','21DXF252E3','3','unit');
INSERT INTO `barang` VALUES (650,NULL,NULL,'COLOR TV FLAT 21\"','1','51DXF250E / 21DXF250E2','3','unit');
INSERT INTO `barang` VALUES (651,NULL,NULL,'COLOR TV FLAT 21\"','1','21DXF250E3','3','unit');
INSERT INTO `barang` VALUES (652,NULL,NULL,'COLOR TV FLAT 21\"','1','21PF252E / 21PF252E2/E3','3','unit');
INSERT INTO `barang` VALUES (653,NULL,NULL,'COLOR TV FLAT 21\"','1','21GXF250E / 21GXF250E2','3','unit');
INSERT INTO `barang` VALUES (654,NULL,NULL,'COLOR TV FLAT 21\"','1','21AS353E','3','unit');
INSERT INTO `barang` VALUES (655,NULL,NULL,'COLOR TV FLAT 21\"','1','51DXF200 / 21DXF200MK2','3','unit');
INSERT INTO `barang` VALUES (656,NULL,NULL,'COLOR TV FLAT 21\"','1','21PXF200 / 21PXF200MK2','3','unit');
INSERT INTO `barang` VALUES (657,NULL,NULL,'COLOR TV FLAT 21\"','1','21GXF200 / 21GXF200MK2','3','unit');
INSERT INTO `barang` VALUES (658,NULL,NULL,'COLOR TV FLAT 21\"','1','21DXF500MK2/51DXF500','3','unit');
INSERT INTO `barang` VALUES (659,NULL,NULL,'COLOR TV FLAT 21\"','1','21AXS212MK2','3','unit');
INSERT INTO `barang` VALUES (660,NULL,NULL,'COLOR TV FLAT 21\"','1','21BXS350/MK2','3','unit');
INSERT INTO `barang` VALUES (661,NULL,NULL,'COLOR TV FLAT 21\"','1','21AXS200','3','unit');
INSERT INTO `barang` VALUES (662,NULL,NULL,'COLOR TV FLAT 21\"','1','21AXS500','3','unit');
INSERT INTO `barang` VALUES (663,NULL,NULL,'COLOR TV FLAT 21\"','1','21DXF550E2/51DXF550E','3','unit');
INSERT INTO `barang` VALUES (664,NULL,NULL,'COLOR TV FLAT 21\"','1','21V20D / 21V20D2','3','unit');
INSERT INTO `barang` VALUES (665,NULL,NULL,'COLOR TV FLAT 21\"','1','21EF25 / 21EF25MK2','3','unit');
INSERT INTO `barang` VALUES (666,NULL,NULL,'COLOR TV FLAT 21\"','1','21EF35MK2','3','unit');
INSERT INTO `barang` VALUES (667,NULL,NULL,'COLOR TV FLAT 21\"','1','21EHF253E2','3','unit');
INSERT INTO `barang` VALUES (668,NULL,NULL,'COLOR TV FLAT 21\"','1','21PF352E2','3','unit');
INSERT INTO `barang` VALUES (669,NULL,NULL,'COLOR TV FLAT 21\"','1','21PXF250E / 21PXF250E2','3','unit');
INSERT INTO `barang` VALUES (670,NULL,NULL,'COLOR TV FLAT 21\"','1','21GF352E2','3','unit');
INSERT INTO `barang` VALUES (671,NULL,NULL,'COLOR TV FLAT 21\"','1','21AXS250E','3','unit');
INSERT INTO `barang` VALUES (672,NULL,NULL,'COLOR TV FLAT 29\"','1','29AXS888RD','3','unit');
INSERT INTO `barang` VALUES (673,NULL,NULL,'COLOR TV FLAT 29\"','1','29AXS888GY','3','unit');
INSERT INTO `barang` VALUES (674,NULL,NULL,'COLOR TV FLAT 29\"','1','29BXS350','3','unit');
INSERT INTO `barang` VALUES (675,NULL,NULL,'COLOR TV FLAT 29\"','1','29BXS353','3','unit');
INSERT INTO `barang` VALUES (676,NULL,NULL,'COLOR TV FLAT 29\"','1','29ZF200MK2','3','unit');
INSERT INTO `barang` VALUES (677,NULL,NULL,'COLOR TV FLAT 29\"','1','29CF250 / 29CF250MK2','3','unit');
INSERT INTO `barang` VALUES (678,NULL,NULL,'COLOR TV FLAT 29\"','1','29QXF250E','3','unit');
INSERT INTO `barang` VALUES (679,NULL,NULL,'COLOR TV FLAT 29\"','1','29DXF250E/E2','3','unit');
INSERT INTO `barang` VALUES (680,NULL,NULL,'COLOR TV FLAT 29\"','1','29DXF200 / 29DXF200MK2','3','unit');
INSERT INTO `barang` VALUES (681,NULL,NULL,'COLOR TV FLAT 29\"','1','29PXF200','3','unit');
INSERT INTO `barang` VALUES (682,NULL,NULL,'COLOR TV FLAT 29\"','1','29GXF200','3','unit');
INSERT INTO `barang` VALUES (683,NULL,NULL,'COLOR TV FLAT 29\"','1','29CF550','3','unit');
INSERT INTO `barang` VALUES (684,NULL,NULL,'COLOR TV FLAT 29\"','1','29DXF500 / 29DXF500MK2','3','unit');
INSERT INTO `barang` VALUES (685,NULL,NULL,'COLOR TV FLAT 29\"','1','29PXF500','3','unit');
INSERT INTO `barang` VALUES (686,NULL,NULL,'COLOR TV FLAT 29\"','1','29GXF500','3','unit');
INSERT INTO `barang` VALUES (687,NULL,NULL,'COLOR TV FLAT 29\"','1','29AXS212MK2','3','unit');
INSERT INTO `barang` VALUES (688,NULL,NULL,'COLOR TV FLAT 29\"','1','29AXS200','3','unit');
INSERT INTO `barang` VALUES (689,NULL,NULL,'COLOR TV FLAT 29\"','1','29AXS288RD','3','unit');
INSERT INTO `barang` VALUES (690,NULL,NULL,'COLOR TV FLAT 29\"','1','29AXS500','3','unit');
INSERT INTO `barang` VALUES (691,NULL,NULL,'COLOR TV FLAT 29\"','1','21BXS288RD','3','unit');
INSERT INTO `barang` VALUES (692,NULL,NULL,'COLOR TV FLAT 29\"','1','29BXS288RD','3','unit');
INSERT INTO `barang` VALUES (693,NULL,NULL,'COLOR TV FLAT 29\"','1','21WXF800','3','unit');
INSERT INTO `barang` VALUES (694,NULL,NULL,'COLOR TV FLAT 29\"','1','29DXS888RD','3','unit');
INSERT INTO `barang` VALUES (695,NULL,NULL,'COLOR TV FLAT 29\"','1','29DXS888BR/MR/MB','3','unit');
INSERT INTO `barang` VALUES (696,NULL,NULL,'','23','CBOX-ASP1001BO','3','unit');
INSERT INTO `barang` VALUES (697,NULL,NULL,'','23','CBOX-ASP208BL','3','unit');
INSERT INTO `barang` VALUES (698,NULL,NULL,'','23','CBOX-ASP250BL','3','unit');
INSERT INTO `barang` VALUES (699,NULL,NULL,'','23','CBOX-ASP350BL','3','unit');
INSERT INTO `barang` VALUES (700,NULL,NULL,'','23','CBOX-ASP725BO','3','unit');
INSERT INTO `barang` VALUES (701,NULL,NULL,'','23','CBOX-ASP805BO','3','unit');
INSERT INTO `barang` VALUES (702,NULL,NULL,'','23','CBOX-ASP805BO2','3','unit');
INSERT INTO `barang` VALUES (703,NULL,NULL,'','23','CBOX-ASP825BO','3','unit');
INSERT INTO `barang` VALUES (704,NULL,NULL,'','23','CBOX-ASP855BL','3','unit');
INSERT INTO `barang` VALUES (705,NULL,NULL,'','23','CBOX-G300BL/WH','3','unit');
INSERT INTO `barang` VALUES (706,NULL,NULL,'','23','CBOX-G600UBL','3','unit');
INSERT INTO `barang` VALUES (707,NULL,NULL,'','23','CBOX-ASP208BL2','3','unit');
INSERT INTO `barang` VALUES (708,NULL,NULL,'','23','CBOX-ASP301BO/SO','3','unit');
INSERT INTO `barang` VALUES (709,NULL,NULL,'','23','CBOX-ASP301BO2/SO2','3','unit');
INSERT INTO `barang` VALUES (710,NULL,NULL,'','23','CBOX-ASP802BO/SO','3','unit');
INSERT INTO `barang` VALUES (711,NULL,NULL,'','23','CBOX-ASP802BO2/SO2','3','unit');
INSERT INTO `barang` VALUES (712,NULL,NULL,'DVD Player','24','DV-SL2400W','3','unit');
INSERT INTO `barang` VALUES (713,NULL,NULL,'DVD Player','24','DV-S212W','3','unit');
INSERT INTO `barang` VALUES (714,NULL,NULL,'DVD Karaoke 2 Mic','24','DV-S515K','3','unit');
INSERT INTO `barang` VALUES (715,NULL,NULL,'DVD Player','24','DV-SL2200W','3','unit');
INSERT INTO `barang` VALUES (716,NULL,NULL,'Blu-ray Player','24','BD-HP20/BD-HP20A','3','unit');
INSERT INTO `barang` VALUES (717,NULL,NULL,'Blu-ray Player','24','BD-HP21','3','unit');
INSERT INTO `barang` VALUES (718,NULL,NULL,'Blu-ray Player','24','BD-HP25A','3','unit');
INSERT INTO `barang` VALUES (719,NULL,NULL,'Blu-ray Player','24','BD-HP90A','3','unit');
INSERT INTO `barang` VALUES (720,NULL,NULL,'Micro Hifi with DVD','10','XL-DV75H MK II','3','unit');
INSERT INTO `barang` VALUES (721,NULL,NULL,'Home Theatre Rack System','10','AN-PR1500H','3','unit');
INSERT INTO `barang` VALUES (722,NULL,NULL,'Home Theatre Rack System','10','AN-PR1000H','3','unit');
INSERT INTO `barang` VALUES (723,NULL,NULL,'Home Theatre','10','HT-CN790DVW','3','unit');
INSERT INTO `barang` VALUES (724,NULL,NULL,'Home Theatre','10','HT-CN890DVW','3','unit');
INSERT INTO `barang` VALUES (725,NULL,NULL,'Home Theatre','10','HT-CN830DVW','3','unit');
INSERT INTO `barang` VALUES (726,NULL,NULL,'Home Theatre','10','HT-CN390DVW','3','unit');
INSERT INTO `barang` VALUES (727,NULL,NULL,'Ipod Dock','10','DK-AP7N(R)/(S)/(W)','3','unit');
INSERT INTO `barang` VALUES (728,NULL,NULL,'DVD Cinema with Tall Boy Speaker','10','HT-DV50H','3','unit');
INSERT INTO `barang` VALUES (729,NULL,NULL,'DVD Cinema','10','HT-DV40H','3','unit');
INSERT INTO `barang` VALUES (730,NULL,NULL,'Home Theatre Rack System','10','HT-DA2120','3','unit');
INSERT INTO `barang` VALUES (731,NULL,NULL,'Home Theatre Rack System','10','HT-DA2120S','3','unit');
INSERT INTO `barang` VALUES (732,NULL,NULL,'Home Theatre Rack System','10','HT-SB200','3','unit');
INSERT INTO `barang` VALUES (733,NULL,NULL,'Home Theatre Rack System','10','HT-SL70','3','unit');
INSERT INTO `barang` VALUES (734,NULL,NULL,'Ipod Dock','10','DKA1H/HBK','3','unit');
INSERT INTO `barang` VALUES (735,NULL,NULL,'FREZZER','7','FR-189-BCG/BCL','3','unit');
INSERT INTO `barang` VALUES (736,NULL,NULL,'FREZZER - Lemon Ice','7','FR-K148G-CG/CL','3','unit');
INSERT INTO `barang` VALUES (737,NULL,NULL,'FREZZER - Lemon Ice','7','FR-K189G-CG/CL','3','unit');
INSERT INTO `barang` VALUES (738,NULL,NULL,'FREZZER - Lemon Ice','7','FR-K195G-CG/CL','3','unit');
INSERT INTO `barang` VALUES (739,NULL,NULL,'CHEST FREZ','7','FRV-125','3','unit');
INSERT INTO `barang` VALUES (740,NULL,NULL,'CHEST FREZ','7','FRV-200','3','unit');
INSERT INTO `barang` VALUES (741,NULL,NULL,'CHEST FREZ','7','FRV-250/300','3','unit');
INSERT INTO `barang` VALUES (742,NULL,NULL,'CHEST FREZ','7','FRW-200','3','unit');
INSERT INTO `barang` VALUES (743,NULL,NULL,'CHEST FREZ','7','FRW-210 ','3','unit');
INSERT INTO `barang` VALUES (744,NULL,NULL,'SHOW CASE','7','SCH-160P','3','unit');
INSERT INTO `barang` VALUES (745,NULL,NULL,'SHOW CASE','7','SCH-170PS ','3','unit');
INSERT INTO `barang` VALUES (746,NULL,NULL,'SHOW CASE','7','SCH-200','3','unit');
INSERT INTO `barang` VALUES (747,NULL,NULL,'SHOW CASE','7','SCH-200P','3','unit');
INSERT INTO `barang` VALUES (748,NULL,NULL,'SHOW CASE','7','SCH-200PS','3','unit');
INSERT INTO `barang` VALUES (749,NULL,NULL,'SHOW CASE','7','SCH-210PS ','3','unit');
INSERT INTO `barang` VALUES (750,NULL,NULL,'SHOW CASE','7','SCH-200PB ','3','unit');
INSERT INTO `barang` VALUES (751,NULL,NULL,'SHOW CASE','7','SCH-200LE ','3','unit');
INSERT INTO `barang` VALUES (752,NULL,NULL,'SHOW CASE','7','SCH-250PS','3','unit');
INSERT INTO `barang` VALUES (753,NULL,NULL,'SHOW CASE','7','SCH-250LE ','3','unit');
INSERT INTO `barang` VALUES (754,NULL,NULL,'ICE MAKER','7','ZB-15AP(L)','3','unit');
INSERT INTO `barang` VALUES (755,NULL,NULL,'REF LOC - Nice Crystal','7','SJ-17MKIISL','3','unit');
INSERT INTO `barang` VALUES (756,NULL,NULL,'REF LOC - Stripe Crystal','7','SJ-17MKII-TB/TS/TL/TZ/GY/BL/GR','3','unit');
INSERT INTO `barang` VALUES (757,NULL,NULL,'REF LOC - Nice Crystal','7','SJ-18WGY','3','unit');
INSERT INTO `barang` VALUES (758,NULL,NULL,'REF LOC - Stripe Crystal','7','SJ-19BH-TB/TL/TZ/GY/GR/BL/SL','3','unit');
INSERT INTO `barang` VALUES (759,NULL,NULL,'REF LOC - Stripe Crystal','7','SJ-19MKII-TB/TS/TL/TZ/GY/BL/GR','3','unit');
INSERT INTO `barang` VALUES (760,NULL,NULL,'REF LOC - Nice Crystal','7','SJ-20SE-TB/TL/TS','3','unit');
INSERT INTO `barang` VALUES (761,NULL,NULL,'REF LOC - Nice Crystal','7','SJ-22SE (SJ-22SE-TS/TB)','3','unit');
INSERT INTO `barang` VALUES (762,NULL,NULL,'REF IMP - Lemon Series','7','SJ-291NLV-SL','3','unit');
INSERT INTO `barang` VALUES (763,NULL,NULL,'REF IMP - Lemon Series','7','SJ-351NLV-SL','3','unit');
INSERT INTO `barang` VALUES (764,NULL,NULL,'REF IMP - Lemon Series','7','SJ-431NLV-SL','3','unit');
INSERT INTO `barang` VALUES (765,NULL,NULL,'REF LOC - Lemon','7','SJ-A210T-ZS','3','unit');
INSERT INTO `barang` VALUES (766,NULL,NULL,'REF LOC - Lemon','7','SJ-A230T-ZS','3','unit');
INSERT INTO `barang` VALUES (767,NULL,NULL,'REF LOC - Nice Crystal','7','SJ-D180F-TS/TL/TB','3','unit');
INSERT INTO `barang` VALUES (768,NULL,NULL,'REF LOC - Nice Crystal','7','SJ-D198F-TB/TS/TL','3','unit');
INSERT INTO `barang` VALUES (769,NULL,NULL,'REF IMP - Lemon Series','7','SJ-D17S-SL','3','unit');
INSERT INTO `barang` VALUES (770,NULL,NULL,'REF IMP - Lemon Series','7','SJ-D17G-SL','3','unit');
INSERT INTO `barang` VALUES (771,NULL,NULL,'REF IMP - Lemon Series','7','SJ-D17T-SL','3','unit');
INSERT INTO `barang` VALUES (772,NULL,NULL,'REF IMP - Lemon Series','7','SJ-D18S-SL','3','unit');
INSERT INTO `barang` VALUES (773,NULL,NULL,'REF IMP - Lemon Series','7','SJ-D18G-SL','3','unit');
INSERT INTO `barang` VALUES (774,NULL,NULL,'REF IMP - Lemon Series','7','SJ-D20T-SL','3','unit');
INSERT INTO `barang` VALUES (775,NULL,NULL,'REF IMP - Lemon Series','7','SJ-D27LV-SL','3','unit');
INSERT INTO `barang` VALUES (776,NULL,NULL,'REF IMP - Lemon Series','7','SJ-D27LV-WH','3','unit');
INSERT INTO `barang` VALUES (777,NULL,NULL,'REF IMP - Lemon Series','7','SJ-D30LV-SL','3','unit');
INSERT INTO `barang` VALUES (778,NULL,NULL,'REF IMP - Lemon Series','7','SJ-D30LV-WH','3','unit');
INSERT INTO `barang` VALUES (779,NULL,NULL,'REF LOC - Lemon','7','SJ-F190M-TS','3','unit');
INSERT INTO `barang` VALUES (780,NULL,NULL,'REF LOC - Lemon','7','SJ-F190G-ZS','3','unit');
INSERT INTO `barang` VALUES (781,NULL,NULL,'REF LOC - Lemon','7','SJ-F200G-ZS/ZB/ZL','3','unit');
INSERT INTO `barang` VALUES (782,NULL,NULL,'REF LOC - Lemon','7','SJ-F201G-TS','3','unit');
INSERT INTO `barang` VALUES (783,NULL,NULL,'REF LOC - Lemon','7','SJ-F201S-RD','3','unit');
INSERT INTO `barang` VALUES (784,NULL,NULL,'REF LOC - Lemon','7','SJ-F201C-HD','3','unit');
INSERT INTO `barang` VALUES (785,NULL,NULL,'REF LOC - Lemon','7','SJ-F203G-LB','3','unit');
INSERT INTO `barang` VALUES (786,NULL,NULL,'REF LOC - Lemon','7','SJ-F230G-ZS','3','unit');
INSERT INTO `barang` VALUES (787,NULL,NULL,'REF LOC - Lemon','7','SJ-F231G-ZS','3','unit');
INSERT INTO `barang` VALUES (788,NULL,NULL,'REF LOC - Lemon','7','SJ-F231S-RD','3','unit');
INSERT INTO `barang` VALUES (789,NULL,NULL,'REF LOC - Lemon','7','SJ-F231C-HD','3','unit');
INSERT INTO `barang` VALUES (790,NULL,NULL,'REF LOC - Lemon','7','SJ-F233G-LB','3','unit');
INSERT INTO `barang` VALUES (791,NULL,NULL,'REF LOC - Lemon','7','SJ-F232K-ZS','3','unit');
INSERT INTO `barang` VALUES (792,NULL,NULL,'REF LOC - Lemon','7','SJ-F232G-ZS/TS','3','unit');
INSERT INTO `barang` VALUES (793,NULL,NULL,'REF LOC - Lemon','7','SJ-F240G-ZS','3','unit');
INSERT INTO `barang` VALUES (794,NULL,NULL,'REF IMP - Queen Series','7','SJ-F70PC-SL','3','unit');
INSERT INTO `barang` VALUES (795,NULL,NULL,'REF IMP - Queen Series','7','SJ-F70PE-SL','3','unit');
INSERT INTO `barang` VALUES (796,NULL,NULL,'REF IMP - Queen Series','7','SJ-F70PS-SL','3','unit');
INSERT INTO `barang` VALUES (797,NULL,NULL,'REF IMP - Queen Series','7','SJ-F70PV-SL','3','unit');
INSERT INTO `barang` VALUES (798,NULL,NULL,'REF IMP - Queen Series','7','SJ-F70RV-SL','3','unit');
INSERT INTO `barang` VALUES (799,NULL,NULL,'REF IMP - Queen Series','7','SJ-F75PS-SL','3','unit');
INSERT INTO `barang` VALUES (800,NULL,NULL,'REF IMP - Queen Series','7','SJ-F75PV-SL','3','unit');
INSERT INTO `barang` VALUES (801,NULL,NULL,'REF IMP - Queen Series','7','SJ-F75RV-SL','3','unit');
INSERT INTO `barang` VALUES (802,NULL,NULL,'REF IMP - Queen Series','7','SJ-F83SP-BK','3','unit');
INSERT INTO `barang` VALUES (803,NULL,NULL,'REF IMP - Queen Series','7','SJ-F83SP-SL','3','unit');
INSERT INTO `barang` VALUES (804,NULL,NULL,'REF IMP - Queen Series','7','SJ-F88SP-BK','3','unit');
INSERT INTO `barang` VALUES (805,NULL,NULL,'REF LOC - Lemon','7','SJ-F88SP-SL','3','unit');
INSERT INTO `barang` VALUES (806,NULL,NULL,'REF LOC- Lemon','7','SJ-G170T (ZS/ZB/ZL)','3','unit');
INSERT INTO `barang` VALUES (807,NULL,NULL,'REF LOC','7','SJ-G170T-BF','3','unit');
INSERT INTO `barang` VALUES (808,NULL,NULL,'REF LOC- Lemon','7','SJ-G170T-CG','3','unit');
INSERT INTO `barang` VALUES (809,NULL,NULL,'REF LOC- Lemon','7','SJ-G170T-LBF','3','unit');
INSERT INTO `barang` VALUES (810,NULL,NULL,'REF LOC - Lemon','7','SJ-G170T-BB   ','3','unit');
INSERT INTO `barang` VALUES (811,NULL,NULL,'REF LOC - Lemon','7','SJ-G173T-ZS','3','unit');
INSERT INTO `barang` VALUES (812,NULL,NULL,'REF LOC- Lemon','7','SJ-G190T (ZS/ZB/ZL)','3','unit');
INSERT INTO `barang` VALUES (813,NULL,NULL,'REF LOC- Lemon','7','SJ-G190T-BF','3','unit');
INSERT INTO `barang` VALUES (814,NULL,NULL,'REF LOC- Lemon','7','SJ-G190T-LBF','3','unit');
INSERT INTO `barang` VALUES (815,NULL,NULL,'REF LOC','7','SJ-G190T-BB/LB','3','unit');
INSERT INTO `barang` VALUES (816,NULL,NULL,'REF LOC - Lemon','7','SJ-G193T-ZS','3','unit');
INSERT INTO `barang` VALUES (817,NULL,NULL,'REF LOC','7','SJ-G200T (ZS/ZB/ZL)','3','unit');
INSERT INTO `barang` VALUES (818,NULL,NULL,'REF LOC - Lemon','7','SJ-G200T-BZS','3','unit');
INSERT INTO `barang` VALUES (819,NULL,NULL,'REF LOC - Lemon','7','SJ-G200U-ZB/ZL/ZS','3','unit');
INSERT INTO `barang` VALUES (820,NULL,NULL,'REF LOC - Lemon','7','SJ-S200T-RD','3','unit');
INSERT INTO `barang` VALUES (821,NULL,NULL,'REF LOC - Lemon','7','SJ-G220T-ZS','3','unit');
INSERT INTO `barang` VALUES (822,NULL,NULL,'REF LOC - Lemon','7','SJ-G223T-ZS','3','unit');
INSERT INTO `barang` VALUES (823,NULL,NULL,'REF LOC- Lemon','7','SJ-K170T (ZS/ZB/ZL)','3','unit');
INSERT INTO `barang` VALUES (824,NULL,NULL,'REF LOC- Lemon','7','SJ-K172T-ZS','3','unit');
INSERT INTO `barang` VALUES (825,NULL,NULL,'REF LOC - Lemon','7','SJ-S170T-RD','3','unit');
INSERT INTO `barang` VALUES (826,NULL,NULL,'REF LOC - Lemon','7','SJ-K190T (ZS/ZB/ZL)','3','unit');
INSERT INTO `barang` VALUES (827,NULL,NULL,'REF LOC- Lemon','7','SJ-S190T-RD','3','unit');
INSERT INTO `barang` VALUES (828,NULL,NULL,'REF LOC - Lemon','7','SJ-K192T-ZS','3','unit');
INSERT INTO `barang` VALUES (829,NULL,NULL,'REF LOC - Lemon','7','SJ-K200T (ZS/ZB/ZL)','3','unit');
INSERT INTO `barang` VALUES (830,NULL,NULL,'REF LOC - Lemon','7','SJ-K210T-ZS','3','unit');
INSERT INTO `barang` VALUES (831,NULL,NULL,'REF LOC','7','SJ-K230T-ZS','3','unit');
INSERT INTO `barang` VALUES (832,NULL,NULL,'REF LOC','7','SJ-M151T-CG/CB/CL','3','unit');
INSERT INTO `barang` VALUES (833,NULL,NULL,'REF LOC','7','SJ-M151T-UW','3','unit');
INSERT INTO `barang` VALUES (834,NULL,NULL,'REF LOC','7','SJ-M152T-TS/TB/TL/SL','3','unit');
INSERT INTO `barang` VALUES (835,NULL,NULL,'REF LOC','7','SJ-M161T-TS/TB/TL/SL','3','unit');
INSERT INTO `barang` VALUES (836,NULL,NULL,'REF LOC- Lemon','7','SJ-M170T-ZS','3','unit');
INSERT INTO `barang` VALUES (837,NULL,NULL,'REF LOC- Lemon','7','SJ-M171T-TS/CG','3','unit');
INSERT INTO `barang` VALUES (838,NULL,NULL,'REF LOC- Lemon','7','SJ-M172T-TS','3','unit');
INSERT INTO `barang` VALUES (839,NULL,NULL,'REF LOC- Lemon','7','SJ-M172T-ZS','3','unit');
INSERT INTO `barang` VALUES (840,NULL,NULL,'REF LOC- Lemon','7','SJ-M190T-ZS','3','unit');
INSERT INTO `barang` VALUES (841,NULL,NULL,'REF LOC- Lemon','7','SJ-M192T-TS','3','unit');
INSERT INTO `barang` VALUES (842,NULL,NULL,'REF LOC- Lemon','7','SJ-M192T-ZS','3','unit');
INSERT INTO `barang` VALUES (843,NULL,NULL,'REF LOC - Lemon','7','SJ-M200U-ZB/ZL/ZS','3','unit');
INSERT INTO `barang` VALUES (844,NULL,NULL,'REF IMP - Platinum Series','7','SJ-P450NLV-SL','3','unit');
INSERT INTO `barang` VALUES (845,NULL,NULL,'REF IMP - Salsa Series','7','SJ-P461NLV-SL','3','unit');
INSERT INTO `barang` VALUES (846,NULL,NULL,'REF IMP - Salsa Series','7','SJ-P471NLV-SL','3','unit');
INSERT INTO `barang` VALUES (847,NULL,NULL,'REF IMP - Salsa Series','7','SJ-P471NLV-BK','3','unit');
INSERT INTO `barang` VALUES (848,NULL,NULL,'REF IMP - Salsa Series','7','SJ-P470NLV-SL','3','unit');
INSERT INTO `barang` VALUES (849,NULL,NULL,'REF IMP - Salsa Series','7','SJ-P470NLV-BK','3','unit');
INSERT INTO `barang` VALUES (850,NULL,NULL,'REF IMP - Platinum Series','7','SJ-P510NLV-SL','3','unit');
INSERT INTO `barang` VALUES (851,NULL,NULL,'REF IMP - Salsa Series','7','SJ-P561NLV-SL','3','unit');
INSERT INTO `barang` VALUES (852,NULL,NULL,'REF IMP - Salsa Series','7','SJ-P570NLV-SL','3','unit');
INSERT INTO `barang` VALUES (853,NULL,NULL,'REF IMP - Salsa Series','7','SJ-P570NLV-BK','3','unit');
INSERT INTO `barang` VALUES (854,NULL,NULL,'REF IMP - Salsa Series','7','SJ-P571NLV-SL','3','unit');
INSERT INTO `barang` VALUES (855,NULL,NULL,'REF IMP - Salsa Series','7','SJ-P571NLV-BK','3','unit');
INSERT INTO `barang` VALUES (856,NULL,NULL,'REF IMP - Salsa Series','7','SJ-P580NLV-SL','3','unit');
INSERT INTO `barang` VALUES (857,NULL,NULL,'REF IMP - Salsa Series','7','SJ-P581NLV-SL/HS','3','unit');
INSERT INTO `barang` VALUES (858,NULL,NULL,'REF IMP - Salsa Series','7','SJ-P650NLV-SL','3','unit');
INSERT INTO `barang` VALUES (859,NULL,NULL,'REF IMP - Salsa Series','7','SJ-P651NLV-HS','3','unit');
INSERT INTO `barang` VALUES (860,NULL,NULL,'REF IMP - Platinum Series','7','SJ-P712NLV-SL','3','unit');
INSERT INTO `barang` VALUES (861,NULL,NULL,'REF IMP - Salsa Series','7','SJ-P750NLV-SL','3','unit');
INSERT INTO `barang` VALUES (862,NULL,NULL,'REF IMP - Salsa Series','7','SJ-P751NLV-HS','3','unit');
INSERT INTO `barang` VALUES (863,NULL,NULL,'REF IMP - Platinum Series','7','SJ-P812NLV-SL','3','unit');
INSERT INTO `barang` VALUES (864,NULL,NULL,'REF IMP - Salsa Series','7','SJ-P851NLV-HS','3','unit');
INSERT INTO `barang` VALUES (865,NULL,NULL,'REF IMP - Dragon Series','7','SJ-MB300S-ST','3','unit');
INSERT INTO `barang` VALUES (866,NULL,NULL,'REF IMP - Dragon Series','7','SJ-WS400T-HS','3','unit');
INSERT INTO `barang` VALUES (867,NULL,NULL,'REF LOC - Lemon','7','SJ-V170T-ZS/ZB/ZL','3','unit');
INSERT INTO `barang` VALUES (868,NULL,NULL,'REF LOC - Lemon','7','SJ-V190T-ZS/ZB/ZL','3','unit');
INSERT INTO `barang` VALUES (869,NULL,NULL,'REF LOC - Lemon','7','SJ-V200T-ZS/ZB/ZL','3','unit');
INSERT INTO `barang` VALUES (870,NULL,NULL,'REF LOC - Lemon','7','SJ-V210T-ZS','3','unit');
INSERT INTO `barang` VALUES (871,NULL,NULL,'REF LOC - Lemon','7','SJ-V220T-ZS','3','unit');
INSERT INTO `barang` VALUES (872,NULL,NULL,'REF IMP - Salsa Series','7','SJ-P850NLV-SL','3','unit');
INSERT INTO `barang` VALUES (873,NULL,NULL,'REF IMP - Salsa Series','7','SJ-P851NLV-BE','3','unit');
INSERT INTO `barang` VALUES (874,NULL,NULL,'CHEST FREZ','7','FRV-120','3','unit');
INSERT INTO `barang` VALUES (875,NULL,NULL,'REF IMP - Lemon Series','7','SJ-290NLV-BL','3','unit');
INSERT INTO `barang` VALUES (876,NULL,NULL,'REF IMP - Lemon Series','7','SJ-290NLV-SL','3','unit');
INSERT INTO `barang` VALUES (877,NULL,NULL,'REF IMP - Lemon Series','7','SJ-350NLV-BL','3','unit');
INSERT INTO `barang` VALUES (878,NULL,NULL,'REF IMP - Lemon Series','7','SJ-350NLV-SL','3','unit');
INSERT INTO `barang` VALUES (879,NULL,NULL,'REF IMP - Lemon Series','7','SJ-430NLV-BL','3','unit');
INSERT INTO `barang` VALUES (880,NULL,NULL,'REF IMP - Lemon Series','7','SJ-430NLV-SL','3','unit');
INSERT INTO `barang` VALUES (881,NULL,NULL,'REF IMP - Salsa Series','7','SJ-460NLV-SL','3','unit');
INSERT INTO `barang` VALUES (882,NULL,NULL,'REF IMP - Salsa Series','7','SJ-461NLV-SL','3','unit');
INSERT INTO `barang` VALUES (883,NULL,NULL,'REF IMP - Salsa Series','7','SJ-560NLV-SL','3','unit');
INSERT INTO `barang` VALUES (884,NULL,NULL,'REF IMP - Salsa Series','7','SJ-561NLV-SL','3','unit');
INSERT INTO `barang` VALUES (885,NULL,NULL,'REF IMP - Salsa Series','7','SJ-580NLV-SL','3','unit');
INSERT INTO `barang` VALUES (886,NULL,NULL,'REF IMP - Salsa Series','7','SJ-650NLV-SL','3','unit');
INSERT INTO `barang` VALUES (887,NULL,NULL,'REF IMP - Salsa Series','7','SJ-750NLV-BE','3','unit');
INSERT INTO `barang` VALUES (888,NULL,NULL,'REF IMP - Salsa Series','7','SJ-750NLV-SL','3','unit');
INSERT INTO `barang` VALUES (889,NULL,NULL,'REF IMP - Salsa Series','7','SJ-850NLV-BE','3','unit');
INSERT INTO `barang` VALUES (890,NULL,NULL,'REF IMP - Salsa Series','7','SJ-850NLV-SL','3','unit');
INSERT INTO `barang` VALUES (891,NULL,NULL,'REF IMP - Lemon Series','7','SJ-D21LV-SL','3','unit');
INSERT INTO `barang` VALUES (892,NULL,NULL,'REF IMP - Lemon Series','7','SJ-D22LV-SL','3','unit');
INSERT INTO `barang` VALUES (893,NULL,NULL,'REF IMP - Lemon Series','7','SJ-D26LV-SL','3','unit');
INSERT INTO `barang` VALUES (894,NULL,NULL,'REF IMP - Lemon Series','7','SJ-D29LV-SL','3','unit');
INSERT INTO `barang` VALUES (895,NULL,NULL,'REF LOC - Lemon','7','SJ-F201G-ZS','3','unit');
INSERT INTO `barang` VALUES (896,NULL,NULL,'REF LOC - Lemon','7','SJ-F231G-TS','3','unit');
INSERT INTO `barang` VALUES (897,NULL,NULL,'REF IMP - Queen Series','7','SJ-F75PE-SL','3','unit');
INSERT INTO `barang` VALUES (898,NULL,NULL,'REF LOC- Lemon','7','SJ-G170T-LB','3','unit');
INSERT INTO `barang` VALUES (899,NULL,NULL,'REF LOC - Lemon','7','SJ-G171T (ZS/ZB/ZL)','3','unit');
INSERT INTO `barang` VALUES (900,NULL,NULL,'REF LOC - Lemon','7','SJ-G191T (ZS/ZB/ZL)','3','unit');
INSERT INTO `barang` VALUES (901,NULL,NULL,'REF LOC','7','SJ-G191-TZ/TS','3','unit');
INSERT INTO `barang` VALUES (902,NULL,NULL,'REF LOC','7','SJ-P210T-ZS','3','unit');
INSERT INTO `barang` VALUES (903,NULL,NULL,'REF LOC','7','SJ-P230T-ZS','3','unit');
INSERT INTO `barang` VALUES (904,NULL,NULL,'REF IMP - Salsa Series','7','SJ-P751NLV-BE','3','unit');
INSERT INTO `barang` VALUES (905,NULL,NULL,'REF IMP - Platinum Series','7','SJ-450M-SL','3','unit');
INSERT INTO `barang` VALUES (906,NULL,NULL,'REF IMP - Platinum Series','7','SJ-510M-SL','3','unit');
INSERT INTO `barang` VALUES (907,NULL,NULL,'REF IMP - Platinum Series','7','SJ-610NLV-SL','3','unit');
INSERT INTO `barang` VALUES (908,NULL,NULL,'REF IMP - Platinum Series','7','SJ-612NLV-SL','3','unit');
INSERT INTO `barang` VALUES (909,NULL,NULL,'REF IMP - Platinum Series','7','SJ-712NLV-SL','3','unit');
INSERT INTO `barang` VALUES (910,NULL,NULL,'REF IMP - Platinum Series','7','SJ-812NLV-SL','3','unit');
INSERT INTO `barang` VALUES (911,NULL,NULL,'REF IMP - Platinum Series','7','SJ-P610M-SL','3','unit');
INSERT INTO `barang` VALUES (912,NULL,NULL,'REF IMP - Platinum Series','7','SJ-P610NLV-SL','3','unit');
INSERT INTO `barang` VALUES (913,NULL,NULL,'REF IMP - Platinum Series','7','SJ-P612NLV-SL','3','unit');
INSERT INTO `barang` VALUES (914,NULL,NULL,'REF IMP - Platinum Series','7','SJ-P710M-SL','3','unit');
INSERT INTO `barang` VALUES (915,NULL,NULL,'REF IMP - Platinum Series','7','SJ-P710NLV-SL','3','unit');
INSERT INTO `barang` VALUES (916,NULL,NULL,'REF IMP - Platinum Series','7','SJ-P810M-SL','3','unit');
INSERT INTO `barang` VALUES (917,NULL,NULL,'REF IMP - Platinum Series','7','SJ-P810NLV-SL','3','unit');
INSERT INTO `barang` VALUES (918,NULL,NULL,'REF IMP - Platinum Series','7','SJ-310M(BL/GY/SL)','3','unit');
INSERT INTO `barang` VALUES (919,NULL,NULL,'REF IMP - Platinum Series','7','SJ-310NLV-SL','3','unit');
INSERT INTO `barang` VALUES (920,NULL,NULL,'REF IMP - Platinum Series','7','SJ-37M-SL','3','unit');
INSERT INTO `barang` VALUES (921,NULL,NULL,'REF IMP - Platinum Series','7','SJ-410M(BL/GY/SL)','3','unit');
INSERT INTO `barang` VALUES (922,NULL,NULL,'REF IMP - Platinum Series','7','SJ-410NLV-SL','3','unit');
INSERT INTO `barang` VALUES (923,NULL,NULL,'REF IMP - Platinum Series','7','SJ-41M-SL','3','unit');
INSERT INTO `barang` VALUES (924,NULL,NULL,'REF IMP - Platinum Series','7','SJ-450M-GY','3','unit');
INSERT INTO `barang` VALUES (925,NULL,NULL,'REF IMP - Platinum Series','7','SJ-610M','3','unit');
INSERT INTO `barang` VALUES (926,NULL,NULL,'REF IMP - Platinum Series','7','SJ-710M(GL/SL)','3','unit');
INSERT INTO `barang` VALUES (927,NULL,NULL,'REF IMP - Platinum Series','7','SJ-710NLV-SL','3','unit');
INSERT INTO `barang` VALUES (928,NULL,NULL,'REF IMP - Platinum Series','7','SJ-810M','3','unit');
INSERT INTO `barang` VALUES (929,NULL,NULL,'REF IMP - Platinum Series','7','SJ-810NLV-SL','3','unit');
INSERT INTO `barang` VALUES (930,NULL,NULL,'REF IMP - Platinum Series','7','SJ-P610M(BE/GL/GY)','3','unit');
INSERT INTO `barang` VALUES (931,NULL,NULL,'REF IMP - Platinum Series','7','SJ-P710M(GL/GY/BE)','3','unit');
INSERT INTO `barang` VALUES (932,NULL,NULL,'REF IMP - Platinum Series','7','SJ-P810M(BE/GL/GY)','3','unit');
INSERT INTO `barang` VALUES (933,NULL,NULL,'AC SPLIT 1/2 PK ','27','AH-A5LEY','3','unit');
INSERT INTO `barang` VALUES (934,NULL,NULL,'AC SPLIT 1/2 PK','27','AH-A5MEY/B/D/G','3','unit');
INSERT INTO `barang` VALUES (935,NULL,NULL,'AC SPLIT 1/2 PK','27','AH-AP5LSY','3','unit');
INSERT INTO `barang` VALUES (936,NULL,NULL,'AC SPLIT 1/2 PK','27','AH-AP5MSY','3','unit');
INSERT INTO `barang` VALUES (937,NULL,NULL,'AC SPLIT 1/2 PK','27','AH-AP5MSL','3','unit');
INSERT INTO `barang` VALUES (938,NULL,NULL,'AC SPLIT 1/2 PK','27','AH-AP5LML','3','unit');
INSERT INTO `barang` VALUES (939,NULL,NULL,'AC SPLIT 1/2 PK','27','AH-AP5KHL','3','unit');
INSERT INTO `barang` VALUES (940,NULL,NULL,'AC SPLIT 1/2 PK','27','AH-AP5MHL','3','unit');
INSERT INTO `barang` VALUES (941,NULL,NULL,'AC SPLIT 1/2 PK','27','AH-A5KCY','3','unit');
INSERT INTO `barang` VALUES (942,NULL,NULL,'AC SPLIT 1/2 PK','27','AH-A5LCL','3','unit');
INSERT INTO `barang` VALUES (943,NULL,NULL,'AC SPLIT 3/4 PK','27','AH-A7KCY','3','unit');
INSERT INTO `barang` VALUES (944,NULL,NULL,'AC SPLIT 3/4 PK','27','AH-A7LCL','3','unit');
INSERT INTO `barang` VALUES (945,NULL,NULL,'AC SPLIT 3/4 PK','27','AH-A7LEY','3','unit');
INSERT INTO `barang` VALUES (946,NULL,NULL,'AC SPLIT 3/4 PK','27','AH-A7MEY/B/D/G','3','unit');
INSERT INTO `barang` VALUES (947,NULL,NULL,'AC SPLIT 3/4 PK','27','AH-AP7LSY','3','unit');
INSERT INTO `barang` VALUES (948,NULL,NULL,'AC SPLIT 3/4 PK','27','AH-AP7MSY','3','unit');
INSERT INTO `barang` VALUES (949,NULL,NULL,'AC SPLIT 3/4 PK','27','AH-AP7MSL','3','unit');
INSERT INTO `barang` VALUES (950,NULL,NULL,'AC SPLIT 3/4 PK','27','AH-AP7LML','3','unit');
INSERT INTO `barang` VALUES (951,NULL,NULL,'AC SPLIT 3/4 PK','27','AH-AP7KHL','3','unit');
INSERT INTO `barang` VALUES (952,NULL,NULL,'AC SPLIT 3/4 PK','27','AH-AP7MHL','3','unit');
INSERT INTO `barang` VALUES (953,NULL,NULL,'AC SPLIT 1 PK','27','AH-A9KCY','3','unit');
INSERT INTO `barang` VALUES (954,NULL,NULL,'AC SPLIT 1 PK','27','AH-A9LCL','3','unit');
INSERT INTO `barang` VALUES (955,NULL,NULL,'AC SPLIT 1 PK','27','AH-A9LEY','3','unit');
INSERT INTO `barang` VALUES (956,NULL,NULL,'AC SPLIT 1 PK','27','AH-A9MEY/B/D/G','3','unit');
INSERT INTO `barang` VALUES (957,NULL,NULL,'AC SPLIT 1 PK','27','AH-AP9LSY','3','unit');
INSERT INTO `barang` VALUES (958,NULL,NULL,'AC SPLIT 1 PK','27','AH-AP9MSY','3','unit');
INSERT INTO `barang` VALUES (959,NULL,NULL,'AC SPLIT 1 PK','27','AH-AP9LML','3','unit');
INSERT INTO `barang` VALUES (960,NULL,NULL,'AC SPLIT 1 PK','27','AH-AP9MSL','3','unit');
INSERT INTO `barang` VALUES (961,NULL,NULL,'AC SPLIT 1 PK','27','AH-AP9KHL','3','unit');
INSERT INTO `barang` VALUES (962,NULL,NULL,'AC SPLIT 1 PK','27','AH-AP9MHL','3','unit');
INSERT INTO `barang` VALUES (963,NULL,NULL,'AC SPLIT 1 PK','27','AH-X9LEY','3','unit');
INSERT INTO `barang` VALUES (964,NULL,NULL,'AC SPLIT 1 PK','27','AH-XP10LY','3','unit');
INSERT INTO `barang` VALUES (965,NULL,NULL,'AC SPLIT 1/2 PK','27','AH-X5MEY','3','unit');
INSERT INTO `barang` VALUES (966,NULL,NULL,'AC SPLIT 1 PK','27','AH-XP10MY','3','unit');
INSERT INTO `barang` VALUES (967,NULL,NULL,'AC PORTABLE 1 PK','27','CV-P09GRV','3','unit');
INSERT INTO `barang` VALUES (968,NULL,NULL,'AC PORTABLE 1 PK','27','CV-P09GRVB','3','unit');
INSERT INTO `barang` VALUES (969,NULL,NULL,'AC SPLIT 1.5 PK','27','AH-A12KCY','3','unit');
INSERT INTO `barang` VALUES (970,NULL,NULL,'AC SPLIT 1.5 PK','27','AH-AP12KHL','3','unit');
INSERT INTO `barang` VALUES (971,NULL,NULL,'AC SPLIT 1.5 PK','27','AH-AP12MHL','3','unit');
INSERT INTO `barang` VALUES (972,NULL,NULL,'AC SPLIT 1.5 PK','27','AH-AP12LSY','3','unit');
INSERT INTO `barang` VALUES (973,NULL,NULL,'AC SPLIT 1.5 PK','27','AH-AP12MSY','3','unit');
INSERT INTO `barang` VALUES (974,NULL,NULL,'AC SPLIT 1.5 PK','27','AH-X12LEY','3','unit');
INSERT INTO `barang` VALUES (975,NULL,NULL,'AC SPLIT 1.5 PK','27','AH-XP13LY','3','unit');
INSERT INTO `barang` VALUES (976,NULL,NULL,'AC SPLIT 1.5 PK','27','AH-XP13MY','3','unit');
INSERT INTO `barang` VALUES (977,NULL,NULL,'','27','AH-A24KCY','3','unit');
INSERT INTO `barang` VALUES (978,NULL,NULL,'AC SPLIT 2 PK','27','AH-AP18KSY','3','unit');
INSERT INTO `barang` VALUES (979,NULL,NULL,'AC SPLIT 2 PK','27','AH-A18LEY','3','unit');
INSERT INTO `barang` VALUES (980,NULL,NULL,'AC SPLIT 2 PK','27','AH-A18MEY','3','unit');
INSERT INTO `barang` VALUES (981,NULL,NULL,'AC SPLIT 2 PK','27','AH-AP18MHL','3','unit');
INSERT INTO `barang` VALUES (982,NULL,NULL,'AC SPLIT 2 PK','27','AH-A18KCY','3','unit');
INSERT INTO `barang` VALUES (983,NULL,NULL,'AC SPLIT 2 PK','27','AH-AP18KHL','3','unit');
INSERT INTO `barang` VALUES (984,NULL,NULL,'AC SPLIT 2.5 PK','27','AH-AP24KSY','3','unit');
INSERT INTO `barang` VALUES (985,NULL,NULL,'AP - Fashion series','22','FU-W28E','3','unit');
INSERT INTO `barang` VALUES (986,NULL,NULL,'AP - Fashion series','22','FU-Y28E-W/FU-Y28Y-W','3','unit');
INSERT INTO `barang` VALUES (987,NULL,NULL,'AP - Fashion series','22','FU-Z31E-W/FU-Z31Y-W','3','unit');
INSERT INTO `barang` VALUES (988,NULL,NULL,'AP - Kireion Series','22','KC-840Y-B/KC-840E-B/W','3','unit');
INSERT INTO `barang` VALUES (989,NULL,NULL,'AP - Kireion Series','22','KC-850Y-R/KC-850E-R/W','3','unit');
INSERT INTO `barang` VALUES (990,NULL,NULL,'AP - Kireion Series','22','KC-860E/KC-860Y-W','3','unit');
INSERT INTO `barang` VALUES (991,NULL,NULL,'AP - Kireion Series','22','KC-930E-W /KC-930Y-W','3','unit');
INSERT INTO `barang` VALUES (992,NULL,NULL,'AP - High Density','22','IG-A20E','3','unit');
INSERT INTO `barang` VALUES (993,NULL,NULL,'AP - High Density','22','IG-A40E','3','unit');
INSERT INTO `barang` VALUES (994,NULL,NULL,'AP - High Density','22','IG-BC2E-B/IG-BC2Y-B','3','unit');
INSERT INTO `barang` VALUES (995,NULL,NULL,'AP - High Density','22','IG-CL15','3','unit');
INSERT INTO `barang` VALUES (996,NULL,NULL,'AP','22','IG-CH2-B/R/W','3','unit');
INSERT INTO `barang` VALUES (997,NULL,NULL,'AP - Cartridge','22','IZ-CA10E','3','unit');
INSERT INTO `barang` VALUES (998,NULL,NULL,'AP - Deodorize Filter','22','FZ-C70DFE','3','unit');
INSERT INTO `barang` VALUES (999,NULL,NULL,'AP - HEPA Filter','22','FZ-C70HFE','3','unit');
INSERT INTO `barang` VALUES (1000,NULL,NULL,'AP - Deodorize Filter','22','FZ-C150DFE','3','unit');
INSERT INTO `barang` VALUES (1001,NULL,NULL,'AP - HEPA Filter','22','FZ-C150HFE','3','unit');
INSERT INTO `barang` VALUES (1002,NULL,NULL,'AP - Deodorize Filter','22','FZ-C100DFE','3','unit');
INSERT INTO `barang` VALUES (1003,NULL,NULL,'AP - HEPA Filter','22','FZ-C100HFE','3','unit');
INSERT INTO `barang` VALUES (1004,NULL,NULL,'AP - Mist Filter','22','FZ-C100MFE','3','unit');
INSERT INTO `barang` VALUES (1005,NULL,NULL,'AP - High Density','22','IG-A10E-W/R/B','3','unit');
INSERT INTO `barang` VALUES (1006,NULL,NULL,'1 TABUNG','9','ES-F650PY','3','unit');
INSERT INTO `barang` VALUES (1007,NULL,NULL,'1 TABUNG','9','ES-F800S','3','unit');
INSERT INTO `barang` VALUES (1008,NULL,NULL,'1 TABUNG','9','ES-F800P','3','unit');
INSERT INTO `barang` VALUES (1009,NULL,NULL,'1 TABUNG','9','ES-F850S','3','unit');
INSERT INTO `barang` VALUES (1010,NULL,NULL,'1 TABUNG','9','ES-S966D','3','unit');
INSERT INTO `barang` VALUES (1011,NULL,NULL,'1 TABUNG','9','ES-AG966D','3','unit');
INSERT INTO `barang` VALUES (1012,NULL,NULL,'1 TABUNG','9','ES-S1151F Y','3','unit');
INSERT INTO `barang` VALUES (1013,NULL,NULL,'1 TABUNG','9','ES-S1251F','3','unit');
INSERT INTO `barang` VALUES (1014,NULL,NULL,'1 TABUNG','9','ES-AG1150F','3','unit');
INSERT INTO `barang` VALUES (1015,NULL,NULL,'1 TABUNG','9','ES-AG1250F','3','unit');
INSERT INTO `barang` VALUES (1016,NULL,NULL,'1 TABUNG','9','ES-AG1366D','3','unit');
INSERT INTO `barang` VALUES (1017,NULL,NULL,'1 TABUNG','9','ES-AG800DW','3','unit');
INSERT INTO `barang` VALUES (1018,NULL,NULL,'1 TABUNG','9','ES-T98FY(BL/GR/VL)','3','unit');
INSERT INTO `barang` VALUES (1019,NULL,NULL,'1 TABUNG','9','ES-1025TY(BL)','3','unit');
INSERT INTO `barang` VALUES (1020,NULL,NULL,'1 TABUNG','9','ES-S861YY','3','unit');
INSERT INTO `barang` VALUES (1021,NULL,NULL,'1 TABUNG','9','ES-A900KI','3','unit');
INSERT INTO `barang` VALUES (1022,NULL,NULL,'1 TABUNG','9','ES-S862YY','3','unit');
INSERT INTO `barang` VALUES (1023,NULL,NULL,'1 TABUNG','9','ES-A901KI','3','unit');
INSERT INTO `barang` VALUES (1024,NULL,NULL,'1 TABUNG','9','ES-FL1000DW','3','unit');
INSERT INTO `barang` VALUES (1025,NULL,NULL,'1 TABUNG','9','ES-FL800DW','3','unit');
INSERT INTO `barang` VALUES (1026,NULL,NULL,'1 TABUNG','9','ES-AG1000DW','3','unit');
INSERT INTO `barang` VALUES (1027,NULL,NULL,'1 TABUNG','9','ES-AG1200DW','3','unit');
INSERT INTO `barang` VALUES (1028,NULL,NULL,'1 TABUNG','9','ES-FD1200DW','3','unit');
INSERT INTO `barang` VALUES (1029,NULL,NULL,'1 TABUNG','9','ES-N70EY-P','3','unit');
INSERT INTO `barang` VALUES (1030,NULL,NULL,'1 TABUNG','9','ES-N75FY-P','3','unit');
INSERT INTO `barang` VALUES (1031,NULL,NULL,'1 TABUNG','9','ES-N75KY-A/G/P','3','unit');
INSERT INTO `barang` VALUES (1032,NULL,NULL,'1 TABUNG','9','ES-N85GY-G','3','unit');
INSERT INTO `barang` VALUES (1033,NULL,NULL,'1 TABUNG','9','ES-N85KY-G','3','unit');
INSERT INTO `barang` VALUES (1034,NULL,NULL,'1 TABUNG','9','ES-N85LY-G','3','unit');
INSERT INTO `barang` VALUES (1035,NULL,NULL,'1 TABUNG','9','ES-N95KY-A','3','unit');
INSERT INTO `barang` VALUES (1036,NULL,NULL,'1 TABUNG','9','ES-N95MY-A','3','unit');
INSERT INTO `barang` VALUES (1037,NULL,NULL,'2 TABUNG','9','ES-T60S-W','3','unit');
INSERT INTO `barang` VALUES (1038,NULL,NULL,'2 TABUNG','9','ES-T60FL-W','3','unit');
INSERT INTO `barang` VALUES (1039,NULL,NULL,'2 TABUNG','9','ES-T60CL-V/B/P','3','unit');
INSERT INTO `barang` VALUES (1040,NULL,NULL,'2 TABUNG','9','ES-T60LL-G','3','unit');
INSERT INTO `barang` VALUES (1041,NULL,NULL,'2 TABUNG','9','ES-T65CL-H','3','unit');
INSERT INTO `barang` VALUES (1042,NULL,NULL,'2 TABUNG','9','ES-T65E-H','3','unit');
INSERT INTO `barang` VALUES (1043,NULL,NULL,'2 TABUNG','9','ES-T65MW-G/P/B','3','unit');
INSERT INTO `barang` VALUES (1044,NULL,NULL,'2 TABUNG','9','ES-T65FL-H','3','unit');
INSERT INTO `barang` VALUES (1045,NULL,NULL,'2 TABUNG','9','ES-T70S-W','3','unit');
INSERT INTO `barang` VALUES (1046,NULL,NULL,'2 TABUNG','9','ES-T70FL-W','3','unit');
INSERT INTO `barang` VALUES (1047,NULL,NULL,'2 TABUNG','9','ES-T70CL-V/B/P','3','unit');
INSERT INTO `barang` VALUES (1048,NULL,NULL,'2 TABUNG','9','ES-T70LL-G','3','unit');
INSERT INTO `barang` VALUES (1049,NULL,NULL,'2 TABUNG','9','ES-T75CL-H','3','unit');
INSERT INTO `barang` VALUES (1050,NULL,NULL,'2 TABUNG','9','ES-T75E-H','3','unit');
INSERT INTO `barang` VALUES (1051,NULL,NULL,'2 TABUNG','9','ES-T75FL-H','3','unit');
INSERT INTO `barang` VALUES (1052,NULL,NULL,'2 TABUNG','9','ES-T75BTK-P/B','3','unit');
INSERT INTO `barang` VALUES (1053,NULL,NULL,'2 TABUNG','9','ES-T85FL-W','3','unit');
INSERT INTO `barang` VALUES (1054,NULL,NULL,'2 TABUNG','9','ES-T85CL-W/V/B/P','3','unit');
INSERT INTO `barang` VALUES (1055,NULL,NULL,'2 TABUNG','9','ES-T85BTK-P/B','3','unit');
INSERT INTO `barang` VALUES (1056,NULL,NULL,'2 TABUNG','9','ES-T86CA-B','3','unit');
INSERT INTO `barang` VALUES (1057,NULL,NULL,'2 TABUNG','9','ES-T86CA-P/V','3','unit');
INSERT INTO `barang` VALUES (1058,NULL,NULL,'2 TABUNG','9','ES-T86CG-B','3','unit');
INSERT INTO `barang` VALUES (1059,NULL,NULL,'2 TABUNG','9','ES-T86CL-H','3','unit');
INSERT INTO `barang` VALUES (1060,NULL,NULL,'2 TABUNG','9','ES-T86FL-H','3','unit');
INSERT INTO `barang` VALUES (1061,NULL,NULL,'2 TABUNG','9','ES-T95FL-W','3','unit');
INSERT INTO `barang` VALUES (1062,NULL,NULL,'2 TABUNG','9','ES-T95CL-W/V/B/P','3','unit');
INSERT INTO `barang` VALUES (1063,NULL,NULL,'2 TABUNG','9','ES-T96CA-B','3','unit');
INSERT INTO `barang` VALUES (1064,NULL,NULL,'2 TABUNG','9','ES-T96CA-P/V','3','unit');
INSERT INTO `barang` VALUES (1065,NULL,NULL,'2 TABUNG','9','ES-T96CG-B','3','unit');
INSERT INTO `barang` VALUES (1066,NULL,NULL,'2 TABUNG','9','ES-T96CL-H','3','unit');
INSERT INTO `barang` VALUES (1067,NULL,NULL,'2 TABUNG','9','ES-T96FL-H','3','unit');
INSERT INTO `barang` VALUES (1068,NULL,NULL,'2 TABUNG','9','ES-TM14PY','3','unit');
INSERT INTO `barang` VALUES (1069,NULL,NULL,'1 TABUNG','9','ES-79PY','3','unit');
INSERT INTO `barang` VALUES (1070,NULL,NULL,'1 TABUNG','9','ES-80TY','3','unit');
INSERT INTO `barang` VALUES (1071,NULL,NULL,'1 TABUNG','9','ES-HG100-S','3','unit');
INSERT INTO `barang` VALUES (1072,NULL,NULL,'1 TABUNG','9','ES-S865','3','unit');
INSERT INTO `barang` VALUES (1073,NULL,NULL,'1 TABUNG','9','ES-S965D','3','unit');
INSERT INTO `barang` VALUES (1074,NULL,NULL,'1 TABUNG','9','ES-AG865','3','unit');
INSERT INTO `barang` VALUES (1075,NULL,NULL,'1 TABUNG','9','ES-AG965D','3','unit');
INSERT INTO `barang` VALUES (1076,NULL,NULL,'1 TABUNG','9','ES-AG1265D','3','unit');
INSERT INTO `barang` VALUES (1077,NULL,NULL,'1 TABUNG','9','ES-S762YY','3','unit');
INSERT INTO `barang` VALUES (1078,NULL,NULL,'1 TABUNG','9','ES-T89FY (BL/GR/VL/WH)','3','unit');
INSERT INTO `barang` VALUES (1079,NULL,NULL,'VACUUM CLEANER','21','EC-8304-A/R','3','unit');
INSERT INTO `barang` VALUES (1080,NULL,NULL,'VACUUM CLEANER','21','EC-CW60','3','unit');
INSERT INTO `barang` VALUES (1081,NULL,NULL,'VACUUM CLEANER','21','EC-CW100','3','unit');
INSERT INTO `barang` VALUES (1082,NULL,NULL,'VACUUM CLEANER','21','EC-ST10R','3','unit');
INSERT INTO `barang` VALUES (1083,NULL,NULL,'VACUUM CLEANER','21','EC-ST10S','3','unit');
INSERT INTO `barang` VALUES (1084,NULL,NULL,'VACUUM CLEANER','21','EC-9600-S','3','unit');
INSERT INTO `barang` VALUES (1085,NULL,NULL,'VACUUM CLEANER','21','EC-9800-S','3','unit');
INSERT INTO `barang` VALUES (1086,NULL,NULL,'VACUUM CLEANER','21','EC-6307-R/A','3','unit');
INSERT INTO `barang` VALUES (1087,NULL,NULL,'VACUUM CLEANER','21','EC-6304-G/V','3','unit');
INSERT INTO `barang` VALUES (1088,NULL,NULL,'VACUUM CLEANER','21','EC-CB18-SL','3','unit');
INSERT INTO `barang` VALUES (1089,NULL,NULL,'VACUUM CLEANER','21','EC-CB20-SL','3','unit');
INSERT INTO `barang` VALUES (1090,NULL,NULL,'MICROWAVE OVEN','14','R-200J(W)','3','unit');
INSERT INTO `barang` VALUES (1091,NULL,NULL,'MICROWAVE OVEN','14','R-200J(S)','3','unit');
INSERT INTO `barang` VALUES (1092,NULL,NULL,'MICROWAVE OVEN','14','R-230R(S)','3','unit');
INSERT INTO `barang` VALUES (1093,NULL,NULL,'MICROWAVE OVEN','14','R-219IN(W)','3','unit');
INSERT INTO `barang` VALUES (1094,NULL,NULL,'MICROWAVE OVEN','14','R-249IN(W)','3','unit');
INSERT INTO `barang` VALUES (1095,NULL,NULL,'MICROWAVE OVEN','14','R-299IN(S)','3','unit');
INSERT INTO `barang` VALUES (1096,NULL,NULL,'MICROWAVE OVEN','14','R-369IN(S)','3','unit');
INSERT INTO `barang` VALUES (1097,NULL,NULL,'MICROWAVE OVEN','14','R-298H(S)','3','unit');
INSERT INTO `barang` VALUES (1098,NULL,NULL,'MICROWAVE OVEN','14','R-898M(S)','3','unit');
INSERT INTO `barang` VALUES (1099,NULL,NULL,'MICROWAVE OVEN','14','R-899R(S)-IN','3','unit');
INSERT INTO `barang` VALUES (1100,NULL,NULL,'MICROWAVE OVEN','14','R-268R(W)-IN','3','unit');
INSERT INTO `barang` VALUES (1101,NULL,NULL,'MICROWAVE OVEN','14','R-268R(S)-IN','3','unit');
INSERT INTO `barang` VALUES (1102,NULL,NULL,'MICROWAVE OVEN','14','R-668R(S)-IN','3','unit');
INSERT INTO `barang` VALUES (1103,NULL,NULL,'MICROWAVE OVEN','14','R-678IN(W)','3','unit');
INSERT INTO `barang` VALUES (1104,NULL,NULL,'MICROWAVE OVEN','14','R-678IN(S)','3','unit');
INSERT INTO `barang` VALUES (1105,NULL,NULL,'MICROWAVE OVEN','14','AX-1300IN(S)','3','unit');
INSERT INTO `barang` VALUES (1106,NULL,NULL,'MICROWAVE OVEN','14','AX-1300IN(R)','3','unit');
INSERT INTO `barang` VALUES (1107,NULL,NULL,'MICROWAVE OVEN','14','AX-1500IN(S)','3','unit');
INSERT INTO `barang` VALUES (1108,NULL,NULL,'MICROWAVE OVEN','14','AX-1500IN(R)','3','unit');
INSERT INTO `barang` VALUES (1109,NULL,NULL,'MICROWAVE OVEN','14','R-240F','3','unit');
INSERT INTO `barang` VALUES (1110,NULL,NULL,'MICROWAVE OVEN','14','R-248J(S)','3','unit');
INSERT INTO `barang` VALUES (1111,NULL,NULL,'MICROWAVE OVEN','14','R-360J(S)','3','unit');
INSERT INTO `barang` VALUES (1112,NULL,NULL,'MICROWAVE OVEN','14','R-360N(R)','3','unit');
INSERT INTO `barang` VALUES (1113,NULL,NULL,'MICROWAVE OVEN','14','R-658L(S)','3','unit');
INSERT INTO `barang` VALUES (1114,NULL,NULL,'MICROWAVE OVEN','14','R-888F','3','unit');
INSERT INTO `barang` VALUES (1115,NULL,NULL,'MICROWAVE OVEN','14','R-758B','3','unit');
INSERT INTO `barang` VALUES (1116,NULL,NULL,'MICROWAVE OVEN','14','R-778B','3','unit');
INSERT INTO `barang` VALUES (1117,NULL,NULL,'SHA - Jar Pot','26','KP-A16S','3','unit');
INSERT INTO `barang` VALUES (1118,NULL,NULL,'SHA - Jar Pot','26','KP-A28ST','3','unit');
INSERT INTO `barang` VALUES (1119,NULL,NULL,'SHA - Jar Pot','26','KP-Y33','3','unit');
INSERT INTO `barang` VALUES (1120,NULL,NULL,'SHA - Comercial Rice Cooker','26','KSH-777','3','unit');
INSERT INTO `barang` VALUES (1121,NULL,NULL,'SHA - MR. KOKI','26','KS-A18TTR/SF','3','unit');
INSERT INTO `barang` VALUES (1122,NULL,NULL,'SHA - MR. KOKI','26','KS-M18L(W)','3','unit');
INSERT INTO `barang` VALUES (1123,NULL,NULL,'SHA - Blender','26','EM-12G','3','unit');
INSERT INTO `barang` VALUES (1124,NULL,NULL,'SHA - Blender','26','EM-125L(W)','3','unit');
INSERT INTO `barang` VALUES (1125,NULL,NULL,'SHA - Mixer','26','EMH-15','3','unit');
INSERT INTO `barang` VALUES (1126,NULL,NULL,'SHA - Mixer','26','EMH-15L(W)','3','unit');
INSERT INTO `barang` VALUES (1127,NULL,NULL,'SHA - Mixer','26','EMS-51','3','unit');
INSERT INTO `barang` VALUES (1128,NULL,NULL,'SHA - Mixer','26','EMS-51L(W)','3','unit');
INSERT INTO `barang` VALUES (1129,NULL,NULL,'SHA - Electric Oven','26','EO-18L(W)','3','unit');
INSERT INTO `barang` VALUES (1130,NULL,NULL,'SHA - Electric Oven','26','SO-181','3','unit');
INSERT INTO `barang` VALUES (1131,NULL,NULL,'SHA - Blender Blazter','26','SB-TW101P','3','unit');
INSERT INTO `barang` VALUES (1132,NULL,NULL,'SHA - Blender Titanium Series','26','SB-TI171P','3','unit');
INSERT INTO `barang` VALUES (1133,NULL,NULL,'SHA - Blender Titanium Series','26','SB-TI172G','3','unit');
INSERT INTO `barang` VALUES (1134,NULL,NULL,'SHA - Blender Titanium Series','26','SB-TI181P','3','unit');
INSERT INTO `barang` VALUES (1135,NULL,NULL,'SHA - Blender Titanium Series','26','SB-TIS171GD','3','unit');
INSERT INTO `barang` VALUES (1136,NULL,NULL,'SHA - Blender Titanium Series','26','SB-TIS172G','3','unit');
INSERT INTO `barang` VALUES (1137,NULL,NULL,'SHA - Kettle Jug','26','EKJ-17','3','unit');
INSERT INTO `barang` VALUES (1138,NULL,NULL,'SHA - Kettle Jug','26','EKJ-17L(W)','3','unit');
INSERT INTO `barang` VALUES (1139,NULL,NULL,'SHA - MR. KOKI','26','KS-C16TTR(P)','3','unit');
INSERT INTO `barang` VALUES (1140,NULL,NULL,'SHA - MR. KOKI','26','KS-M18TTR','3','unit');
INSERT INTO `barang` VALUES (1141,NULL,NULL,'SHA - Blender','26','EM-11','3','unit');
INSERT INTO `barang` VALUES (1142,NULL,NULL,'SHA - Blender','26','EM-11E','3','unit');
INSERT INTO `barang` VALUES (1143,NULL,NULL,'SHA - Blender','26','EM-11G','3','unit');
INSERT INTO `barang` VALUES (1144,NULL,NULL,'SHA - Blender','26','EM-12','3','unit');
INSERT INTO `barang` VALUES (1145,NULL,NULL,'SHA - Blender','26','EM-12E','3','unit');
INSERT INTO `barang` VALUES (1146,NULL,NULL,'SHA - Blender','26','EM-13','3','unit');
INSERT INTO `barang` VALUES (1147,NULL,NULL,'SHA - Electric Oven','26','EO-18','3','unit');
INSERT INTO `barang` VALUES (1148,NULL,NULL,'SHA','26','EI-D04','3','unit');
INSERT INTO `barang` VALUES (1149,NULL,NULL,'SHA - Electric Iron','26','EI-N04','3','unit');
INSERT INTO `barang` VALUES (1150,NULL,NULL,'SHA','26','KS-R19ST','3','unit');
INSERT INTO `barang` VALUES (1151,NULL,NULL,'WATER DISPENSER','8','SWD-199(BL/PK)','3','unit');
INSERT INTO `barang` VALUES (1152,NULL,NULL,'WATER DISPENSER','8','SWD 289','3','unit');
INSERT INTO `barang` VALUES (1153,NULL,NULL,'WATER DISPENSER','8','SWD-299','3','unit');
INSERT INTO `barang` VALUES (1154,NULL,NULL,'WATER DISPENSER','8','SWD-50DH-WH','3','unit');
INSERT INTO `barang` VALUES (1155,NULL,NULL,'WATER DISPENSER','8','SWD-70EH-WH','3','unit');
INSERT INTO `barang` VALUES (1156,NULL,NULL,'WATER DISPENSER','8','SWD-70EH-BK','3','unit');
INSERT INTO `barang` VALUES (1157,NULL,NULL,'WATER DISPENSER','8','SWD-70EHL-SL','3','unit');
INSERT INTO `barang` VALUES (1158,NULL,NULL,'WATER DISPENSER','8','SWD-289N','3','unit');
INSERT INTO `barang` VALUES (1159,NULL,NULL,'AC SPLIT 1.5 PK','27','CS/CU-S13MKP','6','unit');
INSERT INTO `barang` VALUES (1160,NULL,NULL,'LCD TV 42\"','4','TH-L42U30G','6','unit');
INSERT INTO `barang` VALUES (1162,NULL,NULL,'AC SPLIT 0.5 PK','27','CS/CU-PC5MKJ','6','unit');
INSERT INTO `barang` VALUES (1163,NULL,NULL,'NAMA BARANG','KATEGORI','TYPE BARANG','SUPPLIER','unit');
INSERT INTO `barang` VALUES (1164,NULL,NULL,'DUCTING, 2.5 PK','27','CS/CU - D24DD2H5','6','unit');
INSERT INTO `barang` VALUES (1165,NULL,NULL,'DUCTING, 3 PK','27','CS/CU - D28DD2H5','6','unit');
INSERT INTO `barang` VALUES (1166,NULL,NULL,'DUCTING, 4 PK','27','CS/CU - D34DD2H5','6','unit');
INSERT INTO `barang` VALUES (1167,NULL,NULL,'DUCTING, 5 PK','27','CS/CU - D43DD2H5','6','unit');
INSERT INTO `barang` VALUES (1168,NULL,NULL,'DUCTING, 6 PK','27','CS/CU - D50DD2H5','6','unit');
INSERT INTO `barang` VALUES (1169,NULL,NULL,'CEILING, 2.5 PK','27','CS/CU - D24DTH5','6','unit');
INSERT INTO `barang` VALUES (1170,NULL,NULL,'CEILING, 3 PK','27','CS/CU - D28DTH5','6','unit');
INSERT INTO `barang` VALUES (1171,NULL,NULL,'CEILING, 4 PK','27','CS/CU - D34DTH5','6','unit');
INSERT INTO `barang` VALUES (1172,NULL,NULL,'CEILING, 5 PK','27','CS/CU - D43DTH5','6','unit');
INSERT INTO `barang` VALUES (1173,NULL,NULL,'CEILING, 6 PK','27','CS/CU - D50DTH5','6','unit');
INSERT INTO `barang` VALUES (1174,NULL,NULL,'CASSETTE, 2 PK','27','CS/CU - PC18DB4H','6','unit');
INSERT INTO `barang` VALUES (1175,NULL,NULL,'CASSETTE, 2.5 PK','27','CS/CU - PC24DB4H','6','unit');
INSERT INTO `barang` VALUES (1176,NULL,NULL,'CASSETTE, 3 PK','27','CS/CU - D28DB4H','6','unit');
INSERT INTO `barang` VALUES (1177,NULL,NULL,'CASSETTE, 4 PK','27','CS/CU - D34DB4H','6','unit');
INSERT INTO `barang` VALUES (1178,NULL,NULL,'CASSETTE, 5 PK','27','CS/CU - D43DB4H','6','unit');
INSERT INTO `barang` VALUES (1179,NULL,NULL,'CASSETTE, 6 PK','27','CS/CU - D50DB4H','6','unit');
INSERT INTO `barang` VALUES (1180,NULL,NULL,'STANDING FLOOR, 2 PK','27','CS/CU - C18FFH','6','unit');
INSERT INTO `barang` VALUES (1181,NULL,NULL,'STANDING FLOOR, 3 PK','27','CS/CU - C28FFH','6','unit');
INSERT INTO `barang` VALUES (1182,NULL,NULL,'STANDING FLOOR, 5 PK','27','CS/CU - C45FFH','6','unit');
INSERT INTO `barang` VALUES (1204,NULL,NULL,'WALL BRACKET','28','FOR 22\" UP TO 32\"','11','unit');
INSERT INTO `barang` VALUES (1205,NULL,NULL,'WALL BRACKET','28','FOR 42\" UP TO 50\"','11','unit');
INSERT INTO `barang` VALUES (1206,NULL,NULL,'WALL BRACKET','28','FOR 22\" UP TO 32\"','13','unit');
INSERT INTO `barang` VALUES (1207,NULL,NULL,'WALL BRACKET','28','FOR 42\" UP TO 50\"','13','unit');
INSERT INTO `barang` VALUES (1208,NULL,NULL,'WALL BRACKET','28','FOR 22\" UP TO 32\"','12','unit');
INSERT INTO `barang` VALUES (1209,NULL,NULL,'WALL BRACKET','28','FOR 42\" UP TO 50\"','12','unit');
INSERT INTO `barang` VALUES (1210,NULL,NULL,'CEILING  BRACKET','28','FOR 22\" UP TO 32\"','10','unit');
INSERT INTO `barang` VALUES (1211,NULL,NULL,'CEILING  BRACKET','28','FOR 42\" UP TO 50\"','10','unit');
INSERT INTO `barang` VALUES (1212,NULL,NULL,'FLOOR STANDING BRACKET','28','FOR 22\" UP TO 32\"','10','unit');
INSERT INTO `barang` VALUES (1213,NULL,NULL,'KABEL CONTOL','29','','10','unit');
INSERT INTO `barang` VALUES (1214,NULL,NULL,'KABEL POWER, AC SPLIT','29','NYM 3 x 2.5mm','10','unit');
INSERT INTO `barang` VALUES (1215,NULL,NULL,'KABEL POWER, AC CASSETTR','29','NYM 4 x 4mm','10','unit');
INSERT INTO `barang` VALUES (1216,NULL,NULL,'BRACKET OUTDOOR AC','29','1/2 PK - 1 PK','10','unit');
INSERT INTO `barang` VALUES (1217,NULL,NULL,'BRACKET OUTDOOR AC','29','1.5 PK - 2.5 PK','10','unit');
INSERT INTO `barang` VALUES (1218,NULL,NULL,'PIPA DRAIN','29','PVC 3/4\"','10','unit');
INSERT INTO `barang` VALUES (1219,NULL,NULL,'PIPA AC , 1/2 PK - 1 PK','29','UKURAN  1/4 x 3/8','10','unit');
INSERT INTO `barang` VALUES (1220,NULL,NULL,'PIPA AC , 1.5 PK - 2 PK','29','UKURAN  1/4 x 1/2','10','unit');
INSERT INTO `barang` VALUES (1221,NULL,NULL,'PIPA AC , 2.5 PK - 3 PK','29','UKURAN  1/4 x 5/8','10','unit');
INSERT INTO `barang` VALUES (1222,NULL,NULL,'PIPA AC , 4 PK - 6 PK','29','UKURAN  3/4 x 3/8','10','unit');

#
# Table structure for table beli
#

CREATE TABLE `beli` (
  `be_id` int(11) NOT NULL auto_increment,
  `be_kode` varchar(18) character set latin1 default NULL,
  `be_supplier_id` int(11) default NULL,
  `be_tgl` date default NULL,
  `be_pic` int(11) default NULL,
  `be_due` date default NULL,
  `be_post` tinyint(1) default NULL,
  `be_bayar` varchar(10) character set latin1 default NULL,
  `be_islangsung` tinyint(1) default '0',
  `be_project_id` int(11) default NULL,
  PRIMARY KEY  (`be_id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `beli` VALUES (43,'0000000000000000',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL);

#
# Table structure for table beli_lsg
#

CREATE TABLE `beli_lsg` (
  `bl_id` int(11) NOT NULL auto_increment,
  `bl_kode` varchar(255) collate latin1_general_ci default NULL,
  `bl_tgl` date default NULL,
  `bl_amount` double default NULL,
  `bl_pic` varchar(255) character set latin1 default NULL,
  `bl_supplier_id` int(11) default NULL,
  PRIMARY KEY  (`bl_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

#
# Table structure for table beli_lsgdetail
#

CREATE TABLE `beli_lsgdetail` (
  `bld_id` int(11) NOT NULL auto_increment,
  `bld_kode` varchar(255) collate latin1_general_ci default NULL,
  `bld_kd_barang` varchar(255) collate latin1_general_ci default NULL,
  `bld_nama_barang` varchar(255) collate latin1_general_ci default NULL,
  `bld_qty` tinyint(3) default NULL,
  `bld_harga` double default NULL,
  `bld_total` double default NULL,
  `bld_tgl` date default NULL,
  `bld_chart` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`bld_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

#
# Table structure for table belidetail
#

CREATE TABLE `belidetail` (
  `bd_id` int(11) NOT NULL auto_increment,
  `bd_kode` varchar(255) collate latin1_general_ci default NULL,
  `bd_kd_barang` int(11) default NULL,
  `bd_nama_barang` varchar(255) collate latin1_general_ci default NULL,
  `bd_qty` int(3) default NULL,
  `bd_sendto` int(11) default NULL,
  `bd_harga` double default NULL,
  `bd_total` double default NULL,
  `bd_chart_account` varchar(255) collate latin1_general_ci default NULL,
  `bd_tgl` date default NULL,
  `bd_up` int(11) default NULL,
  `bd_sendto_nama` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`bd_id`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

#
# Table structure for table customer
#

CREATE TABLE `customer` (
  `cu_id` int(11) NOT NULL auto_increment,
  `cu_kode` varchar(255) character set latin1 default NULL,
  `cu_nama` varchar(255) collate latin1_general_ci default NULL,
  `cu_alamat` varchar(255) collate latin1_general_ci default NULL,
  `cu_kota` varchar(255) collate latin1_general_ci default NULL,
  `cu_telp` varchar(255) collate latin1_general_ci default NULL,
  `cu_npwp` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`cu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `customer` VALUES (2,'SVC-0000001','Tujuh Cahaya Mobil, PT.','Jl.Kebagusan No.72 Kebayoran Baru','Jakarta','021-754 33 441','3 1. 4 3 9. 4 0 6. 5 - 4 0 7. 0 0 0');
INSERT INTO `customer` VALUES (3,'SVC-0000002','Batavia Bintang Berlian,PT.','Jl.Raya Bekasi Km.19 Pulogadung','Jakarta Timur','021-47863456',NULL);
INSERT INTO `customer` VALUES (4,'SVC-0000003','Kreasi Auto Kencana','Jl.Boulevar Hijau Kelapa Gading','Jakarta',NULL,NULL);
INSERT INTO `customer` VALUES (5,'SVC-0000004','HeavenBilly Auto Classic','Jl.Salemba Tengah 58','Jakarta','021-8876414/9923356',NULL);
INSERT INTO `customer` VALUES (6,'SVC-0000005','Sigma Visualindo','Summer Festival','Bekasi',NULL,NULL);
INSERT INTO `customer` VALUES (7,'SVC-0000006','AnekaYess!','Salemba Tengah','Jakarta',NULL,NULL);
INSERT INTO `customer` VALUES (8,'SVC-0000007','Prisma Indah, PT.','Jl. Indah Kenangan Blok A9','Bogor','021-8845566','01 01 01');
INSERT INTO `customer` VALUES (9,'SVC-0000008','YusMan','Tangerang',NULL,NULL,'123.456.789');

#
# Table structure for table custpic
#

CREATE TABLE `custpic` (
  `cp_id` int(11) NOT NULL auto_increment,
  `cp_cust_kode` varchar(255) collate latin1_general_ci default NULL,
  `cp_nama` varchar(255) collate latin1_general_ci default NULL,
  `cp_alamat` varchar(255) collate latin1_general_ci default NULL,
  `cp_hp` varchar(255) collate latin1_general_ci default NULL,
  `cp_email` varchar(255) collate latin1_general_ci default NULL,
  `cp_custid` int(11) default NULL,
  PRIMARY KEY  (`cp_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `custpic` VALUES (10,NULL,'Vivid Argarini, Mrs.',NULL,NULL,NULL,7);
INSERT INTO `custpic` VALUES (11,NULL,'Mochamad Amin',NULL,NULL,NULL,2);
INSERT INTO `custpic` VALUES (12,NULL,'Yusuf Mansur',NULL,NULL,NULL,9);

#
# Table structure for table delivery
#

CREATE TABLE `delivery` (
  `do_id` int(11) NOT NULL auto_increment,
  `do_pic` varchar(255) collate latin1_general_ci default NULL,
  `do_inv` varchar(255) collate latin1_general_ci default NULL,
  `do_tgl` date default NULL,
  `do_ship_to` int(11) default NULL,
  PRIMARY KEY  (`do_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

#
# Table structure for table departement
#

CREATE TABLE `departement` (
  `dp_id` int(11) NOT NULL auto_increment,
  `dp_nama` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`dp_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `departement` VALUES (1,'Human & Resource Dept.');
INSERT INTO `departement` VALUES (3,'Board Of Directors');

#
# Table structure for table do
#

CREATE TABLE `do` (
  `do_id` int(11) NOT NULL auto_increment,
  `do_tgl` date default NULL,
  `do_pic` varchar(255) collate latin1_general_ci default NULL,
  `do_ju_trans` varchar(255) character set latin1 default NULL,
  `do_kode` varchar(255) collate latin1_general_ci default NULL,
  `do_cust_id` int(11) default NULL,
  `do_cust_pic` int(11) default NULL,
  `do_cust_kode` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`do_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `do` VALUES (1,NULL,NULL,NULL,'0000000000000000',NULL,NULL,NULL);
INSERT INTO `do` VALUES (16,'2012-03-07',NULL,'JL0000000001','001/SV/DO/01/2012',NULL,10,'SVC-0000005');
INSERT INTO `do` VALUES (17,'2012-03-07',NULL,'JL0000000002','001/SV/DO/03/2012',NULL,11,'SVC-0000007');
INSERT INTO `do` VALUES (18,'2012-03-08',NULL,'JL0000000004','002/SV/DO/03/2012',NULL,12,'SVC-0000002');
INSERT INTO `do` VALUES (19,'2012-03-10',NULL,'JL0000000002','003/SV/DO/03/2012',NULL,10,'SVC-0000004');

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
  `dd_satuan` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`dd_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `dodetail` VALUES (18,'001/SV/DO/01/2012','41','LED TV 32\"',NULL,1,NULL);
INSERT INTO `dodetail` VALUES (19,'001/SV/DO/03/2012','41','LED TV 32\"',NULL,2,NULL);
INSERT INTO `dodetail` VALUES (20,'002/SV/DO/03/2012','32','LED TV 26\"',NULL,1,NULL);
INSERT INTO `dodetail` VALUES (21,'003/SV/DO/03/2012','41','LED TV 32\"',NULL,1,NULL);

#
# Table structure for table fakturpajak
#

CREATE TABLE `fakturpajak` (
  `fp_id` int(11) NOT NULL auto_increment,
  `fp_kode` varchar(255) collate latin1_general_ci default NULL,
  `fp_cust_id` int(11) default NULL,
  `fp_ref` varchar(255) collate latin1_general_ci default NULL,
  `fp_date` date default NULL,
  `fp_cust_kode` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`fp_id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `fakturpajak` VALUES (1,'010.000-12.00000000',NULL,NULL,NULL,NULL);
INSERT INTO `fakturpajak` VALUES (31,'010.000-12.00000021',NULL,'JL0000000001','2012-03-05','SVC-0000007');
INSERT INTO `fakturpajak` VALUES (32,'010.000-12.00000022',NULL,'JL0000000002','2012-03-05','SVC-0000003');
INSERT INTO `fakturpajak` VALUES (33,'010.000-12.00000023',NULL,'JL0000000003','2012-03-05','SVC-0000004');
INSERT INTO `fakturpajak` VALUES (34,'010.000-12.00000024',NULL,'JL0000000001','2012-03-07','SVC-0000006');
INSERT INTO `fakturpajak` VALUES (35,'010.000-12.00000025',NULL,'JL0000000001','2012-03-07','SVC-0000006');
INSERT INTO `fakturpajak` VALUES (36,'010.000-12.00000026',NULL,'JL0000000002','2012-03-07','SVC-0000007');
INSERT INTO `fakturpajak` VALUES (37,'010.000-12.00000027',NULL,'JL0000000001','2012-03-07','SVC-0000006');
INSERT INTO `fakturpajak` VALUES (38,'010.000-12.00000028',NULL,'JL0000000002','2012-03-07','SVC-0000003');
INSERT INTO `fakturpajak` VALUES (39,'010.000-12.00000029',NULL,'JL0000000003','2012-03-08','SVC-0000008');
INSERT INTO `fakturpajak` VALUES (40,'010.000-12.00000030',NULL,'JL0000000004','2012-03-08','SVC-0000001');
INSERT INTO `fakturpajak` VALUES (41,'010.000-12.00000031',NULL,'JL0000000001','2012-03-08','SVC-0000008');
INSERT INTO `fakturpajak` VALUES (42,'010.000-12.00000032',NULL,'JL0000000002','2012-03-10','SVC-0000006');

#
# Table structure for table fakturpajakdetail
#

CREATE TABLE `fakturpajakdetail` (
  `fd_id` int(11) NOT NULL auto_increment,
  `fd_kode` varchar(255) collate latin1_general_ci default NULL,
  `fd_kd_barang` int(11) default NULL,
  `fd_nama_barang` varchar(255) collate latin1_general_ci default NULL,
  `fd_qty` int(11) default NULL,
  `fd_row_total` double default NULL,
  `fd_harga` double default NULL,
  PRIMARY KEY  (`fd_id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `fakturpajakdetail` VALUES (10,'010.000-12.00000005',41,'LED TV 32\"',1,2500000,2500000);
INSERT INTO `fakturpajakdetail` VALUES (11,'010.000-12.00000006',41,'LED TV 32\"',1,2500000,2500000);
INSERT INTO `fakturpajakdetail` VALUES (12,'010.000-12.00000007',34,'PLASMA TV 42\"',1,11000000,11000000);
INSERT INTO `fakturpajakdetail` VALUES (13,'010.000-12.00000008',34,'PLASMA TV 42\"',1,11000000,11000000);
INSERT INTO `fakturpajakdetail` VALUES (14,'010.000-12.00000009',32,'LED TV 26\"',1,2500000,2500000);
INSERT INTO `fakturpajakdetail` VALUES (15,'010.000-12.00000010',32,'LED TV 26\"',1,2500000,2500000);
INSERT INTO `fakturpajakdetail` VALUES (16,'010.000-12.00000011',11,'COLOR TV 21\" SLIM',1,1500000,1500000);
INSERT INTO `fakturpajakdetail` VALUES (17,'010.000-12.00000012',26,'COLOR TV 29\" SLIM',1,2000000,2000000);
INSERT INTO `fakturpajakdetail` VALUES (18,'010.000-12.00000013',32,'LED TV 26\"',1,2500000,2500000);
INSERT INTO `fakturpajakdetail` VALUES (19,'010.000-12.00000014',32,'LED TV 26\"',1,2500000,2500000);
INSERT INTO `fakturpajakdetail` VALUES (20,'010.000-12.00000015',26,'COLOR TV 29\" SLIM',1,2300000,2300000);
INSERT INTO `fakturpajakdetail` VALUES (21,'010.000-12.00000015',32,'LED TV 26\"',1,2500000,2500000);
INSERT INTO `fakturpajakdetail` VALUES (22,'010.000-12.00000016',41,'LED TV 32\"',1,2600000,2600000);
INSERT INTO `fakturpajakdetail` VALUES (23,'010.000-12.00000017',32,'LED TV 26\"',1,2000000,2000000);
INSERT INTO `fakturpajakdetail` VALUES (24,'010.000-12.00000017',11,'COLOR TV 21\" SLIM',1,1250000,1250000);
INSERT INTO `fakturpajakdetail` VALUES (25,'010.000-12.00000018',32,'LED TV 26\"',1,2100000,2100000);
INSERT INTO `fakturpajakdetail` VALUES (26,'010.000-12.00000019',26,'COLOR TV 29\" SLIM',1,2000000,2000000);
INSERT INTO `fakturpajakdetail` VALUES (27,'010.000-12.00000020',41,'LED TV 32\"',1,2500000,2500000);
INSERT INTO `fakturpajakdetail` VALUES (28,'010.000-12.00000021',11,'COLOR TV 21\" SLIM',1,1500000,1500000);
INSERT INTO `fakturpajakdetail` VALUES (29,'010.000-12.00000022',30,'LED TV 22\"',1,2000000,2000000);
INSERT INTO `fakturpajakdetail` VALUES (30,'010.000-12.00000023',41,'LED TV 32\"',1,2500000,2500000);
INSERT INTO `fakturpajakdetail` VALUES (31,'010.000-12.00000024',26,'COLOR TV 29\" SLIM',1,2000000,2000000);
INSERT INTO `fakturpajakdetail` VALUES (32,'010.000-12.00000025',32,'LED TV 26\"',1,2500000,2500000);
INSERT INTO `fakturpajakdetail` VALUES (33,'010.000-12.00000026',11,'COLOR TV 21\" SLIM',1,1300000,1300000);
INSERT INTO `fakturpajakdetail` VALUES (34,'010.000-12.00000027',41,'LED TV 32\"',1,2500000,2500000);
INSERT INTO `fakturpajakdetail` VALUES (35,'010.000-12.00000028',41,'LED TV 32\"',2,5000000,2500000);
INSERT INTO `fakturpajakdetail` VALUES (36,'010.000-12.00000029',32,'LED TV 26\"',1,2000000,2000000);
INSERT INTO `fakturpajakdetail` VALUES (37,'010.000-12.00000030',32,'LED TV 26\"',1,2500000,2500000);
INSERT INTO `fakturpajakdetail` VALUES (38,'010.000-12.00000031',41,'LED TV 32\"',1,2500000,2500000);
INSERT INTO `fakturpajakdetail` VALUES (39,'010.000-12.00000032',41,'LED TV 32\"',1,3000000,3000000);

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
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `foot_note` VALUES (1,'2','1','Payment Terms','Kebijakan INternal Sigma');
INSERT INTO `foot_note` VALUES (2,'2','2','Delivery Address','Grand Wisata Summer Festival AE 07/2 Bekasi');
INSERT INTO `foot_note` VALUES (3,'2',NULL,NULL,'Up.Ibu Arie');
INSERT INTO `foot_note` VALUES (4,'2','3','Delivery Time','Jumat kapan-kapan');
INSERT INTO `foot_note` VALUES (5,'4','1.','Delivery to','Tunggu Konfirmasi');
INSERT INTO `foot_note` VALUES (6,'4','2.','Kirim','SEGERA');
INSERT INTO `foot_note` VALUES (7,'4','','Payment','- Kirim Tgl 1-5, Pembayaran Tgl 5 Bulan Berikutnya');
INSERT INTO `foot_note` VALUES (8,'4','',NULL,'- Kirim Tgl 16-30/31, Pembayaran Tgl 20 Bulan Berikutnya');
INSERT INTO `foot_note` VALUES (9,'4','3.','Unit Price','included VAT 10%');
INSERT INTO `foot_note` VALUES (10,'5','1.','Footnote','Polytron');
INSERT INTO `foot_note` VALUES (11,'6','1.','Payment','Bebas Seadanya Cash Flow Anda');
INSERT INTO `foot_note` VALUES (12,'6','2.','Pengiriman','Free Shipping asal Pake Express Light');

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

#
# Table structure for table general_ledger
#

CREATE TABLE `general_ledger` (
  `gl_id` int(11) NOT NULL auto_increment,
  `gl_akun` varchar(255) collate latin1_general_ci default NULL,
  `gl_amount` double default NULL,
  `gl_tgl` date default NULL,
  `gl_tran_id` int(11) default NULL,
  `gl_desc` varchar(255) collate latin1_general_ci default NULL,
  `gl_debet` double default NULL,
  `gl_kredit` double default NULL,
  `gl_ref` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`gl_id`)
) ENGINE=MyISAM AUTO_INCREMENT=348 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `general_ledger` VALUES (342,'130-20',3000000,'2012-03-10',NULL,'Penjualan,AnekaYess!',3000000,NULL,'JL0000000002');
INSERT INTO `general_ledger` VALUES (343,'140-10',-2400000,'2012-03-10',NULL,'Penyesuaian Persediaan Pada JL0000000002',NULL,2400000,'JL0000000002');
INSERT INTO `general_ledger` VALUES (344,'410-10',3000000,'2012-03-10',NULL,'Penjualan,AnekaYess!',NULL,3000000,'JL0000000002');
INSERT INTO `general_ledger` VALUES (345,'510-10',2400000,'2012-03-10',NULL,'Penjualan,AnekaYess!',2400000,NULL,'JL0000000002');
INSERT INTO `general_ledger` VALUES (346,'130-20',-3000000,'2012-03-10',NULL,'Pembayaran Piutang Untuk JL0000000002',NULL,3000000,'JL0000000002');
INSERT INTO `general_ledger` VALUES (347,'110-20',3000000,'2012-03-10',NULL,'Pembayaran Piutang Untuk JL0000000002',3000000,NULL,'JL0000000002');

#
# Table structure for table group_access
#

CREATE TABLE `group_access` (
  `ga_id` int(11) NOT NULL auto_increment,
  `ga_name` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ga_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `group_access` VALUES (1,'Director/Administrator');
INSERT INTO `group_access` VALUES (2,'Supervisor');
INSERT INTO `group_access` VALUES (3,'Operator');

#
# Table structure for table gudang
#

CREATE TABLE `gudang` (
  `gd_id` int(11) NOT NULL auto_increment,
  `gd_nama` varchar(255) collate latin1_general_ci default NULL,
  `gd_lokasi` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`gd_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `gudang` VALUES (1,'Gudang 1',NULL);
INSERT INTO `gudang` VALUES (2,'Gudang 2',NULL);

#
# Table structure for table inventory
#

CREATE TABLE `inventory` (
  `in_id` int(11) NOT NULL auto_increment,
  `in_kd_barang` int(11) default NULL,
  `in_kd_gudang` int(11) default NULL,
  `in_stock` int(11) default NULL,
  `in_harga` double default NULL,
  PRIMARY KEY  (`in_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `inventory` VALUES (13,30,1,-2,1750000);
INSERT INTO `inventory` VALUES (14,32,1,14,1900000);
INSERT INTO `inventory` VALUES (15,41,1,92,2400000);
INSERT INTO `inventory` VALUES (16,11,1,0,1150000);
INSERT INTO `inventory` VALUES (17,26,1,-1,1700000);
INSERT INTO `inventory` VALUES (18,34,1,2,10500000);
INSERT INTO `inventory` VALUES (19,54,1,1,80000000);

#
# Table structure for table inventory_keluar
#

CREATE TABLE `inventory_keluar` (
  `ik_id` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`ik_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

#
# Table structure for table inventory_masuk
#

CREATE TABLE `inventory_masuk` (
  `im_id` int(11) NOT NULL auto_increment,
  `im_tgl` date default NULL,
  `im_pic` varchar(255) character set latin1 default NULL,
  `im_po` varchar(255) character set latin1 default NULL,
  PRIMARY KEY  (`im_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

#
# Table structure for table invoice
#

CREATE TABLE `invoice` (
  `in_id` int(11) NOT NULL auto_increment,
  `in_kode` varchar(255) collate latin1_general_ci default NULL,
  `in_cust_kode` varchar(255) collate latin1_general_ci default NULL,
  `in_order_kode` varchar(255) collate latin1_general_ci default NULL,
  `in_amount` double default NULL,
  `in_tax` double default NULL,
  `in_date` date default NULL,
  `in_kode_jual` varchar(255) collate latin1_general_ci default NULL,
  `in_delete` tinyint(3) default '0',
  `in_pic_id` tinyint(3) default NULL,
  `in_paid` tinyint(1) default '0',
  `in_due` date default NULL,
  `in_payment_method` varchar(255) collate latin1_general_ci default NULL,
  `in_po` varchar(255) collate latin1_general_ci default NULL,
  `in_paid_date` date default NULL,
  PRIMARY KEY  (`in_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `invoice` VALUES (1,'000/SV/IN/00/2012',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL,NULL,NULL,NULL);
INSERT INTO `invoice` VALUES (13,'001/SV/IN/03/2012','SVC-0000006',NULL,2500000,250000,'2012-03-07','JL0000000001',0,10,0,'2012-03-31','HUTANG','001/AY/03/2012',NULL);
INSERT INTO `invoice` VALUES (14,'002/SV/IN/03/2012','SVC-0000003',NULL,5000000,NULL,'2012-03-07','JL0000000002',0,11,0,NULL,'CASH','005/KAK/03/2012',NULL);
INSERT INTO `invoice` VALUES (15,'003/SV/IN/03/2012','SVC-0000001',NULL,2500000,0,'2012-03-08','JL0000000004',0,12,0,'2012-03-16','HUTANG','004/CP/03/2012',NULL);
INSERT INTO `invoice` VALUES (16,'004/SV/IN/03/2012','SVC-0000006',NULL,3000000,0,'2012-03-10','JL0000000002',0,10,0,'2012-03-31','HUTANG','001/AY/03/2012',NULL);

#
# Table structure for table jobdes
#

CREATE TABLE `jobdes` (
  `jd_id` int(11) NOT NULL auto_increment,
  `jd_nama` varchar(255) collate latin1_general_ci default NULL,
  `jd_description` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`jd_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `jobdes` VALUES (1,'Teknisi-AC','Bagian pasang AC');
INSERT INTO `jobdes` VALUES (2,'Director',NULL);

#
# Table structure for table jual
#

CREATE TABLE `jual` (
  `ju_id` int(11) NOT NULL auto_increment,
  `ju_kode` varchar(255) collate latin1_general_ci default NULL,
  `ju_cust_kode` varchar(255) character set latin1 default NULL,
  `ju_tgl` date default NULL,
  `ju_cust_id` int(11) default NULL,
  `ju_cust_pic` int(11) default NULL,
  `ju_due` date default NULL,
  `ju_bayar` varchar(10) collate latin1_general_ci default NULL,
  `ju_po` varchar(255) collate latin1_general_ci default NULL,
  `ju_lunas` tinyint(1) default NULL,
  `ju_project` int(11) default NULL,
  `ju_total` double default NULL,
  `ju_tax` double default NULL,
  `ju_akun` varchar(255) collate latin1_general_ci default NULL,
  `ju_ppn` varchar(5) collate latin1_general_ci default NULL,
  `ju_invoice_sent` tinyint(1) default NULL,
  `ju_barang_sent` tinyint(1) default NULL,
  PRIMARY KEY  (`ju_id`)
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `jual` VALUES (1,'JL0000000000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `jual` VALUES (82,'JL0000000001','SVC-0000008','2012-03-08',NULL,12,'2012-03-29','HUTANG','003',NULL,NULL,2500000,250000,NULL,'Tidak',NULL,NULL);
INSERT INTO `jual` VALUES (83,'JL0000000002','SVC-0000006','2012-03-10',NULL,10,'2012-03-31','HUTANG','001/AY/03/2012',NULL,NULL,3000000,300000,NULL,'Tidak',NULL,2);

#
# Table structure for table jualdetail
#

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
  `jd_satuan` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`jd_id`)
) ENGINE=MyISAM AUTO_INCREMENT=93 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `jualdetail` VALUES (91,'JL0000000001','2012-03-08',41,'LED TV 32\"',1,2400000,2500000,0,0,2500000,100000,'unit');
INSERT INTO `jualdetail` VALUES (92,'JL0000000002','2012-03-10',41,'LED TV 32\"',1,2400000,3000000,0,0,3000000,600000,'unit');

#
# Table structure for table jurnal_umum
#

CREATE TABLE `jurnal_umum` (
  `ju_id` int(11) NOT NULL auto_increment,
  `ju_kode` varchar(255) collate latin1_general_ci default NULL,
  `ju_amount` double default NULL,
  `ju_date` date default NULL,
  `ju_pic` varchar(255) collate latin1_general_ci default NULL,
  `ju_note` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ju_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `jurnal_umum` VALUES (1,'JU00000000',NULL,NULL,NULL,NULL);
INSERT INTO `jurnal_umum` VALUES (10,'JU00000001',NULL,'2012-02-24',NULL,NULL);
INSERT INTO `jurnal_umum` VALUES (11,'JU00000002',NULL,'2012-02-24',NULL,NULL);
INSERT INTO `jurnal_umum` VALUES (12,'JU00000003',NULL,'2012-02-24',NULL,NULL);

#
# Table structure for table jurnal_umum_detail
#

CREATE TABLE `jurnal_umum_detail` (
  `jl_id` int(11) NOT NULL auto_increment,
  `jl_kode` varchar(255) collate latin1_general_ci default NULL,
  `jl_akun` varchar(255) character set latin1 default NULL,
  `jl_desc` varchar(255) collate latin1_general_ci default NULL,
  `jl_amount` double default NULL,
  `jl_kredit` double default NULL,
  `jl_debet` double default NULL,
  PRIMARY KEY  (`jl_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `jurnal_umum_detail` VALUES (10,'JU00000001','110-20','Kas',100000000,NULL,100000000);
INSERT INTO `jurnal_umum_detail` VALUES (11,'JU00000002','170-10','Tanah',25000000,NULL,25000000);
INSERT INTO `jurnal_umum_detail` VALUES (12,'JU00000002','110-20','Kas',-25000000,25000000,NULL);
INSERT INTO `jurnal_umum_detail` VALUES (13,'JU00000003','510-40','Komisi Penjualan',150000,NULL,150000);
INSERT INTO `jurnal_umum_detail` VALUES (14,'JU00000003','110-20','Kas',-150000,150000,NULL);

#
# Table structure for table karyawan
#

CREATE TABLE `karyawan` (
  `kr_id` int(11) NOT NULL auto_increment,
  `kr_no_induk` varchar(255) collate latin1_general_ci default NULL,
  `kr_firstname` varchar(255) collate latin1_general_ci default NULL,
  `kr_lastname` varchar(255) collate latin1_general_ci default NULL,
  `kr_jd_id` int(11) default NULL,
  `kr_basic` double default NULL,
  `kr_dateofbirth` date default NULL,
  `kr_maritalstatus` varchar(20) collate latin1_general_ci default NULL,
  `kr_phone` varchar(255) collate latin1_general_ci default NULL,
  `kr_email` varchar(255) collate latin1_general_ci default NULL,
  `kr_address` varchar(255) collate latin1_general_ci default NULL,
  `kr_city` varchar(255) collate latin1_general_ci default NULL,
  `kr_placeofbirth` varchar(255) collate latin1_general_ci default NULL,
  `kr_jk` varchar(30) collate latin1_general_ci default NULL,
  `kr_workingstart` date default NULL,
  `kr_cek` varchar(1) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`kr_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `karyawan` VALUES (10,'0001','Mochamad','Amin',NULL,NULL,'1976-12-13','menikah',NULL,NULL,'Blok Mangseng 4 No.58','Bekasi','subang','laki-laki',NULL,NULL);

#
# Table structure for table karyawan_detail
#

CREATE TABLE `karyawan_detail` (
  `kd_id` int(11) NOT NULL auto_increment,
  `kd_kr_id` int(11) default NULL,
  `kd_no_induk` varchar(255) collate latin1_general_ci default NULL COMMENT 'id karyawan, foreign key',
  `kd_tgl_mulaikerja` date default NULL,
  `kd_tgl_berhentikerja` date default NULL,
  `kd_dp_id` int(11) default NULL COMMENT 'foreign key dari departemen',
  `kd_jb_id` int(11) default NULL COMMENT 'foreign key jabatan',
  `kd_cash_transfer` varchar(255) character set latin1 default NULL,
  `kd_ba_id` int(11) default NULL COMMENT 'foreign key dari bank',
  `kd_norek` varchar(255) character set latin1 default NULL,
  `kd_limit_pinjaman` double default NULL,
  `kd_aktif` tinyint(1) default '1',
  `kd_pt_id` tinyint(3) default NULL COMMENT 'foreign key dari ptkp',
  `kd_npwp` varchar(255) collate latin1_general_ci default NULL,
  `kd_tgl_npwp` date default NULL,
  `kd_sl_id` int(11) default NULL,
  `kd_basic_salary` double default NULL,
  `kd_sl_kode` varchar(255) character set latin1 default NULL COMMENT 'foreign key dari level salary',
  PRIMARY KEY  (`kd_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `karyawan_detail` VALUES (10,NULL,'0001',NULL,NULL,3,2,'Transfer',NULL,NULL,NULL,1,2,NULL,NULL,2,NULL,'BOD');

#
# Table structure for table kategori
#

CREATE TABLE `kategori` (
  `kg_id` int(11) NOT NULL auto_increment,
  `kg_nama` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`kg_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `kategori` VALUES (1,'COLOR TV');
INSERT INTO `kategori` VALUES (4,'LCD TV');
INSERT INTO `kategori` VALUES (5,'LED TV');
INSERT INTO `kategori` VALUES (6,'LED TV 3D');
INSERT INTO `kategori` VALUES (7,'REFRIGERATOR');
INSERT INTO `kategori` VALUES (8,'WATER DISPENSER');
INSERT INTO `kategori` VALUES (9,'WASHING MACHINE');
INSERT INTO `kategori` VALUES (10,'AUDIO');
INSERT INTO `kategori` VALUES (11,'FAN / KIPAS ANGIN');
INSERT INTO `kategori` VALUES (12,'VENT');
INSERT INTO `kategori` VALUES (13,'WATER PUMP');
INSERT INTO `kategori` VALUES (14,'MICROWAVE OVEN');
INSERT INTO `kategori` VALUES (15,'MAGIC COM');
INSERT INTO `kategori` VALUES (16,'BLENDER');
INSERT INTO `kategori` VALUES (17,'JUICER');
INSERT INTO `kategori` VALUES (18,'ELECTRIC IRON');
INSERT INTO `kategori` VALUES (19,'STEAM IRON');
INSERT INTO `kategori` VALUES (20,'SHAVER DRY');
INSERT INTO `kategori` VALUES (21,'VACUUM CLEANER');
INSERT INTO `kategori` VALUES (22,'AIR PURIFIER');
INSERT INTO `kategori` VALUES (23,'ACTIVE SPEAKER');
INSERT INTO `kategori` VALUES (24,'DVD');
INSERT INTO `kategori` VALUES (25,'MESIN CUCI');
INSERT INTO `kategori` VALUES (26,'SMALL HOME APPLIANCES');
INSERT INTO `kategori` VALUES (27,'AIR CONDITIONER');
INSERT INTO `kategori` VALUES (28,'ACCESSORIES LCD TV');
INSERT INTO `kategori` VALUES (29,'ACCESSORIES AC');

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
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `neraca` VALUES (1,NULL,'016/SV/PO/01/2012',NULL,'210-20',19000000,NULL,NULL);
INSERT INTO `neraca` VALUES (2,'2012-01-21','017/SV/PO/01/2012','Pembelian,Pitu Electronics','140-10',15000000,NULL,NULL);
INSERT INTO `neraca` VALUES (3,'2012-01-21','017/SV/PO/01/2012','Pembelian,Pitu Electronics','110-20',-1000000,NULL,15000000);
INSERT INTO `neraca` VALUES (4,'2012-01-23','025/SV/IN/01/2012','Penjualan,Kreasi Auto Kencana','110-20',550000,NULL,NULL);
INSERT INTO `neraca` VALUES (5,NULL,NULL,NULL,'140-10',41500000,NULL,NULL);
INSERT INTO `neraca` VALUES (6,'2012-01-25','018/SV/PO/01/2012','Pembelian,Samsung','140-10',35000000,35000000,NULL);
INSERT INTO `neraca` VALUES (7,'2012-01-25','018/SV/PO/01/2012','Pembelian,Samsung','210-20',35000000,NULL,NULL);
INSERT INTO `neraca` VALUES (8,'2012-01-25','019/SV/PO/01/2012','Pembelian,Polytron','140-10',45000000,45000000,NULL);
INSERT INTO `neraca` VALUES (9,'2012-01-25','019/SV/PO/01/2012','Pembelian,Polytron','210-20',45000000,NULL,NULL);
INSERT INTO `neraca` VALUES (10,'2012-01-28','001/SV/CA/01/2012','Pembelian,PT. Saitech','140-10',13000000,13000000,NULL);
INSERT INTO `neraca` VALUES (11,'2012-01-28','001/SV/CA/01/2012','Pembelian,PT. Saitech','110-20',-13000000,NULL,NULL);
INSERT INTO `neraca` VALUES (12,'2012-01-28','001/SV/CA/01/2012','Pembelian,Samsung','140-10',13000000,13000000,NULL);
INSERT INTO `neraca` VALUES (13,'2012-01-28','001/SV/CA/01/2012','Pembelian,Samsung','110-20',-13000000,NULL,NULL);
INSERT INTO `neraca` VALUES (14,'2012-01-28','002/SV/PO/01/2012','Pembelian,Samsung','140-10',113900000,113900000,NULL);
INSERT INTO `neraca` VALUES (15,'2012-02-04','002/SV/PO/01/2012','Pembelian,Samsung','210-20',113900000,NULL,NULL);
INSERT INTO `neraca` VALUES (16,'2012-01-28','002/SV/CA/01/2012','Pembelian,Samsung','140-10',14000000,14000000,NULL);
INSERT INTO `neraca` VALUES (17,'2012-01-28','002/SV/CA/01/2012','Pembelian,Samsung','110-20',-14000000,NULL,NULL);
INSERT INTO `neraca` VALUES (18,'2012-02-04','001/SV/IN/02/2012','Penjualan,Kreasi Auto Kencana','110-20',1100000,NULL,1100000);
INSERT INTO `neraca` VALUES (19,'2012-02-04','002/SV/IN/02/2012','Penjualan,Sigma Visualindo','110-20',1650000,NULL,NULL);
INSERT INTO `neraca` VALUES (20,'2012-02-04','004/SV/IN/02/2012','Penjualan,Tujuh Cahaya Mobil, PT.','110-20',550000,NULL,NULL);
INSERT INTO `neraca` VALUES (21,'2012-02-04','001/SV/PO/02/2012','Pembelian,PT.GOBEL DHARMA NUSANTARA','140-10',7000000,7000000,NULL);
INSERT INTO `neraca` VALUES (22,'2012-02-04','001/SV/PO/02/2012','Pembelian,PT.GOBEL DHARMA NUSANTARA','210-20',7000000,NULL,NULL);
INSERT INTO `neraca` VALUES (23,'2012-02-05','005/SV/IN/02/2012','Penjualan,Batavia Bintang Berlian,PT.','110-20',1045000,NULL,1045000);
INSERT INTO `neraca` VALUES (24,'2012-02-05','006/SV/IN/02/2012','Penjualan,HeavenBilly Auto Classic','110-20',1045000,NULL,1045000);
INSERT INTO `neraca` VALUES (25,'2012-02-06','007/SV/IN/02/2012','Penjualan,Kreasi Auto Kencana','110-20',550000,NULL,550000);
INSERT INTO `neraca` VALUES (26,'2012-02-06','007/SV/IN/02/2012','Penjualan,Kreasi Auto Kencana','140-10',-550000,NULL,550000);

#
# Table structure for table pay_adjustment
#

CREATE TABLE `pay_adjustment` (
  `pa_id` int(11) NOT NULL auto_increment,
  `pa_item` varchar(255) collate latin1_general_ci default NULL,
  `pa_kr_id` int(11) default NULL COMMENT 'id karyawan',
  `pa_amount` double default NULL,
  `pa_comment` varchar(255) collate latin1_general_ci default NULL,
  `pa_add_or_deduct` varchar(255) collate latin1_general_ci default NULL,
  `pa_percentage` tinyint(3) default NULL,
  PRIMARY KEY  (`pa_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

#
# Table structure for table pph
#

CREATE TABLE `pph` (
  `ph_id` int(11) NOT NULL auto_increment,
  `ph_level` varchar(255) collate latin1_general_ci default NULL,
  `pp_penghasilan` double default NULL,
  `pp_tarif` tinyint(3) default NULL,
  PRIMARY KEY  (`ph_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `pph` VALUES (1,'Level 1',50000000,5);
INSERT INTO `pph` VALUES (2,'Level 2',250000000,15);
INSERT INTO `pph` VALUES (3,'Level 3',500000000,25);

#
# Table structure for table project
#

CREATE TABLE `project` (
  `pj_id` int(11) NOT NULL auto_increment,
  `pj_name` varchar(255) collate latin1_general_ci default NULL,
  `pj_custid` int(11) default NULL,
  `pj_location` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`pj_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `project` VALUES (2,'Dea Lova',4,'Summer Festival-Bekasi');

#
# Table structure for table ptkp
#

CREATE TABLE `ptkp` (
  `pt_id` int(11) NOT NULL auto_increment,
  `pt_kode` varchar(255) collate latin1_general_ci default NULL,
  `pt_nama` varchar(255) collate latin1_general_ci default NULL,
  `pt_nilaipertahun` double default NULL,
  PRIMARY KEY  (`pt_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `ptkp` VALUES (1,'K/0','Kawin Tanpa Tanggungan',17160000);
INSERT INTO `ptkp` VALUES (2,'K/1','Kawin 1 Tanggungan',18480000);
INSERT INTO `ptkp` VALUES (3,'K/2','Kawin 2 Tanggungan',19800000);
INSERT INTO `ptkp` VALUES (5,'TK','Tidak Kawin',15840000);

#
# Table structure for table quotation
#

CREATE TABLE `quotation` (
  `qt_id` int(11) NOT NULL auto_increment,
  `qt_kode` varchar(255) collate latin1_general_ci default NULL,
  `qt_date` date default NULL,
  `qt_up_id` int(11) default NULL,
  `qt_pic` varchar(255) collate latin1_general_ci default NULL,
  `qt_project_id` int(11) default NULL,
  `qt_cust_id` int(11) default NULL,
  PRIMARY KEY  (`qt_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `quotation` VALUES (1,'0000000000000000',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `quotation` VALUES (2,'001/SV/QT/01/2012','2012-01-28',7,NULL,2,5);
INSERT INTO `quotation` VALUES (3,'002/SV/QT/01/2012','2012-01-28',6,NULL,2,4);
INSERT INTO `quotation` VALUES (4,'003/SV/QT/01/2012','2012-01-28',7,NULL,2,5);
INSERT INTO `quotation` VALUES (5,'004/SV/QT/01/2012','2012-01-28',7,NULL,2,5);

#
# Table structure for table quotation_detail
#

CREATE TABLE `quotation_detail` (
  `qd_id` int(11) NOT NULL auto_increment,
  `qd_kode` varchar(255) collate latin1_general_ci default NULL,
  `qd_tgl` date default NULL,
  `qd_kd_barang` int(11) default NULL,
  `qd_nama_barang` varchar(255) collate latin1_general_ci default NULL,
  `qd_type` varchar(255) collate latin1_general_ci default NULL,
  `qd_unit` varchar(255) collate latin1_general_ci default NULL,
  `qd_qty` tinyint(3) default NULL,
  `qd_harga` double default NULL,
  `qd_total` double default NULL,
  PRIMARY KEY  (`qd_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `quotation_detail` VALUES (1,'001/SV/QT/01/2012','2012-01-28',8,'COLOR TV 14\" SLIM','14FU7AB','unit',10,1000000,10000000);
INSERT INTO `quotation_detail` VALUES (2,'002/SV/QT/01/2012','2012-01-28',9,'COLOR TV 21\" SLIM','21SB6RD','unit',2,2500000,5000000);
INSERT INTO `quotation_detail` VALUES (3,'003/SV/QT/01/2012','2012-01-28',3,'LG OPTIMA DISPLAY','LGD-OA 331','unit',10,1500000,15000000);
INSERT INTO `quotation_detail` VALUES (4,'003/SV/QT/01/2012','2012-01-28',11,'COLOR TV 21\" SLIM','21SD2RD','unit',10,2350000,23500000);
INSERT INTO `quotation_detail` VALUES (5,'003/SV/QT/01/2012','2012-01-28',17,'COLOR TV 21\" SLIM','21SC1RL (New)','unit',5,4125000,20625000);
INSERT INTO `quotation_detail` VALUES (6,'004/SV/QT/01/2012','2012-01-28',8,'COLOR TV 14\" SLIM','14FU7AB','unit',10,3000000,30000000);
INSERT INTO `quotation_detail` VALUES (7,'004/SV/QT/01/2012','2012-01-28',1180,'STANDING FLOOR, 2 PK','CS/CU - C18FFH','unit',4,250000,1000000);
INSERT INTO `quotation_detail` VALUES (8,'004/SV/QT/01/2012','2012-01-28',1172,'CEILING, 5 PK','CS/CU - D43DTH5','unit',51,750000,38250000);
INSERT INTO `quotation_detail` VALUES (9,'004/SV/QT/01/2012','2012-01-28',1166,'DUCTING, 4 PK','CS/CU - D34DD2H5','unit',15,250000,3750000);

#
# Table structure for table salary
#

CREATE TABLE `salary` (
  `sa_id` int(11) NOT NULL auto_increment,
  `sa_kr_id` int(11) default NULL COMMENT 'foreign key dari table karyawan',
  `sa_gross_pay` double default NULL,
  `sa_net_pay` double default NULL,
  `sa_date` date default NULL,
  `sa_period` varchar(255) collate latin1_general_ci default NULL,
  `sa_checked` tinyint(1) default NULL,
  `sa_cek` varchar(1) collate latin1_general_ci default NULL,
  `sa_potongan_pajak` double default NULL,
  `sa_ptkp` double default NULL,
  `sa_pengurangan` double default NULL,
  `sa_objek_pajak` double default NULL,
  `sa_no_induk` varchar(255) collate latin1_general_ci default NULL,
  `sa_take_home_pay` double default NULL,
  `sa_pengurang_pajak` double default NULL,
  `sa_penambahan` double default NULL,
  `sa_kode_level` varchar(255) collate latin1_general_ci default NULL,
  `sa_ref` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`sa_id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `salary` VALUES (36,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'SL00000000');
INSERT INTO `salary` VALUES (41,10,5000000,7550000,'2012-02-24','Februari 2012',NULL,NULL,281000,18480000,250000,67440000,NULL,7269000,390000,2800000,'BOD','SL00000001');

#
# Table structure for table salary_level
#

CREATE TABLE `salary_level` (
  `sl_id` int(11) NOT NULL auto_increment,
  `sl_name` varchar(255) collate latin1_general_ci default NULL,
  `sl_amount` double default NULL,
  `sl_kode` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`sl_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `salary_level` VALUES (6,'BOD',5000000,'BOD');
INSERT INTO `salary_level` VALUES (7,'Senio Executive',3500000,'SE');

#
# Table structure for table salary_level_detail
#

CREATE TABLE `salary_level_detail` (
  `sd_id` int(11) NOT NULL auto_increment,
  `sd_kode` varchar(255) collate latin1_general_ci default NULL,
  `sd_kode_item` varchar(255) collate latin1_general_ci default NULL,
  `sd_nama` varchar(255) collate latin1_general_ci default NULL,
  `sd_amount` double default NULL,
  `sd_jenis` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`sd_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `salary_level_detail` VALUES (14,'SE','SE-Tunjangan Jabatan','Tunjangan Jabatan',350000,'tambah');
INSERT INTO `salary_level_detail` VALUES (17,'BOD','BOD-Tunjangan Jabatan','BOD-Tunjangan Jabatan',500000,'tambah');
INSERT INTO `salary_level_detail` VALUES (18,'BOD','Iuran Paguyuban','Iuran Paguyuban',250000,'kurang');
INSERT INTO `salary_level_detail` VALUES (19,'BOD','BOD-UM','Uang Makan',2300000,'tambah');

#
# Table structure for table salary_level_kurang
#

CREATE TABLE `salary_level_kurang` (
  `sk_id` int(11) NOT NULL auto_increment,
  `sk_kode` varchar(255) collate latin1_general_ci default NULL,
  `sk_amount` double default NULL,
  `sk_nama` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`sk_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `salary_level_kurang` VALUES (2,'Iuran Paguyuban',250000,'Iuran Paguyuban');

#
# Table structure for table salary_level_tambah
#

CREATE TABLE `salary_level_tambah` (
  `st_id` int(11) NOT NULL auto_increment,
  `st_kode` varchar(255) character set latin1 default NULL,
  `st_kode_item` varchar(255) character set latin1 default NULL,
  `st_amount` double default NULL,
  `st_jenis` varchar(255) character set latin1 default NULL,
  `st_nama` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`st_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `salary_level_tambah` VALUES (2,'BOD-Tunjangan Jabatan',NULL,500000,NULL,'BOD-Tunjangan Jabatan');
INSERT INTO `salary_level_tambah` VALUES (3,'SE-Tunjangan Jabatan',NULL,350000,NULL,'Tunjangan Jabatan');
INSERT INTO `salary_level_tambah` VALUES (4,'BOD-UM',NULL,2300000,NULL,'Uang Makan');

#
# Table structure for table supplier
#

CREATE TABLE `supplier` (
  `sp_id` int(11) NOT NULL auto_increment,
  `sp_name` varchar(255) collate latin1_general_ci default NULL,
  `sp_address` varchar(255) collate latin1_general_ci default NULL,
  `sp_kota` varchar(255) collate latin1_general_ci default NULL,
  `sp_telp` varchar(255) collate latin1_general_ci default NULL,
  `sp_refer` varchar(255) collate latin1_general_ci default NULL,
  `sp_npwp` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`sp_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `supplier` VALUES (2,'LG','Kawasan Industri Jababeka No.52 Cikarang','Bekasi',NULL,'2',NULL);
INSERT INTO `supplier` VALUES (3,'Samsung','Kawasan Industri Ejip Cikarang','Bekasi',NULL,'3',NULL);
INSERT INTO `supplier` VALUES (4,'PT.GOBEL DHARMA NUSANTARA','Jl Industri Kawanu','Bekasi',NULL,'4',NULL);
INSERT INTO `supplier` VALUES (5,'Polytron',NULL,NULL,NULL,'5',NULL);
INSERT INTO `supplier` VALUES (6,'Pitu Electronics','Kaliabang Tengah Raya','Bekasi',NULL,NULL,NULL);
INSERT INTO `supplier` VALUES (7,'PT. Catur Mitra Sepakat','Royal Gading Square RG 10/20, Jl. Pegangsaan Dua','Jakarta Timur','021-45872249',NULL,NULL);
INSERT INTO `supplier` VALUES (8,'PT. Saitech','Wisma Eka JIwa Lt.6 No.6, Jl. Alteri Mangga Dua Selatan, Sawah Besar','Jakarta Pusat','021-6250508 / Fax. 021-6252372',NULL,NULL);
INSERT INTO `supplier` VALUES (9,'PT. Gobel Dharma Nusantara','Jl. Dewi Sartika 14, Cawang II','Jakarta Timur','021-8015666 / Fax. 021-8015675',NULL,NULL);
INSERT INTO `supplier` VALUES (10,'PT. Sigma Visualindo','Summer Festival','Bekasi',NULL,NULL,NULL);
INSERT INTO `supplier` VALUES (11,'CV. Techtron',NULL,'Jakarta',NULL,NULL,NULL);
INSERT INTO `supplier` VALUES (12,'PT. Guna Logam',NULL,'Sukabumi',NULL,NULL,NULL);
INSERT INTO `supplier` VALUES (13,'PT. IMS',NULL,'Jakarta',NULL,NULL,NULL);

#
# Table structure for table supplier_pic
#

CREATE TABLE `supplier_pic` (
  `sp_id` int(11) NOT NULL auto_increment,
  `sp_nama` varchar(255) character set latin1 default NULL,
  `sp_alamat` varchar(255) character set latin1 default NULL,
  `sp_handphone` varchar(255) character set latin1 default NULL,
  `sp_email` varchar(255) character set latin1 default NULL,
  `sp_supplier` int(11) default NULL,
  PRIMARY KEY  (`sp_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `supplier_pic` VALUES (1,'Mochamad Amin',NULL,NULL,NULL,2);
INSERT INTO `supplier_pic` VALUES (2,'Andi Wijaya','Jl Kebagusan No.17 Pulo Gadung - Jakarta','087 88 99123','dee_jo_cuy@yahoo.co.id',4);
INSERT INTO `supplier_pic` VALUES (3,'Asep Saefudin','Perumahan Indah Permai I No.12 Jakarta','0776 55 443','dexact@yahoo.com',2);
INSERT INTO `supplier_pic` VALUES (4,'Deni Koswara, Bpk.','Jl Kemanggisan-Bogor','0812 334 557',NULL,4);
INSERT INTO `supplier_pic` VALUES (5,'Ringgo Agus Permana',NULL,'0812 111 9999',NULL,4);
INSERT INTO `supplier_pic` VALUES (6,'Ella Nursela','Jl Enggano 10 Jakarta Barat',NULL,NULL,4);
INSERT INTO `supplier_pic` VALUES (7,'Johan Budi',NULL,NULL,NULL,3);
INSERT INTO `supplier_pic` VALUES (8,'Busyro Muqqodas',NULL,NULL,NULL,3);
INSERT INTO `supplier_pic` VALUES (9,'Samad Riyadhi',NULL,NULL,NULL,3);
INSERT INTO `supplier_pic` VALUES (10,'',NULL,NULL,NULL,NULL);
INSERT INTO `supplier_pic` VALUES (11,'Suryo Utomo',NULL,NULL,NULL,5);
INSERT INTO `supplier_pic` VALUES (12,'Fredy Wahyu',NULL,NULL,NULL,5);
INSERT INTO `supplier_pic` VALUES (13,'Aisyah, Ibu','Bekasi',NULL,NULL,6);
INSERT INTO `supplier_pic` VALUES (14,'Bamabang Santoso, Bpk.','KA Tengah-Bekasi',NULL,NULL,6);

#
# Table structure for table user
#

CREATE TABLE `user` (
  `us_id` int(11) NOT NULL auto_increment,
  `us_firstname` varchar(255) collate latin1_general_ci default NULL,
  `us_lastname` varchar(255) collate latin1_general_ci default NULL,
  `us_username` varchar(255) collate latin1_general_ci default NULL,
  `us_password` varchar(255) collate latin1_general_ci default NULL,
  `us_group` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`us_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `user` VALUES (3,'Andi','Soraya','dee','anu','3');
INSERT INTO `user` VALUES (4,'Asep','Saefudin','dexact','asep','2');
INSERT INTO `user` VALUES (5,'Heru','Sumardi','joherujo','jo','1');

#
# Table structure for table vendor
#

CREATE TABLE `vendor` (
  `ve_id` int(11) NOT NULL auto_increment,
  `ve_name` varchar(255) collate latin1_general_ci default NULL,
  `ve_address` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`ve_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
