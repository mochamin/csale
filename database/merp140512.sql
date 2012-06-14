# MySQL-Front 5.0  (Build 1.0)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;


# Host: sigmavisualindo    Database: merp
# ------------------------------------------------------
# Server version 5.0.27-community-nt

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
) ENGINE=MyISAM AUTO_INCREMENT=1403 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
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
INSERT INTO `barang` VALUES (242,NULL,NULL,'','','_','','unit');
INSERT INTO `barang` VALUES (243,NULL,NULL,'','','_','','unit');
INSERT INTO `barang` VALUES (244,NULL,NULL,'','','_','','unit');
INSERT INTO `barang` VALUES (245,NULL,NULL,'','','_','','unit');
INSERT INTO `barang` VALUES (246,NULL,NULL,'','','_','','unit');
INSERT INTO `barang` VALUES (247,NULL,NULL,'','','_','','unit');
INSERT INTO `barang` VALUES (248,NULL,NULL,'','','_','','unit');
INSERT INTO `barang` VALUES (249,NULL,NULL,'','','_','','unit');
INSERT INTO `barang` VALUES (250,NULL,NULL,'','','_','','unit');
INSERT INTO `barang` VALUES (251,NULL,NULL,'','','_','','unit');
INSERT INTO `barang` VALUES (252,NULL,NULL,'','','_','','unit');
INSERT INTO `barang` VALUES (253,NULL,NULL,'','','_','','unit');
INSERT INTO `barang` VALUES (254,NULL,NULL,'','','_','','unit');
INSERT INTO `barang` VALUES (255,NULL,NULL,'','','_','','unit');
INSERT INTO `barang` VALUES (256,NULL,NULL,'','','_','','unit');
INSERT INTO `barang` VALUES (257,NULL,NULL,'','','_','','unit');
INSERT INTO `barang` VALUES (258,NULL,NULL,'','','_','','unit');
INSERT INTO `barang` VALUES (259,NULL,NULL,'','','_','','unit');
INSERT INTO `barang` VALUES (260,NULL,NULL,'','','_','','unit');
INSERT INTO `barang` VALUES (261,NULL,NULL,'','','_','','unit');
INSERT INTO `barang` VALUES (262,NULL,NULL,'','','_','','unit');
INSERT INTO `barang` VALUES (263,NULL,NULL,'','','_','','unit');
INSERT INTO `barang` VALUES (264,NULL,NULL,'','','_','','unit');
INSERT INTO `barang` VALUES (265,NULL,NULL,'','','_','','unit');
INSERT INTO `barang` VALUES (266,NULL,NULL,'','','_','','unit');
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
INSERT INTO `barang` VALUES (1160,NULL,NULL,'LCD TV 42\" ','4','TH-L42U30G','9','unit');
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
INSERT INTO `barang` VALUES (1206,NULL,NULL,'','28','_','13','unit');
INSERT INTO `barang` VALUES (1207,NULL,NULL,'','28','_','13','unit');
INSERT INTO `barang` VALUES (1208,NULL,NULL,'','28','_','12','unit');
INSERT INTO `barang` VALUES (1209,NULL,NULL,'','28','_','12','unit');
INSERT INTO `barang` VALUES (1210,NULL,NULL,'CEILING  BRACKET','28','FOR 22\" UP TO 32\"','10','unit');
INSERT INTO `barang` VALUES (1211,NULL,NULL,'CEILING  BRACKET','28','FOR 42\" UP TO 50\"','10','unit');
INSERT INTO `barang` VALUES (1212,NULL,NULL,'FLOOR STANDING BRACKET','28','FOR 22\" UP TO 32\"','10','unit');
INSERT INTO `barang` VALUES (1213,NULL,NULL,'KABEL CONTROL ','29',' 4 x 2.5mm','14','unit');
INSERT INTO `barang` VALUES (1214,NULL,NULL,'KABEL POWER ','29','NYM 3 x 2.5mm','10','unit');
INSERT INTO `barang` VALUES (1215,NULL,NULL,'KABEL POWER ','29','NYM 4 x 4mm','14','Meter');
INSERT INTO `barang` VALUES (1216,NULL,NULL,'BRACKET OUTDOOR AC SPLIT','29','1/2 PK - 1 PK','10','unit');
INSERT INTO `barang` VALUES (1217,NULL,NULL,'BRACKET OUTDOOR AC SPLIT','29','1.5 PK - 2.5 PK','10','unit');
INSERT INTO `barang` VALUES (1218,NULL,NULL,'PIPA DRAIN','29','PVC 3/4\"','10','unit');
INSERT INTO `barang` VALUES (1219,NULL,NULL,'PIPA AC , 1/2 PK - 1 PK','29','UKURAN  1/4 x 3/8','10','unit');
INSERT INTO `barang` VALUES (1220,NULL,NULL,'PIPA AC , 1.5 PK - 2 PK','29','UKURAN  1/4 x 1/2','10','unit');
INSERT INTO `barang` VALUES (1221,NULL,NULL,'PIPA AC , 2.5 PK - 3 PK','29','UKURAN  3/8 x 5/8','10','unit');
INSERT INTO `barang` VALUES (1222,NULL,NULL,'PIPA AC , 4 PK - 6 PK','29','UKURAN  3/4 x 3/8','10','unit');
INSERT INTO `barang` VALUES (1223,NULL,NULL,'AC SPLIT 1.5 PK','27','CS/CU - S13MKP','30','unit');
INSERT INTO `barang` VALUES (1224,NULL,NULL,'LCD TV 32\" ','4','TH-L32C4G','9','unit');
INSERT INTO `barang` VALUES (1225,NULL,NULL,'LCD TV 42\"','4','TH-L42U30G','9',NULL);
INSERT INTO `barang` VALUES (1226,NULL,NULL,'MESIN CUCI 1 TABUNG','25','ES-N75FY-P','3',NULL);
INSERT INTO `barang` VALUES (1227,NULL,NULL,'KULKAS 1 PINTU','7','SJ-17MKII-TB','3',NULL);
INSERT INTO `barang` VALUES (1228,NULL,NULL,'AC SPLIT 1 PK','27','CS/CU-S10MKP','30','unit');
INSERT INTO `barang` VALUES (1229,NULL,NULL,'MESIN CUCI 2 TABUNG','25','ES-T70CL','3',NULL);
INSERT INTO `barang` VALUES (1230,NULL,NULL,'LCD TV 32\" ','4','32LK335','18','unit');
INSERT INTO `barang` VALUES (1231,NULL,NULL,'AC SPLIT 1 PK','27','CS/CU-PC9MKJ','30','unit');
INSERT INTO `barang` VALUES (1232,NULL,NULL,'AC SPLIT 2 PK','27','CS/CU-PC18MKP','30','unit');
INSERT INTO `barang` VALUES (1233,NULL,NULL,'LED TV 55\"','5','55LV3730','18',NULL);
INSERT INTO `barang` VALUES (1234,NULL,NULL,'LCD TV 42\" ','4','42LK455C','18',NULL);
INSERT INTO `barang` VALUES (1235,NULL,NULL,'LCD TV 22\"','4','22LK311','18',NULL);
INSERT INTO `barang` VALUES (1236,NULL,NULL,'LED TV 40\" 3D','6','LC-40LE830M','3','unit');
INSERT INTO `barang` VALUES (1237,NULL,NULL,'LED TV 40\"','5','LC-40LE430M','3','unit');
INSERT INTO `barang` VALUES (1238,NULL,NULL,'LED TV 46\"','5','LC-46LE530M','3',NULL);
INSERT INTO `barang` VALUES (1239,NULL,NULL,'','5','_','18',NULL);
INSERT INTO `barang` VALUES (1240,NULL,NULL,'DVD PLAYER','24','DP-520','18',NULL);
INSERT INTO `barang` VALUES (1241,NULL,NULL,'AC SPLIT 1 PK','27','CS/CU-KC9NKJ','30','unit');
INSERT INTO `barang` VALUES (1242,NULL,NULL,'AC SPLIT 1/2 PK','27','CS/CU-PC5MKJ','30','unit');
INSERT INTO `barang` VALUES (1243,NULL,NULL,'AC FLOOR STANDING 3 PK','27','CS/CU-C28FFP8','9','Unit');
INSERT INTO `barang` VALUES (1244,NULL,NULL,'BRACKET OUTDOOR AC FLOOR STANDING','29','3 PK','14','Unit');
INSERT INTO `barang` VALUES (1245,NULL,NULL,'PIPA DRAIN ','29','PVC + ARMAFLEX','14','Meter');
INSERT INTO `barang` VALUES (1246,NULL,NULL,'PIPA REFRIGERANT + ISOLASI (5/8\"+3/8\")','29','AC CASSETTE 2.5 PK','14',NULL);
INSERT INTO `barang` VALUES (1247,NULL,NULL,'JASA INSTALASI AC','29','FLOOR STANDING 3 PK','10',NULL);
INSERT INTO `barang` VALUES (1248,NULL,NULL,'BIAYA INSTAL+BONGKAR AC LAMA+BOBOKAN ','29','AC SPLIT 1 PK','10',NULL);
INSERT INTO `barang` VALUES (1249,NULL,NULL,'BIAYA INSTAL+BONGKAR AC LAMA+BOBOKAN','29','AC SPLIT 1.5 - 2 PK','10',NULL);
INSERT INTO `barang` VALUES (1250,NULL,NULL,'BIAYA INSTAL+BONGKAR AC LAMA+BOBOKAN','29','AC SPLIT 2.5 PK','10',NULL);
INSERT INTO `barang` VALUES (1251,NULL,NULL,'BIAYA INSTAL+BONGKAR AC LAMA+BOBOKAN','29','AC CASETTE 2 PK','10',NULL);
INSERT INTO `barang` VALUES (1252,NULL,NULL,'BIAYA INSTAL+BONGKAR AC LAMA+BOBOKAN','29','AC CASETTE 2.5 PK','10',NULL);
INSERT INTO `barang` VALUES (1253,NULL,NULL,'JASA TARIKAN + PIPA REFRIGERANT ','29','AC SPLIT 1 PK','10',NULL);
INSERT INTO `barang` VALUES (1254,NULL,NULL,'JASA TARIKAN + PIPA REFRIGERANT ','29','AC SPLIT 1.5 - 2 PK ','10',NULL);
INSERT INTO `barang` VALUES (1255,NULL,NULL,'JASA TARIKAN + PIPA REFRIGERANT ','29','AC SPLIT 2.5 PK','10',NULL);
INSERT INTO `barang` VALUES (1256,NULL,NULL,'JASA TARIKAN + PIPA REFRIGERANT ','29','AC CASETTE 2 - 2.5 PK','10',NULL);
INSERT INTO `barang` VALUES (1257,NULL,NULL,'BRACKET OUTDOOR AC CASETTE','29','2 - 2.5 PK','10',NULL);
INSERT INTO `barang` VALUES (1258,NULL,NULL,'JASA INSTALASI AC','29','SPLIT 2 PK','10',NULL);
INSERT INTO `barang` VALUES (1259,NULL,NULL,'INSTALASI BRACKET','29','AC SPLIT','10',NULL);
INSERT INTO `barang` VALUES (1260,NULL,NULL,'KABEL CONTROL ','29','NYM 3 x 2.5mm','14',NULL);
INSERT INTO `barang` VALUES (1261,NULL,NULL,'','29','_','14',NULL);
INSERT INTO `barang` VALUES (1262,NULL,NULL,'JASA BONGKAR UNIT','29','AC SPLIT','10',NULL);
INSERT INTO `barang` VALUES (1263,NULL,NULL,'AC SPLIT 3/4 PK','27','CS/CU-PC7NKJ','7',NULL);
INSERT INTO `barang` VALUES (1264,NULL,NULL,'AIR PURIFIER','22','KC-A40Y-W','3',NULL);
INSERT INTO `barang` VALUES (1265,NULL,NULL,'HOME THEATER','10','HT-CN830DVWE','3',NULL);
INSERT INTO `barang` VALUES (1266,NULL,NULL,'LCD TV 40\"','4','LC-40M500M','3',NULL);
INSERT INTO `barang` VALUES (1267,NULL,NULL,'DUCTING PU + ACCESSORIES KOMPIT','29','AC DUCTING','14',NULL);
INSERT INTO `barang` VALUES (1268,NULL,NULL,'FLEXIBLE + ISOLASI LENGKAP 8\"','29','AC DUCTING','14',NULL);
INSERT INTO `barang` VALUES (1269,NULL,NULL,'BOX DIFFUSER','29','AC DUCTING','14',NULL);
INSERT INTO `barang` VALUES (1270,NULL,NULL,'DIFFUSER 10 x 100cm','29','AC DUCTING','14',NULL);
INSERT INTO `barang` VALUES (1271,NULL,NULL,'PIPA FREON + ISOLASI','29','AC SPLIT DUCTING','14',NULL);
INSERT INTO `barang` VALUES (1272,NULL,NULL,'JASA INSTALASI AC','29','SPLIT DUCTING 1.5 PK','10',NULL);
INSERT INTO `barang` VALUES (1273,NULL,NULL,'JASA INSTALASI AC','29','SPLIT DUCTING 2 PK','10',NULL);
INSERT INTO `barang` VALUES (1274,NULL,NULL,'PIPA REFRIGERANT + ISOLASI (1/4\" + 3/8\")','29','AC SPLIT ( 3/4 PK - 1 PK )','14',NULL);
INSERT INTO `barang` VALUES (1275,NULL,NULL,'PIPA REFRIGERANT + ISOLASI (1/4\" + 1/2\")','29','AC SPLIT ( 2 PK )','10',NULL);
INSERT INTO `barang` VALUES (1276,NULL,NULL,'JASA INSTALASI AC','29','SPLIT 3/4 PK - 2 PK','10',NULL);
INSERT INTO `barang` VALUES (1277,NULL,NULL,'PANEL LISTRIK KOMPLIT','29','UNTUK AC 8 GROUP','14',NULL);
INSERT INTO `barang` VALUES (1278,NULL,NULL,'TESTING + COMMISIONING','29','AC SPLIT 3/4 PK - 2 PK','10',NULL);
INSERT INTO `barang` VALUES (1279,NULL,NULL,'AC FLOOR STANDING 5 PK','27','CS/CU-C45FFP8','7',NULL);
INSERT INTO `barang` VALUES (1280,NULL,NULL,'JASA INSTALASI AC','29','FLOOR STANDING 5 PK','10',NULL);
INSERT INTO `barang` VALUES (1281,NULL,NULL,'JASA INSTALASI AC','29','FLOOR STANDING 6 PK','10',NULL);
INSERT INTO `barang` VALUES (1282,NULL,NULL,'BRACKET OUTDOOR AC FLOOR STANDING','29','5 PK','14',NULL);
INSERT INTO `barang` VALUES (1283,NULL,NULL,'WALL BRACKET CANTILEVER PTV - 077','28','FOR 42\" UP TO 50\"','8',NULL);
INSERT INTO `barang` VALUES (1284,NULL,NULL,'TESTING & COMMISSIONING','29','AC DUCTING','10',NULL);
INSERT INTO `barang` VALUES (1285,NULL,NULL,'PIPA REFRIGERANT DIAMETER 1/4\"','29','DIAMETER 1/4\"','14',NULL);
INSERT INTO `barang` VALUES (1286,NULL,NULL,'PIPA REFRIGERANT DIAMETER 1/2\"','29','DIAMETER 1/2\"','14',NULL);
INSERT INTO `barang` VALUES (1287,NULL,NULL,'PIPA REFRIGERANT DIAMETER 1\"','29','DIAMETER 1\"','14',NULL);
INSERT INTO `barang` VALUES (1288,NULL,NULL,'INSTALASI + MOUNTING INDOOR + OUTDOOR','29','AC SPLIT DUCTING','10',NULL);
INSERT INTO `barang` VALUES (1289,NULL,NULL,'CYBERKEY','29','_','14',NULL);
INSERT INTO `barang` VALUES (1290,NULL,NULL,'JASA INSTALASI AC','29','SPLIT 3/4 PK - 1 PK','10',NULL);
INSERT INTO `barang` VALUES (1291,NULL,NULL,'JASA INSTALASI AC','29','SPLIT 1.5 PK - 2 PK','10',NULL);
INSERT INTO `barang` VALUES (1292,NULL,NULL,'BRACKET OUTDOOR  AC SPLIT','29','3/4 PK - 2 PK','14',NULL);
INSERT INTO `barang` VALUES (1293,NULL,NULL,'JASA INSTALASI+BONGKAR AC LAMA+ BOBOKAN','29','AC SPLIT 1 PK','10',NULL);
INSERT INTO `barang` VALUES (1294,NULL,NULL,'JASA INSTALASI+BONGKAR AC LAMA+BOBOKAN','29','AC SPLIT 1.5 PK - 2 PK','10',NULL);
INSERT INTO `barang` VALUES (1295,NULL,NULL,'JASA INSTALASI+BONGKAR AC LAMA+BOBOKAN','29','AC SPLIT 2.5 PK','10',NULL);
INSERT INTO `barang` VALUES (1296,NULL,NULL,'JASA INSTALASI+BONGKAR AC LAMA+BOBOKAN','29','AC CASSETTE 2 PK','10',NULL);
INSERT INTO `barang` VALUES (1297,NULL,NULL,'JASA INSTALASI+BONGKAR AC LAMA+BOBOKAN','29','AC CASSETTE 2.5 PK','10',NULL);
INSERT INTO `barang` VALUES (1298,NULL,'','PIPA REFRIGERANT AC SPLIT 1 PK','29','AC SPLIT 1 PK','14','unit');
INSERT INTO `barang` VALUES (1299,NULL,NULL,'PIPA REFRIGERANT AC SPLIT 1.5 PK - 2 PK','29','AC SPLIT 1.5 PK - 2 PK','14','meter');
INSERT INTO `barang` VALUES (1300,NULL,NULL,'PIPA REFRIGERANT AC SPLIT 2.5 PK','29','AC SPLIT 2.5 PK','10','unit');
INSERT INTO `barang` VALUES (1301,NULL,NULL,'PIPA REFRIGERANT AC CASSETTE 2 PK - 2.5 PK','29','AC CASSETTE 2 PK - 2.5 PK','14',NULL);
INSERT INTO `barang` VALUES (1302,NULL,NULL,'BRACKET OUTDOOR AC CASSETTE','29','5 PK','14',NULL);
INSERT INTO `barang` VALUES (1303,NULL,NULL,'PIPA REFRIGERANT + ISOLASI ','29','3/4\" + 3/8\"','14',NULL);
INSERT INTO `barang` VALUES (1304,NULL,NULL,'',NULL,'_',NULL,NULL);
INSERT INTO `barang` VALUES (1305,NULL,NULL,'BRACKET OUTDOOR AC CASSETTE','29','3 PK','14',NULL);
INSERT INTO `barang` VALUES (1306,NULL,NULL,'PIPA REFRIGERANT AC BIG RAC','29','AC BIG RAC','14',NULL);
INSERT INTO `barang` VALUES (1307,NULL,NULL,'PIPA REFRIGERANT ','29','DIAMETER 1/2 + 1/4','14',NULL);
INSERT INTO `barang` VALUES (1308,NULL,NULL,'KABEL CONTROL ','29',' 4 x 4mm','14',NULL);
INSERT INTO `barang` VALUES (1309,NULL,NULL,'MCB 1 PHASE 16 A','29','AC SPLIT 3/4 PK','14',NULL);
INSERT INTO `barang` VALUES (1310,NULL,NULL,'OUTDOOR LONG RANGE CCTV-1.6 KM','30','AXIS Q6035 - E','17',NULL);
INSERT INTO `barang` VALUES (1311,NULL,NULL,'INDOOR CCTV DOME CAMERA','30','AXIS M3204','17',NULL);
INSERT INTO `barang` VALUES (1312,NULL,NULL,'SOFTWARE-XPROTECT ESSENTIAL BASE+CAMERA LICENCE','30','_','17',NULL);
INSERT INTO `barang` VALUES (1313,NULL,NULL,'SWITCH POE 8 PORT','30','AT FS708','17',NULL);
INSERT INTO `barang` VALUES (1314,NULL,NULL,'COMPUTER SERVER','30','DELL','17',NULL);
INSERT INTO `barang` VALUES (1315,NULL,NULL,'LCD MONITOR 19\"','30','DELL','17',NULL);
INSERT INTO `barang` VALUES (1316,NULL,NULL,'UPS 1000 VA ICA FOR SERVER','30','_','17',NULL);
INSERT INTO `barang` VALUES (1317,NULL,NULL,'PENANGKAL PETIR DAN ARESTER','30','_','17',NULL);
INSERT INTO `barang` VALUES (1318,NULL,NULL,'BIAYA CABLE','30','_','17',NULL);
INSERT INTO `barang` VALUES (1319,NULL,NULL,'BIAYA TIANG ','30','TOWER 6 METER','17',NULL);
INSERT INTO `barang` VALUES (1320,NULL,NULL,'BIAYA INSTALASI UNTUK CCTV','30','_','17',NULL);
INSERT INTO `barang` VALUES (1321,NULL,NULL,'BIAYA PEKERJAAN SIPIL','30','_','17',NULL);
INSERT INTO `barang` VALUES (1322,NULL,NULL,'BIAYA TESTING DAN COMMISSIONING','30','_','17',NULL);
INSERT INTO `barang` VALUES (1323,NULL,NULL,'BIAYA INSTALASI PENANGKAL PETIR','30','_','17',NULL);
INSERT INTO `barang` VALUES (1324,NULL,NULL,'BIAYA TRANSPORTASI DAN AKOMODASI','30','_','17',NULL);
INSERT INTO `barang` VALUES (1325,NULL,NULL,'AC CASSETTE  2 PK','27','CS/CU-PC18DB4','7',NULL);
INSERT INTO `barang` VALUES (1326,NULL,NULL,'AC SPLIT 1 PK','27','CS/CU-PC9NKJ','30','unit');
INSERT INTO `barang` VALUES (1327,NULL,NULL,'REMOTE AC','29','SPLIT INVERTER PANASONIC','9',NULL);
INSERT INTO `barang` VALUES (1328,NULL,NULL,'BRACKET OUTDOOR AC SPLIT','29','2.5 PK','14',NULL);
INSERT INTO `barang` VALUES (1329,NULL,NULL,'JUNCTION BOX WEATHERPROOF UNTUK SWITCH 500x4000x250','30','IP55','17',NULL);
INSERT INTO `barang` VALUES (1330,NULL,NULL,'JASA INSTALASI UNIT AC SPLIT CASSETTE 5 PK (BARU)','29','AC CASSETTE 5 PK','14',NULL);
INSERT INTO `barang` VALUES (1331,NULL,NULL,'JASA BONGKAR & PASANG AC CASSETTE 3 PK (LAMA)','29','AC CASSETTE 3 PK','14',NULL);
INSERT INTO `barang` VALUES (1332,NULL,NULL,'',NULL,'_',NULL,NULL);
INSERT INTO `barang` VALUES (1333,NULL,NULL,'PIPA TEMBAGA ','29','CRANE, UKURAN 1/4\" x 0.56mm','19',NULL);
INSERT INTO `barang` VALUES (1334,NULL,NULL,'PIPA TEMBAGA ','29','CRANE, UKURAN 1/2\" x 0.61mm','19',NULL);
INSERT INTO `barang` VALUES (1335,NULL,NULL,'PIPA TEMBAGA ','29','CRANE, UKURAN 3/8\" x 0.56mm','19',NULL);
INSERT INTO `barang` VALUES (1336,NULL,NULL,'PIPA TEMBAGA ','29','CRANE, UKURAN 3/4\" x 0.61mm','19',NULL);
INSERT INTO `barang` VALUES (1337,NULL,NULL,'FREON AC','29','DUPONT, R22','19',NULL);
INSERT INTO `barang` VALUES (1338,NULL,NULL,'ISOLASI PIPA TEMBAGA ','29','THERMAFLEX, UKURAN 1/4\"','19',NULL);
INSERT INTO `barang` VALUES (1339,NULL,NULL,'ISOLASI PIPA TEMBAGA','29','THERMAFLEX, UKURAN 1/2\"','19',NULL);
INSERT INTO `barang` VALUES (1340,NULL,NULL,'ISOLASI PIPA TEMBAGA','29','THERMAFLEX, UKURAN 3/8\"','19',NULL);
INSERT INTO `barang` VALUES (1341,NULL,NULL,'ISOLASI PIPA TEMBAGA','29','THERMAFLEX, UKURAN 3/4\"','19',NULL);
INSERT INTO `barang` VALUES (1342,NULL,NULL,'AC SPLIT 2 PK','27','CS/CU - PC18NKP','30','unit');
INSERT INTO `barang` VALUES (1343,NULL,NULL,'AC CASSETTE 2.5 PK','27','CS/CU - PC24DB4H','9',NULL);
INSERT INTO `barang` VALUES (1344,NULL,NULL,'LED TV 60\" 3D','6','LC-60LE835X','3',NULL);
INSERT INTO `barang` VALUES (1345,NULL,NULL,'LED TV 40\" 3D','6','LC-40LE835X','3','unit');
INSERT INTO `barang` VALUES (1346,NULL,NULL,'KULKAS 4 PINTU','7','SJ-F75PV-SL','3',NULL);
INSERT INTO `barang` VALUES (1347,NULL,NULL,'WATER DISPENSER','8','SWD-70EH-BK','3',NULL);
INSERT INTO `barang` VALUES (1348,NULL,NULL,'CYBERKEY',NULL,'_',NULL,NULL);
INSERT INTO `barang` VALUES (1349,NULL,NULL,'TV SPLITTER + CABLING + CONECTORS','28','_',NULL,NULL);
INSERT INTO `barang` VALUES (1350,NULL,NULL,'AC SPLIT 3/4 PK ALOWA SERIES','27','CS/CU-KC7NKJ','7',NULL);
INSERT INTO `barang` VALUES (1351,NULL,'','INSTALLATION + SETTING','28','LCD TV 32\" UP TO 42\"','24',NULL);
INSERT INTO `barang` VALUES (1352,NULL,NULL,'JASA INSTALASI+SETTING+TESTING ','29','LCD TV 42\"',NULL,NULL);
INSERT INTO `barang` VALUES (1353,NULL,'','JASA CONNECTING AC+BOBOKAN+PEMASANGAN',NULL,'_',NULL,NULL);
INSERT INTO `barang` VALUES (1354,NULL,NULL,'CEILING HANGING BRACKET',NULL,'LCD TV 32\"',NULL,NULL);
INSERT INTO `barang` VALUES (1355,NULL,NULL,'MCB 3 PHASE 25 A',NULL,'_',NULL,NULL);
INSERT INTO `barang` VALUES (1356,NULL,NULL,'KABEL FEEDER',NULL,'NYY 4 x 4 mm',NULL,NULL);
INSERT INTO `barang` VALUES (1357,NULL,NULL,'KABEL FEEDER ',NULL,'NYY 3 x 2,5 mm',NULL,NULL);
INSERT INTO `barang` VALUES (1358,NULL,NULL,'TESTING & INSTALASI',NULL,'_',NULL,NULL);
INSERT INTO `barang` VALUES (1359,NULL,NULL,'PIPA REFRIGERANT ','29','AC BIG RAC 1',NULL,NULL);
INSERT INTO `barang` VALUES (1360,NULL,NULL,'PIPA REFRIGERANT','29','AC BIG RAC 1/2',NULL,NULL);
INSERT INTO `barang` VALUES (1361,NULL,NULL,'PIPA REFRIGERANT ','29','AC BIG RAC 1/4',NULL,NULL);
INSERT INTO `barang` VALUES (1362,NULL,NULL,'PIPA DRAIN','29','AC BIG RAC 20\"',NULL,NULL);
INSERT INTO `barang` VALUES (1363,NULL,NULL,'PIPA DRAIN','29','AC BIG RAC 25\"',NULL,NULL);
INSERT INTO `barang` VALUES (1364,NULL,NULL,'PDP PANASONIC 85\"','31','TH-85PF12WK','26','Unit');
INSERT INTO `barang` VALUES (1365,NULL,NULL,'STAMPER','34','MIKASA JAPAN','27','Unit');
INSERT INTO `barang` VALUES (1366,NULL,NULL,'ENGINE','32','HONDA:GX 160','27','Unit');
INSERT INTO `barang` VALUES (1367,NULL,NULL,'LED TV 60\"','5','LC-60LE630M','3','Unit');
INSERT INTO `barang` VALUES (1368,NULL,NULL,'PIPA TEMBAGA MERK NS','29','UKURAN 1/4\"','28','Unit');
INSERT INTO `barang` VALUES (1369,NULL,NULL,'PIPA TEMBAGA MERK NS','29','UKURAN 1/2\"','28','Unit');
INSERT INTO `barang` VALUES (1370,NULL,NULL,'PIPA TEMBAGA MERK NS','29','UKURAN 3/8\"','28','Unit');
INSERT INTO `barang` VALUES (1371,NULL,NULL,'PIPA TEMBAGA MERK NS','29','UKURAN 3/4\"','28','Unit');
INSERT INTO `barang` VALUES (1372,NULL,NULL,'HARMAFLEX','29','THERMAFLEX 1.5\"','29','Unit');
INSERT INTO `barang` VALUES (1373,NULL,NULL,'LCD TV 22\"','4','M2241','18','Unit');
INSERT INTO `barang` VALUES (1374,NULL,NULL,'KULKAS 2 PINTU','7','B392CLC','18','Unit');
INSERT INTO `barang` VALUES (1375,NULL,NULL,'HOME THAETER','35','BH6320H','18','Unit');
INSERT INTO `barang` VALUES (1376,NULL,NULL,'AC SPLIT 2 PK','27','CS/CU-PS18MKP','28','Unit');
INSERT INTO `barang` VALUES (1377,NULL,NULL,'GENSET MERK FIRMAN','33','30KVA/25KW','27','Unit');
INSERT INTO `barang` VALUES (1378,NULL,NULL,'KABEL POWER','29','NYM 3 X 4mm','14','Meter');
INSERT INTO `barang` VALUES (1379,NULL,NULL,'BIAYA PENGIRIMAN','29',NULL,NULL,NULL);
INSERT INTO `barang` VALUES (1380,NULL,NULL,'KACA MATA 3D','28','PANASONIC','30',NULL);
INSERT INTO `barang` VALUES (1381,NULL,NULL,'BRACKET OUTDOOR AC SPLIT','29','3/4 PK - 1 PK','23','Unit');
INSERT INTO `barang` VALUES (1382,NULL,NULL,'ALAT BANTU & ACCESSORIES','29',NULL,NULL,'UNIT');
INSERT INTO `barang` VALUES (1383,NULL,NULL,'LCD TV 32\"','4','32LK310','18','unit');
INSERT INTO `barang` VALUES (1384,NULL,NULL,'KABEL FLEXIBEL 8\"','29',NULL,'23','Meter');
INSERT INTO `barang` VALUES (1385,NULL,NULL,'JASA INSTALASI AC','29','SPLIT DUCTING 2.5 PK',NULL,'Unit');
INSERT INTO `barang` VALUES (1386,NULL,NULL,'JASA INSTALASI AC','29','SPLIT DUCTING 3 PK',NULL,'Unit');
INSERT INTO `barang` VALUES (1387,NULL,NULL,'BIAYA FINISHING','29',NULL,NULL,'Unit');
INSERT INTO `barang` VALUES (1388,NULL,NULL,'LCD TV 32\"','4','LC-32M400M','3','unit');
INSERT INTO `barang` VALUES (1389,NULL,NULL,'AC SPLIT 1 PK','27','S09LFG','28','unit');
INSERT INTO `barang` VALUES (1390,NULL,NULL,'LED TV 32\"','5','LC-32LE240M','3','unit');
INSERT INTO `barang` VALUES (1391,NULL,NULL,'BESI BETON SNI','36','8mm FULL','31','batang');
INSERT INTO `barang` VALUES (1392,NULL,NULL,'BESI BETON SNI','36','8mm BANCI','31','batang');
INSERT INTO `barang` VALUES (1393,NULL,NULL,'AC SPLIT 2 PK','27','CS/CU-PC18NKJ','30','unit');
INSERT INTO `barang` VALUES (1394,NULL,NULL,'AC SPLIT 1.5 PK','27','CS/CU-PC12NKJ','30','unit');
INSERT INTO `barang` VALUES (1395,NULL,NULL,'AC SPLIT 1 PK','27','CS/CU-PC9NKJ','30','unit');
INSERT INTO `barang` VALUES (1396,NULL,NULL,'LED TV 46\" 3D','6','UA46D7000','32','unit');
INSERT INTO `barang` VALUES (1397,NULL,NULL,'LED TV 60\"','5','LC-60LE630M','3','unit');
INSERT INTO `barang` VALUES (1398,NULL,NULL,'HARMAFLEX THERMAFLEX','29','TEBAL :1/2\", DIAMETER : 3/8\"','29','batang');
INSERT INTO `barang` VALUES (1399,NULL,NULL,'HARMAFLEX THERMAFLEX','29','TEBAL: 1/2\", DIAMETER : 3/4\"','29','batang');
INSERT INTO `barang` VALUES (1400,NULL,NULL,'WATER DISPENSER','8','SWD-70EH-WH','3','unit');
INSERT INTO `barang` VALUES (1401,NULL,NULL,'MICROWAVE OVEN','14','R- 222Y(S)','3','unit');
INSERT INTO `barang` VALUES (1402,NULL,NULL,'MESIN CUCI FRONT LOADING','25','WD-M1070TD','18','unit');

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
) ENGINE=MyISAM AUTO_INCREMENT=186 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `beli` VALUES (43,'0000000000000000',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL);
INSERT INTO `beli` VALUES (51,'001/SV/PO/01/2012',30,'2012-01-04',21,'2012-01-12',1,'HUTANG',0,NULL);
INSERT INTO `beli` VALUES (52,'002/SV/PO/01/2012',9,'2012-01-05',22,'2012-02-20',1,'HUTANG',0,2);
INSERT INTO `beli` VALUES (53,'003/SV/PO/01/2012',30,'2012-01-06',21,'2012-01-13',1,'HUTANG',0,NULL);
INSERT INTO `beli` VALUES (54,'004/SV/PO/01/2012',3,'2012-01-06',11,'2012-01-20',1,'HUTANG',0,3);
INSERT INTO `beli` VALUES (55,'005/SV/PO/01/2012',3,'2012-01-06',11,'2012-01-20',1,'HUTANG',0,NULL);
INSERT INTO `beli` VALUES (56,'006/SV/PO/01/2012',3,'2012-01-09',11,'2012-01-23',1,'HUTANG',0,NULL);
INSERT INTO `beli` VALUES (57,'007/SV/PO/01/2012',9,'2012-01-11',22,'2012-02-06',1,'HUTANG',0,2);
INSERT INTO `beli` VALUES (58,'008/SV/PO/01/2012',30,'2012-01-12',21,'2012-01-19',1,'HUTANG',0,NULL);
INSERT INTO `beli` VALUES (59,'009/SV/PO/01/2012',3,'2012-01-13',11,'2012-01-27',1,'HUTANG',0,NULL);
INSERT INTO `beli` VALUES (60,'010/SV/PO/01/2012',9,'2012-01-13',22,'2012-02-20',1,'HUTANG',0,2);
INSERT INTO `beli` VALUES (61,'011/SV/PO/01/2012',18,'2012-01-13',24,'2012-02-13',1,'HUTANG',0,NULL);
INSERT INTO `beli` VALUES (62,'012/SV/PO/01/2012',9,'2012-01-17',22,'2012-02-20',1,'HUTANG',0,2);
INSERT INTO `beli` VALUES (63,'013/SV/PO/01/2012',9,'2012-01-18',22,'2012-02-20',1,'HUTANG',0,2);
INSERT INTO `beli` VALUES (64,'014/SV/PO/01/2012',9,'2012-01-25',22,'2012-03-05',1,'HUTANG',0,2);
INSERT INTO `beli` VALUES (65,'001/SV/PO/02/2012',9,'2012-02-01',22,'2012-03-05',1,'HUTANG',0,2);
INSERT INTO `beli` VALUES (66,'002/SV/PO/02/2012',30,'2012-02-01',21,'2012-02-08',1,'HUTANG',0,NULL);
INSERT INTO `beli` VALUES (67,'003/SV/PO/02/2012',18,'2012-02-01',24,'2012-02-17',1,'HUTANG',0,NULL);
INSERT INTO `beli` VALUES (68,'004/SV/PO/02/2012',9,'2012-02-04',22,'2012-03-20',1,'HUTANG',0,2);
INSERT INTO `beli` VALUES (69,'005/SV/PO/02/2012',18,'2012-02-06',24,'2012-02-22',1,'HUTANG',0,2);
INSERT INTO `beli` VALUES (70,'006/SV/PO/02/2012',3,'2012-02-07',11,'2012-02-21',1,'HUTANG',0,NULL);
INSERT INTO `beli` VALUES (71,'007/SV/PO/02/2012',9,'2012-02-08',22,'2012-03-20',1,'HUTANG',0,4);
INSERT INTO `beli` VALUES (72,'008/SV/PO/02/2012',3,'2012-02-08',11,'2012-02-29',1,'HUTANG',0,NULL);
INSERT INTO `beli` VALUES (73,'009/SV/PO/02/2012',3,'2012-02-09',11,'2012-03-20',1,'HUTANG',0,NULL);
INSERT INTO `beli` VALUES (74,'010/SV/PO/02/2012',18,'2012-02-16',24,'2012-03-16',1,'HUTANG',0,NULL);
INSERT INTO `beli` VALUES (75,'011/SV/PO/02/2012',18,'2012-02-17',24,'2012-03-17',1,'HUTANG',0,NULL);
INSERT INTO `beli` VALUES (76,'012/SV/PO/02/2012',18,'2012-02-21',24,'2012-02-17',1,'HUTANG',0,NULL);
INSERT INTO `beli` VALUES (77,'013/SV/PO/02/2012',18,'2012-02-22',24,'2012-03-19',1,'HUTANG',0,NULL);
INSERT INTO `beli` VALUES (78,'014/SV/PO/02/2012',9,'2012-02-22',22,'2012-04-05',1,'HUTANG',0,4);
INSERT INTO `beli` VALUES (79,'015/SV/PO/02/2012',9,'2012-02-28',22,'2012-04-05',1,'HUTANG',0,4);
INSERT INTO `beli` VALUES (80,'016/SV/PO/02/2012',9,'2012-02-29',22,'2012-04-05',1,'HUTANG',0,4);
INSERT INTO `beli` VALUES (81,'001/SV/PO/03/2012',18,'2012-03-06',24,'2012-03-20',1,'HUTANG',0,NULL);
INSERT INTO `beli` VALUES (82,'002/SV/PO/03/2012',30,'2012-03-12',21,'2012-03-19',1,'HUTANG',0,NULL);
INSERT INTO `beli` VALUES (83,'003/SV/PO/03/2012',30,'2012-03-13',21,'2012-03-21',1,'HUTANG',0,NULL);
INSERT INTO `beli` VALUES (84,'004/SV/PO/03/2012',9,'2012-03-14',22,'2012-04-20',1,'HUTANG',0,4);
INSERT INTO `beli` VALUES (85,'005/SV/PO/03/2012',3,'2012-03-14',11,'2012-03-28',1,'HUTANG',0,NULL);
INSERT INTO `beli` VALUES (91,'0000000000000000',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL);
INSERT INTO `beli` VALUES (92,'006/SV/PO/03/2012',9,'2012-03-19',22,'2012-04-05',1,'HUTANG',0,4);
INSERT INTO `beli` VALUES (93,'007/SV/PO/03/2012',19,'2012-03-21',NULL,'2012-03-29',1,'HUTANG',0,NULL);
INSERT INTO `beli` VALUES (94,'008/SV/PO/03/2012',30,'2012-03-21',21,'2012-04-02',1,'HUTANG',0,NULL);
INSERT INTO `beli` VALUES (95,'009/SV/PO/03/2012',9,'2012-03-22',NULL,'2012-04-05',1,'HUTANG',0,NULL);
INSERT INTO `beli` VALUES (96,'001/SV/CA/01/2012',8,'2012-01-01',18,NULL,1,'CASH',1,NULL);
INSERT INTO `beli` VALUES (97,'002/SV/CA/01/2012',13,'2012-01-02',NULL,NULL,1,'CASH',1,NULL);
INSERT INTO `beli` VALUES (98,'003/SV/CA/01/2012',14,'2012-01-01',NULL,NULL,1,'CASH',1,NULL);
INSERT INTO `beli` VALUES (99,'004/SV/CA/01/2012',14,'2012-01-01',NULL,NULL,1,'CASH',1,NULL);
INSERT INTO `beli` VALUES (100,'005/SV/CA/01/2012',17,'2012-01-02',NULL,NULL,1,'CASH',1,5);
INSERT INTO `beli` VALUES (101,'006/SV/CA/01/2012',9,'2012-01-03',NULL,NULL,1,'CASH',1,NULL);
INSERT INTO `beli` VALUES (102,'007/SV/CA/01/2012',14,'2012-01-06',NULL,NULL,1,'CASH',1,NULL);
INSERT INTO `beli` VALUES (103,'010/SV/PO/03/2012',9,'2012-03-26',22,'2012-04-20',1,'HUTANG',0,NULL);
INSERT INTO `beli` VALUES (104,'011/SV/PO/03/2012',3,'2012-03-29',14,'2012-04-25',1,'HUTANG',0,NULL);
INSERT INTO `beli` VALUES (105,'012/SV/PO/03/2012',3,'2012-03-29',14,'2012-04-25',1,'HUTANG',0,NULL);
INSERT INTO `beli` VALUES (106,'008/SV/CA/01/2012',20,'2012-01-20',NULL,NULL,1,'CASH',1,6);
INSERT INTO `beli` VALUES (107,'009/SV/CA/01/2012',20,'2012-01-21',NULL,NULL,1,'CASH',1,6);
INSERT INTO `beli` VALUES (108,'001/SV/PO/02/2012',12,'2012-02-01',NULL,NULL,1,'CASH',0,NULL);
INSERT INTO `beli` VALUES (109,'002/SV/PO/02/2012',12,'2012-02-01',NULL,NULL,1,'CASH',0,NULL);
INSERT INTO `beli` VALUES (110,'003/SV/PO/02/2012',14,'2012-02-02',NULL,NULL,1,'CASH',0,NULL);
INSERT INTO `beli` VALUES (111,'004/SV/PO/02/2012',21,'2012-02-10',NULL,NULL,1,'CASH',0,NULL);
INSERT INTO `beli` VALUES (112,'005/SV/PO/02/2012',14,'2012-02-10',NULL,NULL,1,'CASH',0,NULL);
INSERT INTO `beli` VALUES (113,'006/SV/PO/02/2012',22,'2012-02-13',NULL,NULL,1,'CASH',0,NULL);
INSERT INTO `beli` VALUES (114,'007/SV/PO/02/2012',23,'2012-02-13',NULL,NULL,1,'CASH',0,NULL);
INSERT INTO `beli` VALUES (115,'008/SV/PO/02/2012',14,'2012-02-19',NULL,NULL,1,'CASH',0,NULL);
INSERT INTO `beli` VALUES (116,'001/SV/CA/02/2012',14,'2012-02-20',NULL,NULL,1,'CASH',1,NULL);
INSERT INTO `beli` VALUES (117,'002/SV/CA/02/2012',22,'2012-02-20',NULL,NULL,1,'CASH',1,NULL);
INSERT INTO `beli` VALUES (118,'003/SV/CA/02/2012',24,'2012-02-08',NULL,NULL,1,'CASH',1,NULL);
INSERT INTO `beli` VALUES (119,'004/SV/CA/02/2012',14,'2012-02-10',NULL,NULL,1,'CASH',1,4);
INSERT INTO `beli` VALUES (120,'005/SV/CA/02/2012',14,'2012-02-15',NULL,NULL,1,'CASH',1,NULL);
INSERT INTO `beli` VALUES (121,'006/SV/CA/02/2012',21,'2012-02-20',NULL,NULL,1,'CASH',1,3);
INSERT INTO `beli` VALUES (122,'007/SV/CA/02/2012',14,'2012-02-20',NULL,NULL,1,'CASH',1,NULL);
INSERT INTO `beli` VALUES (123,'008/SV/CA/02/2012',21,'2012-02-20',NULL,NULL,1,'CASH',1,7);
INSERT INTO `beli` VALUES (124,'009/SV/CA/02/2012',14,'2012-02-20',NULL,NULL,1,'CASH',1,7);
INSERT INTO `beli` VALUES (125,'010/SV/CA/02/2012',23,'2012-02-25',NULL,NULL,1,'CASH',1,8);
INSERT INTO `beli` VALUES (126,'011/SV/CA/02/2012',22,'2012-02-25',NULL,NULL,1,'CASH',1,8);
INSERT INTO `beli` VALUES (127,'001/SV/CA/03/2012',12,'2012-03-01',NULL,NULL,1,'CASH',1,NULL);
INSERT INTO `beli` VALUES (128,'002/SV/CA/03/2012',24,'2012-03-01',NULL,NULL,1,'CASH',1,NULL);
INSERT INTO `beli` VALUES (129,'003/SV/CA/03/2012',14,'2012-03-03',NULL,NULL,1,'CASH',1,9);
INSERT INTO `beli` VALUES (130,'004/SV/CA/03/2012',25,'2012-03-03',NULL,NULL,1,'CASH',1,9);
INSERT INTO `beli` VALUES (131,'005/SV/CA/03/2012',23,'2012-03-06',NULL,NULL,1,'CASH',1,8);
INSERT INTO `beli` VALUES (132,'006/SV/CA/03/2012',22,'2012-03-06',NULL,NULL,1,'CASH',1,8);
INSERT INTO `beli` VALUES (133,'007/SV/CA/03/2012',12,'2012-03-17',NULL,NULL,1,'CASH',1,NULL);
INSERT INTO `beli` VALUES (134,'008/SV/CA/03/2012',14,'2012-03-18',NULL,NULL,1,'CASH',1,10);
INSERT INTO `beli` VALUES (135,'009/SV/CA/03/2012',21,'2012-03-18',NULL,NULL,1,'CASH',1,10);
INSERT INTO `beli` VALUES (136,'010/SV/CA/03/2012',23,'2012-03-20',NULL,NULL,1,'CASH',1,11);
INSERT INTO `beli` VALUES (137,'011/SV/CA/03/2012',22,'2012-03-20',NULL,NULL,1,'CASH',1,11);
INSERT INTO `beli` VALUES (138,'013/SV/PO/03/2012',26,'2012-03-30',NULL,NULL,1,'HUTANG',0,17);
INSERT INTO `beli` VALUES (139,'001/SV/PO/04/2012',27,'2012-04-03',NULL,NULL,1,'CASH',0,18);
INSERT INTO `beli` VALUES (140,'002/SV/PO/04/2012',3,'2012-04-03',11,NULL,1,'HUTANG',0,NULL);
INSERT INTO `beli` VALUES (141,'003/SV/PO/04/2012',28,'2012-04-04',NULL,NULL,1,'CASH',0,NULL);
INSERT INTO `beli` VALUES (142,'004/SV/PO/04/2012',29,'2012-04-04',NULL,NULL,1,'CASH',0,NULL);
INSERT INTO `beli` VALUES (143,'005/SV/PO/04/2012',18,'2012-04-04',24,NULL,1,'HUTANG',0,14);
INSERT INTO `beli` VALUES (144,'006/SV/PO/04/2012',28,'2012-04-01',NULL,NULL,1,'CASH',0,19);
INSERT INTO `beli` VALUES (145,'007/SV/PO/04/2012',27,'2012-04-09',NULL,NULL,1,'CASH',0,18);
INSERT INTO `beli` VALUES (146,'008/SV/PO/04/2012',9,'2012-04-10',22,NULL,1,'HUTANG',0,14);
INSERT INTO `beli` VALUES (147,'009/SV/PO/04/2012',30,'2012-04-10',NULL,NULL,1,'HUTANG',0,NULL);
INSERT INTO `beli` VALUES (148,'010/SV/PO/04/2012',9,'2012-04-12',22,NULL,1,'HUTANG',0,14);
INSERT INTO `beli` VALUES (149,'001/SV/CA/02/2012',19,'2012-02-14',NULL,NULL,1,'CASH',1,NULL);
INSERT INTO `beli` VALUES (150,'001/SV/CA/01/2011',9,'2011-12-06',22,NULL,1,'CASH',1,14);
INSERT INTO `beli` VALUES (151,'001/SV/CA/12/2011',9,'2011-12-21',22,NULL,1,'CASH',1,14);
INSERT INTO `beli` VALUES (152,'002/SV/CA/12/2011',9,'2011-12-21',22,NULL,1,'CASH',1,14);
INSERT INTO `beli` VALUES (153,'001/SV/CA/01/2012',9,'2012-01-05',22,NULL,1,'CASH',1,14);
INSERT INTO `beli` VALUES (154,'001/SV/PO/01/2012',14,'2012-01-25',NULL,NULL,1,'CASH',0,6);
INSERT INTO `beli` VALUES (155,'002/SV/PO/01/2012',21,'2012-01-25',NULL,NULL,1,'CASH',0,6);
INSERT INTO `beli` VALUES (156,'001/SV/PO/02/2012',30,'2012-02-01',NULL,NULL,1,'CASH',0,NULL);
INSERT INTO `beli` VALUES (157,'002/SV/PO/02/2012',23,'2012-02-10',NULL,NULL,1,'CASH',0,20);
INSERT INTO `beli` VALUES (158,'003/SV/PO/02/2012',21,'2012-02-22',NULL,NULL,1,'CASH',0,3);
INSERT INTO `beli` VALUES (159,'004/SV/PO/02/2012',14,'2012-02-20',NULL,NULL,1,'CASH',0,3);
INSERT INTO `beli` VALUES (160,'005/SV/PO/02/2012',30,'2012-02-11',39,NULL,1,'CASH',0,NULL);
INSERT INTO `beli` VALUES (161,'006/SV/PO/02/2012',21,'2012-02-11',NULL,NULL,1,'CASH',0,NULL);
INSERT INTO `beli` VALUES (162,'007/SV/PO/02/2012',22,'2012-02-10',NULL,NULL,1,'CASH',0,20);
INSERT INTO `beli` VALUES (163,'008/SV/PO/02/2012',23,'2012-02-10',NULL,NULL,1,'CASH',0,20);
INSERT INTO `beli` VALUES (164,'001/SV/PO/03/2012',30,'2012-03-06',NULL,NULL,1,'CASH',0,NULL);
INSERT INTO `beli` VALUES (165,'001/SV/PO/01/2011',3,'2011-12-28',NULL,NULL,1,'CASH',0,NULL);
INSERT INTO `beli` VALUES (166,'001/SV/PO/01/2012',22,'2012-02-28',NULL,NULL,1,'CASH',0,8);
INSERT INTO `beli` VALUES (167,'001/SV/PO/02/2012',23,'2012-02-27',NULL,NULL,1,'CASH',0,8);
INSERT INTO `beli` VALUES (168,'002/SV/PO/02/2012',22,'2012-02-27',NULL,NULL,1,'CASH',0,8);
INSERT INTO `beli` VALUES (169,'001/SV/PO/04/2012',3,'2012-04-16',11,NULL,1,'HUTANG',0,NULL);
INSERT INTO `beli` VALUES (170,'002/SV/PO/04/2012',28,'2012-04-16',36,NULL,1,'HUTANG',0,NULL);
INSERT INTO `beli` VALUES (171,'003/SV/PO/04/2012',3,'2012-04-19',11,NULL,NULL,'HUTANG',0,NULL);
INSERT INTO `beli` VALUES (172,'004/SV/PO/04/2012',9,'2012-04-23',22,NULL,NULL,'HUTANG',0,14);
INSERT INTO `beli` VALUES (173,'005/SV/PO/04/2012',33,'2012-04-25',42,NULL,1,'HUTANG',0,21);
INSERT INTO `beli` VALUES (174,'006/SV/PO/04/2012',33,'2012-04-25',43,NULL,1,'HUTANG',0,21);
INSERT INTO `beli` VALUES (175,'007/SV/PO/04/2012',30,'2012-04-26',39,NULL,1,'HUTANG',0,NULL);
INSERT INTO `beli` VALUES (176,'001/SV/PO/05/2012',32,'2012-05-01',NULL,NULL,1,'CASH',0,NULL);
INSERT INTO `beli` VALUES (177,'002/SV/PO/05/2012',34,'2012-05-01',44,NULL,1,'CASH',0,NULL);
INSERT INTO `beli` VALUES (178,'003/SV/PO/05/2012',9,'2012-05-01',22,NULL,NULL,'HUTANG',0,14);
INSERT INTO `beli` VALUES (179,'004/SV/PO/05/2012',3,'2012-05-02',11,NULL,1,'HUTANG',0,NULL);
INSERT INTO `beli` VALUES (180,'005/SV/PO/05/2012',29,'2012-05-03',NULL,NULL,1,'CASH',0,NULL);
INSERT INTO `beli` VALUES (181,'006/SV/PO/05/2012',9,'2012-05-04',22,NULL,NULL,'HUTANG',0,14);
INSERT INTO `beli` VALUES (182,'007/SV/PO/05/2012',3,'2012-05-07',11,NULL,1,'HUTANG',0,NULL);
INSERT INTO `beli` VALUES (183,'008/SV/PO/05/2012',18,'2012-05-07',24,NULL,1,'HUTANG',0,NULL);
INSERT INTO `beli` VALUES (184,'009/SV/PO/05/2012',3,'2012-05-09',14,NULL,NULL,'HUTANG',0,14);
INSERT INTO `beli` VALUES (185,'010/SV/PO/05/2012',3,'2012-05-09',14,NULL,NULL,'HUTANG',0,NULL);

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
) ENGINE=MyISAM AUTO_INCREMENT=397 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `belidetail` VALUES (69,'003/SV/PO/01/2012',1242,'AC SPLIT 1/2 PK',2,NULL,2150000,4300000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (70,'004/SV/PO/01/2012',1226,'MESIN CUCI 1 TABUNG',1,NULL,2084500,2084500,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (71,'005/SV/PO/01/2012',1226,'MESIN CUCI 1 TABUNG',1,NULL,2084500,2084500,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (72,'006/SV/PO/01/2012',1227,'KULKAS 1 PINTU',1,NULL,1215500,1215500,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (73,'007/SV/PO/01/2012',1224,'LCD TV 32\"',33,NULL,2495000,82335000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (74,'007/SV/PO/01/2012',1160,'LCD TV 42\"',126,NULL,5315000,669690000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (75,'008/SV/PO/01/2012',1228,'AC SPLIT 1 PK',1,NULL,3500000,3500000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (76,'009/SV/PO/01/2012',1229,'MESIN CUCI 2 TABUNG',1,NULL,1375000,1375000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (77,'010/SV/PO/01/2012',1224,'LCD TV 32\"',64,NULL,2495000,159680000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (78,'011/SV/PO/01/2012',1230,'LCD TV 32\"',7,NULL,2500000,17500000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (79,'012/SV/PO/01/2012',1224,'LCD TV 32\"',2,NULL,2495000,4990000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (80,'013/SV/PO/01/2012',1225,'LCD TV 42\"',2,NULL,5315000,10630000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (81,'014/SV/PO/01/2012',1224,'LCD TV 32\"',80,NULL,2495000,199600000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (82,'014/SV/PO/01/2012',1225,'LCD TV 42\"',84,NULL,5225000,438900000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (95,'009/SV/PO/02/2012',1238,'LED TV 46\"',3,NULL,10200000,30600000,NULL,'2012-02-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (96,'010/SV/PO/02/2012',1230,'LCD TV 32\"',1,NULL,2500000,2500000,NULL,'2012-02-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (97,'011/SV/PO/02/2012',1230,'LCD TV 32\"',1,NULL,2500000,2500000,NULL,'2012-02-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (98,'012/SV/PO/02/2012',1234,'LCD TV 42\"',1,NULL,5200000,5200000,NULL,'2012-02-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (99,'013/SV/PO/02/2012',1234,'LCD TV 42\"',2,NULL,5200000,10400000,NULL,'2012-02-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (100,'014/SV/PO/02/2012',1224,'LCD TV 32\"',21,NULL,2495000,52395000,NULL,'2012-02-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (101,'015/SV/PO/02/2012',1224,'LCD TV 32\"',2,NULL,2495000,4990000,NULL,'2012-02-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (102,'016/SV/PO/02/2012',1224,'LCD TV 32\"',5,NULL,2495000,12475000,NULL,'2012-02-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (103,'013/SV/PO/03/2012',1364,'PDP PANASONIC 85\"',1,NULL,250356000,250356000,NULL,'2012-03-30',NULL,NULL);
INSERT INTO `belidetail` VALUES (104,'002/SV/PO/03/2012',1242,'AC SPLIT 1/2 PK',1,NULL,2150000,2150000,NULL,'2012-03-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (105,'003/SV/PO/03/2012',1263,'AC SPLIT 3/4 PK',1,NULL,2250000,2250000,NULL,'2012-03-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (106,'003/SV/PO/03/2012',1241,'AC SPLIT 1 PK',1,NULL,2875000,2875000,NULL,'2012-03-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (107,'004/SV/PO/03/2012',1224,'LCD TV 32\"',50,NULL,2495000,124750000,NULL,'2012-03-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (108,'004/SV/PO/03/2012',1225,'LCD TV 42\"',187,NULL,5225000,977075000,NULL,'2012-03-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (109,'005/SV/PO/03/2012',1264,'AIR PURIFIER',4,NULL,3294500,13178000,NULL,'2012-03-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (110,'005/SV/PO/03/2012',1265,'HOME THEATER',1,NULL,1959000,1959000,NULL,'2012-03-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (111,'005/SV/PO/03/2012',1266,'LCD TV 40\"',1,NULL,5250000,5250000,NULL,'2012-03-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (128,'006/SV/PO/03/2012',1224,'LCD TV 32\" ',5,NULL,2495000,12475000,NULL,'2012-03-26',NULL,NULL);
INSERT INTO `belidetail` VALUES (129,'007/SV/PO/03/2012',1333,'PIPA TEMBAGA ',2,NULL,235000,470000,NULL,'2012-03-26',NULL,NULL);
INSERT INTO `belidetail` VALUES (130,'007/SV/PO/03/2012',1334,'PIPA TEMBAGA ',2,NULL,485000,970000,NULL,'2012-03-26',NULL,NULL);
INSERT INTO `belidetail` VALUES (131,'007/SV/PO/03/2012',1335,'PIPA TEMBAGA ',8,NULL,356000,2848000,NULL,'2012-03-26',NULL,NULL);
INSERT INTO `belidetail` VALUES (132,'007/SV/PO/03/2012',1336,'PIPA TEMBAGA ',8,NULL,800000,6400000,NULL,'2012-03-26',NULL,NULL);
INSERT INTO `belidetail` VALUES (133,'007/SV/PO/03/2012',1337,'FREON AC',1,NULL,1000000,1000000,NULL,'2012-03-26',NULL,NULL);
INSERT INTO `belidetail` VALUES (134,'007/SV/PO/03/2012',1338,'ISOLASI PIPA TEMBAGA ',15,NULL,10000,150000,NULL,'2012-03-26',NULL,NULL);
INSERT INTO `belidetail` VALUES (135,'007/SV/PO/03/2012',1339,'ISOLASI PIPA TEMBAGA',15,NULL,13000,195000,NULL,'2012-03-26',NULL,NULL);
INSERT INTO `belidetail` VALUES (136,'007/SV/PO/03/2012',1340,'ISOLASI PIPA TEMBAGA',60,NULL,11000,660000,NULL,'2012-03-26',NULL,NULL);
INSERT INTO `belidetail` VALUES (137,'007/SV/PO/03/2012',1341,'ISOLASI PIPA TEMBAGA',60,NULL,15000,900000,NULL,'2012-03-26',NULL,NULL);
INSERT INTO `belidetail` VALUES (138,'008/SV/PO/03/2012',1342,'AC SPLIT 2 PK',2,NULL,4500000,9000000,NULL,'2012-03-26',NULL,NULL);
INSERT INTO `belidetail` VALUES (139,'009/SV/PO/03/2012',1343,'AC CASSETTE 2.5 PK',11,NULL,11034000,121374000,NULL,'2012-03-26',NULL,NULL);
INSERT INTO `belidetail` VALUES (141,'002/SV/CA/01/2012',1205,'WALL BRACKET',1000,NULL,95000,95000000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (142,'003/SV/CA/01/2012',1243,'AC FLOOR STANDING 3 PK',1,NULL,11800000,11800000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (143,'003/SV/CA/01/2012',1244,'BRACKET OUTDOOR AC FLOOR STANDING',1,NULL,250000,250000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (144,'003/SV/CA/01/2012',1215,'KABEL POWER ',10,NULL,30000,300000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (145,'003/SV/CA/01/2012',1245,'PIPA DRAIN ',7,NULL,12000,84000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (146,'003/SV/CA/01/2012',1246,'PIPA REFRIGERANT + ISOLASI (5/8\"+3/8\")',4,NULL,150000,600000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (147,'003/SV/CA/01/2012',1247,'JASA INSTALASI AC',1,NULL,550000,550000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (148,'004/SV/CA/01/2012',1248,'BIAYA INSTAL+BONGKAR AC LAMA+BOBOKAN ',26,NULL,500000,13000000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (149,'004/SV/CA/01/2012',1249,'BIAYA INSTAL+BONGKAR AC LAMA+BOBOKAN',84,NULL,600000,50400000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (150,'004/SV/CA/01/2012',1250,'BIAYA INSTAL+BONGKAR AC LAMA+BOBOKAN',26,NULL,700000,18200000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (151,'004/SV/CA/01/2012',1251,'BIAYA INSTAL+BONGKAR AC LAMA+BOBOKAN',5,NULL,700000,3500000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (152,'004/SV/CA/01/2012',1252,'BIAYA INSTAL+BONGKAR AC LAMA+BOBOKAN',11,NULL,850000,9350000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (153,'004/SV/CA/01/2012',1253,'JASA TARIKAN + PIPA REFRIGERANT ',338,NULL,50000,16900000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (154,'004/SV/CA/01/2012',1254,'JASA TARIKAN + PIPA REFRIGERANT ',1125,NULL,75000,84375000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (155,'004/SV/CA/01/2012',1255,'JASA TARIKAN + PIPA REFRIGERANT ',430,NULL,150000,64500000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (156,'004/SV/CA/01/2012',1256,'JASA TARIKAN + PIPA REFRIGERANT ',275,NULL,175000,48125000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (157,'004/SV/CA/01/2012',1218,'PIPA DRAIN',1045,NULL,12000,12540000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (158,'004/SV/CA/01/2012',1214,'KABEL POWER ',1830,NULL,17500,32025000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (159,'004/SV/CA/01/2012',1260,'KABEL CONTROL ',2168,NULL,17500,37940000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (160,'004/SV/CA/01/2012',1216,'BRACKET OUTDOOR AC SPLIT',26,NULL,60000,1560000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (161,'004/SV/CA/01/2012',1217,'BRACKET OUTDOOR AC SPLIT',84,NULL,75000,6300000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (162,'004/SV/CA/01/2012',1328,'BRACKET OUTDOOR AC SPLIT',26,NULL,100000,2600000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (163,'004/SV/CA/01/2012',1257,'BRACKET OUTDOOR AC CASETTE',16,NULL,150000,2400000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (164,'005/SV/CA/01/2012',1310,'OUTDOOR LONG RANGE CCTV-1.6 KM',1,NULL,76680000,76680000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (165,'005/SV/CA/01/2012',1311,'INDOOR CCTV DOME CAMERA',1,NULL,9260000,9260000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (166,'005/SV/CA/01/2012',1312,'SOFTWARE-XPROTECT ESSENTIAL BASE+CAMERA LICENCE',1,NULL,1740000,1740000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (167,'005/SV/CA/01/2012',1313,'SWITCH POE 8 PORT',1,NULL,930000,930000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (168,'005/SV/CA/01/2012',1329,'JUNCTION BOX WEATHERPROOF UNTUK SWITCH 500x4000x250',1,NULL,2800000,2800000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (169,'005/SV/CA/01/2012',1314,'COMPUTER SERVER',1,NULL,11000000,11000000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (170,'005/SV/CA/01/2012',1315,'LCD MONITOR 19\"',1,NULL,1200000,1200000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (171,'005/SV/CA/01/2012',1316,'UPS 1000 VA ICA FOR SERVER',1,NULL,1900000,1900000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (172,'005/SV/CA/01/2012',1317,'PENANGKAL PETIR DAN ARESTER',1,NULL,4600000,4600000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (173,'005/SV/CA/01/2012',1318,'BIAYA CABLE',400,NULL,12000,4800000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (174,'005/SV/CA/01/2012',1319,'BIAYA TIANG ',1,NULL,6500000,6500000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (175,'005/SV/CA/01/2012',1320,'BIAYA INSTALASI UNTUK CCTV',1,NULL,400000,400000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (176,'005/SV/CA/01/2012',1321,'BIAYA PEKERJAAN SIPIL',1,NULL,3500000,3500000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (177,'005/SV/CA/01/2012',1322,'BIAYA TESTING DAN COMMISSIONING',1,NULL,1750000,1750000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (178,'005/SV/CA/01/2012',1323,'BIAYA INSTALASI PENANGKAL PETIR',1,NULL,4000000,4000000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (179,'005/SV/CA/01/2012',1324,'BIAYA TRANSPORTASI DAN AKOMODASI',1,NULL,14000000,14000000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (180,'006/SV/CA/01/2012',1327,'REMOTE AC',2,NULL,185000,370000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (181,'007/SV/CA/01/2012',1291,'JASA INSTALASI AC',6,NULL,250000,1500000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (182,'007/SV/CA/01/2012',1259,'INSTALASI BRACKET',6,NULL,75000,450000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (183,'007/SV/CA/01/2012',1260,'KABEL CONTROL ',30,NULL,17500,525000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (184,'007/SV/CA/01/2012',1245,'PIPA DRAIN ',18,NULL,120000,2160000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (185,'007/SV/CA/01/2012',1299,'PIPA REFRIGERANT AC SPLIT 1.5 PK - 2 PK',30,NULL,65000,1950000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (186,'007/SV/CA/01/2012',1262,'JASA BONGKAR UNIT',5,NULL,100000,500000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (187,'010/SV/PO/03/2012',1343,'AC CASSETTE 2.5 PK',10,NULL,11034000,110340000,NULL,'2012-03-29',NULL,NULL);
INSERT INTO `belidetail` VALUES (188,'011/SV/PO/03/2012',1344,'LED TV 60\" 3D',1,NULL,40950000,40950000,NULL,'2012-03-29',NULL,NULL);
INSERT INTO `belidetail` VALUES (189,'011/SV/PO/03/2012',1345,'LED TV 40\" 3D',3,NULL,13000000,39000000,NULL,'2012-03-29',NULL,NULL);
INSERT INTO `belidetail` VALUES (190,'012/SV/PO/03/2012',1346,'KULKAS 4 PINTU',1,NULL,11275000,11275000,NULL,'2012-03-29',NULL,NULL);
INSERT INTO `belidetail` VALUES (191,'012/SV/PO/03/2012',1347,'WATER DISPENSER',1,NULL,1875000,1875000,NULL,'2012-03-29',NULL,NULL);
INSERT INTO `belidetail` VALUES (192,'008/SV/CA/01/2012',1348,'CYBERKEY',1,NULL,1500000,1500000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (193,'009/SV/CA/01/2012',1348,'CYBERKEY',4,NULL,1500000,6000000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (209,'002/SV/CA/02/2012',1290,'JASA INSTALASI AC',1,NULL,150000,150000,NULL,'2012-02-20',NULL,NULL);
INSERT INTO `belidetail` VALUES (210,'003/SV/CA/02/2012',1351,'INSTALLATION + SETTING',3,NULL,60000,180000,NULL,'2012-02-20',NULL,NULL);
INSERT INTO `belidetail` VALUES (211,'004/SV/CA/02/2012',1282,'BRACKET OUTDOOR AC FLOOR STANDING',1,NULL,250000,250000,NULL,'2012-02-20',NULL,NULL);
INSERT INTO `belidetail` VALUES (212,'004/SV/CA/02/2012',1244,'BRACKET OUTDOOR AC FLOOR STANDING',1,NULL,200000,200000,NULL,'2012-02-20',NULL,NULL);
INSERT INTO `belidetail` VALUES (213,'004/SV/CA/02/2012',1221,'PIPA AC , 2.5 PK - 3 PK',9,NULL,100000,900000,NULL,'2012-02-20',NULL,NULL);
INSERT INTO `belidetail` VALUES (214,'004/SV/CA/02/2012',1222,'PIPA AC , 4 PK - 6 PK',48,NULL,125000,6000000,NULL,'2012-02-20',NULL,NULL);
INSERT INTO `belidetail` VALUES (215,'004/SV/CA/02/2012',1260,'KABEL CONTROL ',71,NULL,12000,852000,NULL,'2012-02-20',NULL,NULL);
INSERT INTO `belidetail` VALUES (216,'005/SV/CA/02/2012',1302,'BRACKET OUTDOOR AC CASSETTE',3,NULL,200000,600000,NULL,'2012-02-20',NULL,NULL);
INSERT INTO `belidetail` VALUES (217,'005/SV/CA/02/2012',1305,'BRACKET OUTDOOR AC CASSETTE',5,NULL,130000,650000,NULL,'2012-02-20',NULL,NULL);
INSERT INTO `belidetail` VALUES (218,'005/SV/CA/02/2012',1217,'BRACKET OUTDOOR AC SPLIT',2,NULL,60000,120000,NULL,'2012-02-20',NULL,NULL);
INSERT INTO `belidetail` VALUES (219,'006/SV/CA/02/2012',1293,'JASA INSTALASI+BONGKAR AC LAMA+ BOBOKAN',25,NULL,450000,11250000,NULL,'2012-02-20',NULL,NULL);
INSERT INTO `belidetail` VALUES (220,'006/SV/CA/02/2012',1294,'JASA INSTALASI+BONGKAR AC LAMA+BOBOKAN',76,NULL,500000,38000000,NULL,'2012-02-20',NULL,NULL);
INSERT INTO `belidetail` VALUES (221,'006/SV/CA/02/2012',1295,'JASA INSTALASI+BONGKAR AC LAMA+BOBOKAN',17,NULL,600000,10200000,NULL,'2012-02-20',NULL,NULL);
INSERT INTO `belidetail` VALUES (222,'006/SV/CA/02/2012',1296,'JASA INSTALASI+BONGKAR AC LAMA+BOBOKAN',4,NULL,800000,3200000,NULL,'2012-02-20',NULL,NULL);
INSERT INTO `belidetail` VALUES (223,'006/SV/CA/02/2012',1297,'JASA INSTALASI+BONGKAR AC LAMA+BOBOKAN',9,NULL,900000,8100000,NULL,'2012-02-20',NULL,NULL);
INSERT INTO `belidetail` VALUES (224,'007/SV/CA/02/2012',1298,'PIPA REFRIGERANT AC SPLIT 1 PK',330,NULL,55000,18150000,NULL,'2012-02-20',NULL,NULL);
INSERT INTO `belidetail` VALUES (225,'007/SV/CA/02/2012',1299,'PIPA REFRIGERANT AC SPLIT 1.5 PK - 2 PK',995,NULL,65000,64675000,NULL,'2012-02-20',NULL,NULL);
INSERT INTO `belidetail` VALUES (226,'007/SV/CA/02/2012',1300,'PIPA REFRIGERANT AC SPLIT 2.5 PK',270,NULL,90000,24300000,NULL,'2012-02-20',NULL,NULL);
INSERT INTO `belidetail` VALUES (227,'007/SV/CA/02/2012',1301,'PIPA REFRIGERANT AC CASSETTE 2 PK - 2.5 PK',235,NULL,150000,35250000,NULL,'2012-02-20',NULL,NULL);
INSERT INTO `belidetail` VALUES (228,'007/SV/CA/02/2012',1245,'PIPA DRAIN ',890,NULL,12000,10680000,NULL,'2012-02-20',NULL,NULL);
INSERT INTO `belidetail` VALUES (229,'007/SV/CA/02/2012',1214,'KABEL POWER ',1555,NULL,25000,38875000,NULL,'2012-02-20',NULL,NULL);
INSERT INTO `belidetail` VALUES (230,'007/SV/CA/02/2012',1260,'KABEL CONTROL ',1830,NULL,23000,42090000,NULL,'2012-02-20',NULL,NULL);
INSERT INTO `belidetail` VALUES (231,'007/SV/CA/02/2012',1216,'BRACKET OUTDOOR AC SPLIT',25,NULL,60000,1500000,NULL,'2012-02-20',NULL,NULL);
INSERT INTO `belidetail` VALUES (232,'007/SV/CA/02/2012',1217,'BRACKET OUTDOOR AC SPLIT',93,NULL,75000,6975000,NULL,'2012-02-20',NULL,NULL);
INSERT INTO `belidetail` VALUES (233,'007/SV/CA/02/2012',1257,'BRACKET OUTDOOR AC CASETTE',13,NULL,150000,1950000,NULL,'2012-02-20',NULL,NULL);
INSERT INTO `belidetail` VALUES (234,'008/SV/CA/02/2012',1290,'JASA INSTALASI AC',2,NULL,200000,400000,NULL,'2012-02-20',NULL,NULL);
INSERT INTO `belidetail` VALUES (235,'008/SV/CA/02/2012',1291,'JASA INSTALASI AC',4,NULL,250000,1000000,NULL,'2012-02-20',NULL,NULL);
INSERT INTO `belidetail` VALUES (236,'009/SV/CA/02/2012',1274,'PIPA REFRIGERANT + ISOLASI (1/4\" + 3/8\")',12,NULL,55000,660000,NULL,'2012-02-20',NULL,NULL);
INSERT INTO `belidetail` VALUES (237,'009/SV/CA/02/2012',1275,'PIPA REFRIGERANT + ISOLASI (1/4\" + 1/2\")',74,NULL,65000,4810000,NULL,'2012-02-20',NULL,NULL);
INSERT INTO `belidetail` VALUES (238,'009/SV/CA/02/2012',1245,'PIPA DRAIN ',32,NULL,12000,384000,NULL,'2012-02-20',NULL,NULL);
INSERT INTO `belidetail` VALUES (239,'009/SV/CA/02/2012',1214,'KABEL POWER ',55,NULL,17500,962500,NULL,'2012-02-20',NULL,NULL);
INSERT INTO `belidetail` VALUES (240,'009/SV/CA/02/2012',1292,'BRACKET OUTDOOR  AC SPLIT',6,NULL,75000,450000,NULL,'2012-02-20',NULL,NULL);
INSERT INTO `belidetail` VALUES (241,'010/SV/CA/02/2012',1267,'DUCTING PU + ACCESSORIES KOMPIT',125,NULL,300000,37500000,NULL,'2012-02-20',NULL,NULL);
INSERT INTO `belidetail` VALUES (242,'010/SV/CA/02/2012',1308,'KABEL CONTROL ',105,NULL,50000,5250000,NULL,'2012-02-20',NULL,NULL);
INSERT INTO `belidetail` VALUES (243,'010/SV/CA/02/2012',1269,'BOX DIFFUSER',48,NULL,100000,4800000,NULL,'2012-02-20',NULL,NULL);
INSERT INTO `belidetail` VALUES (244,'010/SV/CA/02/2012',1274,'PIPA REFRIGERANT + ISOLASI (1/4\" + 3/8\")',30,NULL,55000,1650000,NULL,'2012-02-20',NULL,NULL);
INSERT INTO `belidetail` VALUES (245,'010/SV/CA/02/2012',1275,'PIPA REFRIGERANT + ISOLASI (1/4\" + 1/2\")',30,NULL,65000,1950000,NULL,'2012-02-20',NULL,NULL);
INSERT INTO `belidetail` VALUES (246,'010/SV/CA/02/2012',1300,'PIPA REFRIGERANT AC SPLIT 2.5 PK',30,NULL,90000,2700000,NULL,'2012-02-20',NULL,NULL);
INSERT INTO `belidetail` VALUES (247,'010/SV/CA/02/2012',1270,'DIFFUSER 10 x 100cm',48,NULL,150000,7200000,NULL,'2012-02-20',NULL,NULL);
INSERT INTO `belidetail` VALUES (248,'010/SV/CA/02/2012',1306,'PIPA REFRIGERANT AC BIG RAC',40,NULL,140000,5600000,NULL,'2012-02-20',NULL,NULL);
INSERT INTO `belidetail` VALUES (249,'010/SV/CA/02/2012',1308,'KABEL CONTROL ',80,NULL,30000,2400000,NULL,'2012-02-20',NULL,NULL);
INSERT INTO `belidetail` VALUES (250,'010/SV/CA/02/2012',1213,'KABEL CONTROL ',60,NULL,28000,1680000,NULL,'2012-02-20',NULL,NULL);
INSERT INTO `belidetail` VALUES (251,'010/SV/CA/02/2012',1214,'KABEL POWER ',80,NULL,17500,1400000,NULL,'2012-02-20',NULL,NULL);
INSERT INTO `belidetail` VALUES (252,'010/SV/CA/02/2012',1245,'PIPA DRAIN ',100,NULL,12000,1200000,NULL,'2012-02-20',NULL,NULL);
INSERT INTO `belidetail` VALUES (253,'010/SV/CA/02/2012',1324,'BIAYA TRANSPORTASI DAN AKOMODASI',1,NULL,800000,800000,NULL,'2012-02-20',NULL,NULL);
INSERT INTO `belidetail` VALUES (254,'010/SV/CA/02/2012',1321,'BIAYA PEKERJAAN SIPIL',1,NULL,7000000,7000000,NULL,'2012-02-20',NULL,NULL);
INSERT INTO `belidetail` VALUES (255,'010/SV/CA/02/2012',NULL,'ALAT BANTU & ACCESSORIES',1,NULL,2000000,2000000,NULL,'2012-02-20',NULL,NULL);
INSERT INTO `belidetail` VALUES (256,'011/SV/CA/02/2012',1290,'JASA INSTALASI AC',3,NULL,200000,600000,NULL,'2012-02-20',NULL,NULL);
INSERT INTO `belidetail` VALUES (257,'011/SV/CA/02/2012',1272,'JASA INSTALASI AC',3,NULL,200000,600000,NULL,'2012-02-20',NULL,NULL);
INSERT INTO `belidetail` VALUES (258,'011/SV/CA/02/2012',1273,'JASA INSTALASI AC',3,NULL,350000,1050000,NULL,'2012-02-20',NULL,NULL);
INSERT INTO `belidetail` VALUES (259,'011/SV/CA/02/2012',1247,'JASA INSTALASI AC',4,NULL,450000,1800000,NULL,'2012-02-20',NULL,NULL);
INSERT INTO `belidetail` VALUES (260,'001/SV/CA/03/2012',1211,'CEILING  BRACKET',2,NULL,250000,500000,NULL,'2012-03-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (261,'002/SV/CA/03/2012',1352,'JASA INSTALASI+SETTING+TESTING ',2,NULL,200000,400000,NULL,'2012-03-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (262,'003/SV/CA/03/2012',1274,'PIPA REFRIGERANT + ISOLASI (1/4\" + 3/8\")',20,NULL,45000,900000,NULL,'2012-03-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (263,'003/SV/CA/03/2012',1275,'PIPA REFRIGERANT + ISOLASI (1/4\" + 1/2\")',13,NULL,50000,650000,NULL,'2012-03-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (264,'003/SV/CA/03/2012',1214,'KABEL POWER ',161,NULL,10000,1610000,NULL,'2012-03-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (265,'003/SV/CA/03/2012',1218,'PIPA DRAIN',60,NULL,9000,540000,NULL,'2012-03-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (266,'003/SV/CA/03/2012',1216,'BRACKET OUTDOOR AC SPLIT',5,NULL,60000,300000,NULL,'2012-03-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (267,'003/SV/CA/03/2012',1277,'PANEL LISTRIK KOMPLIT',1,NULL,850000,850000,NULL,'2012-03-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (268,'004/SV/CA/03/2012',1290,'JASA INSTALASI AC',5,NULL,150000,750000,NULL,'2012-03-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (269,'004/SV/CA/03/2012',1353,'JASA CONNECTING AC+BOBOKAN+PEMASANGAN',1,NULL,1050000,1050000,NULL,'2012-03-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (270,'004/SV/CA/03/2012',1278,'TESTING + COMMISIONING',1,NULL,400000,400000,NULL,'2012-03-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (271,'005/SV/CA/03/2012',1267,'DUCTING PU + ACCESSORIES KOMPIT',20,NULL,300000,6000000,NULL,'2012-03-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (272,'005/SV/CA/03/2012',1268,'FLEXIBLE + ISOLASI LENGKAP 8\"',6,NULL,50000,300000,NULL,'2012-03-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (273,'005/SV/CA/03/2012',1269,'BOX DIFFUSER',6,NULL,100000,600000,NULL,'2012-03-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (274,'005/SV/CA/03/2012',1270,'DIFFUSER 10 x 100cm',6,NULL,150000,900000,NULL,'2012-03-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (275,'005/SV/CA/03/2012',1271,'PIPA FREON + ISOLASI',21,NULL,65000,1365000,NULL,'2012-03-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (276,'005/SV/CA/03/2012',1260,'KABEL CONTROL ',21,NULL,28000,588000,NULL,'2012-03-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (277,'005/SV/CA/03/2012',1214,'KABEL POWER ',30,NULL,17500,525000,NULL,'2012-03-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (278,'005/SV/CA/03/2012',1245,'PIPA DRAIN ',15,NULL,12000,180000,NULL,'2012-03-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (279,'006/SV/CA/03/2012',1272,'JASA INSTALASI AC',1,NULL,200000,200000,NULL,'2012-03-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (280,'006/SV/CA/03/2012',1273,'JASA INSTALASI AC',1,NULL,300000,300000,NULL,'2012-03-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (281,'007/SV/CA/03/2012',1354,'CEILING HANGING BRACKET',1,NULL,850000,850000,NULL,'2012-03-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (282,'008/SV/CA/03/2012',1213,'KABEL CONTROL ',38,NULL,23000,874000,NULL,'2012-03-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (283,'008/SV/CA/03/2012',1215,'KABEL POWER ',30,NULL,24000,720000,NULL,'2012-03-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (284,'008/SV/CA/03/2012',1245,'PIPA DRAIN ',10,NULL,12000,120000,NULL,'2012-03-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (285,'008/SV/CA/03/2012',1303,'PIPA REFRIGERANT + ISOLASI ',30,NULL,140000,4200000,NULL,'2012-03-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (286,'008/SV/CA/03/2012',1246,'PIPA REFRIGERANT + ISOLASI (5/8\"+3/8\")',8,NULL,150000,1200000,NULL,'2012-03-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (287,'008/SV/CA/03/2012',1302,'BRACKET OUTDOOR AC CASSETTE',1,NULL,150000,150000,NULL,'2012-03-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (288,'008/SV/CA/03/2012',1355,'MCB 3 PHASE 25 A',1,NULL,75000,75000,NULL,'2012-03-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (289,'009/SV/CA/03/2012',1330,'JASA INSTALASI UNIT AC SPLIT CASSETTE 5 PK (BARU)',1,NULL,450000,450000,NULL,'2012-03-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (290,'009/SV/CA/03/2012',1331,'JASA BONGKAR & PASANG AC CASSETTE 3 PK (LAMA)',1,NULL,900000,900000,NULL,'2012-03-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (291,'010/SV/CA/03/2012',1356,'KABEL FEEDER',1040,NULL,30000,31200000,NULL,'2012-03-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (292,'010/SV/CA/03/2012',1357,'KABEL FEEDER ',225,NULL,12000,2700000,NULL,'2012-03-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (293,'010/SV/CA/03/2012',1361,'PIPA REFRIGERANT ',110,NULL,38000,4180000,NULL,'2012-03-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (294,'010/SV/CA/03/2012',1360,'PIPA REFRIGERANT',665,NULL,59000,39235000,NULL,'2012-03-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (295,'010/SV/CA/03/2012',1359,'PIPA REFRIGERANT ',555,NULL,55000,30525000,NULL,'2012-03-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (296,'010/SV/CA/03/2012',1363,'PIPA DRAIN',79,NULL,19000,1501000,NULL,'2012-03-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (297,'010/SV/CA/03/2012',1362,'PIPA DRAIN',129,NULL,17500,2257500,NULL,'2012-03-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (298,'011/SV/CA/03/2012',1284,'TESTING & COMMISSIONING',1,NULL,4010000,4010000,NULL,'2012-03-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (299,'011/SV/CA/03/2012',1358,'TESTING & INSTALASI',1,NULL,32000000,32000000,NULL,'2012-03-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (300,'001/SV/PO/04/2012',1237,'LED TV 40\"',1,NULL,6750000,6750000,NULL,'2012-04-16',NULL,NULL);
INSERT INTO `belidetail` VALUES (301,'001/SV/PO/04/2012',1388,'LCD TV 32\"',1,NULL,2650000,2650000,NULL,'2012-04-16',NULL,NULL);
INSERT INTO `belidetail` VALUES (302,'002/SV/PO/04/2012',1389,'AC SPLIT 1 PK',1,NULL,2125000,2125000,NULL,'2012-04-16',NULL,NULL);
INSERT INTO `belidetail` VALUES (303,'003/SV/PO/04/2012',1390,'LED TV 32\"',1,NULL,2880000,2880000,NULL,'2012-04-16',NULL,NULL);
INSERT INTO `belidetail` VALUES (307,'004/SV/PO/04/2012',1224,'LCD TV 32\" ',158,NULL,2680000,423440000,NULL,'2012-04-16',NULL,NULL);
INSERT INTO `belidetail` VALUES (308,'005/SV/PO/04/2012',1392,'BESI BETON SNI',2500,NULL,44300,110750000,NULL,'2012-04-16',NULL,NULL);
INSERT INTO `belidetail` VALUES (311,'006/SV/PO/04/2012',1392,'BESI BETON SNI',1500,NULL,37550,56325000,NULL,'2012-04-16',NULL,NULL);
INSERT INTO `belidetail` VALUES (312,'007/SV/PO/04/2012',1393,'AC SPLIT 2 PK',1,NULL,4450000,4450000,NULL,'2012-04-16',NULL,NULL);
INSERT INTO `belidetail` VALUES (313,'008/SV/PO/04/2012',1224,'LCD TV 32\" ',56,NULL,2680000,150080000,NULL,'2012-04-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (314,'009/SV/PO/04/2012',1326,'AC SPLIT 1 PK',2,NULL,2350000,4700000,NULL,'2012-04-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (315,'010/SV/PO/04/2012',1224,'LCD TV 32\" ',5,NULL,2680000,13400000,NULL,'2012-04-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (316,'001/SV/CA/02/2012',1279,'AC FLOOR STANDING 5 PK',3,NULL,15500000,46500000,NULL,'2012-02-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (317,'001/SV/CA/02/2012',1243,'AC FLOOR STANDING 3 PK',2,NULL,12000000,24000000,NULL,'2012-02-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (318,'001/SV/CA/01/2011',1224,'LCD TV 32\" ',50,NULL,2495000,124750000,NULL,'2011-12-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (319,'001/SV/CA/01/2011',1225,'LCD TV 42\"',101,NULL,5315000,536815000,NULL,'2011-12-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (320,'001/SV/CA/12/2011',1224,'LCD TV 32\" ',106,NULL,2495000,264470000,NULL,'2011-12-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (321,'001/SV/CA/12/2011',1225,'LCD TV 42\"',221,NULL,5315000,1174615000,NULL,'2011-12-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (322,'002/SV/CA/12/2011',1224,'LCD TV 32\" ',31,NULL,2495000,77345000,NULL,'2011-12-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (323,'001/SV/CA/01/2012',1224,'LCD TV 32\" ',44,NULL,2495000,109780000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (327,'002/SV/PO/01/2012',1291,'JASA INSTALASI AC',228,NULL,150000,34200000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (328,'002/SV/PO/01/2012',1294,'JASA INSTALASI+BONGKAR AC LAMA+BOBOKAN',228,NULL,50000,11400000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (329,'002/SV/PO/01/2012',1324,'BIAYA TRANSPORTASI DAN AKOMODASI',228,NULL,50000,11400000,NULL,'2012-01-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (335,'003/SV/PO/02/2012',1248,'BIAYA INSTAL+BONGKAR AC LAMA+BOBOKAN ',1,NULL,450000,450000,NULL,'2012-02-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (336,'003/SV/PO/02/2012',1249,'BIAYA INSTAL+BONGKAR AC LAMA+BOBOKAN',8,NULL,500000,4000000,NULL,'2012-02-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (337,'003/SV/PO/02/2012',1250,'BIAYA INSTAL+BONGKAR AC LAMA+BOBOKAN',9,NULL,600000,5400000,NULL,'2012-02-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (338,'003/SV/PO/02/2012',1251,'BIAYA INSTAL+BONGKAR AC LAMA+BOBOKAN',1,NULL,800000,800000,NULL,'2012-02-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (339,'003/SV/PO/02/2012',1252,'BIAYA INSTAL+BONGKAR AC LAMA+BOBOKAN',2,NULL,900000,1800000,NULL,'2012-02-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (340,'003/SV/PO/02/2012',1253,'JASA TARIKAN + PIPA REFRIGERANT ',8,NULL,55000,440000,NULL,'2012-02-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (341,'003/SV/PO/02/2012',1254,'JASA TARIKAN + PIPA REFRIGERANT ',130,NULL,65000,8450000,NULL,'2012-02-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (342,'003/SV/PO/02/2012',1255,'JASA TARIKAN + PIPA REFRIGERANT ',160,NULL,90000,14400000,NULL,'2012-02-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (343,'003/SV/PO/02/2012',1256,'JASA TARIKAN + PIPA REFRIGERANT ',40,NULL,150000,6000000,NULL,'2012-02-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (344,'004/SV/PO/02/2012',1218,'PIPA DRAIN',155,NULL,12000,1860000,NULL,'2012-02-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (345,'004/SV/PO/02/2012',1214,'KABEL POWER ',275,NULL,25000,6875000,NULL,'2012-02-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (346,'004/SV/PO/02/2012',1260,'KABEL CONTROL ',338,NULL,27000,9126000,NULL,'2012-02-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (347,'004/SV/PO/02/2012',1216,'BRACKET OUTDOOR AC SPLIT',1,NULL,60000,60000,NULL,'2012-02-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (348,'004/SV/PO/02/2012',1217,'BRACKET OUTDOOR AC SPLIT',8,NULL,75000,600000,NULL,'2012-02-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (349,'004/SV/PO/02/2012',1328,'BRACKET OUTDOOR AC SPLIT',9,NULL,100000,900000,NULL,'2012-02-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (350,'004/SV/PO/02/2012',1257,'BRACKET OUTDOOR AC CASETTE',3,NULL,150000,450000,NULL,'2012-02-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (351,'005/SV/PO/02/2012',1350,'AC SPLIT 3/4 PK ALOWA SERIES',2,NULL,2550000,5100000,NULL,'2012-02-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (352,'006/SV/PO/02/2012',1290,'JASA INSTALASI AC',2,NULL,300000,600000,NULL,'2012-02-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (353,'007/SV/PO/02/2012',1290,'JASA INSTALASI AC',8,NULL,150000,1200000,NULL,'2012-02-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (354,'007/SV/PO/02/2012',1291,'JASA INSTALASI AC',2,NULL,200000,400000,NULL,'2012-02-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (355,'007/SV/PO/02/2012',1330,'JASA INSTALASI UNIT AC SPLIT CASSETTE 5 PK (BARU)',2,NULL,450000,900000,NULL,'2012-02-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (356,'008/SV/PO/02/2012',1260,'KABEL CONTROL ',166,NULL,10000,1660000,NULL,'2012-02-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (357,'008/SV/PO/02/2012',1274,'PIPA REFRIGERANT + ISOLASI (1/4\" + 3/8\")',121,NULL,45000,5445000,NULL,'2012-02-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (358,'008/SV/PO/02/2012',1275,'PIPA REFRIGERANT + ISOLASI (1/4\" + 1/2\")',22,NULL,50000,1100000,NULL,'2012-02-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (359,'008/SV/PO/02/2012',1306,'PIPA REFRIGERANT AC BIG RAC',23,NULL,140000,3220000,NULL,'2012-02-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (360,'008/SV/PO/02/2012',1245,'PIPA DRAIN ',23,NULL,9000,207000,NULL,'2012-02-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (361,'001/SV/PO/03/2012',1228,'AC SPLIT 1 PK',10,NULL,3000000,30000000,NULL,'2012-03-02',NULL,NULL);
INSERT INTO `belidetail` VALUES (362,'001/SV/PO/01/2011',500,'LED TV 46\"',6,NULL,15000000,90000000,NULL,'2011-12-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (363,'001/SV/PO/01/2012',1290,'JASA INSTALASI AC',3,NULL,200000,600000,NULL,'2012-02-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (364,'001/SV/PO/01/2012',1272,'JASA INSTALASI AC',3,NULL,200000,600000,NULL,'2012-02-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (365,'001/SV/PO/01/2012',1385,'JASA INSTALASI AC',3,NULL,350000,1050000,NULL,'2012-02-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (366,'001/SV/PO/01/2012',1386,'JASA INSTALASI AC',4,NULL,450000,1800000,NULL,'2012-02-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (367,'001/SV/PO/02/2012',1267,'DUCTING PU + ACCESSORIES KOMPIT',125,NULL,300000,37500000,NULL,'2012-02-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (368,'001/SV/PO/02/2012',1384,'KABEL FLEXIBEL 8\"',105,NULL,50000,5250000,NULL,'2012-02-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (369,'001/SV/PO/02/2012',1269,'BOX DIFFUSER',48,NULL,100000,4800000,NULL,'2012-02-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (370,'001/SV/PO/02/2012',1270,'DIFFUSER 10 x 100cm',48,NULL,150000,7200000,NULL,'2012-02-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (371,'001/SV/PO/02/2012',1274,'PIPA REFRIGERANT + ISOLASI (1/4\" + 3/8\")',30,NULL,55000,1650000,NULL,'2012-02-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (372,'001/SV/PO/02/2012',1275,'PIPA REFRIGERANT + ISOLASI (1/4\" + 1/2\")',30,NULL,65000,1950000,NULL,'2012-02-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (373,'001/SV/PO/02/2012',1300,'PIPA REFRIGERANT AC SPLIT 2.5 PK',30,NULL,90000,2700000,NULL,'2012-02-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (374,'001/SV/PO/02/2012',1306,'PIPA REFRIGERANT AC BIG RAC',40,NULL,140000,5600000,NULL,'2012-02-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (375,'001/SV/PO/02/2012',1308,'KABEL CONTROL ',80,NULL,30000,2400000,NULL,'2012-02-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (376,'001/SV/PO/02/2012',1213,'KABEL CONTROL ',60,NULL,28000,1680000,NULL,'2012-02-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (377,'001/SV/PO/02/2012',1214,'KABEL POWER ',80,NULL,17500,1400000,NULL,'2012-02-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (378,'001/SV/PO/02/2012',1245,'PIPA DRAIN ',100,NULL,12000,1200000,NULL,'2012-02-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (379,'001/SV/PO/02/2012',1382,'ALAT BANTU & ACCESSORIES',1,NULL,2000000,2000000,NULL,'2012-02-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (380,'001/SV/PO/02/2012',1324,'BIAYA TRANSPORTASI DAN AKOMODASI',1,NULL,800000,800000,NULL,'2012-02-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (381,'002/SV/PO/02/2012',1387,'BIAYA FINISHING',1,NULL,7000000,7000000,NULL,'2012-02-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (382,'007/SV/PO/04/2012',1394,'AC SPLIT 1.5 PK',2,NULL,2950000,5900000,NULL,'2012-04-16',NULL,NULL);
INSERT INTO `belidetail` VALUES (383,'007/SV/PO/04/2012',1395,'AC SPLIT 1 PK',1,NULL,2350000,2350000,NULL,'2012-04-16',NULL,NULL);
INSERT INTO `belidetail` VALUES (384,'001/SV/PO/05/2012',1396,'LED TV 46\" 3D',2,NULL,20300000,40600000,NULL,'2012-05-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (385,'002/SV/PO/05/2012',1396,'LED TV 46\" 3D',6,NULL,20500000,123000000,NULL,'2012-05-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (386,'003/SV/PO/05/2012',1224,'LCD TV 32\" ',1,NULL,2680000,2680000,NULL,'2012-05-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (387,'004/SV/PO/05/2012',1397,'LED TV 60\"',1,NULL,21000000,21000000,NULL,'2012-05-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (388,'005/SV/PO/05/2012',1398,'HARMAFLEX THERMAFLEX',30,NULL,26000,780000,NULL,'2012-05-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (389,'005/SV/PO/05/2012',1399,'HARMAFLEX THERMAFLEX',47,NULL,36000,1692000,NULL,'2012-05-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (390,'006/SV/PO/05/2012',1224,'LCD TV 32\" ',64,NULL,2680000,171520000,NULL,'2012-05-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (391,'007/SV/PO/05/2012',1400,'WATER DISPENSER',1,NULL,1683000,1683000,NULL,'2012-05-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (392,'007/SV/PO/05/2012',1401,'MICROWAVE OVEN',1,NULL,858000,858000,NULL,'2012-05-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (393,'008/SV/PO/05/2012',1402,'MESIN CUCI FRONT LOADING',1,NULL,4590000,4590000,NULL,'2012-05-01',NULL,NULL);
INSERT INTO `belidetail` VALUES (394,'009/SV/PO/05/2012',1237,'LED TV 40\"',100,NULL,5300000,530000000,NULL,'2012-05-10',NULL,NULL);
INSERT INTO `belidetail` VALUES (395,'009/SV/PO/05/2012',1266,'LCD TV 40\"',100,NULL,4300000,430000000,NULL,'2012-05-10',NULL,NULL);
INSERT INTO `belidetail` VALUES (396,'010/SV/PO/05/2012',1238,'LED TV 46\"',5,NULL,9750000,48750000,NULL,'2012-05-10',NULL,NULL);

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
  `cu_alamatfp` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`cu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=98 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `customer` VALUES (2,'SVC-0000001','Coca - Cola Distribution Indonesia, PT. ','Wisma Pondok Indah II, 14-15 Floor. Jl. Sultan Iskanda Muda Kav. V-TA. POndok Pinang, Kebayoran Lama','Jakarta Selatan','','01.070.657.0-091.000','Wisma Pondok Indah II,14th-15th floor, Jl. Sultan Iskandar Muda Kav.V TA, Pondok Pinang Kebayoran Lama , Jakarta Selatan');
INSERT INTO `customer` VALUES (3,'SVC-0000002','Gobel Dharma Nusantara, PT. ','Jl.Dewi Sartika 14, Cawang II','Jakarta Timur','021-8015666','01.300.702.6-007.000','Jl. Dewi Sartika Cawang II , Cawang - Kramat Jati Jakarta Timur');
INSERT INTO `customer` VALUES (4,'SVC-0000003','Kramayudha Tiga Berlian Motor, PT. ','JL. Jend. A. Yani Proyek Pulo Mas','Jakarta 13210',NULL,'01.300.657.2-092.000','Gedung KTB Jl. Jend. A.Yani Pulomas Kayu Putih Pulogadung Jakarta Timur');
INSERT INTO `customer` VALUES (5,'SVC-0000004','Tansri Madjid Energi, PT. ','JL. Iman Bonjol No. 68-70','Jakarta Pusat 10310','021-3155066','02.192.497.2-071.000','Jl. Imam Bonjol No. 68 - 70 Jakarta Pusat 10310');
INSERT INTO `customer` VALUES (6,'SVC-0000005','Ching Luh Indonesia, PT. ','Jl. Raya Pasar Kemis - Rajeg, Sindang Sari - Banten','Tangerang',NULL,'01.760.386.1-418.001','Jl. Raya Pasar Kemis - Rajeg, Sindang Sari - Pasar Kemis, Tangerang - Banten');
INSERT INTO `customer` VALUES (7,'SVC-0000006','Grand Puri Permai, PT. ','JL. Kaimun Jaya I No. 9 Cilandak Barat','Jakarta Selatan','021-75902114',NULL,NULL);
INSERT INTO `customer` VALUES (8,'SVC-0000007','Panasonic Gobel Indonesia, PT. ','Jl. Dewi Sartika Cawang II','Jakarta Timur','021-8015710','01.069.413.1-092.000',' Jl. Dewi Sartika Cawang II, Jakarta Timur');
INSERT INTO `customer` VALUES (9,'SVC-0000008','Agung Podomoro Land, Tbk. PT. ','Jl. S.Parman Kav. 28, Tanjung Duren Selatan, Grogol Petamburan','Jakarta Barat 11470','021-290 34567','02.380.812.4-054.000','Jl. S.Parman Kav. 28, Tanjung Duren Selatan, Grogol Petamburan, Jakarta Barat 11470');
INSERT INTO `customer` VALUES (10,'SVC-0000009','Pembangunan Perumahan (Persero), Tbk, PT. ','Plaza PP, JL. Letjend. TB. Simatupang No. 57 Pasar Rebo','Jakarta Timur',NULL,'01.001.613.7-051.000','Plaza PP, JL. Letjend. TB. Simatupang No. 57 Pasar Rebo Jakarta Timur');
INSERT INTO `customer` VALUES (11,'SVC-0000010','Xcell Visual Wibawa, PT. ','JL. Anggrek Neli Murni VII No. 19-20','Slipi, Jakarta Barat','021-53690456','02.663.247.1-031.000','Jl. Anggrek Neli Murni VI Blok A No. 89 Palmerah, Jakarta Barat, DKI Jakarta Raya');
INSERT INTO `customer` VALUES (12,'SVC-0000011','Energy Buana Persada Indonesia, PT. ','Gedung Rabithah Alawiyah, Jl.TB.Simatuoang No. 7A Rt.010/003, Tanjung Barat, Jagakarsa','Jakarta Barat',NULL,'03.124.161.5-017.000','Gedung Rabithah Alawiyah, Jl. TB. Simatupang No.7A RT.010 RW.003, Tanjung Barat, Jagakarsa Jakarta Barat');
INSERT INTO `customer` VALUES (13,'SVC-0000012','Sari Burger Indonesia, PT. ','Wisma BNI 46 - Kota BNI Lt.33, Jl. Jend. Sudirman Kav.1, Karet Tengsin, Tanah Abang','Jakarta Pusat 10220',NULL,'02.505.040.2-022.000','Wisma BNI 46 - Kota BNI Lt.33, Jl. Jend. Sudirman Kav.1, Karet Tengsin, Tanah Abang Jakarta 10220');
INSERT INTO `customer` VALUES (14,'SVC-0000013','Imperium Happy Puppy, PT. ','Jl. HR. Muhammad No. 73B','Surabaya','031-7343388',NULL,NULL);
INSERT INTO `customer` VALUES (15,'SVC-0000014','Adira Quantum Multifinance, PT. ','Gedung Sentra Mulia, Jl. HR.Rasuna Said Kav.X-6 No.8, Karet Kuningan, Setiabudi','Jakarta Selatan, DKI Jakarta Raya - 12940',NULL,'01.352.189.3-073.000',' Gedung Sentra Mulia, Jl. HR. Rasuan Said Kav. X-6 No. 8, Karet Kuningan, Setiabudi  Jakarta Selatan, DKI Jakarta Raya - 12940');
INSERT INTO `customer` VALUES (16,'SVC-0000015','Dom Pizza Indonesia, PT. ','Wisma 46 - Kota BNI Lt.7, Jl. Jend.Sudirman Kav.1, Karet Tengsin, Tanah Abang','Jakarta Pusat 10220',NULL,'02.505.566.6-022.000','Wisma 46 - Kota BNI Lantai 7, Jl. Jend. Sudirman Kav.1, Karet Tengsin, Tanah Abang Jakarta 10220');
INSERT INTO `customer` VALUES (17,'SVC-0000016','Ibu Arie','Grand Wisata Summer Festival AE 07/2','Bekasi','021-82616101',NULL,NULL);
INSERT INTO `customer` VALUES (18,'SVC-0000017','Pramindo Ikat Nusantara, PT. ','Plaza Kuningan, Annex Building Lt.7, Jl. HR.Rasuna Said Kav.C11-14','Jakarta Selatan','021-5202560','01.071.237.0-093.000','Plaza Kuningan Gedung Annex Lt.7 Suite 702, Jl. HR.Rasuna Said Kav. C11 - 14 Setiabudi Jakarta Selatan 12940');
INSERT INTO `customer` VALUES (19,'SVC-0000018','Aston Tropicana Hotel && Premier PLaza','JL. Cihampelas No. 125 - 129','Bandung','022-2030101',NULL,NULL);
INSERT INTO `customer` VALUES (20,'SVC-0000019','Inov Perdana Teknologi, PT. ','Panin Plaza, JL. Teuku Nyak Arief Blok C No. 6 Unit 03, Permata Hijau Kebayoran Lama','Jakarta Selatan','021-53664668',NULL,NULL);
INSERT INTO `customer` VALUES (21,'SVC-0000020','Wisma Nusantara International, PT. ','JL. MH.THamrin No. 59. Wisma Nusantara Lt.13, Gondangdia, Menteng','Jakarta Pusat','021-3900909','01.002.158.2-059.000','Jl. MH. Thamrin 59, Wisma Nusantara Lt. 13, Gondangdia, Menteng, Jakarta Pusat');
INSERT INTO `customer` VALUES (22,'SVC-0000021','Indomobil Group - Nissan, PT. ','Gedung Wisma Indomobil 1 Lt.19, JL. MT. Haryono Kav. 8','Jakarta Timur','021-85918333',NULL,NULL);
INSERT INTO `customer` VALUES (23,'SVC-0000022','Cahaya Sakti Investindo Sukses, PT. ','JL. Kaum Sari No. 1, Kedung Halang Talang','Bogor','0251-666873',NULL,NULL);
INSERT INTO `customer` VALUES (24,'SVC-0000023','MidPlaza Prima, PT. ','MIdPlaza 2 Lt.25, JL. Jend.Sudirman Kav. 10-11','Jakarta Selatan','021-5737777',NULL,NULL);
INSERT INTO `customer` VALUES (25,'SVC-0000024','Grawita Indonesia Indah, PT. ','Pintu 1 TMII','Jakarta Timur','021-46667000',NULL,NULL);
INSERT INTO `customer` VALUES (26,'SVC-0000025','Ikanindo Teknik, CV. ','Jl. Raya Manyar Indah AA 15/65','Surabaya','031-5966951','01.929.392.7-606.000','Jl. Raya Manyar Indah AA 15 / 65 Surabaya');
INSERT INTO `customer` VALUES (27,'SVC-0000026','Swara Indah Lestari, PT.','Ruki Sentra Latumenten Blok 1 No. 3A, Jl. Prof.Dr.Latumenten Raya No. 50','Jakarta',NULL,NULL,NULL);
INSERT INTO `customer` VALUES (28,'SVC-0000027','Complus Trimitra, PT.','Plaza De Lumina Blok B No. 5, Jl. Dharma Raya, Cengkareng ','Jakarta Barat','021-29030664',NULL,NULL);
INSERT INTO `customer` VALUES (29,'SVC-0000028','Bank Rabobank International Indonesia. PT.','Jl. Abdul Muis No. 28 Lt.2','Jakarta Pusat','021-2312021','01.356.379.6-062.000','Jl. HR. Rasuna Said Kav. X7 Sampoerna Plaza 89, Karet Kuningan-Setiabudi, Jakarta Selatan, DKI Jakarta');
INSERT INTO `customer` VALUES (30,'SVC-0000029','Bank Mega, Tbk. PT.','Menara Bank Mega, Jl. Kapten Tendean Kav.12-14A','Jakarta Selatan','021-79175000','01.108.045.4-091.000','Menara Bank Mega, Jl. Kapten P Tendean Kav.12-14A, Mampang Prapatan Jakarta Selatan DKI Jakarta Raya 12970');
INSERT INTO `customer` VALUES (31,'SVC-0000030','Greenland Rajawali Utama, PT.','Menara Rajawali Lt.21, Jl. Mega Kuningan Lot#5.2 Kawasan Mega Kuningan','Jakarta Selatan','021-5760808','01.069.363.8-059.000','Gedung Menara Rajawali Lt.15, Jl. Mega Kuningan Lot#5.1, Setiabudi Jakarta Selatan, DKI Jakarta');
INSERT INTO `customer` VALUES (32,'SVC-0000031','Prima Sentris Saputra, PT.','Jl. Sukasari II No. 25 - 27','Bogor','0251-8372 648',NULL,NULL);
INSERT INTO `customer` VALUES (33,'SVC-0000032','Bina Guna, CV.','Jl. Pangeran Jayakarta Komplek 141 Blok E No.18, Mangga Dua Selatan - Sawah Besar','Jakarta Pusat 10730','021-6009738','02.343.921.9-026.000','Jl. Pangeran Jayakarta 141 Blok E No. 18, Mangga Dua Selatan - Sawah Besar, Jakarta Pusat 10730');
INSERT INTO `customer` VALUES (34,'SVC-0000033','Graha Multi International, PT. ','JL. Taman Mpu Sindok No. 41, Kebayoran Baru','Jakarta Selatan',NULL,NULL,NULL);
INSERT INTO `customer` VALUES (35,'SVC-0000034','Dian Ikrar Perkasa, PT. ','Mediterania Garden Residence 1 Tower A Lt. 2, JL.Tanjung Duren Raya Kav. 5-9, Grogol Petamburan','Jakarta Barat','021-30047790',NULL,NULL);
INSERT INTO `customer` VALUES (36,'SVC-0000035','Star Reachers Indonesia, PT. ','Menara Thamrin Lt.26, Jl. MH.Thamrin Kav.3','Jakarta','021-39830118','01.877.056.0-073.000','Menara Thamrin Lt.26, Jl. MH.Thamrin Kav.3, Kampung Bali - Tanah Abang Jakarta Pusat - DKI Jakarta');
INSERT INTO `customer` VALUES (37,'SVC-0000036','RSUP Fatmawai Jakarta','Jl.RS.Fatmawati Cilandak','Jakarta Selatan 12430','021-7501524,7660552','00.013.743.0-016.000',' JL. RS. Fatmawati Cilandak Jakarta Selatan ');
INSERT INTO `customer` VALUES (38,'SVC-0000037','Surya Semesta Internusa, Tbk, PT. ','Graha Surya Internusa Lt.11, Jl. HR.Rasuna Said Kav.X-0 Kuningan','Jakarta 12950','021-5277788',NULL,NULL);
INSERT INTO `customer` VALUES (39,'SVC-0000038','Citra Putra Realty, PT. ','The City Tower Lt. 19, Jl.MH.Thmarin No.81','Jakarta Pusat 10350','021-31996276','03.036.037.4-063.000','Menara Rajawali Lt.8, Jl.Mega Kuningan Lot#5.1 Kawasan Mega Kuningan, Kuningan Timur Setiabudi Jakarta Selatan DKI Jakarta Raya - 12950');
INSERT INTO `customer` VALUES (40,'SVC-0000039','Citra Putra Mandiri, PT. ','The City Tower Lt.19, Jl. MH.Thamrin No. 81 Gondang dia Menteng','Jakarta Pusata 10350','021-31996270','01.782.095.2-063.000','Menara Rajawali Lt.8, Jl.Mega Kuningan Lot 5.1, Kuningan Timur Setiabudi Jakarta Selatan');
INSERT INTO `customer` VALUES (41,'SVC-0000040','Grand Hyatt Jakarta','Jl. MH. Thamrin PO.Box 4546/Jkt 10045','Jakarta Pusat 10350','021-3901234',NULL,NULL);
INSERT INTO `customer` VALUES (43,'SVC-0000042','Kianjaya Gemilang, PT. ','Jl.Ruko Ventura III, Blok E No. 6, Lippo Cikarang','Bekasi 17550','021-89117633',NULL,NULL);
INSERT INTO `customer` VALUES (44,'SVC-0000043','The Residence','The Sultan Hotel Complex, JL. Gatot Subroto','Jakarta 12040','021-5707070',NULL,NULL);
INSERT INTO `customer` VALUES (45,'SVC-0000044','Sejahtera Indoco, PT. ','Nusadua Beach Hotel & Spa, Kawasan Wisata Nusadua - BTDC, Nusadua - Badung','Bali','0361-771210',NULL,NULL);
INSERT INTO `customer` VALUES (46,'SVC-0000045','Astra Sedaya Finance, PT. ','Jl. TB.Simatupang No. 90 RT/RW 001/001 Tanjung Barat Jagakarsa','Jakarta Selatan DKI Jakarta Raya 12530','021-78859000','01.317.738.1-091.000','Jl. TB. Simatupang No.90 RT/RW 001/001 .Tanjung Barat Jagakarsa, Jakarta Selatan DKI Jakarta Raya 12530');
INSERT INTO `customer` VALUES (47,'SVC-0000046','Plaza Indonesia Realty Tbk, PT. ','JL. MH.Thamrin Kav. 28 - 30','Jakarta Pusat','021 - 3901234','01.065.302.0-054.000','Jl. MH. Thamrin Kav.28-30, Jakarta Pusat, DKI Jakarta 10350');
INSERT INTO `customer` VALUES (48,'SVC-0000047','Wahana Wirawan, PT. ','Jl. Arteri Kelapa Dua No.30, Kelapa Dua - Kebon Jeruk','Jakarta Barat',NULL,'01.060.215.9-038.000','Jl.Arteri Kelapa Dua No. 30, Kelapa Dua - Kebon Jeruk, Jakarta Barat');
INSERT INTO `customer` VALUES (50,'SVC-0000049','Indopoly Swakarsa Industry Tbk, PT. ','Jl. Jend.Sudirman Kav. 70 - 71, Wisma Indosemen Lt.5, Setiabudi','Jakarta Selatan 12910','021 - 2510088','01.071.005.1-052.000','Jl. Jenderal Sudirman Kav.70-71, Wisma Indosemen Lt.5, Setiabudi Jakarta Selatan 12910');
INSERT INTO `customer` VALUES (51,'SVC-0000050','Seminyak Bali Jaya Kondotel Dan Property, PT. ','Jl. Petitenget No. 7, Kerobokan Kelod - Kuta Utara','Kab. Badung 80361',NULL,'02.788.003.8-906.000','l. Petitenget No. 7, Kerobokan Kelod - Kuta Utara, Kab. Badung 80361');
INSERT INTO `customer` VALUES (52,'SVC-0000051','Indika Energy Tbk, PT. ','Mitra Building 7 th Floor, Jl. Jend. Gatot Subroto Kav. 21','Jakarta Selatan 12930','021-25579888','02.015.553.7-062.000','Mitra Building 11 th Floor Jl. Jend. Gatot Subroto Kav. 21 Jakarta 12930');
INSERT INTO `customer` VALUES (53,'SVC-0000052','Dewan Ketahanan Nasional ( Wantannas )','Jl. Medan Merdeka No. 15','Jakarta Pusat',NULL,' 0 0. 0 1 2. 1 4 2. 6 - 0 2 5. 0 0 0',' Jl. Medan Barat No. 15 Jakarta Pusat');
INSERT INTO `customer` VALUES (54,'SVC-0000053','Adhi Karya (Persero) Tbk, PT. ','Jl. Raya Pasar Minggu Km.18 Pejaten Barat, Pasar Minggu','Jakarta Selatan 12510','021 - 7975312','01.001.610.3-051.000','Jl. Raya Pasar Minggu Km.18 Pejaten Barat, Pasar Minggu Jakarta Selatan 12510');
INSERT INTO `customer` VALUES (55,'SVC-0000054','Bank Rabobank International Indonesia','Jl. HR.Rasuna Said Kav.X7 No. 6 Sampoerna Plaza 89, Karet Kuningan - Setiabudi','Jakarta Selatan, DKI Jakarta','021 - 2312010','0 1. 3 5 6. 3 7 9. 6 - 0 6 2. 0 0 0','Jl. HR.Rasuna Said Kav.X7 No. 6 Sampoerna Plaza 89, Karet Kuningan - Setiabudi, Jakarta Selatan - DKI Jakarta');
INSERT INTO `customer` VALUES (58,'SVC-0000057','Perdana Mitraindo, PT. ','Jl. Pisangan Lama III BV RT.006/011 No. 10','Jakarta Timur',NULL,'02.545.036.2-003.000','Jl. Pisangan Lama III BV RT.006/011 No. 10 Jakarta Timur');
INSERT INTO `customer` VALUES (59,'SVC-0000058','Mutiara Andalas Strategi, PT. ','Jl. Lingkar Selatan Kp. Cigodag Serang, Kramat Watu','Serang Banten','0254 - 377 500','31.240.148.2-401.000','Jl. Lingkar Selatan Km.1 Desa Harja Tani, Cilegon - Serang Banten');
INSERT INTO `customer` VALUES (61,'SVC-0000060','Trend Interiors, PT. ','Gd. Jakarta Design Center Lt.7 SR-06-08 Petamburan - Tanah Abang','Jakarta Pusat','021 - 5304710','02.597.216.7-072.000','Gd. Jakarta Design Center Lt.7 SR-06-08 Petamburan - Tanah Abang Jakarta Pusat');
INSERT INTO `customer` VALUES (62,'SVC-0000061','Marannu City, PT. ','Jl. Sultan Hasanuddin No. 3 - 5 Sawerigadding','Ujung Pandang Makassar',NULL,'01.149.196.6-812.000','Jl. Sultan Hasanuddin No. 3 - 5 Sawerigadding, Ujung Pandang Makassar');
INSERT INTO `customer` VALUES (63,'SVC-0000062','Muramoto Elektronika Indonesia, PT. ','East Jakarta Industrial Park Plot 9J, Cikarang Selatan','Kab. Bekasi, Jawa Barat 17550','021 - 8970380','01.071.068.9-092.000','East Jakarta Industrial Park Plot 9J, Cikarang Selatan - Kab. Bekasi, Jawa Barat 17550');
INSERT INTO `customer` VALUES (64,'SVC-0000063','Citra Absorbsi Sukses Mandiri, PT.','Patra Office Tower Lt.18, Room 1833, JL. Jend. Gatot Subroto Kav.32-34','Jakarta Selatan 12950','021-52900272',NULL,NULL);
INSERT INTO `customer` VALUES (65,'SVC-0000064','Bapak Chandra Wardana','Jl. Kayu Putih 2 No. 42','Jakarta Timur','021-4721869',NULL,NULL);
INSERT INTO `customer` VALUES (66,'SVC-0000065','Panglima Sakti Utama, PT.','Hotel Treva International Lt.12, Jl. Menteng Raya No. 33 ','Jakarta Pusat','021-31900240',NULL,NULL);
INSERT INTO `customer` VALUES (67,'SVC-0000066','Gilang Agung Persada, PT. ','Gedung Artha Graha Lt.25, JL. Jend.Sudirman Kav. 52 - 53','Jakarta Selatan','021 - 5150303',NULL,NULL);
INSERT INTO `customer` VALUES (68,'SVC-0000067','Santiniluwansa Properti Sentosa, PT.','Jl. Taman Kebon Sirih II / 7 Kampung Bali - Tanah Abang','Jakarta Pusat','021 - 3142309','31.273.272.0-072.000','JL. Taman Kebon Sirih II / 7 Kampung Bali - Tanang Abang, Jakarta Pusat');
INSERT INTO `customer` VALUES (69,'SVC-0000068','Music Box Karaoke','Jl. Latumenten 1 No. 6 Grogol','Jakarat Barat',NULL,NULL,NULL);
INSERT INTO `customer` VALUES (70,'SVC-0000069','Laras Trikarsatama, PT.','Jl. Penjarinagn Sari Ps 2A No. 31','Surabaya','031-8711631',NULL,NULL);
INSERT INTO `customer` VALUES (71,'SVC-0000070','Komplek Ruko Balindo No.B3B','Sentra Bisnis Tanjung Duren','Jakarta Barat',NULL,NULL,NULL);
INSERT INTO `customer` VALUES (72,'SVC-0000071','Puterako Inti Buana, PT. ','Rukan Niaga Artha Gading Blok H-10 Kelapa Gading','Jakarta Utara','021-70225916',NULL,NULL);
INSERT INTO `customer` VALUES (73,'SVC-0000072','Nusantara Sejahtera Raya','Jl. KH. Wahid Hasyim No.96 Menteng, PT. ','Jakarta Pusat','021-31901188, 31902277',NULL,NULL);
INSERT INTO `customer` VALUES (74,'SVC-0000073','Reksa Utama. CV.','JL. Cililitan Besar RT 009/009 Kramat Jati','Jakarta Timur 13640','021 - 8095772',NULL,NULL);
INSERT INTO `customer` VALUES (75,'SVC-0000074','Kantor Pusat BASARNAS','JL. Angkasa B15 Kav 2-3 Kemayoran','Jakarta Pusat','021 65867510',NULL,NULL);
INSERT INTO `customer` VALUES (76,'SVC-0000075','Bapak Arman Arifin',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `customer` VALUES (77,'SVC-0000076','BANK BTPN',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `customer` VALUES (78,'SVC-0000077','Bapak Budi',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `customer` VALUES (79,'SVC-0000078','Bapak Sembiring',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `customer` VALUES (80,'SVC-0000079','Hotel Intercontinental Jakarta','Jl. Jend. Sudirman Kav. 10-11, Jakarta Selatan',NULL,NULL,NULL,NULL);
INSERT INTO `customer` VALUES (82,'SVC-0000080','Mitra Sejuk Selaras, PT. ','Komplek Pilar Mas Town House 1 D Jl. Pilar Mas No.1D, Kembangan Selatar','Jakarta Barat','021-5817044','01.956.060.6-086.000','Jl. Raya Sanggrahan No. 64 C RT.002/07 Kembangan Selatan, Kembangan, Jakarta Barat DKI Jakarta Raya 11610');
INSERT INTO `customer` VALUES (83,'SVC-0000081','Sumber Alfaria Trijaya Tbk, PT. ','Jl. MH. Thamrin No. 9 Cikokol','Tangerang 15117','021-557 55966','01.336.238.9-054.000','Jl. MH. Thamrin No. 9 Cikokol, Tangerang 15117');
INSERT INTO `customer` VALUES (84,'SVC-0000082','Mastersystem Infotama, PT. ','Wisma Nugra Santana Lt.6 Jl. Jend.Sudirman Kav. 7-8','Jakarta Pusat 10220','021-57901111','01.692.131.4-073.000','Wisma Nugra Santana Lt.6 Jl. Jend.Sudirman Kav. 7-8 Tanah Abang Jakarta Pusat 10220');
INSERT INTO `customer` VALUES (85,'SVC-0000083','Makmur Jaya Hagane, PT.','Kampung Pulo Kapuk RT.002 RW.005 Cikarang Utara','Bekasi, Jawa Barat',NULL,'31.202.872.3-414.000','Kampung Pulo Kapuk RT.002 RW.005 Cikarang Utara, Bekasi Jawa Barat');
INSERT INTO `customer` VALUES (86,'SVC-0000084','Central Perdana Propertindo, PT. ','Jl. Kopi No.6-8, Roa Malaka, Tambora','Jakarta Barat',NULL,'01.371.292.2-033.000','Jl. Kopi No.6-8, Roa Malaka, Tambora, Jakarta Barat');
INSERT INTO `customer` VALUES (87,'SVC-0000085','Sarijati Adhitama, PT.','JL. Raya Bekasi RT.0019/011 Jatinegara - Cakung','Jakarta Timur 13930',NULL,'01.328.711.5-007.000','JL. Raya Bekasi RT.0019/011 Jatinegara - Cakung Jakarta Timur 13930');
INSERT INTO `customer` VALUES (88,'SVC-0000086','Softnet Indonesia, PT','The Energy Lt.19 SCBD Lot.11A Jl. Jend Sudirman Kav.52-53, Bendungan Hilir Tanah Abang','Jakarta Pusat 12190',NULL,'02.817.015.7-077.000','Jl. Jend Sudirman Kav.52-53, Bendungan Hilir Tanah Abang Jakarta Pusat DKI Jakarta Raya 121090');
INSERT INTO `customer` VALUES (89,'SVC-0000087','Icon Menara Samudera, PT.','Jl KH. Wahid Hasyim No. 70 Menteng','Jakarta Pusat 10340',NULL,'21.025.759.8-074.000','Jl KH. Wahid Hasyim No. 70 Menteng Jakarta Pusat 10340');
INSERT INTO `customer` VALUES (90,'SVC-0000088','Sunindo Gapura Prima, PT.','Solo Paragon Hotel & Residence, Jl.Dr. Sutomo','Solo 57125','0271-7655888',NULL,NULL);
INSERT INTO `customer` VALUES (91,'SVC-0000089','Klinik Mandiri Center Stroke','Jl.RS. Fatmawati Raya No. 81 Cilandak, Pondok Labu','Jakarta Selatan','021-7504327',NULL,NULL);
INSERT INTO `customer` VALUES (92,'SVC-0000090','Thamrin Executive Residence','Jl. Kebon Kacang Raya ','Jakarta Pusat','021-23579796',NULL,NULL);
INSERT INTO `customer` VALUES (93,'SVC-0000091','Ibu Kusumawati Kho','Komplek Puri Media, Jl. Ruby 1 Blok B4/26','Jakarta Barat','08557868800',NULL,NULL);
INSERT INTO `customer` VALUES (94,'SVC-0000092','Enkei Indonesia, PT','Bekasi International Industrial Estate Blok C.11 No. 8 Lippo Cikarang','Bekasi','021-8973317',NULL,NULL);
INSERT INTO `customer` VALUES (95,'SVC-0000093','Mastersytem Infotama, PT.','Wisma Nugra Santana Lt.6 Jl. Jend. Sudirman Kav.7-8','Jakarta Pusat','021-57901111','01.692.131.4-073.000','Wisma Nugra Santana Lt.6 Jl. Jend. Sudirman Kav.7-8 Tanah Abang Jakarta Pusat 10220');
INSERT INTO `customer` VALUES (96,'SVC-0000094','Indonesian Paradise Island, PT.','Jl. Tebet Timur Raya No.10 C','Jakarta Selatan','021-8305633',NULL,NULL);
INSERT INTO `customer` VALUES (97,'SVC-0000095','Tranka Kabel, PT','JL. Raya Bogor Km.29,6 Cimanggis','Depok 16952','021-8718888','01.002.068.3-431.000','JL. Raya Bogor Km.29,6 Cimanggis Depok 16952');

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
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `custpic` VALUES (10,NULL,'Vivid Argarini, Mrs.',NULL,NULL,NULL,7);
INSERT INTO `custpic` VALUES (11,NULL,'Mochamad Amin',NULL,NULL,NULL,2);
INSERT INTO `custpic` VALUES (12,NULL,'Sari',NULL,NULL,'Sari@centralparkjakarta.com',9);
INSERT INTO `custpic` VALUES (13,NULL,'Fadjar',NULL,'0818887007',NULL,69);
INSERT INTO `custpic` VALUES (14,NULL,'Bapak Ridho Hangga Wijaya',NULL,NULL,NULL,4);
INSERT INTO `custpic` VALUES (15,NULL,'Firta',NULL,NULL,NULL,18);
INSERT INTO `custpic` VALUES (16,NULL,'ETTY',NULL,NULL,NULL,50);
INSERT INTO `custpic` VALUES (17,NULL,'Risa Dwi Setiorini',NULL,NULL,'Risa@solo-paragon.com',90);
INSERT INTO `custpic` VALUES (18,NULL,'Fenny',NULL,'0818726014','Fenyar@gmail.com',39);
INSERT INTO `custpic` VALUES (19,NULL,'Didi Setiawan',NULL,'081513601973','didistwn@gmail.com',39);
INSERT INTO `custpic` VALUES (20,NULL,'Ramdhi',NULL,NULL,'Ramdhi@cpm.co.id',39);
INSERT INTO `custpic` VALUES (21,NULL,'Fenny',NULL,'0818726014','Fenyar@gmail.com',40);
INSERT INTO `custpic` VALUES (22,NULL,'Didi Setiawan',NULL,'081513601973','Didistwn@gmail.com',40);
INSERT INTO `custpic` VALUES (23,NULL,'Ramdhi',NULL,NULL,'Ramdhi@cpm.co.id',40);
INSERT INTO `custpic` VALUES (24,NULL,'Wiryawan',NULL,NULL,'Wiryawan@centralparkjakarta.com',9);
INSERT INTO `custpic` VALUES (25,NULL,'Barkah',NULL,NULL,'081398818810',91);
INSERT INTO `custpic` VALUES (26,NULL,'Kusumawati Kho',NULL,'085578688000','Kusumawati.kho@yahoo.com',93);
INSERT INTO `custpic` VALUES (27,NULL,'Ella Aci Wijaya','Kawasan Industri Hyundai Blok C11 No.8 Lippo Cikarang Bekasi','08158715724','Aci@enkei.co.id',94);
INSERT INTO `custpic` VALUES (28,NULL,'Ibu Winarti',NULL,NULL,'winarti@mastersystem.co.id',95);
INSERT INTO `custpic` VALUES (29,NULL,'Resti',NULL,'022-2036900',NULL,19);
INSERT INTO `custpic` VALUES (30,NULL,'Didi',NULL,'08161664665','Denzaman@sat.co.id',83);
INSERT INTO `custpic` VALUES (31,NULL,'Aida Limiyaty Poso','Jl. Tebet Timur Raya No. 10C Jakarta Selatan',NULL,'aida_poso@theparadise-group.com',96);
INSERT INTO `custpic` VALUES (32,NULL,'Ribkah',NULL,NULL,'ribkah@trankakabel.com',97);

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
) ENGINE=MyISAM AUTO_INCREMENT=137 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `do` VALUES (1,NULL,NULL,NULL,'0000000000000000',NULL,NULL,NULL);
INSERT INTO `do` VALUES (28,'2012-01-03',NULL,'JL0000000001','001/SV/DO/01/2012',NULL,NULL,'SVC-0000005');
INSERT INTO `do` VALUES (29,'2012-01-03',NULL,'JL0000000002','002/SV/DO/01/2012',NULL,NULL,'SVC-0000002');
INSERT INTO `do` VALUES (30,'2012-01-03',NULL,'JL0000000003','003/SV/DO/01/2012',NULL,NULL,'SVC-0000002');
INSERT INTO `do` VALUES (31,'2012-01-03',NULL,'JL0000000004','004/SV/DO/01/2012',NULL,NULL,'SVC-0000003');
INSERT INTO `do` VALUES (32,'2012-01-03',NULL,'JL0000000005','005/SV/DO/01/2012',NULL,NULL,'SVC-0000004');
INSERT INTO `do` VALUES (33,'2012-01-03',NULL,'JL0000000006','006/SV/DO/01/2012',NULL,NULL,'SVC-0000003');
INSERT INTO `do` VALUES (34,'2012-01-05',NULL,'JL0000000007','007/SV/DO/01/2012',NULL,NULL,'SVC-0000001');
INSERT INTO `do` VALUES (35,'2012-01-05',NULL,'JL0000000008','008/SV/DO/01/2012',NULL,NULL,'SVC-0000006');
INSERT INTO `do` VALUES (36,'2012-01-09',NULL,'JL0000000009','009/SV/DO/01/2012',NULL,NULL,'SVC-0000002');
INSERT INTO `do` VALUES (37,'2012-01-19',NULL,'JL0000000010','010/SV/DO/01/2012',NULL,NULL,'SVC-0000050');
INSERT INTO `do` VALUES (38,'2012-01-14',NULL,'JL0000000011','011/SV/DO/01/2012',NULL,NULL,'SVC-0000006');
INSERT INTO `do` VALUES (39,'2012-01-14',NULL,'JL0000000012','012/SV/DO/01/2012',NULL,NULL,'SVC-0000070');
INSERT INTO `do` VALUES (40,'2012-01-17',NULL,'JL0000000013','013/SV/DO/01/2012',NULL,NULL,'SVC-0000010');
INSERT INTO `do` VALUES (41,'2012-01-18',NULL,'JL0000000014','014/SV/DO/01/2012',NULL,NULL,'SVC-0000071');
INSERT INTO `do` VALUES (42,'2012-01-18',NULL,'JL0000000015','015/SV/DO/01/2012',NULL,NULL,'SVC-0000013');
INSERT INTO `do` VALUES (43,'2012-01-18',NULL,'JL0000000016','016/SV/DO/01/2012',NULL,NULL,'SVC-0000013');
INSERT INTO `do` VALUES (44,'2012-01-19',NULL,'JL0000000017','017/SV/DO/01/2012',NULL,NULL,'SVC-0000003');
INSERT INTO `do` VALUES (45,'2012-01-19',NULL,'JL0000000018','018/SV/DO/01/2012',NULL,NULL,'SVC-0000003');
INSERT INTO `do` VALUES (46,'2012-01-19',NULL,'JL0000000019','019/SV/DO/01/2012',NULL,NULL,'SVC-0000003');
INSERT INTO `do` VALUES (47,'2012-01-19',NULL,'JL0000000020','020/SV/DO/01/2012',NULL,NULL,'SVC-0000003');
INSERT INTO `do` VALUES (48,'2012-01-19',NULL,'JL0000000021','021/SV/DO/01/2012',NULL,NULL,'SVC-0000003');
INSERT INTO `do` VALUES (49,'2012-01-19',NULL,'JL0000000109','022/SV/DO/01/2012',NULL,NULL,'SVC-0000017');
INSERT INTO `do` VALUES (50,'2012-01-24',NULL,'JL0000000023','023/SV/DO/01/2012',NULL,NULL,'SVC-0000013');
INSERT INTO `do` VALUES (51,'2012-01-24',NULL,'JL0000000024','024/SV/DO/01/2012',NULL,NULL,'SVC-0000013');
INSERT INTO `do` VALUES (52,'2012-01-26',NULL,'JL0000000025','025/SV/DO/01/2012',NULL,NULL,'SVC-0000010');
INSERT INTO `do` VALUES (53,'2012-01-27',NULL,'JL0000000055','026/SV/DO/01/2012',NULL,NULL,'SVC-0000002');
INSERT INTO `do` VALUES (54,'2012-01-27',NULL,'JL0000000056','027/SV/DO/01/2012',NULL,NULL,'SVC-0000002');
INSERT INTO `do` VALUES (55,'2012-01-27',NULL,'JL0000000057','028/SV/DO/01/2012',NULL,NULL,'SVC-0000002');
INSERT INTO `do` VALUES (56,'2012-01-27',NULL,'JL0000000026','029/SV/DO/01/2012',NULL,NULL,'SVC-0000002');
INSERT INTO `do` VALUES (57,'2012-01-31',NULL,'JL0000000027','030/SV/DO/01/2012',NULL,NULL,'SVC-0000003');
INSERT INTO `do` VALUES (58,'2012-01-31',NULL,'JL0000000028','031/SV/DO/01/2012',NULL,NULL,'SVC-0000003');
INSERT INTO `do` VALUES (59,'2012-01-31',NULL,'JL0000000029','032/SV/DO/01/2012',NULL,NULL,'SVC-0000002');
INSERT INTO `do` VALUES (60,'2012-01-31',NULL,'JL0000000030','033/SV/DO/01/2012',NULL,NULL,'SVC-0000003');
INSERT INTO `do` VALUES (61,'2012-02-02',NULL,'JL0000000031','001/SV/DO/02/2012',NULL,NULL,'SVC-0000021');
INSERT INTO `do` VALUES (62,'2012-02-02',NULL,'JL0000000061','002/SV/DO/02/2012',NULL,NULL,'SVC-0000075');
INSERT INTO `do` VALUES (63,'2012-02-02',NULL,'JL0000000033','003/SV/DO/02/2012',NULL,NULL,'SVC-0000003');
INSERT INTO `do` VALUES (64,'2012-02-02',NULL,'JL0000000034','004/SV/DO/02/2012',NULL,NULL,'SVC-0000003');
INSERT INTO `do` VALUES (65,'2012-02-03',NULL,'JL0000000035','005/SV/DO/02/2012',NULL,NULL,'SVC-0000020');
INSERT INTO `do` VALUES (66,'2012-02-06',NULL,'JL0000000036','006/SV/DO/02/2012',NULL,NULL,'SVC-0000019');
INSERT INTO `do` VALUES (67,'2012-02-06',NULL,'JL0000000037','007/SV/DO/02/2012',NULL,NULL,'SVC-0000018');
INSERT INTO `do` VALUES (68,'2012-02-09',NULL,'JL0000000038','008/SV/DO/02/2012',NULL,NULL,'SVC-0000039');
INSERT INTO `do` VALUES (69,'2012-02-10',NULL,'JL0000000039','009/SV/DO/02/2012',NULL,NULL,'SVC-0000072');
INSERT INTO `do` VALUES (70,'2012-02-13',NULL,'JL0000000040','010/SV/DO/02/2012',NULL,NULL,'SVC-0000022');
INSERT INTO `do` VALUES (71,'2012-02-13',NULL,'JL0000000041','011/SV/DO/02/2012',NULL,NULL,'SVC-0000073');
INSERT INTO `do` VALUES (72,'2012-02-14',NULL,'JL0000000054','012/SV/DO/02/2012',NULL,NULL,'SVC-0000074');
INSERT INTO `do` VALUES (73,'2012-02-15',NULL,'JL0000000042','013/SV/DO/02/2012',NULL,NULL,'SVC-0000003');
INSERT INTO `do` VALUES (74,'2012-02-15',NULL,'JL0000000043','014/SV/DO/02/2012',NULL,NULL,'SVC-0000003');
INSERT INTO `do` VALUES (75,'2012-02-15',NULL,'JL0000000044','015/SV/DO/02/2012',NULL,NULL,'SVC-0000003');
INSERT INTO `do` VALUES (76,'2012-02-15',NULL,'JL0000000058','016/SV/DO/02/2012',NULL,NULL,'SVC-0000003');
INSERT INTO `do` VALUES (77,'2012-02-15',NULL,'JL0000000059','017/SV/DO/02/2012',NULL,NULL,'SVC-0000003');
INSERT INTO `do` VALUES (78,'2012-02-10',NULL,'JL0000000060','018/SV/DO/02/2012',NULL,NULL,'SVC-0000013');
INSERT INTO `do` VALUES (79,'2012-02-15',NULL,'JL0000000062','019/SV/DO/02/2012',NULL,NULL,'SVC-0000006');
INSERT INTO `do` VALUES (80,'2012-02-16',NULL,'JL0000000063','020/SV/DO/02/2012',NULL,NULL,'SVC-0000013');
INSERT INTO `do` VALUES (81,'2012-02-16',NULL,'JL0000000064','021/SV/DO/02/2012',NULL,NULL,'SVC-0000013');
INSERT INTO `do` VALUES (82,'2012-02-15',NULL,'JL0000000069','022/SV/DO/02/2012',NULL,NULL,'SVC-0000002');
INSERT INTO `do` VALUES (83,'2012-02-17',NULL,'JL0000000110','023/SV/DO/02/2012',NULL,NULL,'SVC-0000002');
INSERT INTO `do` VALUES (84,'2012-02-17',NULL,'JL0000000093','024/SV/DO/02/2012',NULL,NULL,'SVC-0000023');
INSERT INTO `do` VALUES (85,'2012-02-15',NULL,'JL0000000068','025/SV/DO/02/2012',NULL,NULL,'SVC-0000032');
INSERT INTO `do` VALUES (86,'2012-02-21',NULL,'JL0000000045','026/SV/DO/02/2012',NULL,NULL,'SVC-0000002');
INSERT INTO `do` VALUES (87,'2012-02-22',NULL,'JL0000000046','027/SV/DO/02/2012',NULL,NULL,'SVC-0000002');
INSERT INTO `do` VALUES (88,'2012-02-22',NULL,'JL0000000066','028/SV/DO/02/2012',NULL,NULL,'SVC-0000002');
INSERT INTO `do` VALUES (89,'2012-02-22',NULL,'JL0000000047','029/SV/DO/02/2012',NULL,NULL,'SVC-0000002');
INSERT INTO `do` VALUES (90,'2012-02-23',NULL,'JL0000000048','030/SV/DO/02/2012',NULL,NULL,'SVC-0000013');
INSERT INTO `do` VALUES (91,'2012-02-27',NULL,'JL0000000067','031/SV/DO/02/2012',NULL,NULL,'SVC-0000013');
INSERT INTO `do` VALUES (92,'2012-02-28',NULL,'JL0000000111','032/SV/DO/02/2012',NULL,NULL,'SVC-0000002');
INSERT INTO `do` VALUES (93,'2012-05-10',NULL,'JL0000000070','001/SV/DO/05/2012',NULL,NULL,'SVC-0000006');
INSERT INTO `do` VALUES (94,'2012-05-10',NULL,'JL0000000051','002/SV/DO/05/2012',NULL,14,'SVC-0000003');
INSERT INTO `do` VALUES (95,'2012-05-10',NULL,'JL0000000108','003/SV/DO/05/2012',NULL,16,'SVC-0000049');
INSERT INTO `do` VALUES (96,'2012-05-10',NULL,'JL0000000106','004/SV/DO/05/2012',NULL,14,'SVC-0000003');
INSERT INTO `do` VALUES (97,'2012-05-10',NULL,'JL0000000105','005/SV/DO/05/2012',NULL,14,'SVC-0000003');
INSERT INTO `do` VALUES (98,'2012-05-10',NULL,'JL0000000104','006/SV/DO/05/2012',NULL,14,'SVC-0000003');
INSERT INTO `do` VALUES (99,'2012-05-10',NULL,'JL0000000103','007/SV/DO/05/2012',NULL,14,'SVC-0000003');
INSERT INTO `do` VALUES (100,'2012-05-10',NULL,'JL0000000102','008/SV/DO/05/2012',NULL,14,'SVC-0000003');
INSERT INTO `do` VALUES (101,'2012-05-10',NULL,'JL0000000101','009/SV/DO/05/2012',NULL,14,'SVC-0000003');
INSERT INTO `do` VALUES (102,'2012-05-10',NULL,'JL0000000100','010/SV/DO/05/2012',NULL,14,'SVC-0000003');
INSERT INTO `do` VALUES (103,'2012-05-10',NULL,'JL0000000052','011/SV/DO/05/2012',NULL,14,'SVC-0000003');
INSERT INTO `do` VALUES (104,'2012-05-10',NULL,'JL0000000053','012/SV/DO/05/2012',NULL,14,'SVC-0000003');
INSERT INTO `do` VALUES (105,'2012-05-10',NULL,'JL0000000071','013/SV/DO/05/2012',NULL,14,'SVC-0000003');
INSERT INTO `do` VALUES (106,'2012-05-10',NULL,'JL0000000072','014/SV/DO/05/2012',NULL,14,'SVC-0000003');
INSERT INTO `do` VALUES (107,'2012-05-10',NULL,'JL0000000073','015/SV/DO/05/2012',NULL,14,'SVC-0000003');
INSERT INTO `do` VALUES (108,'2012-05-10',NULL,'JL0000000074','016/SV/DO/05/2012',NULL,14,'SVC-0000022');
INSERT INTO `do` VALUES (109,'2012-05-10',NULL,'JL0000000075','017/SV/DO/05/2012',NULL,14,'SVC-0000002');
INSERT INTO `do` VALUES (110,'2012-05-10',NULL,'JL0000000076','018/SV/DO/05/2012',NULL,14,'SVC-0000002');
INSERT INTO `do` VALUES (111,'2012-05-10',NULL,'JL0000000077','019/SV/DO/05/2012',NULL,14,'SVC-0000002');
INSERT INTO `do` VALUES (112,'2012-05-10',NULL,'JL0000000078','020/SV/DO/05/2012',NULL,14,'SVC-0000002');
INSERT INTO `do` VALUES (113,'2012-05-10',NULL,'JL0000000079','021/SV/DO/05/2012',NULL,14,'SVC-0000047');
INSERT INTO `do` VALUES (114,'2012-05-10',NULL,'JL0000000080','022/SV/DO/05/2012',NULL,14,'SVC-0000010');
INSERT INTO `do` VALUES (115,'2012-05-10',NULL,'JL0000000081','023/SV/DO/05/2012',NULL,14,'SVC-0000064');
INSERT INTO `do` VALUES (116,'2012-05-11',NULL,'JL0000000082','024/SV/DO/05/2012',NULL,NULL,'SVC-0000065');
INSERT INTO `do` VALUES (117,'2012-05-11',NULL,'JL0000000083','025/SV/DO/05/2012',NULL,NULL,'SVC-0000018');
INSERT INTO `do` VALUES (118,'2012-05-11',NULL,'JL0000000084','026/SV/DO/05/2012',NULL,NULL,'SVC-0000046');
INSERT INTO `do` VALUES (119,'2012-05-11',NULL,'JL0000000085','027/SV/DO/05/2012',NULL,NULL,NULL);
INSERT INTO `do` VALUES (120,'2012-05-11',NULL,'JL0000000085','028/SV/DO/05/2012',NULL,NULL,'SVC-0000063');
INSERT INTO `do` VALUES (121,'2012-05-11',NULL,'JL0000000086','029/SV/DO/05/2012',NULL,NULL,'SVC-0000077');
INSERT INTO `do` VALUES (122,'2012-05-11',NULL,'JL0000000087','030/SV/DO/05/2012',NULL,NULL,'SVC-0000078');
INSERT INTO `do` VALUES (123,'2012-05-11',NULL,'JL0000000088','031/SV/DO/05/2012',NULL,NULL,'SVC-0000066');
INSERT INTO `do` VALUES (124,'2012-05-11',NULL,'JL0000000089','032/SV/DO/05/2012',NULL,NULL,'SVC-0000021');
INSERT INTO `do` VALUES (125,'2012-05-11',NULL,'JL0000000085','033/SV/DO/05/2012',NULL,NULL,'SVC-0000063');
INSERT INTO `do` VALUES (126,'2012-05-11',NULL,'JL0000000090','034/SV/DO/05/2012',NULL,NULL,'SVC-0000002');
INSERT INTO `do` VALUES (127,'2012-05-11',NULL,'JL0000000091','035/SV/DO/05/2012',NULL,NULL,'SVC-0000067');
INSERT INTO `do` VALUES (128,'2012-05-11',NULL,'JL0000000092','036/SV/DO/05/2012',NULL,NULL,'SVC-0000079');
INSERT INTO `do` VALUES (129,'2012-05-11',NULL,'JL0000000094','037/SV/DO/05/2012',NULL,NULL,'SVC-0000002');
INSERT INTO `do` VALUES (130,'2012-05-11',NULL,NULL,'038/SV/DO/05/2012',NULL,NULL,NULL);
INSERT INTO `do` VALUES (131,'2012-05-11',NULL,'JL0000000095','039/SV/DO/05/2012',NULL,NULL,'SVC-0000069');
INSERT INTO `do` VALUES (132,'2012-05-11',NULL,'JL0000000096','040/SV/DO/05/2012',NULL,NULL,'SVC-0000080');
INSERT INTO `do` VALUES (133,'2012-05-11',NULL,'JL0000000097','041/SV/DO/05/2012',NULL,NULL,'SVC-0000080');
INSERT INTO `do` VALUES (134,'2012-05-11',NULL,'JL0000000098','042/SV/DO/05/2012',NULL,NULL,'SVC-0000003');
INSERT INTO `do` VALUES (135,'2012-05-11',NULL,'JL0000000099','043/SV/DO/05/2012',NULL,14,'SVC-0000003');
INSERT INTO `do` VALUES (136,'2012-05-11',NULL,'JL0000000107','044/SV/DO/05/2012',NULL,NULL,'SVC-0000018');

#
# Table structure for table dodetail
#

CREATE TABLE `dodetail` (
  `dd_id` int(11) NOT NULL auto_increment,
  `dd_kode` varchar(255) collate latin1_general_ci default NULL,
  `dd_kode_barang` int(11) default NULL,
  `dd_nama_barang` varchar(255) collate latin1_general_ci default NULL,
  `dd_type` varchar(255) collate latin1_general_ci default NULL,
  `dd_qty` int(11) default NULL,
  `dd_satuan` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`dd_id`)
) ENGINE=MyISAM AUTO_INCREMENT=426 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `dodetail` VALUES (75,'001/SV/DO/01/2012',9,'Jasa Instalasi Unit AC Floor Standing 3 PK',NULL,1,'Unit');
INSERT INTO `dodetail` VALUES (76,'001/SV/DO/01/2012',1246,'PIPA REFRIGERANT + ISOLASI (5/8\"+3/8\")','AC CASSETTE 2.5 PK',4,NULL);
INSERT INTO `dodetail` VALUES (77,'001/SV/DO/01/2012',1245,'PIPA DRAIN ','PVC + ARMAFLEX',7,'Meter');
INSERT INTO `dodetail` VALUES (78,'001/SV/DO/01/2012',1215,'KABEL POWER ','NYM 4 x 4mm',10,'Meter');
INSERT INTO `dodetail` VALUES (79,'001/SV/DO/01/2012',1244,'BRACKET OUTDOOR AC FLOOR STANDING','3 PK',1,'Unit');
INSERT INTO `dodetail` VALUES (80,'001/SV/DO/01/2012',1243,'AC FLOOR STANDING 3 PK','CS/CU-C28FFP8',1,'Unit');
INSERT INTO `dodetail` VALUES (81,'002/SV/DO/01/2012',1257,'BRACKET OUTDOOR AC CASETTE','2 - 2.5 PK',13,NULL);
INSERT INTO `dodetail` VALUES (82,'002/SV/DO/01/2012',1328,'BRACKET OUTDOOR AC SPLIT','2.5 PK',17,NULL);
INSERT INTO `dodetail` VALUES (83,'002/SV/DO/01/2012',1217,'BRACKET OUTDOOR AC SPLIT','1.5 PK - 2.5 PK',76,'unit');
INSERT INTO `dodetail` VALUES (84,'002/SV/DO/01/2012',1216,'BRACKET OUTDOOR AC SPLIT','1/2 PK - 1 PK',25,'unit');
INSERT INTO `dodetail` VALUES (85,'002/SV/DO/01/2012',1260,'KABEL CONTROL ','NYM 3 x 2.5mm',1830,NULL);
INSERT INTO `dodetail` VALUES (86,'002/SV/DO/01/2012',1214,'KABEL POWER ','NYM 3 x 2.5mm',1555,'unit');
INSERT INTO `dodetail` VALUES (87,'002/SV/DO/01/2012',1218,'PIPA DRAIN','PVC 3/4\"',890,'unit');
INSERT INTO `dodetail` VALUES (88,'002/SV/DO/01/2012',1256,'JASA TARIKAN + PIPA REFRIGERANT ','AC CASETTE 2 - 2.5 PK',235,NULL);
INSERT INTO `dodetail` VALUES (89,'002/SV/DO/01/2012',1255,'JASA TARIKAN + PIPA REFRIGERANT ','AC SPLIT 2.5 PK',270,NULL);
INSERT INTO `dodetail` VALUES (90,'002/SV/DO/01/2012',1254,'JASA TARIKAN + PIPA REFRIGERANT ','AC SPLIT 1.5 - 2 PK ',995,NULL);
INSERT INTO `dodetail` VALUES (91,'002/SV/DO/01/2012',1253,'JASA TARIKAN + PIPA REFRIGERANT ','AC SPLIT 1 PK',330,NULL);
INSERT INTO `dodetail` VALUES (92,'002/SV/DO/01/2012',1252,'BIAYA INSTAL+BONGKAR AC LAMA+BOBOKAN','AC CASETTE 2.5 PK',9,NULL);
INSERT INTO `dodetail` VALUES (93,'002/SV/DO/01/2012',1251,'BIAYA INSTAL+BONGKAR AC LAMA+BOBOKAN','AC CASETTE 2 PK',4,NULL);
INSERT INTO `dodetail` VALUES (94,'002/SV/DO/01/2012',1250,'BIAYA INSTAL+BONGKAR AC LAMA+BOBOKAN','AC SPLIT 2.5 PK',17,NULL);
INSERT INTO `dodetail` VALUES (95,'002/SV/DO/01/2012',1249,'BIAYA INSTAL+BONGKAR AC LAMA+BOBOKAN','AC SPLIT 1.5 - 2 PK',76,NULL);
INSERT INTO `dodetail` VALUES (96,'002/SV/DO/01/2012',1248,'BIAYA INSTAL+BONGKAR AC LAMA+BOBOKAN ','AC SPLIT 1 PK',25,NULL);
INSERT INTO `dodetail` VALUES (97,'003/SV/DO/01/2012',1257,'BRACKET OUTDOOR AC CASETTE','2 - 2.5 PK',3,NULL);
INSERT INTO `dodetail` VALUES (98,'003/SV/DO/01/2012',1328,'BRACKET OUTDOOR AC SPLIT','2.5 PK',9,NULL);
INSERT INTO `dodetail` VALUES (99,'003/SV/DO/01/2012',1217,'BRACKET OUTDOOR AC SPLIT','1.5 PK - 2.5 PK',8,'unit');
INSERT INTO `dodetail` VALUES (100,'003/SV/DO/01/2012',1216,'BRACKET OUTDOOR AC SPLIT','1/2 PK - 1 PK',1,'unit');
INSERT INTO `dodetail` VALUES (101,'003/SV/DO/01/2012',1260,'KABEL CONTROL ','NYM 3 x 2.5mm',338,NULL);
INSERT INTO `dodetail` VALUES (102,'003/SV/DO/01/2012',1214,'KABEL POWER ','NYM 3 x 2.5mm',275,'unit');
INSERT INTO `dodetail` VALUES (103,'003/SV/DO/01/2012',1218,'PIPA DRAIN','PVC 3/4\"',155,'unit');
INSERT INTO `dodetail` VALUES (104,'003/SV/DO/01/2012',1256,'JASA TARIKAN + PIPA REFRIGERANT ','AC CASETTE 2 - 2.5 PK',40,NULL);
INSERT INTO `dodetail` VALUES (105,'003/SV/DO/01/2012',1255,'JASA TARIKAN + PIPA REFRIGERANT ','AC SPLIT 2.5 PK',160,NULL);
INSERT INTO `dodetail` VALUES (106,'003/SV/DO/01/2012',1254,'JASA TARIKAN + PIPA REFRIGERANT ','AC SPLIT 1.5 - 2 PK ',130,NULL);
INSERT INTO `dodetail` VALUES (107,'003/SV/DO/01/2012',1253,'JASA TARIKAN + PIPA REFRIGERANT ','AC SPLIT 1 PK',8,NULL);
INSERT INTO `dodetail` VALUES (108,'003/SV/DO/01/2012',1252,'BIAYA INSTAL+BONGKAR AC LAMA+BOBOKAN','AC CASETTE 2.5 PK',2,NULL);
INSERT INTO `dodetail` VALUES (109,'003/SV/DO/01/2012',1251,'BIAYA INSTAL+BONGKAR AC LAMA+BOBOKAN','AC CASETTE 2 PK',1,NULL);
INSERT INTO `dodetail` VALUES (110,'003/SV/DO/01/2012',1250,'BIAYA INSTAL+BONGKAR AC LAMA+BOBOKAN','AC SPLIT 2.5 PK',9,NULL);
INSERT INTO `dodetail` VALUES (111,'003/SV/DO/01/2012',1249,'BIAYA INSTAL+BONGKAR AC LAMA+BOBOKAN','AC SPLIT 1.5 - 2 PK',8,NULL);
INSERT INTO `dodetail` VALUES (112,'003/SV/DO/01/2012',1248,'BIAYA INSTAL+BONGKAR AC LAMA+BOBOKAN ','AC SPLIT 1 PK',1,NULL);
INSERT INTO `dodetail` VALUES (113,'004/SV/DO/01/2012',1160,'LCD TV 42\" ','TH-L42U30G',69,'unit');
INSERT INTO `dodetail` VALUES (114,'004/SV/DO/01/2012',1224,'LCD TV 32\" ','TH-L32C4G',19,NULL);
INSERT INTO `dodetail` VALUES (115,'005/SV/DO/01/2012',1324,'BIAYA TRANSPORTASI DAN AKOMODASI','_',1,NULL);
INSERT INTO `dodetail` VALUES (116,'005/SV/DO/01/2012',1323,'BIAYA INSTALASI PENANGKAL PETIR','_',1,NULL);
INSERT INTO `dodetail` VALUES (117,'005/SV/DO/01/2012',1322,'BIAYA TESTING DAN COMMISSIONING','_',1,NULL);
INSERT INTO `dodetail` VALUES (118,'005/SV/DO/01/2012',1321,'BIAYA PEKERJAAN SIPIL','_',1,NULL);
INSERT INTO `dodetail` VALUES (119,'005/SV/DO/01/2012',1320,'BIAYA INSTALASI UNTUK CCTV','_',2,NULL);
INSERT INTO `dodetail` VALUES (120,'005/SV/DO/01/2012',1319,'BIAYA TIANG ','TOWER 6 METER',1,NULL);
INSERT INTO `dodetail` VALUES (121,'005/SV/DO/01/2012',1318,'BIAYA CABLE','_',400,NULL);
INSERT INTO `dodetail` VALUES (122,'005/SV/DO/01/2012',1317,'PENANGKAL PETIR DAN ARESTER','_',1,NULL);
INSERT INTO `dodetail` VALUES (123,'005/SV/DO/01/2012',1316,'UPS 1000 VA ICA FOR SERVER','_',1,NULL);
INSERT INTO `dodetail` VALUES (124,'005/SV/DO/01/2012',1315,'LCD MONITOR 19\"','DELL',1,NULL);
INSERT INTO `dodetail` VALUES (125,'005/SV/DO/01/2012',1314,'COMPUTER SERVER','DELL',1,NULL);
INSERT INTO `dodetail` VALUES (126,'005/SV/DO/01/2012',1329,'JUNCTION BOX WEATHERPROOF UNTUK SWITCH 500x4000x250','IP55',1,NULL);
INSERT INTO `dodetail` VALUES (127,'005/SV/DO/01/2012',1313,'SWITCH POE 8 PORT','AT FS708',1,NULL);
INSERT INTO `dodetail` VALUES (128,'005/SV/DO/01/2012',1312,'SOFTWARE-XPROTECT ESSENTIAL BASE+CAMERA LICENCE','_',1,NULL);
INSERT INTO `dodetail` VALUES (129,'005/SV/DO/01/2012',1311,'INDOOR CCTV DOME CAMERA','AXIS M3204',1,NULL);
INSERT INTO `dodetail` VALUES (130,'005/SV/DO/01/2012',1310,'OUTDOOR LONG RANGE CCTV-1.6 KM','AXIS Q6035 - E',1,NULL);
INSERT INTO `dodetail` VALUES (131,'006/SV/DO/01/2012',1160,'LCD TV 42\" ','TH-L42U30G',6,'unit');
INSERT INTO `dodetail` VALUES (132,'006/SV/DO/01/2012',1224,'LCD TV 32\" ','TH-L32C4G',6,NULL);
INSERT INTO `dodetail` VALUES (133,'007/SV/DO/01/2012',1204,'WALL BRACKET','FOR 22\" UP TO 32\"',1,'unit');
INSERT INTO `dodetail` VALUES (134,'007/SV/DO/01/2012',1224,'LCD TV 32\" ','TH-L32C4G',1,NULL);
INSERT INTO `dodetail` VALUES (135,'008/SV/DO/01/2012',1327,'REMOTE AC','SPLIT INVERTER PANASONIC',2,NULL);
INSERT INTO `dodetail` VALUES (136,'009/SV/DO/01/2012',1262,'JASA BONGKAR UNIT','AC SPLIT',5,NULL);
INSERT INTO `dodetail` VALUES (137,'009/SV/DO/01/2012',1275,'PIPA REFRIGERANT + ISOLASI (1/4\" + 1/2\")','AC SPLIT ( 2 PK )',30,NULL);
INSERT INTO `dodetail` VALUES (138,'009/SV/DO/01/2012',1245,'PIPA DRAIN ','PVC + ARMAFLEX',18,'Meter');
INSERT INTO `dodetail` VALUES (139,'009/SV/DO/01/2012',1260,'KABEL CONTROL ','NYM 3 x 2.5mm',30,NULL);
INSERT INTO `dodetail` VALUES (140,'009/SV/DO/01/2012',1259,'INSTALASI BRACKET','AC SPLIT',6,NULL);
INSERT INTO `dodetail` VALUES (141,'009/SV/DO/01/2012',1291,'JASA INSTALASI AC','SPLIT 1.5 PK - 2 PK',6,NULL);
INSERT INTO `dodetail` VALUES (142,'010/SV/DO/01/2012',1204,'WALL BRACKET','FOR 22\" UP TO 32\"',121,'unit');
INSERT INTO `dodetail` VALUES (143,'011/SV/DO/01/2012',1228,'AC SPLIT 1 PK','CS/CU-S10MKP',1,NULL);
INSERT INTO `dodetail` VALUES (144,'012/SV/DO/01/2012',1231,'AC SPLIT 1 PK','CS/CU-PC9MKJ',1,NULL);
INSERT INTO `dodetail` VALUES (145,'013/SV/DO/01/2012',1230,'LCD TV 32\" ','32LK335',7,NULL);
INSERT INTO `dodetail` VALUES (146,'014/SV/DO/01/2012',1224,'LCD TV 32\" ','TH-L32C4G',2,NULL);
INSERT INTO `dodetail` VALUES (147,'015/SV/DO/01/2012',1205,'WALL BRACKET','FOR 42\" UP TO 50\"',11,'unit');
INSERT INTO `dodetail` VALUES (148,'016/SV/DO/01/2012',1205,'WALL BRACKET','FOR 42\" UP TO 50\"',5,'unit');
INSERT INTO `dodetail` VALUES (149,'017/SV/DO/01/2012',1160,'LCD TV 42\" ','TH-L42U30G',48,'unit');
INSERT INTO `dodetail` VALUES (150,'017/SV/DO/01/2012',1224,'LCD TV 32\" ','TH-L32C4G',56,NULL);
INSERT INTO `dodetail` VALUES (151,'018/SV/DO/01/2012',1225,'LCD TV 42\"','TH-L42U30G',173,NULL);
INSERT INTO `dodetail` VALUES (152,'018/SV/DO/01/2012',1224,'LCD TV 32\" ','TH-L32C4G',50,NULL);
INSERT INTO `dodetail` VALUES (153,'019/SV/DO/01/2012',1224,'LCD TV 32\" ','TH-L32C4G',29,NULL);
INSERT INTO `dodetail` VALUES (154,'020/SV/DO/01/2012',1224,'LCD TV 32\" ','TH-L32C4G',2,NULL);
INSERT INTO `dodetail` VALUES (155,'021/SV/DO/01/2012',1160,'LCD TV 42\" ','TH-L42U30G',16,'unit');
INSERT INTO `dodetail` VALUES (156,'021/SV/DO/01/2012',1224,'LCD TV 32\" ','TH-L32C4G',14,NULL);
INSERT INTO `dodetail` VALUES (157,'022/SV/DO/01/2012',500,'LED TV 46\"','LC-46LE830M',6,'unit');
INSERT INTO `dodetail` VALUES (158,'023/SV/DO/01/2012',1205,'WALL BRACKET','FOR 42\" UP TO 50\"',41,'unit');
INSERT INTO `dodetail` VALUES (159,'024/SV/DO/01/2012',1205,'WALL BRACKET','FOR 42\" UP TO 50\"',9,'unit');
INSERT INTO `dodetail` VALUES (160,'025/SV/DO/01/2012',1230,'LCD TV 32\" ','32LK335',5,NULL);
INSERT INTO `dodetail` VALUES (161,'026/SV/DO/01/2012',1324,'BIAYA TRANSPORTASI DAN AKOMODASI','_',183,NULL);
INSERT INTO `dodetail` VALUES (162,'026/SV/DO/01/2012',1294,'JASA INSTALASI+BONGKAR AC LAMA+BOBOKAN','AC SPLIT 1.5 PK - 2 PK',183,NULL);
INSERT INTO `dodetail` VALUES (163,'026/SV/DO/01/2012',1291,'JASA INSTALASI AC','SPLIT 1.5 PK - 2 PK',183,NULL);
INSERT INTO `dodetail` VALUES (164,'026/SV/DO/01/2012',1378,'KABEL POWER','NYM 3 X 4mm',183,'Meter');
INSERT INTO `dodetail` VALUES (165,'026/SV/DO/01/2012',1308,'KABEL CONTROL ',' 4 x 4mm',183,NULL);
INSERT INTO `dodetail` VALUES (166,'026/SV/DO/01/2012',1275,'PIPA REFRIGERANT + ISOLASI (1/4\" + 1/2\")','AC SPLIT ( 2 PK )',183,NULL);
INSERT INTO `dodetail` VALUES (167,'027/SV/DO/01/2012',1324,'BIAYA TRANSPORTASI DAN AKOMODASI','_',38,NULL);
INSERT INTO `dodetail` VALUES (168,'027/SV/DO/01/2012',1294,'JASA INSTALASI+BONGKAR AC LAMA+BOBOKAN','AC SPLIT 1.5 PK - 2 PK',38,NULL);
INSERT INTO `dodetail` VALUES (169,'027/SV/DO/01/2012',1291,'JASA INSTALASI AC','SPLIT 1.5 PK - 2 PK',38,NULL);
INSERT INTO `dodetail` VALUES (170,'027/SV/DO/01/2012',1378,'KABEL POWER','NYM 3 X 4mm',38,'Meter');
INSERT INTO `dodetail` VALUES (171,'027/SV/DO/01/2012',1308,'KABEL CONTROL ',' 4 x 4mm',38,NULL);
INSERT INTO `dodetail` VALUES (172,'027/SV/DO/01/2012',1275,'PIPA REFRIGERANT + ISOLASI (1/4\" + 1/2\")','AC SPLIT ( 2 PK )',38,NULL);
INSERT INTO `dodetail` VALUES (173,'028/SV/DO/01/2012',1324,'BIAYA TRANSPORTASI DAN AKOMODASI','_',7,NULL);
INSERT INTO `dodetail` VALUES (174,'028/SV/DO/01/2012',1294,'JASA INSTALASI+BONGKAR AC LAMA+BOBOKAN','AC SPLIT 1.5 PK - 2 PK',7,NULL);
INSERT INTO `dodetail` VALUES (175,'028/SV/DO/01/2012',1291,'JASA INSTALASI AC','SPLIT 1.5 PK - 2 PK',7,NULL);
INSERT INTO `dodetail` VALUES (176,'028/SV/DO/01/2012',1378,'KABEL POWER','NYM 3 X 4mm',7,'Meter');
INSERT INTO `dodetail` VALUES (177,'028/SV/DO/01/2012',1308,'KABEL CONTROL ',' 4 x 4mm',7,NULL);
INSERT INTO `dodetail` VALUES (178,'028/SV/DO/01/2012',1275,'PIPA REFRIGERANT + ISOLASI (1/4\" + 1/2\")','AC SPLIT ( 2 PK )',7,NULL);
INSERT INTO `dodetail` VALUES (179,'029/SV/DO/01/2012',1348,'CYBERKEY','_',5,NULL);
INSERT INTO `dodetail` VALUES (180,'030/SV/DO/01/2012',1224,'LCD TV 32\" ','TH-L32C4G',40,NULL);
INSERT INTO `dodetail` VALUES (181,'031/SV/DO/01/2012',1224,'LCD TV 32\" ','TH-L32C4G',4,NULL);
INSERT INTO `dodetail` VALUES (182,'032/SV/DO/01/2012',1160,'LCD TV 42\" ','TH-L42U30G',115,'unit');
INSERT INTO `dodetail` VALUES (183,'032/SV/DO/01/2012',1224,'LCD TV 32\" ','TH-L32C4G',31,NULL);
INSERT INTO `dodetail` VALUES (184,'033/SV/DO/01/2012',1224,'LCD TV 32\" ','TH-L32C4G',64,NULL);
INSERT INTO `dodetail` VALUES (185,'001/SV/DO/02/2012',1349,'TV SPLITTER + CABLING + CONECTORS','_',1,NULL);
INSERT INTO `dodetail` VALUES (186,'001/SV/DO/02/2012',1211,'CEILING  BRACKET','FOR 42\" UP TO 50\"',1,'unit');
INSERT INTO `dodetail` VALUES (187,'001/SV/DO/02/2012',1160,'LCD TV 42\" ','TH-L42U30G',2,'unit');
INSERT INTO `dodetail` VALUES (188,'002/SV/DO/02/2012',1380,'KACA MATA 3D','PANASONIC',2,NULL);
INSERT INTO `dodetail` VALUES (189,'003/SV/DO/02/2012',1225,'LCD TV 42\"','TH-L42U30G',21,NULL);
INSERT INTO `dodetail` VALUES (190,'003/SV/DO/02/2012',1224,'LCD TV 32\" ','TH-L32C4G',13,NULL);
INSERT INTO `dodetail` VALUES (191,'004/SV/DO/02/2012',1225,'LCD TV 42\"','TH-L42U30G',105,NULL);
INSERT INTO `dodetail` VALUES (192,'004/SV/DO/02/2012',1224,'LCD TV 32\" ','TH-L32C4G',20,NULL);
INSERT INTO `dodetail` VALUES (193,'005/SV/DO/02/2012',1290,'JASA INSTALASI AC','SPLIT 3/4 PK - 1 PK',1,NULL);
INSERT INTO `dodetail` VALUES (194,'005/SV/DO/02/2012',1292,'BRACKET OUTDOOR  AC SPLIT','3/4 PK - 2 PK',1,NULL);
INSERT INTO `dodetail` VALUES (195,'005/SV/DO/02/2012',1309,'MCB 1 PHASE 16 A','AC SPLIT 3/4 PK',1,NULL);
INSERT INTO `dodetail` VALUES (196,'005/SV/DO/02/2012',1215,'KABEL POWER ','NYM 4 x 4mm',10,'Meter');
INSERT INTO `dodetail` VALUES (197,'005/SV/DO/02/2012',1213,'KABEL CONTROL ',' 4 x 2.5mm',10,'unit');
INSERT INTO `dodetail` VALUES (198,'005/SV/DO/02/2012',1218,'PIPA DRAIN','PVC 3/4\"',10,'unit');
INSERT INTO `dodetail` VALUES (199,'005/SV/DO/02/2012',1274,'PIPA REFRIGERANT + ISOLASI (1/4\" + 3/8\")','AC SPLIT ( 3/4 PK - 1 PK )',10,NULL);
INSERT INTO `dodetail` VALUES (200,'005/SV/DO/02/2012',1263,'AC SPLIT 3/4 PK','CS/CU-PC7NKJ',1,NULL);
INSERT INTO `dodetail` VALUES (201,'006/SV/DO/02/2012',57,'LED TV 55\"','55LV3730',1,'unit');
INSERT INTO `dodetail` VALUES (202,'007/SV/DO/02/2012',1204,'WALL BRACKET','FOR 22\" UP TO 32\"',7,'unit');
INSERT INTO `dodetail` VALUES (203,'008/SV/DO/02/2012',1351,'INSTALLATION + SETTING','LCD TV 32\" UP TO 42\"',3,NULL);
INSERT INTO `dodetail` VALUES (204,'008/SV/DO/02/2012',1205,'WALL BRACKET','FOR 42\" UP TO 50\"',3,'unit');
INSERT INTO `dodetail` VALUES (205,'008/SV/DO/02/2012',1234,'LCD TV 42\" ','42LK455C',3,NULL);
INSERT INTO `dodetail` VALUES (206,'009/SV/DO/02/2012',1238,'LED TV 46\"','LC-46LE530M',3,NULL);
INSERT INTO `dodetail` VALUES (207,'010/SV/DO/02/2012',1234,'LCD TV 42\" ','42LK455C',2,NULL);
INSERT INTO `dodetail` VALUES (208,'011/SV/DO/02/2012',1235,'LCD TV 22\"','22LK311',34,NULL);
INSERT INTO `dodetail` VALUES (209,'011/SV/DO/02/2012',1224,'LCD TV 32\" ','TH-L32C4G',6,NULL);
INSERT INTO `dodetail` VALUES (210,'012/SV/DO/02/2012',1357,'KABEL FEEDER ','NYY 3 x 2,5 mm',71,NULL);
INSERT INTO `dodetail` VALUES (211,'012/SV/DO/02/2012',1222,'PIPA AC , 4 PK - 6 PK','UKURAN  3/4 x 3/8',48,'unit');
INSERT INTO `dodetail` VALUES (212,'012/SV/DO/02/2012',1221,'PIPA AC , 2.5 PK - 3 PK','UKURAN  3/8 x 5/8',9,'unit');
INSERT INTO `dodetail` VALUES (213,'012/SV/DO/02/2012',1244,'BRACKET OUTDOOR AC FLOOR STANDING','3 PK',1,'Unit');
INSERT INTO `dodetail` VALUES (214,'012/SV/DO/02/2012',1282,'BRACKET OUTDOOR AC FLOOR STANDING','5 PK',1,NULL);
INSERT INTO `dodetail` VALUES (215,'012/SV/DO/02/2012',1281,'JASA INSTALASI AC','FLOOR STANDING 6 PK',1,NULL);
INSERT INTO `dodetail` VALUES (216,'012/SV/DO/02/2012',1280,'JASA INSTALASI AC','FLOOR STANDING 5 PK',1,NULL);
INSERT INTO `dodetail` VALUES (217,'012/SV/DO/02/2012',1243,'AC FLOOR STANDING 3 PK','CS/CU-C28FFP8',2,'Unit');
INSERT INTO `dodetail` VALUES (218,'012/SV/DO/02/2012',1279,'AC FLOOR STANDING 5 PK','CS/CU-C45FFP8',3,NULL);
INSERT INTO `dodetail` VALUES (219,'013/SV/DO/02/2012',1224,'LCD TV 32\" ','TH-L32C4G',14,NULL);
INSERT INTO `dodetail` VALUES (220,'014/SV/DO/02/2012',1224,'LCD TV 32\" ','TH-L32C4G',1,NULL);
INSERT INTO `dodetail` VALUES (221,'015/SV/DO/02/2012',1225,'LCD TV 42\"','TH-L42U30G',27,NULL);
INSERT INTO `dodetail` VALUES (222,'015/SV/DO/02/2012',1224,'LCD TV 32\" ','TH-L32C4G',49,NULL);
INSERT INTO `dodetail` VALUES (223,'016/SV/DO/02/2012',1225,'LCD TV 42\"','TH-L42U30G',57,NULL);
INSERT INTO `dodetail` VALUES (224,'016/SV/DO/02/2012',1224,'LCD TV 32\" ','TH-L32C4G',16,NULL);
INSERT INTO `dodetail` VALUES (225,'017/SV/DO/02/2012',1224,'LCD TV 32\" ','TH-L32C4G',1,NULL);
INSERT INTO `dodetail` VALUES (226,'018/SV/DO/02/2012',1205,'WALL BRACKET','FOR 42\" UP TO 50\"',70,'unit');
INSERT INTO `dodetail` VALUES (227,'019/SV/DO/02/2012',1325,'AC CASSETTE  2 PK','CS/CU-PC18DB4',1,NULL);
INSERT INTO `dodetail` VALUES (228,'019/SV/DO/02/2012',1223,'AC SPLIT 1.5 PK','CS/CU - S13MKP',1,NULL);
INSERT INTO `dodetail` VALUES (229,'020/SV/DO/02/2012',62,'Biaya Kirim',NULL,1,'Unit');
INSERT INTO `dodetail` VALUES (230,'020/SV/DO/02/2012',1205,'WALL BRACKET','FOR 42\" UP TO 50\"',25,'unit');
INSERT INTO `dodetail` VALUES (231,'021/SV/DO/02/2012',62,'Biaya Kirim',NULL,1,'Unit');
INSERT INTO `dodetail` VALUES (232,'021/SV/DO/02/2012',1205,'WALL BRACKET','FOR 42\" UP TO 50\"',28,'unit');
INSERT INTO `dodetail` VALUES (233,'022/SV/DO/02/2012',1245,'PIPA DRAIN ','PVC + ARMAFLEX',23,'Meter');
INSERT INTO `dodetail` VALUES (234,'022/SV/DO/02/2012',1306,'PIPA REFRIGERANT AC BIG RAC','AC BIG RAC',23,NULL);
INSERT INTO `dodetail` VALUES (235,'022/SV/DO/02/2012',1260,'KABEL CONTROL ','NYM 3 x 2.5mm',23,NULL);
INSERT INTO `dodetail` VALUES (236,'022/SV/DO/02/2012',1302,'BRACKET OUTDOOR AC CASSETTE','5 PK',2,NULL);
INSERT INTO `dodetail` VALUES (237,'022/SV/DO/02/2012',1330,'JASA INSTALASI UNIT AC SPLIT CASSETTE 5 PK (BARU)','AC CASSETTE 5 PK',2,NULL);
INSERT INTO `dodetail` VALUES (238,'022/SV/DO/02/2012',1275,'PIPA REFRIGERANT + ISOLASI (1/4\" + 1/2\")','AC SPLIT ( 2 PK )',22,NULL);
INSERT INTO `dodetail` VALUES (239,'022/SV/DO/02/2012',1260,'KABEL CONTROL ','NYM 3 x 2.5mm',22,NULL);
INSERT INTO `dodetail` VALUES (240,'022/SV/DO/02/2012',1217,'BRACKET OUTDOOR AC SPLIT','1.5 PK - 2.5 PK',2,'unit');
INSERT INTO `dodetail` VALUES (241,'022/SV/DO/02/2012',1291,'JASA INSTALASI AC','SPLIT 1.5 PK - 2 PK',2,NULL);
INSERT INTO `dodetail` VALUES (242,'022/SV/DO/02/2012',1274,'PIPA REFRIGERANT + ISOLASI (1/4\" + 3/8\")','AC SPLIT ( 3/4 PK - 1 PK )',121,NULL);
INSERT INTO `dodetail` VALUES (243,'022/SV/DO/02/2012',1260,'KABEL CONTROL ','NYM 3 x 2.5mm',121,NULL);
INSERT INTO `dodetail` VALUES (244,'022/SV/DO/02/2012',1381,'BRACKET OUTDOOR AC SPLIT','3/4 PK - 1 PK',8,'Unit');
INSERT INTO `dodetail` VALUES (245,'022/SV/DO/02/2012',1290,'JASA INSTALASI AC','SPLIT 3/4 PK - 1 PK',8,NULL);
INSERT INTO `dodetail` VALUES (246,'023/SV/DO/02/2012',1205,'WALL BRACKET','FOR 42\" UP TO 50\"',4,'unit');
INSERT INTO `dodetail` VALUES (247,'024/SV/DO/02/2012',1204,'WALL BRACKET','FOR 22\" UP TO 32\"',1,'unit');
INSERT INTO `dodetail` VALUES (248,'025/SV/DO/02/2012',1290,'JASA INSTALASI AC','SPLIT 3/4 PK - 1 PK',2,NULL);
INSERT INTO `dodetail` VALUES (249,'025/SV/DO/02/2012',1350,'AC SPLIT 3/4 PK ALOWA SERIES','CS/CU-KC7NKJ',2,NULL);
INSERT INTO `dodetail` VALUES (250,'026/SV/DO/02/2012',1275,'PIPA REFRIGERANT + ISOLASI (1/4\" + 1/2\")','AC SPLIT ( 2 PK )',10,NULL);
INSERT INTO `dodetail` VALUES (251,'026/SV/DO/02/2012',1217,'BRACKET OUTDOOR AC SPLIT','1.5 PK - 2.5 PK',2,'unit');
INSERT INTO `dodetail` VALUES (252,'026/SV/DO/02/2012',1303,'PIPA REFRIGERANT + ISOLASI ','3/4\" + 3/8\"',25,NULL);
INSERT INTO `dodetail` VALUES (253,'026/SV/DO/02/2012',1305,'BRACKET OUTDOOR AC CASSETTE','3 PK',5,NULL);
INSERT INTO `dodetail` VALUES (254,'026/SV/DO/02/2012',1303,'PIPA REFRIGERANT + ISOLASI ','3/4\" + 3/8\"',15,NULL);
INSERT INTO `dodetail` VALUES (255,'026/SV/DO/02/2012',1302,'BRACKET OUTDOOR AC CASSETTE','5 PK',3,NULL);
INSERT INTO `dodetail` VALUES (256,'027/SV/DO/02/2012',1257,'BRACKET OUTDOOR AC CASETTE','2 - 2.5 PK',13,NULL);
INSERT INTO `dodetail` VALUES (257,'027/SV/DO/02/2012',1328,'BRACKET OUTDOOR AC SPLIT','2.5 PK',17,NULL);
INSERT INTO `dodetail` VALUES (258,'027/SV/DO/02/2012',1217,'BRACKET OUTDOOR AC SPLIT','1.5 PK - 2.5 PK',76,'unit');
INSERT INTO `dodetail` VALUES (259,'027/SV/DO/02/2012',1216,'BRACKET OUTDOOR AC SPLIT','1/2 PK - 1 PK',25,'unit');
INSERT INTO `dodetail` VALUES (260,'027/SV/DO/02/2012',1260,'KABEL CONTROL ','NYM 3 x 2.5mm',1830,NULL);
INSERT INTO `dodetail` VALUES (261,'027/SV/DO/02/2012',1214,'KABEL POWER ','NYM 3 x 2.5mm',1555,'unit');
INSERT INTO `dodetail` VALUES (262,'027/SV/DO/02/2012',1245,'PIPA DRAIN ','PVC + ARMAFLEX',890,'Meter');
INSERT INTO `dodetail` VALUES (263,'027/SV/DO/02/2012',1301,'PIPA REFRIGERANT AC CASSETTE 2 PK - 2.5 PK','AC CASSETTE 2 PK - 2.5 PK',235,NULL);
INSERT INTO `dodetail` VALUES (264,'027/SV/DO/02/2012',1300,'PIPA REFRIGERANT AC SPLIT 2.5 PK','AC SPLIT 2.5 PK',270,NULL);
INSERT INTO `dodetail` VALUES (265,'027/SV/DO/02/2012',1299,'PIPA REFRIGERANT AC SPLIT 1.5 PK - 2 PK','AC SPLIT 1.5 PK - 2 PK',995,NULL);
INSERT INTO `dodetail` VALUES (266,'027/SV/DO/02/2012',1298,'PIPA REFRIGERANT AC SPLIT 1 PK','AC SPLIT 1 PK',330,NULL);
INSERT INTO `dodetail` VALUES (267,'027/SV/DO/02/2012',1297,'JASA INSTALASI+BONGKAR AC LAMA+BOBOKAN','AC CASSETTE 2.5 PK',9,NULL);
INSERT INTO `dodetail` VALUES (268,'027/SV/DO/02/2012',1296,'JASA INSTALASI+BONGKAR AC LAMA+BOBOKAN','AC CASSETTE 2 PK',4,NULL);
INSERT INTO `dodetail` VALUES (269,'027/SV/DO/02/2012',1295,'JASA INSTALASI+BONGKAR AC LAMA+BOBOKAN','AC SPLIT 2.5 PK',17,NULL);
INSERT INTO `dodetail` VALUES (270,'027/SV/DO/02/2012',1294,'JASA INSTALASI+BONGKAR AC LAMA+BOBOKAN','AC SPLIT 1.5 PK - 2 PK',76,NULL);
INSERT INTO `dodetail` VALUES (271,'027/SV/DO/02/2012',1293,'JASA INSTALASI+BONGKAR AC LAMA+ BOBOKAN','AC SPLIT 1 PK',25,NULL);
INSERT INTO `dodetail` VALUES (272,'028/SV/DO/02/2012',1257,'BRACKET OUTDOOR AC CASETTE','2 - 2.5 PK',3,NULL);
INSERT INTO `dodetail` VALUES (273,'028/SV/DO/02/2012',1328,'BRACKET OUTDOOR AC SPLIT','2.5 PK',9,NULL);
INSERT INTO `dodetail` VALUES (274,'028/SV/DO/02/2012',1217,'BRACKET OUTDOOR AC SPLIT','1.5 PK - 2.5 PK',8,'unit');
INSERT INTO `dodetail` VALUES (275,'028/SV/DO/02/2012',1216,'BRACKET OUTDOOR AC SPLIT','1/2 PK - 1 PK',1,'unit');
INSERT INTO `dodetail` VALUES (276,'028/SV/DO/02/2012',1260,'KABEL CONTROL ','NYM 3 x 2.5mm',338,NULL);
INSERT INTO `dodetail` VALUES (277,'028/SV/DO/02/2012',1214,'KABEL POWER ','NYM 3 x 2.5mm',275,'unit');
INSERT INTO `dodetail` VALUES (278,'028/SV/DO/02/2012',1218,'PIPA DRAIN','PVC 3/4\"',155,'unit');
INSERT INTO `dodetail` VALUES (279,'028/SV/DO/02/2012',1256,'JASA TARIKAN + PIPA REFRIGERANT ','AC CASETTE 2 - 2.5 PK',40,NULL);
INSERT INTO `dodetail` VALUES (280,'028/SV/DO/02/2012',1255,'JASA TARIKAN + PIPA REFRIGERANT ','AC SPLIT 2.5 PK',160,NULL);
INSERT INTO `dodetail` VALUES (281,'028/SV/DO/02/2012',1254,'JASA TARIKAN + PIPA REFRIGERANT ','AC SPLIT 1.5 - 2 PK ',130,NULL);
INSERT INTO `dodetail` VALUES (282,'028/SV/DO/02/2012',1253,'JASA TARIKAN + PIPA REFRIGERANT ','AC SPLIT 1 PK',8,NULL);
INSERT INTO `dodetail` VALUES (283,'028/SV/DO/02/2012',1252,'BIAYA INSTAL+BONGKAR AC LAMA+BOBOKAN','AC CASETTE 2.5 PK',2,NULL);
INSERT INTO `dodetail` VALUES (284,'028/SV/DO/02/2012',1251,'BIAYA INSTAL+BONGKAR AC LAMA+BOBOKAN','AC CASETTE 2 PK',1,NULL);
INSERT INTO `dodetail` VALUES (285,'028/SV/DO/02/2012',1250,'BIAYA INSTAL+BONGKAR AC LAMA+BOBOKAN','AC SPLIT 2.5 PK',9,NULL);
INSERT INTO `dodetail` VALUES (286,'028/SV/DO/02/2012',1249,'BIAYA INSTAL+BONGKAR AC LAMA+BOBOKAN','AC SPLIT 1.5 - 2 PK',8,NULL);
INSERT INTO `dodetail` VALUES (287,'028/SV/DO/02/2012',1248,'BIAYA INSTAL+BONGKAR AC LAMA+BOBOKAN ','AC SPLIT 1 PK',1,NULL);
INSERT INTO `dodetail` VALUES (288,'029/SV/DO/02/2012',1292,'BRACKET OUTDOOR  AC SPLIT','3/4 PK - 2 PK',6,NULL);
INSERT INTO `dodetail` VALUES (289,'029/SV/DO/02/2012',1214,'KABEL POWER ','NYM 3 x 2.5mm',55,'unit');
INSERT INTO `dodetail` VALUES (290,'029/SV/DO/02/2012',1245,'PIPA DRAIN ','PVC + ARMAFLEX',32,'Meter');
INSERT INTO `dodetail` VALUES (291,'029/SV/DO/02/2012',1275,'PIPA REFRIGERANT + ISOLASI (1/4\" + 1/2\")','AC SPLIT ( 2 PK )',74,NULL);
INSERT INTO `dodetail` VALUES (292,'029/SV/DO/02/2012',1274,'PIPA REFRIGERANT + ISOLASI (1/4\" + 3/8\")','AC SPLIT ( 3/4 PK - 1 PK )',12,NULL);
INSERT INTO `dodetail` VALUES (293,'029/SV/DO/02/2012',1291,'JASA INSTALASI AC','SPLIT 1.5 PK - 2 PK',4,NULL);
INSERT INTO `dodetail` VALUES (294,'029/SV/DO/02/2012',1290,'JASA INSTALASI AC','SPLIT 3/4 PK - 1 PK',2,NULL);
INSERT INTO `dodetail` VALUES (295,'030/SV/DO/02/2012',1205,'WALL BRACKET','FOR 42\" UP TO 50\"',5,'unit');
INSERT INTO `dodetail` VALUES (296,'031/SV/DO/02/2012',62,'Biaya Kirim',NULL,1,'Unit');
INSERT INTO `dodetail` VALUES (297,'031/SV/DO/02/2012',1205,'WALL BRACKET','FOR 42\" UP TO 50\"',46,'unit');
INSERT INTO `dodetail` VALUES (298,'032/SV/DO/02/2012',1387,'BIAYA FINISHING',NULL,1,'Unit');
INSERT INTO `dodetail` VALUES (299,'032/SV/DO/02/2012',1324,'BIAYA TRANSPORTASI DAN AKOMODASI','_',1,NULL);
INSERT INTO `dodetail` VALUES (300,'032/SV/DO/02/2012',1382,'ALAT BANTU & ACCESSORIES',NULL,1,'UNIT');
INSERT INTO `dodetail` VALUES (301,'032/SV/DO/02/2012',1386,'JASA INSTALASI AC','SPLIT DUCTING 3 PK',4,'Unit');
INSERT INTO `dodetail` VALUES (302,'032/SV/DO/02/2012',1385,'JASA INSTALASI AC','SPLIT DUCTING 2.5 PK',3,'Unit');
INSERT INTO `dodetail` VALUES (303,'032/SV/DO/02/2012',1272,'JASA INSTALASI AC','SPLIT DUCTING 1.5 PK',3,NULL);
INSERT INTO `dodetail` VALUES (304,'032/SV/DO/02/2012',1290,'JASA INSTALASI AC','SPLIT 3/4 PK - 1 PK',3,NULL);
INSERT INTO `dodetail` VALUES (305,'032/SV/DO/02/2012',1245,'PIPA DRAIN ','PVC + ARMAFLEX',100,'Meter');
INSERT INTO `dodetail` VALUES (306,'032/SV/DO/02/2012',1214,'KABEL POWER ','NYM 3 x 2.5mm',80,'unit');
INSERT INTO `dodetail` VALUES (307,'032/SV/DO/02/2012',1213,'KABEL CONTROL ',' 4 x 2.5mm',60,'unit');
INSERT INTO `dodetail` VALUES (308,'032/SV/DO/02/2012',1308,'KABEL CONTROL ',' 4 x 4mm',80,NULL);
INSERT INTO `dodetail` VALUES (309,'032/SV/DO/02/2012',1306,'PIPA REFRIGERANT AC BIG RAC','AC BIG RAC',40,NULL);
INSERT INTO `dodetail` VALUES (310,'032/SV/DO/02/2012',1300,'PIPA REFRIGERANT AC SPLIT 2.5 PK','AC SPLIT 2.5 PK',30,NULL);
INSERT INTO `dodetail` VALUES (311,'032/SV/DO/02/2012',1275,'PIPA REFRIGERANT + ISOLASI (1/4\" + 1/2\")','AC SPLIT ( 2 PK )',30,NULL);
INSERT INTO `dodetail` VALUES (312,'032/SV/DO/02/2012',1274,'PIPA REFRIGERANT + ISOLASI (1/4\" + 3/8\")','AC SPLIT ( 3/4 PK - 1 PK )',30,NULL);
INSERT INTO `dodetail` VALUES (313,'032/SV/DO/02/2012',1270,'DIFFUSER 10 x 100cm','AC DUCTING',48,NULL);
INSERT INTO `dodetail` VALUES (314,'032/SV/DO/02/2012',1269,'BOX DIFFUSER','AC DUCTING',48,NULL);
INSERT INTO `dodetail` VALUES (315,'032/SV/DO/02/2012',1384,'KABEL FLEXIBEL 8\"',NULL,105,'Meter');
INSERT INTO `dodetail` VALUES (316,'032/SV/DO/02/2012',1267,'DUCTING PU + ACCESSORIES KOMPIT','AC DUCTING',125,NULL);
INSERT INTO `dodetail` VALUES (317,'001/SV/DO/05/2012',1205,'WALL BRACKET','FOR 42\" UP TO 50\"',3,'unit');
INSERT INTO `dodetail` VALUES (318,'001/SV/DO/05/2012',1300,'PIPA REFRIGERANT AC SPLIT 2.5 PK','AC SPLIT 2.5 PK',30,NULL);
INSERT INTO `dodetail` VALUES (319,'001/SV/DO/05/2012',1275,'PIPA REFRIGERANT + ISOLASI (1/4\" + 1/2\")','AC SPLIT ( 2 PK )',30,NULL);
INSERT INTO `dodetail` VALUES (320,'001/SV/DO/05/2012',1274,'PIPA REFRIGERANT + ISOLASI (1/4\" + 3/8\")','AC SPLIT ( 3/4 PK - 1 PK )',30,NULL);
INSERT INTO `dodetail` VALUES (321,'001/SV/DO/05/2012',1269,'BOX DIFFUSER','AC DUCTING',48,NULL);
INSERT INTO `dodetail` VALUES (322,'001/SV/DO/05/2012',1260,'KABEL CONTROL ','NYM 3 x 2.5mm',0,NULL);
INSERT INTO `dodetail` VALUES (323,'001/SV/DO/05/2012',1267,'DUCTING PU + ACCESSORIES KOMPIT','AC DUCTING',125,NULL);
INSERT INTO `dodetail` VALUES (324,'002/SV/DO/05/2012',1224,'LCD TV 32\" ','TH-L32C4G',1,NULL);
INSERT INTO `dodetail` VALUES (325,'003/SV/DO/05/2012',1352,'JASA INSTALASI+SETTING+TESTING ','LCD TV 42\"',2,NULL);
INSERT INTO `dodetail` VALUES (326,'003/SV/DO/05/2012',1211,'CEILING  BRACKET','FOR 42\" UP TO 50\"',2,'unit');
INSERT INTO `dodetail` VALUES (327,'003/SV/DO/05/2012',1234,'LCD TV 42\" ','42LK455C',2,NULL);
INSERT INTO `dodetail` VALUES (328,'004/SV/DO/05/2012',1204,'WALL BRACKET','FOR 22\" UP TO 32\"',12,'unit');
INSERT INTO `dodetail` VALUES (329,'004/SV/DO/05/2012',1224,'LCD TV 32\" ','TH-L32C4G',1,NULL);
INSERT INTO `dodetail` VALUES (330,'005/SV/DO/05/2012',1224,'LCD TV 32\" ','TH-L32C4G',2,NULL);
INSERT INTO `dodetail` VALUES (331,'006/SV/DO/05/2012',1224,'LCD TV 32\" ','TH-L32C4G',4,NULL);
INSERT INTO `dodetail` VALUES (332,'007/SV/DO/05/2012',1224,'LCD TV 32\" ','TH-L32C4G',11,NULL);
INSERT INTO `dodetail` VALUES (333,'008/SV/DO/05/2012',1225,'LCD TV 42\"','TH-L42U30G',117,NULL);
INSERT INTO `dodetail` VALUES (334,'008/SV/DO/05/2012',1224,'LCD TV 32\" ','TH-L32C4G',16,NULL);
INSERT INTO `dodetail` VALUES (335,'009/SV/DO/05/2012',1225,'LCD TV 42\"','TH-L42U30G',70,NULL);
INSERT INTO `dodetail` VALUES (336,'009/SV/DO/05/2012',1224,'LCD TV 32\" ','TH-L32C4G',22,NULL);
INSERT INTO `dodetail` VALUES (337,'010/SV/DO/05/2012',1224,'LCD TV 32\" ','TH-L32C4G',1,NULL);
INSERT INTO `dodetail` VALUES (338,'011/SV/DO/05/2012',1204,'WALL BRACKET','FOR 22\" UP TO 32\"',12,'unit');
INSERT INTO `dodetail` VALUES (339,'011/SV/DO/05/2012',1225,'LCD TV 42\"','TH-L42U30G',15,NULL);
INSERT INTO `dodetail` VALUES (340,'011/SV/DO/05/2012',1224,'LCD TV 32\" ','TH-L32C4G',3,NULL);
INSERT INTO `dodetail` VALUES (341,'012/SV/DO/05/2012',1225,'LCD TV 42\"','TH-L42U30G',73,NULL);
INSERT INTO `dodetail` VALUES (342,'012/SV/DO/05/2012',1224,'LCD TV 32\" ','TH-L32C4G',15,NULL);
INSERT INTO `dodetail` VALUES (343,'013/SV/DO/05/2012',1224,'LCD TV 32\" ','TH-L32C4G',63,NULL);
INSERT INTO `dodetail` VALUES (344,'013/SV/DO/05/2012',1300,'PIPA REFRIGERANT AC SPLIT 2.5 PK','AC SPLIT 2.5 PK',30,NULL);
INSERT INTO `dodetail` VALUES (345,'013/SV/DO/05/2012',1275,'PIPA REFRIGERANT + ISOLASI (1/4\" + 1/2\")','AC SPLIT ( 2 PK )',30,NULL);
INSERT INTO `dodetail` VALUES (346,'013/SV/DO/05/2012',1274,'PIPA REFRIGERANT + ISOLASI (1/4\" + 3/8\")','AC SPLIT ( 3/4 PK - 1 PK )',30,NULL);
INSERT INTO `dodetail` VALUES (347,'013/SV/DO/05/2012',1270,'DIFFUSER 10 x 100cm','AC DUCTING',48,NULL);
INSERT INTO `dodetail` VALUES (348,'013/SV/DO/05/2012',1269,'BOX DIFFUSER','AC DUCTING',48,NULL);
INSERT INTO `dodetail` VALUES (349,'013/SV/DO/05/2012',1268,'FLEXIBLE + ISOLASI LENGKAP 8\"','AC DUCTING',105,NULL);
INSERT INTO `dodetail` VALUES (350,'013/SV/DO/05/2012',1267,'DUCTING PU + ACCESSORIES KOMPIT','AC DUCTING',125,NULL);
INSERT INTO `dodetail` VALUES (351,'014/SV/DO/05/2012',1224,'LCD TV 32\" ','TH-L32C4G',5,NULL);
INSERT INTO `dodetail` VALUES (352,'015/SV/DO/05/2012',1224,'LCD TV 32\" ','TH-L32C4G',19,NULL);
INSERT INTO `dodetail` VALUES (353,'016/SV/DO/05/2012',1234,'LCD TV 42\" ','42LK455C',1,NULL);
INSERT INTO `dodetail` VALUES (354,'017/SV/DO/05/2012',1278,'TESTING + COMMISIONING','AC SPLIT 3/4 PK - 2 PK',1,NULL);
INSERT INTO `dodetail` VALUES (355,'017/SV/DO/05/2012',1353,'JASA CONNECTING AC+BOBOKAN+PEMASANGAN','_',1,NULL);
INSERT INTO `dodetail` VALUES (356,'017/SV/DO/05/2012',1277,'PANEL LISTRIK KOMPLIT','UNTUK AC 8 GROUP',1,NULL);
INSERT INTO `dodetail` VALUES (357,'017/SV/DO/05/2012',1290,'JASA INSTALASI AC','SPLIT 3/4 PK - 1 PK',5,NULL);
INSERT INTO `dodetail` VALUES (358,'017/SV/DO/05/2012',1216,'BRACKET OUTDOOR AC SPLIT','1/2 PK - 1 PK',5,'unit');
INSERT INTO `dodetail` VALUES (359,'017/SV/DO/05/2012',1218,'PIPA DRAIN','PVC 3/4\"',60,'unit');
INSERT INTO `dodetail` VALUES (360,'017/SV/DO/05/2012',1214,'KABEL POWER ','NYM 3 x 2.5mm',161,'unit');
INSERT INTO `dodetail` VALUES (361,'017/SV/DO/05/2012',1275,'PIPA REFRIGERANT + ISOLASI (1/4\" + 1/2\")','AC SPLIT ( 2 PK )',13,NULL);
INSERT INTO `dodetail` VALUES (362,'017/SV/DO/05/2012',1274,'PIPA REFRIGERANT + ISOLASI (1/4\" + 3/8\")','AC SPLIT ( 3/4 PK - 1 PK )',20,NULL);
INSERT INTO `dodetail` VALUES (363,'018/SV/DO/05/2012',1228,'AC SPLIT 1 PK','CS/CU-S10MKP',6,'Unit');
INSERT INTO `dodetail` VALUES (364,'019/SV/DO/05/2012',1228,'AC SPLIT 1 PK','CS/CU-S10MKP',4,'Unit');
INSERT INTO `dodetail` VALUES (365,'020/SV/DO/05/2012',1273,'JASA INSTALASI AC','SPLIT DUCTING 2 PK',1,NULL);
INSERT INTO `dodetail` VALUES (366,'020/SV/DO/05/2012',1272,'JASA INSTALASI AC','SPLIT DUCTING 1.5 PK',1,NULL);
INSERT INTO `dodetail` VALUES (367,'020/SV/DO/05/2012',1245,'PIPA DRAIN ','PVC + ARMAFLEX',15,'Meter');
INSERT INTO `dodetail` VALUES (368,'020/SV/DO/05/2012',1214,'KABEL POWER ','NYM 3 x 2.5mm',30,'unit');
INSERT INTO `dodetail` VALUES (369,'020/SV/DO/05/2012',1213,'KABEL CONTROL ',' 4 x 2.5mm',21,'unit');
INSERT INTO `dodetail` VALUES (370,'020/SV/DO/05/2012',1271,'PIPA FREON + ISOLASI','AC SPLIT DUCTING',21,NULL);
INSERT INTO `dodetail` VALUES (371,'020/SV/DO/05/2012',1270,'DIFFUSER 10 x 100cm','AC DUCTING',6,NULL);
INSERT INTO `dodetail` VALUES (372,'020/SV/DO/05/2012',1269,'BOX DIFFUSER','AC DUCTING',6,NULL);
INSERT INTO `dodetail` VALUES (373,'020/SV/DO/05/2012',1268,'FLEXIBLE + ISOLASI LENGKAP 8\"','AC DUCTING',6,NULL);
INSERT INTO `dodetail` VALUES (374,'020/SV/DO/05/2012',1267,'DUCTING PU + ACCESSORIES KOMPIT','AC DUCTING',20,NULL);
INSERT INTO `dodetail` VALUES (375,'021/SV/DO/05/2012',1160,'LCD TV 42\" ','TH-L42U30G',1,'unit');
INSERT INTO `dodetail` VALUES (376,'022/SV/DO/05/2012',1240,'DVD PLAYER','DP-520',20,NULL);
INSERT INTO `dodetail` VALUES (377,'023/SV/DO/05/2012',1205,'WALL BRACKET','FOR 42\" UP TO 50\"',64,'unit');
INSERT INTO `dodetail` VALUES (378,'023/SV/DO/05/2012',1204,'WALL BRACKET','FOR 22\" UP TO 32\"',30,'unit');
INSERT INTO `dodetail` VALUES (379,'024/SV/DO/05/2012',1204,'WALL BRACKET','FOR 22\" UP TO 32\"',20,'unit');
INSERT INTO `dodetail` VALUES (380,'025/SV/DO/05/2012',1204,'WALL BRACKET','FOR 22\" UP TO 32\"',6,'unit');
INSERT INTO `dodetail` VALUES (381,'026/SV/DO/05/2012',1264,'AIR PURIFIER','KC-A40Y-W',4,NULL);
INSERT INTO `dodetail` VALUES (382,'027/SV/DO/05/2012',1205,'WALL BRACKET','FOR 42\" UP TO 50\"',8,'unit');
INSERT INTO `dodetail` VALUES (383,'027/SV/DO/05/2012',1204,'WALL BRACKET','FOR 22\" UP TO 32\"',76,'unit');
INSERT INTO `dodetail` VALUES (384,'027/SV/DO/05/2012',1205,'WALL BRACKET','FOR 42\" UP TO 50\"',8,'unit');
INSERT INTO `dodetail` VALUES (385,'027/SV/DO/05/2012',1204,'WALL BRACKET','FOR 22\" UP TO 32\"',76,'unit');
INSERT INTO `dodetail` VALUES (386,'028/SV/DO/05/2012',1205,'WALL BRACKET','FOR 42\" UP TO 50\"',8,'unit');
INSERT INTO `dodetail` VALUES (387,'028/SV/DO/05/2012',1204,'WALL BRACKET','FOR 22\" UP TO 32\"',76,'unit');
INSERT INTO `dodetail` VALUES (388,'029/SV/DO/05/2012',1241,'AC SPLIT 1 PK','CS/CU-KC9NKJ',1,'Unit');
INSERT INTO `dodetail` VALUES (389,'029/SV/DO/05/2012',1242,'AC SPLIT 1/2 PK','CS/CU-PC5MKJ',1,NULL);
INSERT INTO `dodetail` VALUES (390,'030/SV/DO/05/2012',1265,'HOME THEATER','HT-CN830DVWE',1,NULL);
INSERT INTO `dodetail` VALUES (391,'030/SV/DO/05/2012',1266,'LCD TV 40\"','LC-40M500M',1,NULL);
INSERT INTO `dodetail` VALUES (392,'031/SV/DO/05/2012',1205,'WALL BRACKET','FOR 42\" UP TO 50\"',8,'unit');
INSERT INTO `dodetail` VALUES (393,'032/SV/DO/05/2012',1354,'CEILING HANGING BRACKET','LCD TV 32\"',1,NULL);
INSERT INTO `dodetail` VALUES (394,'032/SV/DO/05/2012',1224,'LCD TV 32\" ','TH-L32C4G',2,NULL);
INSERT INTO `dodetail` VALUES (395,'033/SV/DO/05/2012',1205,'WALL BRACKET','FOR 42\" UP TO 50\"',8,'unit');
INSERT INTO `dodetail` VALUES (396,'033/SV/DO/05/2012',1204,'WALL BRACKET','FOR 22\" UP TO 32\"',76,'unit');
INSERT INTO `dodetail` VALUES (397,'033/SV/DO/05/2012',1205,'WALL BRACKET','FOR 42\" UP TO 50\"',8,'unit');
INSERT INTO `dodetail` VALUES (398,'033/SV/DO/05/2012',1204,'WALL BRACKET','FOR 22\" UP TO 32\"',76,'unit');
INSERT INTO `dodetail` VALUES (399,'034/SV/DO/05/2012',1355,'MCB 3 PHASE 25 A','_',1,NULL);
INSERT INTO `dodetail` VALUES (400,'034/SV/DO/05/2012',1302,'BRACKET OUTDOOR AC CASSETTE','5 PK',1,NULL);
INSERT INTO `dodetail` VALUES (401,'034/SV/DO/05/2012',1246,'PIPA REFRIGERANT + ISOLASI (5/8\"+3/8\")','AC CASSETTE 2.5 PK',8,NULL);
INSERT INTO `dodetail` VALUES (402,'034/SV/DO/05/2012',1303,'PIPA REFRIGERANT + ISOLASI ','3/4\" + 3/8\"',30,NULL);
INSERT INTO `dodetail` VALUES (403,'034/SV/DO/05/2012',1245,'PIPA DRAIN ','PVC + ARMAFLEX',10,'Meter');
INSERT INTO `dodetail` VALUES (404,'034/SV/DO/05/2012',1215,'KABEL POWER ','NYM 4 x 4mm',30,'Meter');
INSERT INTO `dodetail` VALUES (405,'034/SV/DO/05/2012',1213,'KABEL CONTROL ',' 4 x 2.5mm',38,'unit');
INSERT INTO `dodetail` VALUES (406,'034/SV/DO/05/2012',1331,'JASA BONGKAR & PASANG AC CASSETTE 3 PK (LAMA)','AC CASSETTE 3 PK',1,NULL);
INSERT INTO `dodetail` VALUES (407,'034/SV/DO/05/2012',1330,'JASA INSTALASI UNIT AC SPLIT CASSETTE 5 PK (BARU)','AC CASSETTE 5 PK',1,NULL);
INSERT INTO `dodetail` VALUES (408,'035/SV/DO/05/2012',1204,'WALL BRACKET','FOR 22\" UP TO 32\"',8,'unit');
INSERT INTO `dodetail` VALUES (409,'036/SV/DO/05/2012',1211,'CEILING  BRACKET','FOR 42\" UP TO 50\"',1,'unit');
INSERT INTO `dodetail` VALUES (410,'037/SV/DO/05/2012',1358,'TESTING & INSTALASI','_',1,NULL);
INSERT INTO `dodetail` VALUES (411,'037/SV/DO/05/2012',1362,'PIPA DRAIN','AC BIG RAC 20\"',129,NULL);
INSERT INTO `dodetail` VALUES (412,'037/SV/DO/05/2012',1363,'PIPA DRAIN','AC BIG RAC 25\"',79,NULL);
INSERT INTO `dodetail` VALUES (413,'037/SV/DO/05/2012',1359,'PIPA REFRIGERANT ','AC BIG RAC 1',555,NULL);
INSERT INTO `dodetail` VALUES (414,'037/SV/DO/05/2012',1360,'PIPA REFRIGERANT','AC BIG RAC 1/2',665,NULL);
INSERT INTO `dodetail` VALUES (415,'037/SV/DO/05/2012',1361,'PIPA REFRIGERANT ','AC BIG RAC 1/4',110,NULL);
INSERT INTO `dodetail` VALUES (416,'037/SV/DO/05/2012',1284,'TESTING & COMMISSIONING','AC DUCTING',1,NULL);
INSERT INTO `dodetail` VALUES (417,'037/SV/DO/05/2012',1357,'KABEL FEEDER ','NYY 3 x 2,5 mm',225,NULL);
INSERT INTO `dodetail` VALUES (418,'037/SV/DO/05/2012',1356,'KABEL FEEDER','NYY 4 x 4 mm',1040,NULL);
INSERT INTO `dodetail` VALUES (419,'039/SV/DO/05/2012',1205,'WALL BRACKET','FOR 42\" UP TO 50\"',13,'unit');
INSERT INTO `dodetail` VALUES (420,'039/SV/DO/05/2012',1204,'WALL BRACKET','FOR 22\" UP TO 32\"',143,'unit');
INSERT INTO `dodetail` VALUES (421,'040/SV/DO/05/2012',1343,'AC CASSETTE 2.5 PK','CS/CU - PC24DB4H',11,NULL);
INSERT INTO `dodetail` VALUES (422,'041/SV/DO/05/2012',1343,'AC CASSETTE 2.5 PK','CS/CU - PC24DB4H',10,NULL);
INSERT INTO `dodetail` VALUES (423,'042/SV/DO/05/2012',1224,'LCD TV 32\" ','TH-L32C4G',22,NULL);
INSERT INTO `dodetail` VALUES (424,'043/SV/DO/05/2012',1224,'LCD TV 32\" ','TH-L32C4G',4,NULL);
INSERT INTO `dodetail` VALUES (425,'044/SV/DO/05/2012',1204,'WALL BRACKET','FOR 22\" UP TO 32\"',12,'unit');

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
  `fp_nama_cust` varchar(255) collate latin1_general_ci default NULL,
  `fp_npwp` varchar(255) collate latin1_general_ci default NULL,
  `fp_dpp` double default NULL,
  `fp_ppn` double default NULL,
  `fp_ppnbm` double default NULL,
  `fp_total_transaksi` double default NULL,
  `fp_balance` double default NULL,
  PRIMARY KEY  (`fp_id`)
) ENGINE=MyISAM AUTO_INCREMENT=197 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `fakturpajak` VALUES (178,'010.000-12.00000001',NULL,'JL0000000001','2012-01-03','SVC-0000005','Ching Luh Indonesia, PT. ','01.760.386.1-418.001',14390000,1439000,NULL,14390000,NULL);
INSERT INTO `fakturpajak` VALUES (179,'010.000-12.00000002',NULL,'JL0000000002','2012-01-03','SVC-0000002','Gobel Dharma Nusantara, PT. ','01.300.702.6-007.000',138736500,13873650,NULL,462455000,NULL);
INSERT INTO `fakturpajak` VALUES (181,'010.000-12.00000001',NULL,'JL0000000003','2012-01-03','SVC-0000002','Ching Luh Indonesia, PT. ','01.760.386.1-418.001',14390000,1439000,NULL,92941000,NULL);
INSERT INTO `fakturpajak` VALUES (182,'010.000-12.00000004',NULL,'JL0000000004','2012-01-03','SVC-0000003','Kramayudha Tiga Berlian Motor, PT. ','01.300.657.2-092.000',521425000,52142500,NULL,521425000,NULL);
INSERT INTO `fakturpajak` VALUES (184,'010.000-12.00000005',NULL,'JL0000000005','2012-01-03','SVC-0000004','Tansri Madjid Energi, PT. ','02.192.497.2-071.000',83083500,8308350,NULL,134272500,NULL);
INSERT INTO `fakturpajak` VALUES (185,'010.000-12.00000006',NULL,'JL0000000006','2012-01-03','SVC-0000003','Kramayudha Tiga Berlian Motor, PT. ','01.300.657.2-092.000',60450000,6045000,NULL,60450000,NULL);
INSERT INTO `fakturpajak` VALUES (187,'010.000-12.00000007',NULL,'JL0000000007','2012-01-05','SVC-0000001','Coca - Cola Distribution Indonesia, PT. ','01.070.657.0-091.000',3160000,316000,NULL,3160000,NULL);
INSERT INTO `fakturpajak` VALUES (190,'010.000-12.00000008',NULL,'JL0000000009','2012-01-09','SVC-0000002','Gobel Dharma Nusantara, PT. ','01.300.702.6-007.000',7290000,729000,NULL,7290000,NULL);
INSERT INTO `fakturpajak` VALUES (192,'010.000-12.00000009',NULL,'JL0000000013','2012-01-17','SVC-0000010','Xcell Visual Wibawa, PT. ','02.663.247.1-031.000',17181815,1718181.5,NULL,17181815,NULL);

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
) ENGINE=MyISAM AUTO_INCREMENT=555 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `fakturpajakdetail` VALUES (468,'010.000-12.00000001',1243,'AC FLOOR STANDING 3 PK',1,12400000,12400000);
INSERT INTO `fakturpajakdetail` VALUES (469,'010.000-12.00000001',1244,'BRACKET OUTDOOR AC FLOOR STANDING',1,310000,310000);
INSERT INTO `fakturpajakdetail` VALUES (470,'010.000-12.00000001',1215,'KABEL POWER ',10,330000,33000);
INSERT INTO `fakturpajakdetail` VALUES (471,'010.000-12.00000001',1245,'PIPA DRAIN ',7,140000,20000);
INSERT INTO `fakturpajakdetail` VALUES (472,'010.000-12.00000001',1246,'PIPA REFRIGERANT + ISOLASI (5/8\"+3/8\")',4,660000,165000);
INSERT INTO `fakturpajakdetail` VALUES (473,'010.000-12.00000001',9,'Jasa Instalasi Unit AC Floor Standing 3 PK',1,600000,600000);
INSERT INTO `fakturpajakdetail` VALUES (474,'010.000-12.00000002',1248,'BIAYA INSTAL+BONGKAR AC LAMA+BOBOKAN ',25,18750000,750000);
INSERT INTO `fakturpajakdetail` VALUES (475,'010.000-12.00000002',1249,'BIAYA INSTAL+BONGKAR AC LAMA+BOBOKAN',76,60800000,800000);
INSERT INTO `fakturpajakdetail` VALUES (476,'010.000-12.00000002',1250,'BIAYA INSTAL+BONGKAR AC LAMA+BOBOKAN',17,15300000,900000);
INSERT INTO `fakturpajakdetail` VALUES (477,'010.000-12.00000002',1251,'BIAYA INSTAL+BONGKAR AC LAMA+BOBOKAN',4,3700000,925000);
INSERT INTO `fakturpajakdetail` VALUES (478,'010.000-12.00000002',1252,'BIAYA INSTAL+BONGKAR AC LAMA+BOBOKAN',9,9900000,1100000);
INSERT INTO `fakturpajakdetail` VALUES (479,'010.000-12.00000002',1253,'JASA TARIKAN + PIPA REFRIGERANT ',330,28050000,85000);
INSERT INTO `fakturpajakdetail` VALUES (480,'010.000-12.00000002',1254,'JASA TARIKAN + PIPA REFRIGERANT ',995,99500000,100000);
INSERT INTO `fakturpajakdetail` VALUES (481,'010.000-12.00000002',1255,'JASA TARIKAN + PIPA REFRIGERANT ',270,49950000,185000);
INSERT INTO `fakturpajakdetail` VALUES (482,'010.000-12.00000002',1256,'JASA TARIKAN + PIPA REFRIGERANT ',235,45825000,195000);
INSERT INTO `fakturpajakdetail` VALUES (483,'010.000-12.00000002',1218,'PIPA DRAIN',890,19580000,22000);
INSERT INTO `fakturpajakdetail` VALUES (484,'010.000-12.00000002',1214,'KABEL POWER ',1555,46650000,30000);
INSERT INTO `fakturpajakdetail` VALUES (485,'010.000-12.00000002',1260,'KABEL CONTROL ',1830,49410000,27000);
INSERT INTO `fakturpajakdetail` VALUES (486,'010.000-12.00000002',1216,'BRACKET OUTDOOR AC SPLIT',25,2250000,90000);
INSERT INTO `fakturpajakdetail` VALUES (487,'010.000-12.00000002',1217,'BRACKET OUTDOOR AC SPLIT',76,7980000,105000);
INSERT INTO `fakturpajakdetail` VALUES (488,'010.000-12.00000002',1328,'BRACKET OUTDOOR AC SPLIT',17,2210000,130000);
INSERT INTO `fakturpajakdetail` VALUES (489,'010.000-12.00000002',1257,'BRACKET OUTDOOR AC CASETTE',13,2600000,200000);
INSERT INTO `fakturpajakdetail` VALUES (506,'010.000-12.00000003',1248,'BIAYA INSTAL+BONGKAR AC LAMA+BOBOKAN ',1,750000,750000);
INSERT INTO `fakturpajakdetail` VALUES (507,'010.000-12.00000003',1249,'BIAYA INSTAL+BONGKAR AC LAMA+BOBOKAN',8,6400000,800000);
INSERT INTO `fakturpajakdetail` VALUES (508,'010.000-12.00000003',1250,'BIAYA INSTAL+BONGKAR AC LAMA+BOBOKAN',9,8100000,900000);
INSERT INTO `fakturpajakdetail` VALUES (509,'010.000-12.00000003',1251,'BIAYA INSTAL+BONGKAR AC LAMA+BOBOKAN',1,925000,925000);
INSERT INTO `fakturpajakdetail` VALUES (510,'010.000-12.00000003',1252,'BIAYA INSTAL+BONGKAR AC LAMA+BOBOKAN',2,2200000,1100000);
INSERT INTO `fakturpajakdetail` VALUES (511,'010.000-12.00000003',1253,'JASA TARIKAN + PIPA REFRIGERANT ',8,680000,85000);
INSERT INTO `fakturpajakdetail` VALUES (512,'010.000-12.00000003',1254,'JASA TARIKAN + PIPA REFRIGERANT ',130,13000000,100000);
INSERT INTO `fakturpajakdetail` VALUES (513,'010.000-12.00000003',1255,'JASA TARIKAN + PIPA REFRIGERANT ',160,29600000,185000);
INSERT INTO `fakturpajakdetail` VALUES (514,'010.000-12.00000003',1256,'JASA TARIKAN + PIPA REFRIGERANT ',40,7800000,195000);
INSERT INTO `fakturpajakdetail` VALUES (515,'010.000-12.00000003',1218,'PIPA DRAIN',155,3410000,22000);
INSERT INTO `fakturpajakdetail` VALUES (516,'010.000-12.00000003',1214,'KABEL POWER ',275,8250000,30000);
INSERT INTO `fakturpajakdetail` VALUES (517,'010.000-12.00000003',1260,'KABEL CONTROL ',338,9126000,27000);
INSERT INTO `fakturpajakdetail` VALUES (518,'010.000-12.00000003',1216,'BRACKET OUTDOOR AC SPLIT',1,90000,90000);
INSERT INTO `fakturpajakdetail` VALUES (519,'010.000-12.00000003',1217,'BRACKET OUTDOOR AC SPLIT',8,840000,105000);
INSERT INTO `fakturpajakdetail` VALUES (520,'010.000-12.00000003',1328,'BRACKET OUTDOOR AC SPLIT',9,1170000,130000);
INSERT INTO `fakturpajakdetail` VALUES (521,'010.000-12.00000003',1257,'BRACKET OUTDOOR AC CASETTE',3,600000,200000);
INSERT INTO `fakturpajakdetail` VALUES (522,'010.000-12.00000004',1224,'LCD TV 32\" ',19,66025000,3475000);
INSERT INTO `fakturpajakdetail` VALUES (523,'010.000-12.00000004',1160,'LCD TV 42\" ',69,455400000,6600000);
INSERT INTO `fakturpajakdetail` VALUES (524,'010.000-12.00000005',1310,'OUTDOOR LONG RANGE CCTV-1.6 KM',1,62475000,119000000);
INSERT INTO `fakturpajakdetail` VALUES (525,'010.000-12.00000005',1311,'INDOOR CCTV DOME CAMERA',1,7612500,14500000);
INSERT INTO `fakturpajakdetail` VALUES (526,'010.000-12.00000005',1312,'SOFTWARE-XPROTECT ESSENTIAL BASE+CAMERA LICENCE',1,2100000,4000000);
INSERT INTO `fakturpajakdetail` VALUES (527,'010.000-12.00000005',1313,'SWITCH POE 8 PORT',1,2312500,2500000);
INSERT INTO `fakturpajakdetail` VALUES (528,'010.000-12.00000005',1329,'JUNCTION BOX WEATHERPROOF UNTUK SWITCH 500x4000x250',1,3237500,3500000);
INSERT INTO `fakturpajakdetail` VALUES (529,'010.000-12.00000005',1314,'COMPUTER SERVER',1,11100000,12000000);
INSERT INTO `fakturpajakdetail` VALUES (530,'010.000-12.00000005',1315,'LCD MONITOR 19\"',1,1295000,1400000);
INSERT INTO `fakturpajakdetail` VALUES (531,'010.000-12.00000005',1316,'UPS 1000 VA ICA FOR SERVER',1,2220000,2400000);
INSERT INTO `fakturpajakdetail` VALUES (532,'010.000-12.00000005',1317,'PENANGKAL PETIR DAN ARESTER',1,4532500,4900000);
INSERT INTO `fakturpajakdetail` VALUES (533,'010.000-12.00000005',1318,'BIAYA CABLE',400,5550000,13875);
INSERT INTO `fakturpajakdetail` VALUES (534,'010.000-12.00000005',1319,'BIAYA TIANG ',1,6937500,7500000);
INSERT INTO `fakturpajakdetail` VALUES (535,'010.000-12.00000005',1320,'BIAYA INSTALASI UNTUK CCTV',2,850000,500000);
INSERT INTO `fakturpajakdetail` VALUES (536,'010.000-12.00000005',1321,'BIAYA PEKERJAAN SIPIL',1,4162500,4500000);
INSERT INTO `fakturpajakdetail` VALUES (537,'010.000-12.00000005',1322,'BIAYA TESTING DAN COMMISSIONING',1,1850000,2000000);
INSERT INTO `fakturpajakdetail` VALUES (538,'010.000-12.00000005',1323,'BIAYA INSTALASI PENANGKAL PETIR',1,4162500,4500000);
INSERT INTO `fakturpajakdetail` VALUES (539,'010.000-12.00000005',1324,'BIAYA TRANSPORTASI DAN AKOMODASI',1,13875000,15000000);
INSERT INTO `fakturpajakdetail` VALUES (540,'010.000-12.00000006',1224,'LCD TV 32\" ',6,20850000,3475000);
INSERT INTO `fakturpajakdetail` VALUES (541,'010.000-12.00000006',1160,'LCD TV 42\" ',6,39600000,6600000);
INSERT INTO `fakturpajakdetail` VALUES (542,'010.000-12.00000007',1224,'LCD TV 32\" ',1,2885000,2885000);
INSERT INTO `fakturpajakdetail` VALUES (543,'010.000-12.00000007',1204,'WALL BRACKET',1,275000,275000);
INSERT INTO `fakturpajakdetail` VALUES (544,'010.000-12.00000008',1291,'JASA INSTALASI AC',6,1800000,300000);
INSERT INTO `fakturpajakdetail` VALUES (545,'010.000-12.00000008',1262,'JASA BONGKAR UNIT',5,750000,150000);
INSERT INTO `fakturpajakdetail` VALUES (546,'010.000-12.00000008',1275,'PIPA REFRIGERANT + ISOLASI (1/4\" + 1/2\")',30,3000000,100000);
INSERT INTO `fakturpajakdetail` VALUES (547,'010.000-12.00000008',1260,'KABEL CONTROL ',30,810000,27000);
INSERT INTO `fakturpajakdetail` VALUES (548,'010.000-12.00000008',1245,'PIPA DRAIN ',18,360000,20000);
INSERT INTO `fakturpajakdetail` VALUES (549,'010.000-12.00000008',1259,'INSTALASI BRACKET',6,570000,95000);
INSERT INTO `fakturpajakdetail` VALUES (550,'010.000-12.00000009',1230,'LCD TV 32\" ',7,17181815,2454545);

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
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
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
INSERT INTO `foot_note` VALUES (13,'9','1','Delivery to','Alamat Kirim Dealer KTB Mitsubishi ( Terlampir )');
INSERT INTO `foot_note` VALUES (14,'9',NULL,NULL,'Kirim : SEGERA');
INSERT INTO `foot_note` VALUES (15,'9','2','Payment','- Kirim Tgl. 1 - 5, Pembayaran Tgl. 5 Bulan Berikutnya');
INSERT INTO `foot_note` VALUES (16,'9',NULL,NULL,'- Kirim Tgl. 16 - 30/31, Pembayaran Tgl. 20 Bulan Berikutnya');
INSERT INTO `foot_note` VALUES (17,'9','3','Unit Price','Included VAT 10%');
INSERT INTO `foot_note` VALUES (18,'7','1.','Payment Term','Follow PT.CMS System');
INSERT INTO `foot_note` VALUES (19,'7','2.','Delivery Addres','Grand Wisata Summer Fetival AE 07/2 Bekasi');
INSERT INTO `foot_note` VALUES (20,'7',NULL,NULL,'Tlp.021 - 82616101');
INSERT INTO `foot_note` VALUES (21,'7',NULL,NULL,'Up. Ibu Arie');
INSERT INTO `foot_note` VALUES (22,'3','1','Delivey to','Grand Wisata Summer Festival AE 07/2 Bekasi');
INSERT INTO `foot_note` VALUES (23,'3','','','Tlp. 021 - 82616101');
INSERT INTO `foot_note` VALUES (24,'3','','','Up. Ibu Arie');
INSERT INTO `foot_note` VALUES (25,'3','2','Delivery time','Rabu, tgl. 8 Februari 2012');
INSERT INTO `foot_note` VALUES (26,'18','1','Delivery to','Grand Wisata Summer Festival AE 07/2 Bekasi');
INSERT INTO `foot_note` VALUES (27,'18','','','(Keluar Tol Tambun )');
INSERT INTO `foot_note` VALUES (28,'18','','','Tlp. 021 - 82616101');
INSERT INTO `foot_note` VALUES (29,'14','1','Delivery to',NULL);
INSERT INTO `foot_note` VALUES (30,'14','2','Delivery time',NULL);
INSERT INTO `foot_note` VALUES (31,'14','3','Payment',NULL);
INSERT INTO `foot_note` VALUES (32,'8','1','Delivery to',NULL);
INSERT INTO `foot_note` VALUES (33,'8','2','Delivery time',NULL);
INSERT INTO `foot_note` VALUES (34,'8','3','Payment','100% two weeks after complete invoices received');
INSERT INTO `foot_note` VALUES (35,'7','3','Delivery Time','Sabtu, tgl. 14 Januari 2012');
INSERT INTO `foot_note` VALUES (36,'18',NULL,NULL,'Up. Ibu Arie');
INSERT INTO `foot_note` VALUES (37,'18','2','Delivery Time','Selasa, tgl. 7 Februari 2012');
INSERT INTO `foot_note` VALUES (38,'18','3','Payment Term','1 (one) month after original invoice received');
INSERT INTO `foot_note` VALUES (39,'3','3','Payment term','100% two weeks after complete invoices received');
INSERT INTO `foot_note` VALUES (40,'3','4','Unit price','Included VAT 10%');
INSERT INTO `foot_note` VALUES (41,'19','1','Delivery to','Grand Wisata Summer Festival AE 07/2 Bekasi');
INSERT INTO `foot_note` VALUES (42,'19',NULL,NULL,'Tlp. 021 - 82616101');
INSERT INTO `foot_note` VALUES (43,'19',NULL,NULL,'Up. Ibu Arie');
INSERT INTO `foot_note` VALUES (44,'19','2','Delivery time','Senin, tgl. 26 Maret 2012');
INSERT INTO `foot_note` VALUES (45,'19','3','Payment','Cash On Delivery');
INSERT INTO `foot_note` VALUES (46,'26','1','Payment term','DP 30%, Balance 70% 2(two) weeks after delivery unit');
INSERT INTO `foot_note` VALUES (47,'26','2','Warranty','1(one) years for service & spare part');
INSERT INTO `foot_note` VALUES (48,'26','3','Price','Included VAT 10%');
INSERT INTO `foot_note` VALUES (49,'26','4','Delivery address',NULL);
INSERT INTO `foot_note` VALUES (50,'26','5','Delivery time',NULL);
INSERT INTO `foot_note` VALUES (51,'27','1','Delivey to','Grand Wisata Summer Festival AE 07/2 Bekasi');
INSERT INTO `foot_note` VALUES (52,'27',NULL,NULL,'Tlp.021 - 82616101');
INSERT INTO `foot_note` VALUES (53,'27',NULL,NULL,'Up. Ibu Arie');
INSERT INTO `foot_note` VALUES (54,'27','2','Payment','Cash On Delivery');
INSERT INTO `foot_note` VALUES (55,'27','3','Delivery time','Selasa, 3 April 2012');
INSERT INTO `foot_note` VALUES (56,'28','1','Delivery to','Diambil Sendiri');
INSERT INTO `foot_note` VALUES (57,'28','2','Delivery time','Kamis, 5 April 2012');
INSERT INTO `foot_note` VALUES (58,'28','3','Payment','Cash On Delivery');
INSERT INTO `foot_note` VALUES (59,'29','1','Delivey to','Diambil Sendiri');
INSERT INTO `foot_note` VALUES (60,'29','2','Payment','Cash On Delivery');
INSERT INTO `foot_note` VALUES (61,'30','1.','Delivey to',NULL);
INSERT INTO `foot_note` VALUES (62,'30','2.','Delivery time',NULL);
INSERT INTO `foot_note` VALUES (63,'30','3.','Payment',NULL);
INSERT INTO `foot_note` VALUES (64,'31','1','Payment term','1 (one) month after original invoice received');
INSERT INTO `foot_note` VALUES (65,'31','2','Price','include VAT 10%');
INSERT INTO `foot_note` VALUES (66,'31','3','Delivery addres','barang akan diambil sendiri');
INSERT INTO `foot_note` VALUES (67,'31','4','Delivery time','Jumat, tgl. 27 April 2012');

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
) ENGINE=MyISAM AUTO_INCREMENT=1214 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `general_ledger` VALUES (371,'210-20',12450000,'2012-03-13',NULL,'Pembelian,PT. Catur Mitra Sepakat',NULL,12450000,'001/SV/PO/01/2012');
INSERT INTO `general_ledger` VALUES (372,'140-10',12450000,'2012-03-13',NULL,'Pembelian,PT. Catur Mitra Sepakat',12450000,NULL,'001/SV/PO/01/2012');
INSERT INTO `general_ledger` VALUES (373,'210-20',918320000,'2012-03-13',NULL,'Pembelian,PT. Gobel Dharma Nusantara',NULL,918320000,'001/SV/PO/03/2012');
INSERT INTO `general_ledger` VALUES (374,'140-10',918320000,'2012-03-13',NULL,'Pembelian,PT. Gobel Dharma Nusantara',918320000,NULL,'001/SV/PO/03/2012');
INSERT INTO `general_ledger` VALUES (375,'210-20',4300000,'2012-01-01',NULL,'Pembelian,PT. Catur Mitra Sepakat',NULL,4300000,'003/SV/PO/01/2012');
INSERT INTO `general_ledger` VALUES (376,'140-10',4300000,'2012-01-01',NULL,'Pembelian,PT. Catur Mitra Sepakat',4300000,NULL,'003/SV/PO/01/2012');
INSERT INTO `general_ledger` VALUES (377,'210-20',2084500,'2012-01-01',NULL,'Pembelian,PT. Sharp Electronics Indonesia',NULL,2084500,'004/SV/PO/01/2012');
INSERT INTO `general_ledger` VALUES (378,'140-10',2084500,'2012-01-01',NULL,'Pembelian,PT. Sharp Electronics Indonesia',2084500,NULL,'004/SV/PO/01/2012');
INSERT INTO `general_ledger` VALUES (379,'210-20',2084500,'2012-01-01',NULL,'Pembelian,PT. Sharp Electronics Indonesia',NULL,2084500,'005/SV/PO/01/2012');
INSERT INTO `general_ledger` VALUES (380,'140-10',2084500,'2012-01-01',NULL,'Pembelian,PT. Sharp Electronics Indonesia',2084500,NULL,'005/SV/PO/01/2012');
INSERT INTO `general_ledger` VALUES (381,'210-20',1215500,'2012-01-01',NULL,'Pembelian,PT. Sharp Electronics Indonesia',NULL,1215500,'006/SV/PO/01/2012');
INSERT INTO `general_ledger` VALUES (382,'140-10',1215500,'2012-01-01',NULL,'Pembelian,PT. Sharp Electronics Indonesia',1215500,NULL,'006/SV/PO/01/2012');
INSERT INTO `general_ledger` VALUES (383,'210-20',752025000,'2012-01-01',NULL,'Pembelian,PT. Gobel Dharma Nusantara',NULL,752025000,'007/SV/PO/01/2012');
INSERT INTO `general_ledger` VALUES (384,'140-10',752025000,'2012-01-01',NULL,'Pembelian,PT. Gobel Dharma Nusantara',752025000,NULL,'007/SV/PO/01/2012');
INSERT INTO `general_ledger` VALUES (385,'210-20',3500000,'2012-01-01',NULL,'Pembelian,PT. Catur Mitra Sepakat',NULL,3500000,'008/SV/PO/01/2012');
INSERT INTO `general_ledger` VALUES (386,'140-10',3500000,'2012-01-01',NULL,'Pembelian,PT. Catur Mitra Sepakat',3500000,NULL,'008/SV/PO/01/2012');
INSERT INTO `general_ledger` VALUES (387,'210-20',1375000,'2012-01-01',NULL,'Pembelian,PT. Sharp Electronics Indonesia',NULL,1375000,'009/SV/PO/01/2012');
INSERT INTO `general_ledger` VALUES (388,'140-10',1375000,'2012-01-01',NULL,'Pembelian,PT. Sharp Electronics Indonesia',1375000,NULL,'009/SV/PO/01/2012');
INSERT INTO `general_ledger` VALUES (389,'210-20',159680000,'2012-01-01',NULL,'Pembelian,PT. Gobel Dharma Nusantara',NULL,159680000,'010/SV/PO/01/2012');
INSERT INTO `general_ledger` VALUES (390,'140-10',159680000,'2012-01-01',NULL,'Pembelian,PT. Gobel Dharma Nusantara',159680000,NULL,'010/SV/PO/01/2012');
INSERT INTO `general_ledger` VALUES (391,'210-20',17500000,'2012-01-01',NULL,'Pembelian,PT. LG Electronics Indonesia',NULL,17500000,'011/SV/PO/01/2012');
INSERT INTO `general_ledger` VALUES (392,'140-10',17500000,'2012-01-01',NULL,'Pembelian,PT. LG Electronics Indonesia',17500000,NULL,'011/SV/PO/01/2012');
INSERT INTO `general_ledger` VALUES (393,'210-20',4990000,'2012-01-01',NULL,'Pembelian,PT. Gobel Dharma Nusantara',NULL,4990000,'012/SV/PO/01/2012');
INSERT INTO `general_ledger` VALUES (394,'140-10',4990000,'2012-01-01',NULL,'Pembelian,PT. Gobel Dharma Nusantara',4990000,NULL,'012/SV/PO/01/2012');
INSERT INTO `general_ledger` VALUES (395,'210-20',10630000,'2012-01-01',NULL,'Pembelian,PT. Gobel Dharma Nusantara',NULL,10630000,'013/SV/PO/01/2012');
INSERT INTO `general_ledger` VALUES (396,'140-10',10630000,'2012-01-01',NULL,'Pembelian,PT. Gobel Dharma Nusantara',10630000,NULL,'013/SV/PO/01/2012');
INSERT INTO `general_ledger` VALUES (397,'210-20',638500000,'2012-01-01',NULL,'Pembelian,PT. Gobel Dharma Nusantara',NULL,638500000,'014/SV/PO/01/2012');
INSERT INTO `general_ledger` VALUES (398,'140-10',638500000,'2012-01-01',NULL,'Pembelian,PT. Gobel Dharma Nusantara',638500000,NULL,'014/SV/PO/01/2012');
INSERT INTO `general_ledger` VALUES (399,'210-20',49900000,'2012-02-01',NULL,'Pembelian,PT. Gobel Dharma Nusantara',NULL,49900000,'001/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (400,'140-10',49900000,'2012-02-01',NULL,'Pembelian,PT. Gobel Dharma Nusantara',49900000,NULL,'001/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (401,'210-20',53950000,'2012-02-01',NULL,'Pembelian,PT. Catur Mitra Sepakat',NULL,53950000,'002/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (402,'140-10',53950000,'2012-02-01',NULL,'Pembelian,PT. Catur Mitra Sepakat',53950000,NULL,'002/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (403,'210-20',18600000,'2012-02-01',NULL,'Pembelian,PT. LG Electronics Indonesia',NULL,18600000,'003/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (404,'140-10',18600000,'2012-02-01',NULL,'Pembelian,PT. LG Electronics Indonesia',18600000,NULL,'003/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (405,'210-20',14970000,'2012-02-01',NULL,'Pembelian,PT. Gobel Dharma Nusantara',NULL,14970000,'004/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (406,'140-10',14970000,'2012-02-01',NULL,'Pembelian,PT. Gobel Dharma Nusantara',14970000,NULL,'004/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (407,'210-20',56300000,'2012-02-01',NULL,'Pembelian,PT. LG Electronics Indonesia',NULL,56300000,'005/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (408,'140-10',56300000,'2012-02-01',NULL,'Pembelian,PT. LG Electronics Indonesia',56300000,NULL,'005/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (409,'210-20',10900000,'2012-02-01',NULL,'Pembelian,PT. Sharp Electronics Indonesia',NULL,10900000,'006/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (410,'140-10',10900000,'2012-02-01',NULL,'Pembelian,PT. Sharp Electronics Indonesia',10900000,NULL,'006/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (411,'210-20',676865000,'2012-02-01',NULL,'Pembelian,PT. Gobel Dharma Nusantara',NULL,676865000,'007/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (412,'140-10',676865000,'2012-02-01',NULL,'Pembelian,PT. Gobel Dharma Nusantara',676865000,NULL,'007/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (413,'210-20',6750000,'2012-02-01',NULL,'Pembelian,PT. Sharp Electronics Indonesia',NULL,6750000,'008/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (414,'140-10',6750000,'2012-02-01',NULL,'Pembelian,PT. Sharp Electronics Indonesia',6750000,NULL,'008/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (415,'210-20',30600000,'2012-02-01',NULL,'Pembelian,PT. Sharp Electronics Indonesia',NULL,30600000,'009/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (416,'140-10',30600000,'2012-02-01',NULL,'Pembelian,PT. Sharp Electronics Indonesia',30600000,NULL,'009/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (417,'210-20',2500000,'2012-02-01',NULL,'Pembelian,PT. LG Electronics Indonesia',NULL,2500000,'010/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (418,'140-10',2500000,'2012-02-01',NULL,'Pembelian,PT. LG Electronics Indonesia',2500000,NULL,'010/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (419,'210-20',2500000,'2012-02-01',NULL,'Pembelian,PT. LG Electronics Indonesia',NULL,2500000,'011/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (420,'140-10',2500000,'2012-02-01',NULL,'Pembelian,PT. LG Electronics Indonesia',2500000,NULL,'011/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (421,'210-20',5200000,'2012-02-01',NULL,'Pembelian,PT. LG Electronics Indonesia',NULL,5200000,'012/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (422,'140-10',5200000,'2012-02-01',NULL,'Pembelian,PT. LG Electronics Indonesia',5200000,NULL,'012/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (423,'210-20',10400000,'2012-02-01',NULL,'Pembelian,PT. LG Electronics Indonesia',NULL,10400000,'013/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (424,'140-10',10400000,'2012-02-01',NULL,'Pembelian,PT. LG Electronics Indonesia',10400000,NULL,'013/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (425,'210-20',52395000,'2012-02-01',NULL,'Pembelian,PT. Gobel Dharma Nusantara',NULL,52395000,'014/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (426,'140-10',52395000,'2012-02-01',NULL,'Pembelian,PT. Gobel Dharma Nusantara',52395000,NULL,'014/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (427,'210-20',4990000,'2012-02-01',NULL,'Pembelian,PT. Gobel Dharma Nusantara',NULL,4990000,'015/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (428,'140-10',4990000,'2012-02-01',NULL,'Pembelian,PT. Gobel Dharma Nusantara',4990000,NULL,'015/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (429,'210-20',12475000,'2012-02-01',NULL,'Pembelian,PT. Gobel Dharma Nusantara',NULL,12475000,'016/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (430,'140-10',12475000,'2012-02-01',NULL,'Pembelian,PT. Gobel Dharma Nusantara',12475000,NULL,'016/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (431,'210-20',5600000,'2012-03-01',NULL,'Pembelian,PT. LG Electronics Indonesia',NULL,5600000,'001/SV/PO/03/2012');
INSERT INTO `general_ledger` VALUES (432,'140-10',5600000,'2012-03-01',NULL,'Pembelian,PT. LG Electronics Indonesia',5600000,NULL,'001/SV/PO/03/2012');
INSERT INTO `general_ledger` VALUES (433,'210-20',2150000,'2012-03-01',NULL,'Pembelian,PT. Catur Mitra Sepakat',NULL,2150000,'002/SV/PO/03/2012');
INSERT INTO `general_ledger` VALUES (434,'140-10',2150000,'2012-03-01',NULL,'Pembelian,PT. Catur Mitra Sepakat',2150000,NULL,'002/SV/PO/03/2012');
INSERT INTO `general_ledger` VALUES (435,'210-20',5125000,'2012-03-01',NULL,'Pembelian,PT. Catur Mitra Sepakat',NULL,5125000,'003/SV/PO/03/2012');
INSERT INTO `general_ledger` VALUES (436,'140-10',5125000,'2012-03-01',NULL,'Pembelian,PT. Catur Mitra Sepakat',5125000,NULL,'003/SV/PO/03/2012');
INSERT INTO `general_ledger` VALUES (437,'210-20',1101825000,'2012-03-01',NULL,'Pembelian,PT. Gobel Dharma Nusantara',NULL,1101825000,'004/SV/PO/03/2012');
INSERT INTO `general_ledger` VALUES (438,'140-10',1101825000,'2012-03-01',NULL,'Pembelian,PT. Gobel Dharma Nusantara',1101825000,NULL,'004/SV/PO/03/2012');
INSERT INTO `general_ledger` VALUES (439,'210-20',20387000,'2012-03-01',NULL,'Pembelian,PT. Sharp Electronics Indonesia',NULL,20387000,'005/SV/PO/03/2012');
INSERT INTO `general_ledger` VALUES (440,'140-10',20387000,'2012-03-01',NULL,'Pembelian,PT. Sharp Electronics Indonesia',20387000,NULL,'005/SV/PO/03/2012');
INSERT INTO `general_ledger` VALUES (461,'210-20',12475000,'2012-03-26',NULL,'Pembelian,PT. Gobel Dharma Nusantara',NULL,12475000,'006/SV/PO/03/2012');
INSERT INTO `general_ledger` VALUES (462,'140-10',12475000,'2012-03-26',NULL,'Pembelian,PT. Gobel Dharma Nusantara',12475000,NULL,'006/SV/PO/03/2012');
INSERT INTO `general_ledger` VALUES (463,'210-20',13593000,'2012-03-26',NULL,'Pembelian,Toko Cahaya Makmur Sejahtera',NULL,13593000,'007/SV/PO/03/2012');
INSERT INTO `general_ledger` VALUES (464,'140-10',13593000,'2012-03-26',NULL,'Pembelian,Toko Cahaya Makmur Sejahtera',13593000,NULL,'007/SV/PO/03/2012');
INSERT INTO `general_ledger` VALUES (465,'210-20',9000000,'2012-03-26',NULL,'Pembelian,PT. Catur Mitra Sepakat',NULL,9000000,'008/SV/PO/03/2012');
INSERT INTO `general_ledger` VALUES (466,'140-10',9000000,'2012-03-26',NULL,'Pembelian,PT. Catur Mitra Sepakat',9000000,NULL,'008/SV/PO/03/2012');
INSERT INTO `general_ledger` VALUES (467,'210-20',121374000,'2012-03-26',NULL,'Pembelian,PT. Gobel Dharma Nusantara',NULL,121374000,'009/SV/PO/03/2012');
INSERT INTO `general_ledger` VALUES (468,'140-10',121374000,'2012-03-26',NULL,'Pembelian,PT. Gobel Dharma Nusantara',121374000,NULL,'009/SV/PO/03/2012');
INSERT INTO `general_ledger` VALUES (469,'110-20',-150000000,'2012-01-01',NULL,'Pembelian,PT. Saitech',NULL,150000000,'001/SV/CA/01/2012');
INSERT INTO `general_ledger` VALUES (470,'140-10',150000000,'2012-01-01',NULL,'Pembelian,PT. Saitech',150000000,NULL,'001/SV/CA/01/2012');
INSERT INTO `general_ledger` VALUES (471,'110-20',-95000000,'2012-01-01',NULL,'Pembelian,PT. IMS',NULL,95000000,'002/SV/CA/01/2012');
INSERT INTO `general_ledger` VALUES (472,'140-10',95000000,'2012-01-01',NULL,'Pembelian,PT. IMS',95000000,NULL,'002/SV/CA/01/2012');
INSERT INTO `general_ledger` VALUES (473,'110-20',-13584000,'2012-01-01',NULL,'Pembelian,Taruna Tehnik',NULL,13584000,'003/SV/CA/01/2012');
INSERT INTO `general_ledger` VALUES (474,'140-10',13584000,'2012-01-01',NULL,'Pembelian,Taruna Tehnik',13584000,NULL,'003/SV/CA/01/2012');
INSERT INTO `general_ledger` VALUES (475,'110-20',-403715000,'2012-01-01',NULL,'Pembelian,Taruna Tehnik',NULL,403715000,'004/SV/CA/01/2012');
INSERT INTO `general_ledger` VALUES (476,'140-10',403715000,'2012-01-01',NULL,'Pembelian,Taruna Tehnik',403715000,NULL,'004/SV/CA/01/2012');
INSERT INTO `general_ledger` VALUES (477,'110-20',-145060000,'2012-01-01',NULL,'Pembelian,PT. Puterako Inti Buana',NULL,145060000,'005/SV/CA/01/2012');
INSERT INTO `general_ledger` VALUES (478,'140-10',145060000,'2012-01-01',NULL,'Pembelian,PT. Puterako Inti Buana',145060000,NULL,'005/SV/CA/01/2012');
INSERT INTO `general_ledger` VALUES (479,'110-20',-370000,'2012-01-01',NULL,'Pembelian,PT. Gobel Dharma Nusantara',NULL,370000,'006/SV/CA/01/2012');
INSERT INTO `general_ledger` VALUES (480,'140-10',370000,'2012-01-01',NULL,'Pembelian,PT. Gobel Dharma Nusantara',370000,NULL,'006/SV/CA/01/2012');
INSERT INTO `general_ledger` VALUES (481,'110-20',-7085000,'2012-01-01',NULL,'Pembelian,Taruna Tehnik',NULL,7085000,'007/SV/CA/01/2012');
INSERT INTO `general_ledger` VALUES (482,'140-10',7085000,'2012-01-01',NULL,'Pembelian,Taruna Tehnik',7085000,NULL,'007/SV/CA/01/2012');
INSERT INTO `general_ledger` VALUES (488,'510-80',NULL,'2012-01-01',NULL,'Biaya atas Pengiriman Barang,Biaya Ekspedisi Indojaya - Kiriman KTB',1635000,0,'JU00000004');
INSERT INTO `general_ledger` VALUES (489,'110-20',-1635000,'2012-01-01',NULL,'Kas,Biaya Ekspedisi Indojaya - Kiriman KTB',0,1635000,'JU00000004');
INSERT INTO `general_ledger` VALUES (490,'510-80',6610000,'2012-01-01',NULL,'Biaya atas Pengiriman Barang,Biaya Ekspedisi Indojaya - Kiriman KTB',6610000,0,'JU00000005');
INSERT INTO `general_ledger` VALUES (491,'110-20',-6610000,'2012-01-01',NULL,'Kas,Biaya Ekspedisi Indojaya - Kiriman KTB',0,6610000,'JU00000005');
INSERT INTO `general_ledger` VALUES (492,'510-80',325000,'2012-01-01',NULL,'Biaya atas Pengiriman Barang,Biaya Ekspedisi Indojaya - Kiriman KTB',325000,0,'JU00000006');
INSERT INTO `general_ledger` VALUES (493,'110-20',-325000,'2012-01-01',NULL,'Kas,Biaya Ekspedisi Indojaya - Kiriman KTB',0,325000,'JU00000006');
INSERT INTO `general_ledger` VALUES (494,'510-80',41955000,'2012-01-01',NULL,'Biaya atas Pengiriman Barang,Biaya Ekspedisi Indojaya - Kiriman KTB',41955000,0,'JU00000007');
INSERT INTO `general_ledger` VALUES (495,'110-20',-41955000,'2012-01-01',NULL,'Kas,Biaya Ekspedisi Indojaya - Kiriman KTB',0,41955000,'JU00000007');
INSERT INTO `general_ledger` VALUES (496,'210-20',110340000,'2012-03-29',NULL,'Pembelian,PT. Gobel Dharma Nusantara',NULL,110340000,'010/SV/PO/03/2012');
INSERT INTO `general_ledger` VALUES (497,'140-10',110340000,'2012-03-29',NULL,'Pembelian,PT. Gobel Dharma Nusantara',110340000,NULL,'010/SV/PO/03/2012');
INSERT INTO `general_ledger` VALUES (498,'210-20',79950000,'2012-03-29',NULL,'Pembelian,PT. Sharp Electronics Indonesia',NULL,79950000,'011/SV/PO/03/2012');
INSERT INTO `general_ledger` VALUES (499,'140-10',79950000,'2012-03-29',NULL,'Pembelian,PT. Sharp Electronics Indonesia',79950000,NULL,'011/SV/PO/03/2012');
INSERT INTO `general_ledger` VALUES (500,'210-20',13150000,'2012-03-29',NULL,'Pembelian,PT. Sharp Electronics Indonesia',NULL,13150000,'012/SV/PO/03/2012');
INSERT INTO `general_ledger` VALUES (501,'140-10',13150000,'2012-03-29',NULL,'Pembelian,PT. Sharp Electronics Indonesia',13150000,NULL,'012/SV/PO/03/2012');
INSERT INTO `general_ledger` VALUES (502,'110-20',-1500000,'2012-01-01',NULL,'Pembelian,Toko Sumber Abadi Teknik',NULL,1500000,'008/SV/CA/01/2012');
INSERT INTO `general_ledger` VALUES (503,'140-10',1500000,'2012-01-01',NULL,'Pembelian,Toko Sumber Abadi Teknik',1500000,NULL,'008/SV/CA/01/2012');
INSERT INTO `general_ledger` VALUES (504,'110-20',-6000000,'2012-01-01',NULL,'Pembelian,Toko Sumber Abadi Teknik',NULL,6000000,'009/SV/CA/01/2012');
INSERT INTO `general_ledger` VALUES (505,'140-10',6000000,'2012-01-01',NULL,'Pembelian,Toko Sumber Abadi Teknik',6000000,NULL,'009/SV/CA/01/2012');
INSERT INTO `general_ledger` VALUES (506,'110-20',-1300000,'2012-02-01',NULL,'Pembelian,PT. Guna Logam',NULL,1300000,'001/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (507,'140-10',1300000,'2012-02-01',NULL,'Pembelian,PT. Guna Logam',1300000,NULL,'001/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (508,'110-20',-2100000,'2012-02-01',NULL,'Pembelian,PT. Guna Logam',NULL,2100000,'002/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (509,'140-10',2100000,'2012-02-01',NULL,'Pembelian,PT. Guna Logam',2100000,NULL,'002/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (510,'110-20',-1040000,'2012-02-01',NULL,'Pembelian,Taruna Tehnik',NULL,1040000,'003/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (511,'140-10',1040000,'2012-02-01',NULL,'Pembelian,Taruna Tehnik',1040000,NULL,'003/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (512,'110-20',-1350000,'2012-02-01',NULL,'Pembelian,Muhtadin Azis',NULL,1350000,'004/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (513,'140-10',1350000,'2012-02-01',NULL,'Pembelian,Muhtadin Azis',1350000,NULL,'004/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (514,'110-20',-8202000,'2012-02-01',NULL,'Pembelian,Taruna Tehnik',NULL,8202000,'005/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (515,'140-10',8202000,'2012-02-01',NULL,'Pembelian,Taruna Tehnik',8202000,NULL,'005/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (516,'110-20',-1600000,'2012-02-01',NULL,'Pembelian,Murjili',NULL,1600000,'006/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (517,'140-10',1600000,'2012-02-01',NULL,'Pembelian,Murjili',1600000,NULL,'006/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (518,'110-20',-11632000,'2012-02-01',NULL,'Pembelian,Vivi Electrindo',NULL,11632000,'007/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (519,'140-10',11632000,'2012-02-01',NULL,'Pembelian,Vivi Electrindo',11632000,NULL,'007/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (520,'110-20',-6250000,'2012-02-01',NULL,'Pembelian,Taruna Tehnik',NULL,6250000,'008/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (521,'140-10',6250000,'2012-02-01',NULL,'Pembelian,Taruna Tehnik',6250000,NULL,'008/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (522,'110-20',-60000,'2012-02-20',NULL,'Pembelian,Taruna Tehnik',NULL,60000,'001/SV/CA/02/2012');
INSERT INTO `general_ledger` VALUES (523,'140-10',60000,'2012-02-20',NULL,'Pembelian,Taruna Tehnik',60000,NULL,'001/SV/CA/02/2012');
INSERT INTO `general_ledger` VALUES (524,'110-20',-150000,'2012-02-20',NULL,'Pembelian,Murjili',NULL,150000,'002/SV/CA/02/2012');
INSERT INTO `general_ledger` VALUES (525,'140-10',150000,'2012-02-20',NULL,'Pembelian,Murjili',150000,NULL,'002/SV/CA/02/2012');
INSERT INTO `general_ledger` VALUES (526,'110-20',-180000,'2012-02-20',NULL,'Pembelian,Agung Handoko',NULL,180000,'003/SV/CA/02/2012');
INSERT INTO `general_ledger` VALUES (527,'140-10',180000,'2012-02-20',NULL,'Pembelian,Agung Handoko',180000,NULL,'003/SV/CA/02/2012');
INSERT INTO `general_ledger` VALUES (528,'110-20',-8202000,'2012-02-20',NULL,'Pembelian,Taruna Tehnik',NULL,8202000,'004/SV/CA/02/2012');
INSERT INTO `general_ledger` VALUES (529,'140-10',8202000,'2012-02-20',NULL,'Pembelian,Taruna Tehnik',8202000,NULL,'004/SV/CA/02/2012');
INSERT INTO `general_ledger` VALUES (530,'110-20',-1370000,'2012-02-20',NULL,'Pembelian,Taruna Tehnik',NULL,1370000,'005/SV/CA/02/2012');
INSERT INTO `general_ledger` VALUES (531,'140-10',1370000,'2012-02-20',NULL,'Pembelian,Taruna Tehnik',1370000,NULL,'005/SV/CA/02/2012');
INSERT INTO `general_ledger` VALUES (532,'110-20',-70750000,'2012-02-20',NULL,'Pembelian,Muhtadin Azis',NULL,70750000,'006/SV/CA/02/2012');
INSERT INTO `general_ledger` VALUES (533,'140-10',70750000,'2012-02-20',NULL,'Pembelian,Muhtadin Azis',70750000,NULL,'006/SV/CA/02/2012');
INSERT INTO `general_ledger` VALUES (534,'110-20',-244445000,'2012-02-20',NULL,'Pembelian,Taruna Tehnik',NULL,244445000,'007/SV/CA/02/2012');
INSERT INTO `general_ledger` VALUES (535,'140-10',244445000,'2012-02-20',NULL,'Pembelian,Taruna Tehnik',244445000,NULL,'007/SV/CA/02/2012');
INSERT INTO `general_ledger` VALUES (536,'110-20',-1400000,'2012-02-20',NULL,'Pembelian,Muhtadin Azis',NULL,1400000,'008/SV/CA/02/2012');
INSERT INTO `general_ledger` VALUES (537,'140-10',1400000,'2012-02-20',NULL,'Pembelian,Muhtadin Azis',1400000,NULL,'008/SV/CA/02/2012');
INSERT INTO `general_ledger` VALUES (538,'110-20',-7266500,'2012-02-20',NULL,'Pembelian,Taruna Tehnik',NULL,7266500,'009/SV/CA/02/2012');
INSERT INTO `general_ledger` VALUES (539,'140-10',7266500,'2012-02-20',NULL,'Pembelian,Taruna Tehnik',7266500,NULL,'009/SV/CA/02/2012');
INSERT INTO `general_ledger` VALUES (544,'110-20',-500000,'2012-03-01',NULL,'Pembelian,PT. Guna Logam',NULL,500000,'001/SV/CA/03/2012');
INSERT INTO `general_ledger` VALUES (545,'140-10',500000,'2012-03-01',NULL,'Pembelian,PT. Guna Logam',500000,NULL,'001/SV/CA/03/2012');
INSERT INTO `general_ledger` VALUES (546,'110-20',-400000,'2012-03-01',NULL,'Pembelian,Agung Handoko',NULL,400000,'002/SV/CA/03/2012');
INSERT INTO `general_ledger` VALUES (547,'140-10',400000,'2012-03-01',NULL,'Pembelian,Agung Handoko',400000,NULL,'002/SV/CA/03/2012');
INSERT INTO `general_ledger` VALUES (548,'110-20',-4850000,'2012-03-01',NULL,'Pembelian,Taruna Tehnik',NULL,4850000,'003/SV/CA/03/2012');
INSERT INTO `general_ledger` VALUES (549,'140-10',4850000,'2012-03-01',NULL,'Pembelian,Taruna Tehnik',4850000,NULL,'003/SV/CA/03/2012');
INSERT INTO `general_ledger` VALUES (550,'110-20',-2200000,'2012-03-01',NULL,'Pembelian,Sutrisna',NULL,2200000,'004/SV/CA/03/2012');
INSERT INTO `general_ledger` VALUES (551,'140-10',2200000,'2012-03-01',NULL,'Pembelian,Sutrisna',2200000,NULL,'004/SV/CA/03/2012');
INSERT INTO `general_ledger` VALUES (552,'110-20',-10458000,'2012-03-01',NULL,'Pembelian,Vivi Electrindo',NULL,10458000,'005/SV/CA/03/2012');
INSERT INTO `general_ledger` VALUES (553,'140-10',10458000,'2012-03-01',NULL,'Pembelian,Vivi Electrindo',10458000,NULL,'005/SV/CA/03/2012');
INSERT INTO `general_ledger` VALUES (554,'110-20',-500000,'2012-03-01',NULL,'Pembelian,Murjili',NULL,500000,'006/SV/CA/03/2012');
INSERT INTO `general_ledger` VALUES (555,'140-10',500000,'2012-03-01',NULL,'Pembelian,Murjili',500000,NULL,'006/SV/CA/03/2012');
INSERT INTO `general_ledger` VALUES (556,'110-20',-850000,'2012-03-01',NULL,'Pembelian,PT. Guna Logam',NULL,850000,'007/SV/CA/03/2012');
INSERT INTO `general_ledger` VALUES (557,'140-10',850000,'2012-03-01',NULL,'Pembelian,PT. Guna Logam',850000,NULL,'007/SV/CA/03/2012');
INSERT INTO `general_ledger` VALUES (558,'110-20',-7339000,'2012-03-01',NULL,'Pembelian,Taruna Tehnik',NULL,7339000,'008/SV/CA/03/2012');
INSERT INTO `general_ledger` VALUES (559,'140-10',7339000,'2012-03-01',NULL,'Pembelian,Taruna Tehnik',7339000,NULL,'008/SV/CA/03/2012');
INSERT INTO `general_ledger` VALUES (560,'110-20',-1350000,'2012-03-01',NULL,'Pembelian,Muhtadin Azis',NULL,1350000,'009/SV/CA/03/2012');
INSERT INTO `general_ledger` VALUES (561,'140-10',1350000,'2012-03-01',NULL,'Pembelian,Muhtadin Azis',1350000,NULL,'009/SV/CA/03/2012');
INSERT INTO `general_ledger` VALUES (562,'110-20',-111598500,'2012-03-01',NULL,'Pembelian,Vivi Electrindo',NULL,111598500,'010/SV/CA/03/2012');
INSERT INTO `general_ledger` VALUES (563,'140-10',111598500,'2012-03-01',NULL,'Pembelian,Vivi Electrindo',111598500,NULL,'010/SV/CA/03/2012');
INSERT INTO `general_ledger` VALUES (564,'110-20',-36010000,'2012-03-01',NULL,'Pembelian,Murjili',NULL,36010000,'011/SV/CA/03/2012');
INSERT INTO `general_ledger` VALUES (565,'140-10',36010000,'2012-03-01',NULL,'Pembelian,Murjili',36010000,NULL,'011/SV/CA/03/2012');
INSERT INTO `general_ledger` VALUES (581,'110-20',15829000,'2012-01-03',NULL,'Penjualan,PT. Ching Luh Indonesia',15829000,NULL,'JL0000000001');
INSERT INTO `general_ledger` VALUES (582,'140-10',-12924000,'2012-01-03',NULL,'Penyesuaian Persediaan Pada JL0000000001',NULL,12924000,'JL0000000001');
INSERT INTO `general_ledger` VALUES (583,'210-80',1439000,'2012-01-03',NULL,'Penjualan,PT. Ching Luh Indonesia',NULL,1439000,'JL0000000001');
INSERT INTO `general_ledger` VALUES (584,'410-10',14390000,'2012-01-03',NULL,'Penjualan,PT. Ching Luh Indonesia',NULL,14390000,'JL0000000001');
INSERT INTO `general_ledger` VALUES (585,'510-10',12924000,'2012-01-03',NULL,'Penjualan,PT. Ching Luh Indonesia',12924000,NULL,'JL0000000001');
INSERT INTO `general_ledger` VALUES (593,'130-20',356090350,'2012-01-03',NULL,'Penjualan,PT. Gobel Dharma Nusantara',356090350,NULL,'JL0000000002');
INSERT INTO `general_ledger` VALUES (594,'210-40',138736500,'2012-01-03',NULL,'Uang Muka Penjualan pada JL0000000002',138736500,NULL,'JL0000000002');
INSERT INTO `general_ledger` VALUES (595,'110-20',152610150,'2012-01-03',NULL,'Uang Muka Penjualan PadaJL0000000002',152610150,NULL,'JL0000000002');
INSERT INTO `general_ledger` VALUES (596,'140-10',-350512500,'2012-01-03',NULL,'Penyesuaian Persediaan Pada JL0000000002',NULL,350512500,'JL0000000002');
INSERT INTO `general_ledger` VALUES (597,'210-80',46245500,'2012-01-03',NULL,'Penjualan,PT. Gobel Dharma Nusantara',NULL,46245500,'JL0000000002');
INSERT INTO `general_ledger` VALUES (598,'410-10',462455000,'2012-01-03',NULL,'Penjualan,PT. Gobel Dharma Nusantara',NULL,462455000,'JL0000000002');
INSERT INTO `general_ledger` VALUES (599,'510-10',350512500,'2012-01-03',NULL,'Penjualan,PT. Gobel Dharma Nusantara',350512500,NULL,'JL0000000002');
INSERT INTO `general_ledger` VALUES (600,'130-20',71564570,'2012-01-03',NULL,'Penjualan,PT. Gobel Dharma Nusantara',71564570,NULL,'JL0000000003');
INSERT INTO `general_ledger` VALUES (601,'210-40',27882300,'2012-01-03',NULL,'Uang Muka Penjualan pada JL0000000003',27882300,NULL,'JL0000000003');
INSERT INTO `general_ledger` VALUES (602,'110-20',30670530,'2012-01-03',NULL,'Uang Muka Penjualan PadaJL0000000003',30670530,NULL,'JL0000000003');
INSERT INTO `general_ledger` VALUES (603,'140-10',-72831500,'2012-01-03',NULL,'Penyesuaian Persediaan Pada JL0000000003',NULL,72831500,'JL0000000003');
INSERT INTO `general_ledger` VALUES (604,'210-80',9294100,'2012-01-03',NULL,'Penjualan,PT. Gobel Dharma Nusantara',NULL,9294100,'JL0000000003');
INSERT INTO `general_ledger` VALUES (605,'410-10',92941000,'2012-01-03',NULL,'Penjualan,PT. Gobel Dharma Nusantara',NULL,92941000,'JL0000000003');
INSERT INTO `general_ledger` VALUES (606,'510-10',72831500,'2012-01-03',NULL,'Penjualan,PT. Gobel Dharma Nusantara',72831500,NULL,'JL0000000003');
INSERT INTO `general_ledger` VALUES (607,'130-20',573567500,'2012-01-03',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',573567500,NULL,'JL0000000004');
INSERT INTO `general_ledger` VALUES (608,'140-10',-414140000,'2012-01-03',NULL,'Penyesuaian Persediaan Pada JL0000000004',NULL,414140000,'JL0000000004');
INSERT INTO `general_ledger` VALUES (609,'210-80',52142500,'2012-01-03',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',NULL,52142500,'JL0000000004');
INSERT INTO `general_ledger` VALUES (610,'410-10',521425000,'2012-01-03',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',NULL,521425000,'JL0000000004');
INSERT INTO `general_ledger` VALUES (611,'510-10',414140000,'2012-01-03',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',414140000,NULL,'JL0000000004');
INSERT INTO `general_ledger` VALUES (612,'130-20',86771850,'2012-01-03',NULL,'Penjualan,PT. Tansri Madjid Energi',86771850,NULL,'JL0000000005');
INSERT INTO `general_ledger` VALUES (613,'210-40',55389000,'2012-01-03',NULL,'Uang Muka Penjualan pada JL0000000005',55389000,NULL,'JL0000000005');
INSERT INTO `general_ledger` VALUES (614,'110-20',60927900,'2012-01-03',NULL,'Uang Muka Penjualan PadaJL0000000005',60927900,NULL,'JL0000000005');
INSERT INTO `general_ledger` VALUES (615,'140-10',-135760000,'2012-01-03',NULL,'Penyesuaian Persediaan Pada JL0000000005',NULL,135760000,'JL0000000005');
INSERT INTO `general_ledger` VALUES (616,'210-80',13427250,'2012-01-03',NULL,'Penjualan,PT. Tansri Madjid Energi',NULL,13427250,'JL0000000005');
INSERT INTO `general_ledger` VALUES (617,'410-10',134272500,'2012-01-03',NULL,'Penjualan,PT. Tansri Madjid Energi',NULL,134272500,'JL0000000005');
INSERT INTO `general_ledger` VALUES (618,'510-10',135760000,'2012-01-03',NULL,'Penjualan,PT. Tansri Madjid Energi',135760000,NULL,'JL0000000005');
INSERT INTO `general_ledger` VALUES (619,'130-20',66495000,'2012-01-03',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',66495000,NULL,'JL0000000006');
INSERT INTO `general_ledger` VALUES (620,'140-10',-46860000,'2012-01-03',NULL,'Penyesuaian Persediaan Pada JL0000000006',NULL,46860000,'JL0000000006');
INSERT INTO `general_ledger` VALUES (621,'210-80',6045000,'2012-01-03',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',NULL,6045000,'JL0000000006');
INSERT INTO `general_ledger` VALUES (622,'410-10',60450000,'2012-01-03',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',NULL,60450000,'JL0000000006');
INSERT INTO `general_ledger` VALUES (623,'510-10',46860000,'2012-01-03',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',46860000,NULL,'JL0000000006');
INSERT INTO `general_ledger` VALUES (624,'130-20',3476000,'2012-01-05',NULL,'Penjualan,PT. Coca - Cola Distribution Indonesia',3476000,NULL,'JL0000000007');
INSERT INTO `general_ledger` VALUES (625,'140-10',-2570000,'2012-01-05',NULL,'Penyesuaian Persediaan Pada JL0000000007',NULL,2570000,'JL0000000007');
INSERT INTO `general_ledger` VALUES (626,'210-80',316000,'2012-01-05',NULL,'Penjualan,PT. Coca - Cola Distribution Indonesia',NULL,316000,'JL0000000007');
INSERT INTO `general_ledger` VALUES (627,'410-10',3160000,'2012-01-05',NULL,'Penjualan,PT. Coca - Cola Distribution Indonesia',NULL,3160000,'JL0000000007');
INSERT INTO `general_ledger` VALUES (628,'510-10',2570000,'2012-01-05',NULL,'Penjualan,PT. Coca - Cola Distribution Indonesia',2570000,NULL,'JL0000000007');
INSERT INTO `general_ledger` VALUES (629,'110-20',500000,'2012-01-05',NULL,'Penjualan,PT. Grand Puri Permai',500000,NULL,'JL0000000008');
INSERT INTO `general_ledger` VALUES (630,'140-10',-370000,'2012-01-05',NULL,'Penyesuaian Persediaan Pada JL0000000008',NULL,370000,'JL0000000008');
INSERT INTO `general_ledger` VALUES (631,'410-10',500000,'2012-01-05',NULL,'Penjualan,PT. Grand Puri Permai',NULL,500000,'JL0000000008');
INSERT INTO `general_ledger` VALUES (632,'510-10',370000,'2012-01-05',NULL,'Penjualan,PT. Grand Puri Permai',370000,NULL,'JL0000000008');
INSERT INTO `general_ledger` VALUES (633,'130-20',8019000,'2012-01-09',NULL,'Penjualan,PT. Gobel Dharma Nusantara',8019000,NULL,'JL0000000009');
INSERT INTO `general_ledger` VALUES (634,'140-10',-5006000,'2012-01-09',NULL,'Penyesuaian Persediaan Pada JL0000000009',NULL,5006000,'JL0000000009');
INSERT INTO `general_ledger` VALUES (635,'210-80',729000,'2012-01-09',NULL,'Penjualan,PT. Gobel Dharma Nusantara',NULL,729000,'JL0000000009');
INSERT INTO `general_ledger` VALUES (636,'410-10',7290000,'2012-01-09',NULL,'Penjualan,PT. Gobel Dharma Nusantara',NULL,7290000,'JL0000000009');
INSERT INTO `general_ledger` VALUES (637,'510-10',5006000,'2012-01-09',NULL,'Penjualan,PT. Gobel Dharma Nusantara',5006000,NULL,'JL0000000009');
INSERT INTO `general_ledger` VALUES (638,'130-20',17303000,'2012-01-19',NULL,'Penjualan,PT. Seminyak Bali Jaya Kondotel Dan Property',17303000,NULL,'JL0000000010');
INSERT INTO `general_ledger` VALUES (639,'140-10',-9075000,'2012-01-19',NULL,'Penyesuaian Persediaan Pada JL0000000010',NULL,9075000,'JL0000000010');
INSERT INTO `general_ledger` VALUES (640,'210-80',1573000,'2012-01-19',NULL,'Penjualan,PT. Seminyak Bali Jaya Kondotel Dan Property',NULL,1573000,'JL0000000010');
INSERT INTO `general_ledger` VALUES (641,'410-10',15730000,'2012-01-19',NULL,'Penjualan,PT. Seminyak Bali Jaya Kondotel Dan Property',NULL,15730000,'JL0000000010');
INSERT INTO `general_ledger` VALUES (642,'510-10',9075000,'2012-01-19',NULL,'Penjualan,PT. Seminyak Bali Jaya Kondotel Dan Property',9075000,NULL,'JL0000000010');
INSERT INTO `general_ledger` VALUES (643,'110-20',3550000,'2012-01-14',NULL,'Penjualan,PT. Grand Puri Permai',3550000,NULL,'JL0000000011');
INSERT INTO `general_ledger` VALUES (644,'140-10',-3500000,'2012-01-14',NULL,'Penyesuaian Persediaan Pada JL0000000011',NULL,3500000,'JL0000000011');
INSERT INTO `general_ledger` VALUES (645,'410-10',3550000,'2012-01-14',NULL,'Penjualan,PT. Grand Puri Permai',NULL,3550000,'JL0000000011');
INSERT INTO `general_ledger` VALUES (646,'510-10',3500000,'2012-01-14',NULL,'Penjualan,PT. Grand Puri Permai',3500000,NULL,'JL0000000011');
INSERT INTO `general_ledger` VALUES (647,'110-20',2800000,'2012-01-14',NULL,'Penjualan,Komplek Ruko Balindo No.B3B',2800000,NULL,'JL0000000012');
INSERT INTO `general_ledger` VALUES (648,'140-10',-2325000,'2012-01-14',NULL,'Penyesuaian Persediaan Pada JL0000000012',NULL,2325000,'JL0000000012');
INSERT INTO `general_ledger` VALUES (649,'410-10',2800000,'2012-01-14',NULL,'Penjualan,Komplek Ruko Balindo No.B3B',NULL,2800000,'JL0000000012');
INSERT INTO `general_ledger` VALUES (650,'510-10',2325000,'2012-01-14',NULL,'Penjualan,Komplek Ruko Balindo No.B3B',2325000,NULL,'JL0000000012');
INSERT INTO `general_ledger` VALUES (651,'130-20',18899996.5,'2012-01-17',NULL,'Penjualan,PT. Xcell Visual Wibawa',18899996.5,NULL,'JL0000000013');
INSERT INTO `general_ledger` VALUES (652,'140-10',-17500000,'2012-01-17',NULL,'Penyesuaian Persediaan Pada JL0000000013',NULL,17500000,'JL0000000013');
INSERT INTO `general_ledger` VALUES (653,'210-80',1718181.5,'2012-01-17',NULL,'Penjualan,PT. Xcell Visual Wibawa',NULL,1718181.5,'JL0000000013');
INSERT INTO `general_ledger` VALUES (654,'410-10',17181815,'2012-01-17',NULL,'Penjualan,PT. Xcell Visual Wibawa',NULL,17181815,'JL0000000013');
INSERT INTO `general_ledger` VALUES (655,'510-10',17500000,'2012-01-17',NULL,'Penjualan,PT. Xcell Visual Wibawa',17500000,NULL,'JL0000000013');
INSERT INTO `general_ledger` VALUES (656,'110-20',4000000,'2012-01-18',NULL,'Penjualan,PT. Puterako Inti Buana',4000000,NULL,'JL0000000014');
INSERT INTO `general_ledger` VALUES (657,'140-10',-4990000,'2012-01-18',NULL,'Penyesuaian Persediaan Pada JL0000000014',NULL,4990000,'JL0000000014');
INSERT INTO `general_ledger` VALUES (658,'410-10',4000000,'2012-01-18',NULL,'Penjualan,PT. Puterako Inti Buana',NULL,4000000,'JL0000000014');
INSERT INTO `general_ledger` VALUES (659,'510-10',4990000,'2012-01-18',NULL,'Penjualan,PT. Puterako Inti Buana',4990000,NULL,'JL0000000014');
INSERT INTO `general_ledger` VALUES (660,'130-20',2530000,'2012-01-18',NULL,'Penjualan,PT. Imperium Happy Puppy',2530000,NULL,'JL0000000015');
INSERT INTO `general_ledger` VALUES (661,'140-10',-1045000,'2012-01-18',NULL,'Penyesuaian Persediaan Pada JL0000000015',NULL,1045000,'JL0000000015');
INSERT INTO `general_ledger` VALUES (662,'410-10',2530000,'2012-01-18',NULL,'Penjualan,PT. Imperium Happy Puppy',NULL,2530000,'JL0000000015');
INSERT INTO `general_ledger` VALUES (663,'510-10',1045000,'2012-01-18',NULL,'Penjualan,PT. Imperium Happy Puppy',1045000,NULL,'JL0000000015');
INSERT INTO `general_ledger` VALUES (664,'130-20',1150000,'2012-01-18',NULL,'Penjualan,PT. Imperium Happy Puppy',1150000,NULL,'JL0000000016');
INSERT INTO `general_ledger` VALUES (665,'140-10',-475000,'2012-01-18',NULL,'Penyesuaian Persediaan Pada JL0000000016',NULL,475000,'JL0000000016');
INSERT INTO `general_ledger` VALUES (666,'410-10',1150000,'2012-01-18',NULL,'Penjualan,PT. Imperium Happy Puppy',NULL,1150000,'JL0000000016');
INSERT INTO `general_ledger` VALUES (667,'510-10',475000,'2012-01-18',NULL,'Penjualan,PT. Imperium Happy Puppy',475000,NULL,'JL0000000016');
INSERT INTO `general_ledger` VALUES (668,'130-20',562540000,'2012-01-19',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',562540000,NULL,'JL0000000017');
INSERT INTO `general_ledger` VALUES (669,'140-10',-394840000,'2012-01-19',NULL,'Penyesuaian Persediaan Pada JL0000000017',NULL,394840000,'JL0000000017');
INSERT INTO `general_ledger` VALUES (670,'210-80',51140000,'2012-01-19',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',NULL,51140000,'JL0000000017');
INSERT INTO `general_ledger` VALUES (671,'410-10',511400000,'2012-01-19',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',NULL,511400000,'JL0000000017');
INSERT INTO `general_ledger` VALUES (672,'510-10',394840000,'2012-01-19',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',394840000,NULL,'JL0000000017');
INSERT INTO `general_ledger` VALUES (673,'130-20',1447105000,'2012-01-19',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',1447105000,NULL,'JL0000000018');
INSERT INTO `general_ledger` VALUES (674,'140-10',-1028675000,'2012-01-19',NULL,'Penyesuaian Persediaan Pada JL0000000018',NULL,1028675000,'JL0000000018');
INSERT INTO `general_ledger` VALUES (675,'210-80',131555000,'2012-01-19',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',NULL,131555000,'JL0000000018');
INSERT INTO `general_ledger` VALUES (676,'410-10',1315550000,'2012-01-19',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',NULL,1315550000,'JL0000000018');
INSERT INTO `general_ledger` VALUES (677,'510-10',1028675000,'2012-01-19',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',1028675000,NULL,'JL0000000018');
INSERT INTO `general_ledger` VALUES (678,'130-20',111171500,'2012-01-19',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',111171500,NULL,'JL0000000019');
INSERT INTO `general_ledger` VALUES (679,'140-10',-72355000,'2012-01-19',NULL,'Penyesuaian Persediaan Pada JL0000000019',NULL,72355000,'JL0000000019');
INSERT INTO `general_ledger` VALUES (680,'210-80',10106500,'2012-01-19',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',NULL,10106500,'JL0000000019');
INSERT INTO `general_ledger` VALUES (681,'410-10',101065000,'2012-01-19',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',NULL,101065000,'JL0000000019');
INSERT INTO `general_ledger` VALUES (682,'510-10',72355000,'2012-01-19',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',72355000,NULL,'JL0000000019');
INSERT INTO `general_ledger` VALUES (683,'130-20',7667000,'2012-01-19',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',7667000,NULL,'JL0000000020');
INSERT INTO `general_ledger` VALUES (684,'140-10',-4990000,'2012-01-19',NULL,'Penyesuaian Persediaan Pada JL0000000020',NULL,4990000,'JL0000000020');
INSERT INTO `general_ledger` VALUES (685,'210-80',697000,'2012-01-19',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',NULL,697000,'JL0000000020');
INSERT INTO `general_ledger` VALUES (686,'410-10',6970000,'2012-01-19',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',NULL,6970000,'JL0000000020');
INSERT INTO `general_ledger` VALUES (687,'510-10',4990000,'2012-01-19',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',4990000,NULL,'JL0000000020');
INSERT INTO `general_ledger` VALUES (688,'130-20',169675000,'2012-01-19',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',169675000,NULL,'JL0000000021');
INSERT INTO `general_ledger` VALUES (689,'140-10',-119970000,'2012-01-19',NULL,'Penyesuaian Persediaan Pada JL0000000021',NULL,119970000,'JL0000000021');
INSERT INTO `general_ledger` VALUES (690,'210-80',15425000,'2012-01-19',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',NULL,15425000,'JL0000000021');
INSERT INTO `general_ledger` VALUES (691,'410-10',154250000,'2012-01-19',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',NULL,154250000,'JL0000000021');
INSERT INTO `general_ledger` VALUES (692,'510-10',119970000,'2012-01-19',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',119970000,NULL,'JL0000000021');
INSERT INTO `general_ledger` VALUES (698,'130-20',9680100,'2012-01-24',NULL,'Penjualan,PT. Imperium Happy Puppy',9680100,NULL,'JL0000000023');
INSERT INTO `general_ledger` VALUES (699,'140-10',-3895000,'2012-01-24',NULL,'Penyesuaian Persediaan Pada JL0000000023',NULL,3895000,'JL0000000023');
INSERT INTO `general_ledger` VALUES (700,'410-10',9680100,'2012-01-24',NULL,'Penjualan,PT. Imperium Happy Puppy',NULL,9680100,'JL0000000023');
INSERT INTO `general_ledger` VALUES (701,'510-10',3895000,'2012-01-24',NULL,'Penjualan,PT. Imperium Happy Puppy',3895000,NULL,'JL0000000023');
INSERT INTO `general_ledger` VALUES (702,'130-20',2070000,'2012-01-24',NULL,'Penjualan,PT. Imperium Happy Puppy',2070000,NULL,'JL0000000024');
INSERT INTO `general_ledger` VALUES (703,'140-10',-855000,'2012-01-24',NULL,'Penyesuaian Persediaan Pada JL0000000024',NULL,855000,'JL0000000024');
INSERT INTO `general_ledger` VALUES (704,'410-10',2070000,'2012-01-24',NULL,'Penjualan,PT. Imperium Happy Puppy',NULL,2070000,'JL0000000024');
INSERT INTO `general_ledger` VALUES (705,'510-10',855000,'2012-01-24',NULL,'Penjualan,PT. Imperium Happy Puppy',855000,NULL,'JL0000000024');
INSERT INTO `general_ledger` VALUES (706,'130-20',13499997.5,'2012-01-26',NULL,'Penjualan,PT. Xcell Visual Wibawa',13499997.5,NULL,'JL0000000025');
INSERT INTO `general_ledger` VALUES (707,'140-10',-12500000,'2012-01-26',NULL,'Penyesuaian Persediaan Pada JL0000000025',NULL,12500000,'JL0000000025');
INSERT INTO `general_ledger` VALUES (708,'210-80',1227272.5,'2012-01-26',NULL,'Penjualan,PT. Xcell Visual Wibawa',NULL,1227272.5,'JL0000000025');
INSERT INTO `general_ledger` VALUES (709,'410-10',12272725,'2012-01-26',NULL,'Penjualan,PT. Xcell Visual Wibawa',NULL,12272725,'JL0000000025');
INSERT INTO `general_ledger` VALUES (710,'510-10',12500000,'2012-01-26',NULL,'Penjualan,PT. Xcell Visual Wibawa',12500000,NULL,'JL0000000025');
INSERT INTO `general_ledger` VALUES (711,'130-20',8374998.5,'2012-01-27',NULL,'Penjualan,PT. Gobel Dharma Nusantara',8374998.5,NULL,'JL0000000026');
INSERT INTO `general_ledger` VALUES (712,'140-10',-7500000,'2012-01-27',NULL,'Penyesuaian Persediaan Pada JL0000000026',NULL,7500000,'JL0000000026');
INSERT INTO `general_ledger` VALUES (713,'210-80',761363.5,'2012-01-27',NULL,'Penjualan,PT. Gobel Dharma Nusantara',NULL,761363.5,'JL0000000026');
INSERT INTO `general_ledger` VALUES (714,'410-10',7613635,'2012-01-27',NULL,'Penjualan,PT. Gobel Dharma Nusantara',NULL,7613635,'JL0000000026');
INSERT INTO `general_ledger` VALUES (715,'510-10',7500000,'2012-01-27',NULL,'Penjualan,PT. Gobel Dharma Nusantara',7500000,NULL,'JL0000000026');
INSERT INTO `general_ledger` VALUES (716,'130-20',153340000,'2012-01-31',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',153340000,NULL,'JL0000000027');
INSERT INTO `general_ledger` VALUES (717,'140-10',-99800000,'2012-01-31',NULL,'Penyesuaian Persediaan Pada JL0000000027',NULL,99800000,'JL0000000027');
INSERT INTO `general_ledger` VALUES (718,'210-80',13940000,'2012-01-31',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',NULL,13940000,'JL0000000027');
INSERT INTO `general_ledger` VALUES (719,'410-10',139400000,'2012-01-31',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',NULL,139400000,'JL0000000027');
INSERT INTO `general_ledger` VALUES (720,'510-10',99800000,'2012-01-31',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',99800000,NULL,'JL0000000027');
INSERT INTO `general_ledger` VALUES (721,'130-20',15334000,'2012-01-31',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',15334000,NULL,'JL0000000028');
INSERT INTO `general_ledger` VALUES (722,'140-10',-9980000,'2012-01-31',NULL,'Penyesuaian Persediaan Pada JL0000000028',NULL,9980000,'JL0000000028');
INSERT INTO `general_ledger` VALUES (723,'210-80',1394000,'2012-01-31',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',NULL,1394000,'JL0000000028');
INSERT INTO `general_ledger` VALUES (724,'410-10',13940000,'2012-01-31',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',NULL,13940000,'JL0000000028');
INSERT INTO `general_ledger` VALUES (725,'510-10',9980000,'2012-01-31',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',9980000,NULL,'JL0000000028');
INSERT INTO `general_ledger` VALUES (726,'130-20',953397500,'2012-01-31',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',953397500,NULL,'JL0000000029');
INSERT INTO `general_ledger` VALUES (727,'140-10',-688570000,'2012-01-31',NULL,'Penyesuaian Persediaan Pada JL0000000029',NULL,688570000,'JL0000000029');
INSERT INTO `general_ledger` VALUES (728,'210-80',86672500,'2012-01-31',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',NULL,86672500,'JL0000000029');
INSERT INTO `general_ledger` VALUES (729,'410-10',866725000,'2012-01-31',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',NULL,866725000,'JL0000000029');
INSERT INTO `general_ledger` VALUES (730,'510-10',688570000,'2012-01-31',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',688570000,NULL,'JL0000000029');
INSERT INTO `general_ledger` VALUES (731,'130-20',245344000,'2012-01-31',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',245344000,NULL,'JL0000000030');
INSERT INTO `general_ledger` VALUES (732,'140-10',-159680000,'2012-01-31',NULL,'Penyesuaian Persediaan Pada JL0000000030',NULL,159680000,'JL0000000030');
INSERT INTO `general_ledger` VALUES (733,'210-80',22304000,'2012-01-31',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',NULL,22304000,'JL0000000030');
INSERT INTO `general_ledger` VALUES (734,'410-10',223040000,'2012-01-31',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',NULL,223040000,'JL0000000030');
INSERT INTO `general_ledger` VALUES (735,'510-10',159680000,'2012-01-31',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',159680000,NULL,'JL0000000030');
INSERT INTO `general_ledger` VALUES (736,'130-20',16450000,'2012-02-02',NULL,'Penjualan,PT. Indomobil Group - Nissan',16450000,NULL,'JL0000000031');
INSERT INTO `general_ledger` VALUES (737,'140-10',-11280000,'2012-02-02',NULL,'Penyesuaian Persediaan Pada JL0000000031',NULL,11280000,'JL0000000031');
INSERT INTO `general_ledger` VALUES (738,'410-10',16450000,'2012-02-02',NULL,'Penjualan,PT. Indomobil Group - Nissan',NULL,16450000,'JL0000000031');
INSERT INTO `general_ledger` VALUES (739,'510-10',11280000,'2012-02-02',NULL,'Penjualan,PT. Indomobil Group - Nissan',11280000,NULL,'JL0000000031');
INSERT INTO `general_ledger` VALUES (744,'130-20',202152500,'2012-02-02',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',202152500,NULL,'JL0000000033');
INSERT INTO `general_ledger` VALUES (745,'140-10',-142160000,'2012-02-02',NULL,'Penyesuaian Persediaan Pada JL0000000033',NULL,142160000,'JL0000000033');
INSERT INTO `general_ledger` VALUES (746,'210-80',18377500,'2012-02-02',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',NULL,18377500,'JL0000000033');
INSERT INTO `general_ledger` VALUES (747,'410-10',183775000,'2012-02-02',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',NULL,183775000,'JL0000000033');
INSERT INTO `general_ledger` VALUES (748,'510-10',142160000,'2012-02-02',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',142160000,NULL,'JL0000000033');
INSERT INTO `general_ledger` VALUES (749,'130-20',838750000,'2012-02-02',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',838750000,NULL,'JL0000000034');
INSERT INTO `general_ledger` VALUES (750,'140-10',-598525000,'2012-02-02',NULL,'Penyesuaian Persediaan Pada JL0000000034',NULL,598525000,'JL0000000034');
INSERT INTO `general_ledger` VALUES (751,'210-80',76250000,'2012-02-02',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',NULL,76250000,'JL0000000034');
INSERT INTO `general_ledger` VALUES (752,'410-10',762500000,'2012-02-02',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',NULL,762500000,'JL0000000034');
INSERT INTO `general_ledger` VALUES (753,'510-10',598525000,'2012-02-02',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',598525000,NULL,'JL0000000034');
INSERT INTO `general_ledger` VALUES (754,'130-20',4180000,'2012-02-03',NULL,'Penjualan,PT. Wisma Nusantara International',4180000,NULL,'JL0000000035');
INSERT INTO `general_ledger` VALUES (755,'140-10',-3545000,'2012-02-03',NULL,'Penyesuaian Persediaan Pada JL0000000035',NULL,3545000,'JL0000000035');
INSERT INTO `general_ledger` VALUES (756,'210-80',380000,'2012-02-03',NULL,'Penjualan,PT. Wisma Nusantara International',NULL,380000,'JL0000000035');
INSERT INTO `general_ledger` VALUES (757,'410-10',3800000,'2012-02-03',NULL,'Penjualan,PT. Wisma Nusantara International',NULL,3800000,'JL0000000035');
INSERT INTO `general_ledger` VALUES (758,'510-10',3545000,'2012-02-03',NULL,'Penjualan,PT. Wisma Nusantara International',3545000,NULL,'JL0000000035');
INSERT INTO `general_ledger` VALUES (759,'130-20',19500000,'2012-02-06',NULL,'Penjualan,PT. Inov Perdana Teknologi',19500000,NULL,'JL0000000036');
INSERT INTO `general_ledger` VALUES (760,'140-10',-18600000,'2012-02-06',NULL,'Penyesuaian Persediaan Pada JL0000000036',NULL,18600000,'JL0000000036');
INSERT INTO `general_ledger` VALUES (761,'410-10',19500000,'2012-02-06',NULL,'Penjualan,PT. Inov Perdana Teknologi',NULL,19500000,'JL0000000036');
INSERT INTO `general_ledger` VALUES (762,'510-10',18600000,'2012-02-06',NULL,'Penjualan,PT. Inov Perdana Teknologi',18600000,NULL,'JL0000000036');
INSERT INTO `general_ledger` VALUES (763,'130-20',1295000,'2012-02-06',NULL,'Penjualan,Aston Tropicana Hotel && Premier PLaza',1295000,NULL,'JL0000000037');
INSERT INTO `general_ledger` VALUES (764,'140-10',-525000,'2012-02-06',NULL,'Penyesuaian Persediaan Pada JL0000000037',NULL,525000,'JL0000000037');
INSERT INTO `general_ledger` VALUES (765,'410-10',1295000,'2012-02-06',NULL,'Penjualan,Aston Tropicana Hotel && Premier PLaza',NULL,1295000,'JL0000000037');
INSERT INTO `general_ledger` VALUES (766,'510-10',525000,'2012-02-06',NULL,'Penjualan,Aston Tropicana Hotel && Premier PLaza',525000,NULL,'JL0000000037');
INSERT INTO `general_ledger` VALUES (767,'130-20',19717500,'2012-02-09',NULL,'Penjualan,PT. Citra Putra Mandiri',19717500,NULL,'JL0000000038');
INSERT INTO `general_ledger` VALUES (768,'140-10',-16065000,'2012-02-09',NULL,'Penyesuaian Persediaan Pada JL0000000038',NULL,16065000,'JL0000000038');
INSERT INTO `general_ledger` VALUES (769,'210-80',1792500,'2012-02-09',NULL,'Penjualan,PT. Citra Putra Mandiri',NULL,1792500,'JL0000000038');
INSERT INTO `general_ledger` VALUES (770,'410-10',17925000,'2012-02-09',NULL,'Penjualan,PT. Citra Putra Mandiri',NULL,17925000,'JL0000000038');
INSERT INTO `general_ledger` VALUES (771,'510-10',16065000,'2012-02-09',NULL,'Penjualan,PT. Citra Putra Mandiri',16065000,NULL,'JL0000000038');
INSERT INTO `general_ledger` VALUES (772,'110-20',39900000,'2012-02-10',NULL,'Penjualan,PT. Nusantara Sejahtera Raya',39900000,NULL,'JL0000000039');
INSERT INTO `general_ledger` VALUES (773,'140-10',-30600000,'2012-02-10',NULL,'Penyesuaian Persediaan Pada JL0000000039',NULL,30600000,'JL0000000039');
INSERT INTO `general_ledger` VALUES (774,'410-10',39900000,'2012-02-10',NULL,'Penjualan,PT. Nusantara Sejahtera Raya',NULL,39900000,'JL0000000039');
INSERT INTO `general_ledger` VALUES (775,'510-10',30600000,'2012-02-10',NULL,'Penjualan,PT. Nusantara Sejahtera Raya',30600000,NULL,'JL0000000039');
INSERT INTO `general_ledger` VALUES (776,'110-20',11300000,'2012-02-13',NULL,'Penjualan,PT. Cahaya Sakti Investindo Sukses',11300000,NULL,'JL0000000040');
INSERT INTO `general_ledger` VALUES (777,'140-10',-10400000,'2012-02-13',NULL,'Penyesuaian Persediaan Pada JL0000000040',NULL,10400000,'JL0000000040');
INSERT INTO `general_ledger` VALUES (778,'410-10',11300000,'2012-02-13',NULL,'Penjualan,PT. Cahaya Sakti Investindo Sukses',NULL,11300000,'JL0000000040');
INSERT INTO `general_ledger` VALUES (779,'510-10',10400000,'2012-02-13',NULL,'Penjualan,PT. Cahaya Sakti Investindo Sukses',10400000,NULL,'JL0000000040');
INSERT INTO `general_ledger` VALUES (780,'110-20',83950000,'2012-02-13',NULL,'Penjualan,CV. Reksa Utama',83950000,NULL,'JL0000000041');
INSERT INTO `general_ledger` VALUES (781,'140-10',-60870000,'2012-02-13',NULL,'Penyesuaian Persediaan Pada JL0000000041',NULL,60870000,'JL0000000041');
INSERT INTO `general_ledger` VALUES (782,'410-10',83950000,'2012-02-13',NULL,'Penjualan,CV. Reksa Utama',NULL,83950000,'JL0000000041');
INSERT INTO `general_ledger` VALUES (783,'510-10',60870000,'2012-02-13',NULL,'Penjualan,CV. Reksa Utama',60870000,NULL,'JL0000000041');
INSERT INTO `general_ledger` VALUES (784,'130-20',53669000,'2012-02-15',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',53669000,NULL,'JL0000000042');
INSERT INTO `general_ledger` VALUES (785,'140-10',-34930000,'2012-02-15',NULL,'Penyesuaian Persediaan Pada JL0000000042',NULL,34930000,'JL0000000042');
INSERT INTO `general_ledger` VALUES (786,'210-80',4879000,'2012-02-15',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',NULL,4879000,'JL0000000042');
INSERT INTO `general_ledger` VALUES (787,'410-10',48790000,'2012-02-15',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',NULL,48790000,'JL0000000042');
INSERT INTO `general_ledger` VALUES (788,'510-10',34930000,'2012-02-15',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',34930000,NULL,'JL0000000042');
INSERT INTO `general_ledger` VALUES (789,'130-20',3833500,'2012-02-15',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',3833500,NULL,'JL0000000043');
INSERT INTO `general_ledger` VALUES (790,'140-10',-2495000,'2012-02-15',NULL,'Penyesuaian Persediaan Pada JL0000000043',NULL,2495000,'JL0000000043');
INSERT INTO `general_ledger` VALUES (791,'210-80',348500,'2012-02-15',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',NULL,348500,'JL0000000043');
INSERT INTO `general_ledger` VALUES (792,'410-10',3485000,'2012-02-15',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',NULL,3485000,'JL0000000043');
INSERT INTO `general_ledger` VALUES (793,'510-10',2495000,'2012-02-15',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',2495000,NULL,'JL0000000043');
INSERT INTO `general_ledger` VALUES (794,'130-20',383322500,'2012-02-15',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',383322500,NULL,'JL0000000044');
INSERT INTO `general_ledger` VALUES (795,'140-10',-263330000,'2012-02-15',NULL,'Penyesuaian Persediaan Pada JL0000000044',NULL,263330000,'JL0000000044');
INSERT INTO `general_ledger` VALUES (796,'210-80',34847500,'2012-02-15',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',NULL,34847500,'JL0000000044');
INSERT INTO `general_ledger` VALUES (797,'410-10',348475000,'2012-02-15',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',NULL,348475000,'JL0000000044');
INSERT INTO `general_ledger` VALUES (798,'510-10',263330000,'2012-02-15',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',263330000,NULL,'JL0000000044');
INSERT INTO `general_ledger` VALUES (799,'130-20',9438000,'2012-02-21',NULL,'Penjualan,PT. Gobel Dharma Nusantara',9438000,NULL,'JL0000000045');
INSERT INTO `general_ledger` VALUES (800,'140-10',-7350000,'2012-02-21',NULL,'Penyesuaian Persediaan Pada JL0000000045',NULL,7350000,'JL0000000045');
INSERT INTO `general_ledger` VALUES (801,'210-80',858000,'2012-02-21',NULL,'Penjualan,PT. Gobel Dharma Nusantara',NULL,858000,'JL0000000045');
INSERT INTO `general_ledger` VALUES (802,'410-10',8580000,'2012-02-21',NULL,'Penjualan,PT. Gobel Dharma Nusantara',NULL,8580000,'JL0000000045');
INSERT INTO `general_ledger` VALUES (803,'510-10',7350000,'2012-02-21',NULL,'Penjualan,PT. Gobel Dharma Nusantara',7350000,NULL,'JL0000000045');
INSERT INTO `general_ledger` VALUES (804,'130-20',356090350,'2012-02-22',NULL,'Penjualan,PT. Gobel Dharma Nusantara',356090350,NULL,'JL0000000046');
INSERT INTO `general_ledger` VALUES (805,'210-40',138736500,'2012-02-22',NULL,'Uang Muka Penjualan pada JL0000000046',138736500,NULL,'JL0000000046');
INSERT INTO `general_ledger` VALUES (806,'110-20',152610150,'2012-02-22',NULL,'Uang Muka Penjualan PadaJL0000000046',152610150,NULL,'JL0000000046');
INSERT INTO `general_ledger` VALUES (807,'140-10',-313107500,'2012-02-22',NULL,'Penyesuaian Persediaan Pada JL0000000046',NULL,313107500,'JL0000000046');
INSERT INTO `general_ledger` VALUES (808,'210-80',46245500,'2012-02-22',NULL,'Penjualan,PT. Gobel Dharma Nusantara',NULL,46245500,'JL0000000046');
INSERT INTO `general_ledger` VALUES (809,'410-10',462455000,'2012-02-22',NULL,'Penjualan,PT. Gobel Dharma Nusantara',NULL,462455000,'JL0000000046');
INSERT INTO `general_ledger` VALUES (810,'510-10',313107500,'2012-02-22',NULL,'Penjualan,PT. Gobel Dharma Nusantara',313107500,NULL,'JL0000000046');
INSERT INTO `general_ledger` VALUES (811,'130-20',14173500,'2012-02-22',NULL,'Penjualan,PT. Gobel Dharma Nusantara',14173500,NULL,'JL0000000047');
INSERT INTO `general_ledger` VALUES (812,'140-10',-7336500,'2012-02-22',NULL,'Penyesuaian Persediaan Pada JL0000000047',NULL,7336500,'JL0000000047');
INSERT INTO `general_ledger` VALUES (813,'210-80',1288500,'2012-02-22',NULL,'Penjualan,PT. Gobel Dharma Nusantara',NULL,1288500,'JL0000000047');
INSERT INTO `general_ledger` VALUES (814,'410-10',12885000,'2012-02-22',NULL,'Penjualan,PT. Gobel Dharma Nusantara',NULL,12885000,'JL0000000047');
INSERT INTO `general_ledger` VALUES (815,'510-10',7336500,'2012-02-22',NULL,'Penjualan,PT. Gobel Dharma Nusantara',7336500,NULL,'JL0000000047');
INSERT INTO `general_ledger` VALUES (816,'130-20',1312000,'2012-02-23',NULL,'Penjualan,PT. Imperium Happy Puppy',1312000,NULL,'JL0000000048');
INSERT INTO `general_ledger` VALUES (817,'140-10',-475000,'2012-02-23',NULL,'Penyesuaian Persediaan Pada JL0000000048',NULL,475000,'JL0000000048');
INSERT INTO `general_ledger` VALUES (818,'410-10',1312000,'2012-02-23',NULL,'Penjualan,PT. Imperium Happy Puppy',NULL,1312000,'JL0000000048');
INSERT INTO `general_ledger` VALUES (819,'510-10',475000,'2012-02-23',NULL,'Penjualan,PT. Imperium Happy Puppy',475000,NULL,'JL0000000048');
INSERT INTO `general_ledger` VALUES (829,'130-20',3833500,'2012-03-01',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',3833500,NULL,'JL0000000051');
INSERT INTO `general_ledger` VALUES (830,'140-10',-2495000,'2012-03-01',NULL,'Penyesuaian Persediaan Pada JL0000000051',NULL,2495000,'JL0000000051');
INSERT INTO `general_ledger` VALUES (831,'210-80',348500,'2012-03-01',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',NULL,348500,'JL0000000051');
INSERT INTO `general_ledger` VALUES (832,'410-10',3485000,'2012-03-01',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',NULL,3485000,'JL0000000051');
INSERT INTO `general_ledger` VALUES (833,'510-10',2495000,'2012-03-01',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',2495000,NULL,'JL0000000051');
INSERT INTO `general_ledger` VALUES (834,'130-20',120367500,'2012-03-01',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',120367500,NULL,'JL0000000052');
INSERT INTO `general_ledger` VALUES (835,'140-10',-85860000,'2012-03-01',NULL,'Penyesuaian Persediaan Pada JL0000000052',NULL,85860000,'JL0000000052');
INSERT INTO `general_ledger` VALUES (836,'210-80',10942500,'2012-03-01',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',NULL,10942500,'JL0000000052');
INSERT INTO `general_ledger` VALUES (837,'410-10',109425000,'2012-03-01',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',NULL,109425000,'JL0000000052');
INSERT INTO `general_ledger` VALUES (838,'510-10',85860000,'2012-03-01',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',85860000,NULL,'JL0000000052');
INSERT INTO `general_ledger` VALUES (839,'130-20',587317500,'2012-03-01',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',587317500,NULL,'JL0000000053');
INSERT INTO `general_ledger` VALUES (840,'140-10',-418850000,'2012-03-01',NULL,'Penyesuaian Persediaan Pada JL0000000053',NULL,418850000,'JL0000000053');
INSERT INTO `general_ledger` VALUES (841,'210-80',53392500,'2012-03-01',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',NULL,53392500,'JL0000000053');
INSERT INTO `general_ledger` VALUES (842,'410-10',533925000,'2012-03-01',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',NULL,533925000,'JL0000000053');
INSERT INTO `general_ledger` VALUES (843,'510-10',418850000,'2012-03-01',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',418850000,NULL,'JL0000000053');
INSERT INTO `general_ledger` VALUES (844,'210-20',250356000,'2012-03-30',NULL,'Pembelian,PT. Indovisual Sistem Integrasi',NULL,250356000,'001/SV/PO/03/2012');
INSERT INTO `general_ledger` VALUES (845,'140-10',250356000,'2012-03-30',NULL,'Pembelian,PT. Indovisual Sistem Integrasi',250356000,NULL,'001/SV/PO/03/2012');
INSERT INTO `general_ledger` VALUES (846,'110-20',-13850000,'2012-04-03',NULL,'Pembelian,PD. Jati Megah',NULL,13850000,'001/SV/PO/04/2012');
INSERT INTO `general_ledger` VALUES (847,'140-10',13850000,'2012-04-03',NULL,'Pembelian,PD. Jati Megah',13850000,NULL,'001/SV/PO/04/2012');
INSERT INTO `general_ledger` VALUES (848,'210-20',54000000,'2012-04-03',NULL,'Pembelian,PT. Sharp Electronics Indonesia',NULL,54000000,'002/SV/PO/04/2012');
INSERT INTO `general_ledger` VALUES (849,'140-10',54000000,'2012-04-03',NULL,'Pembelian,PT. Sharp Electronics Indonesia',54000000,NULL,'002/SV/PO/04/2012');
INSERT INTO `general_ledger` VALUES (850,'110-20',-6996000,'2012-04-04',NULL,'Pembelian,PT. Sankyo Sahabat Indonesia',NULL,6996000,'003/SV/PO/04/2012');
INSERT INTO `general_ledger` VALUES (851,'140-10',6996000,'2012-04-04',NULL,'Pembelian,PT. Sankyo Sahabat Indonesia',6996000,NULL,'003/SV/PO/04/2012');
INSERT INTO `general_ledger` VALUES (852,'110-20',-1980000,'2012-04-04',NULL,'Pembelian,Pak Heri Taufan',NULL,1980000,'004/SV/PO/04/2012');
INSERT INTO `general_ledger` VALUES (853,'140-10',1980000,'2012-04-04',NULL,'Pembelian,Pak Heri Taufan',1980000,NULL,'004/SV/PO/04/2012');
INSERT INTO `general_ledger` VALUES (854,'210-20',2260980000,'2012-04-04',NULL,'Pembelian,PT. LG Electronics Indonesia',NULL,2260980000,'005/SV/PO/04/2012');
INSERT INTO `general_ledger` VALUES (855,'140-10',2260980000,'2012-04-04',NULL,'Pembelian,PT. LG Electronics Indonesia',2260980000,NULL,'005/SV/PO/04/2012');
INSERT INTO `general_ledger` VALUES (856,'110-20',-26200000,'2012-04-01',NULL,'Pembelian,PT. Sankyo Sahabat Indonesia',NULL,26200000,'006/SV/PO/04/2012');
INSERT INTO `general_ledger` VALUES (857,'140-10',26200000,'2012-04-01',NULL,'Pembelian,PT. Sankyo Sahabat Indonesia',26200000,NULL,'006/SV/PO/04/2012');
INSERT INTO `general_ledger` VALUES (858,'110-20',-56500000,'2012-04-09',NULL,'Pembelian,PD. Jati Megah',NULL,56500000,'007/SV/PO/04/2012');
INSERT INTO `general_ledger` VALUES (859,'140-10',56500000,'2012-04-09',NULL,'Pembelian,PD. Jati Megah',56500000,NULL,'007/SV/PO/04/2012');
INSERT INTO `general_ledger` VALUES (860,'210-20',150080000,'2012-04-10',NULL,'Pembelian,PT. Gobel Dharma Nusantara',NULL,150080000,'008/SV/PO/04/2012');
INSERT INTO `general_ledger` VALUES (861,'140-10',150080000,'2012-04-10',NULL,'Pembelian,PT. Gobel Dharma Nusantara',150080000,NULL,'008/SV/PO/04/2012');
INSERT INTO `general_ledger` VALUES (862,'210-20',4700000,'2012-04-10',NULL,'Pembelian,PT. Catur Mitra Sepakat',NULL,4700000,'009/SV/PO/04/2012');
INSERT INTO `general_ledger` VALUES (863,'140-10',4700000,'2012-04-10',NULL,'Pembelian,PT. Catur Mitra Sepakat',4700000,NULL,'009/SV/PO/04/2012');
INSERT INTO `general_ledger` VALUES (864,'210-20',13400000,'2012-04-12',NULL,'Pembelian,PT. Gobel Dharma Nusantara',NULL,13400000,'010/SV/PO/04/2012');
INSERT INTO `general_ledger` VALUES (865,'140-10',13400000,'2012-04-12',NULL,'Pembelian,PT. Gobel Dharma Nusantara',13400000,NULL,'010/SV/PO/04/2012');
INSERT INTO `general_ledger` VALUES (866,'110-20',-70500000,'2012-02-14',NULL,'Pembelian,Toko Cahaya Makmur Sejahtera',NULL,70500000,'001/SV/CA/02/2012');
INSERT INTO `general_ledger` VALUES (867,'140-10',70500000,'2012-02-14',NULL,'Pembelian,Toko Cahaya Makmur Sejahtera',70500000,NULL,'001/SV/CA/02/2012');
INSERT INTO `general_ledger` VALUES (868,'130-20',92152500,'2012-02-14',NULL,'Penjualan,Kantor Pusat BASARNAS',92152500,NULL,'JL0000000054');
INSERT INTO `general_ledger` VALUES (869,'110-20',79000000,'2012-02-14',NULL,'Uang Muka Penjualan PadaJL0000000054',79000000,NULL,'JL0000000054');
INSERT INTO `general_ledger` VALUES (870,'130-20',-79000000,'2012-02-14',NULL,'Uang Muka Penjualan pada JL0000000054',NULL,79000000,'JL0000000054');
INSERT INTO `general_ledger` VALUES (871,'140-10',-80052000,'2012-02-14',NULL,'Penyesuaian Persediaan Pada JL0000000054',NULL,80052000,'JL0000000054');
INSERT INTO `general_ledger` VALUES (872,'410-10',92152500,'2012-02-14',NULL,'Penjualan,Kantor Pusat BASARNAS',NULL,92152500,'JL0000000054');
INSERT INTO `general_ledger` VALUES (873,'510-10',80052000,'2012-02-14',NULL,'Penjualan,Kantor Pusat BASARNAS',80052000,NULL,'JL0000000054');
INSERT INTO `general_ledger` VALUES (874,'110-20',-661565000,'2011-12-06',NULL,'Pembelian,PT. Gobel Dharma Nusantara',NULL,661565000,'001/SV/CA/01/2011');
INSERT INTO `general_ledger` VALUES (875,'140-10',661565000,'2011-12-06',NULL,'Pembelian,PT. Gobel Dharma Nusantara',661565000,NULL,'001/SV/CA/01/2011');
INSERT INTO `general_ledger` VALUES (876,'110-20',-1439085000,'2011-12-21',NULL,'Pembelian,PT. Gobel Dharma Nusantara',NULL,1439085000,'001/SV/CA/12/2011');
INSERT INTO `general_ledger` VALUES (877,'140-10',1439085000,'2011-12-21',NULL,'Pembelian,PT. Gobel Dharma Nusantara',1439085000,NULL,'001/SV/CA/12/2011');
INSERT INTO `general_ledger` VALUES (878,'110-20',-77345000,'2011-12-21',NULL,'Pembelian,PT. Gobel Dharma Nusantara',NULL,77345000,'002/SV/CA/12/2011');
INSERT INTO `general_ledger` VALUES (879,'140-10',77345000,'2011-12-21',NULL,'Pembelian,PT. Gobel Dharma Nusantara',77345000,NULL,'002/SV/CA/12/2011');
INSERT INTO `general_ledger` VALUES (880,'110-20',-109780000,'2012-01-05',NULL,'Pembelian,PT. Gobel Dharma Nusantara',NULL,109780000,'001/SV/CA/01/2012');
INSERT INTO `general_ledger` VALUES (881,'140-10',109780000,'2012-01-05',NULL,'Pembelian,PT. Gobel Dharma Nusantara',109780000,NULL,'001/SV/CA/01/2012');
INSERT INTO `general_ledger` VALUES (882,'110-20',-143184000,'2012-01-25',NULL,'Pembelian,Taruna Tehnik',NULL,143184000,'001/SV/PO/01/2012');
INSERT INTO `general_ledger` VALUES (883,'140-10',143184000,'2012-01-25',NULL,'Pembelian,Taruna Tehnik',143184000,NULL,'001/SV/PO/01/2012');
INSERT INTO `general_ledger` VALUES (884,'110-20',-57000000,'2012-01-25',NULL,'Pembelian,Muhtadin Azis',NULL,57000000,'002/SV/PO/01/2012');
INSERT INTO `general_ledger` VALUES (885,'140-10',57000000,'2012-01-25',NULL,'Pembelian,Muhtadin Azis',57000000,NULL,'002/SV/PO/01/2012');
INSERT INTO `general_ledger` VALUES (886,'130-20',293898000,'2012-01-27',NULL,'Penjualan,PT. Gobel Dharma Nusantara',293898000,NULL,'JL0000000055');
INSERT INTO `general_ledger` VALUES (887,'140-10',-160674000,'2012-01-27',NULL,'Penyesuaian Persediaan Pada JL0000000055',NULL,160674000,'JL0000000055');
INSERT INTO `general_ledger` VALUES (888,'210-80',26718000,'2012-01-27',NULL,'Penjualan PT. Gobel Dharma Nusantara',NULL,26718000,'JL0000000055');
INSERT INTO `general_ledger` VALUES (889,'410-10',267180000,'2012-01-27',NULL,'Penjualan,PT. Gobel Dharma Nusantara',NULL,267180000,'JL0000000055');
INSERT INTO `general_ledger` VALUES (890,'510-10',160674000,'2012-01-27',NULL,'Penjualan,PT. Gobel Dharma Nusantara',160674000,NULL,'JL0000000055');
INSERT INTO `general_ledger` VALUES (891,'130-20',61028000,'2012-01-27',NULL,'Penjualan,PT. Gobel Dharma Nusantara',61028000,NULL,'JL0000000056');
INSERT INTO `general_ledger` VALUES (892,'140-10',-33364000,'2012-01-27',NULL,'Penyesuaian Persediaan Pada JL0000000056',NULL,33364000,'JL0000000056');
INSERT INTO `general_ledger` VALUES (893,'210-80',5548000,'2012-01-27',NULL,'Penjualan PT. Gobel Dharma Nusantara',NULL,5548000,'JL0000000056');
INSERT INTO `general_ledger` VALUES (894,'410-10',55480000,'2012-01-27',NULL,'Penjualan,PT. Gobel Dharma Nusantara',NULL,55480000,'JL0000000056');
INSERT INTO `general_ledger` VALUES (895,'510-10',33364000,'2012-01-27',NULL,'Penjualan,PT. Gobel Dharma Nusantara',33364000,NULL,'JL0000000056');
INSERT INTO `general_ledger` VALUES (896,'130-20',12782000,'2012-01-27',NULL,'Penjualan,PT. Gobel Dharma Nusantara',12782000,NULL,'JL0000000057');
INSERT INTO `general_ledger` VALUES (897,'140-10',-6146000,'2012-01-27',NULL,'Penyesuaian Persediaan Pada JL0000000057',NULL,6146000,'JL0000000057');
INSERT INTO `general_ledger` VALUES (898,'210-80',1162000,'2012-01-27',NULL,'Penjualan PT. Gobel Dharma Nusantara',NULL,1162000,'JL0000000057');
INSERT INTO `general_ledger` VALUES (899,'410-10',11620000,'2012-01-27',NULL,'Penjualan,PT. Gobel Dharma Nusantara',NULL,11620000,'JL0000000057');
INSERT INTO `general_ledger` VALUES (900,'510-10',6146000,'2012-01-27',NULL,'Penjualan,PT. Gobel Dharma Nusantara',6146000,NULL,'JL0000000057');
INSERT INTO `general_ledger` VALUES (901,'130-20',474980000,'2012-02-15',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',474980000,NULL,'JL0000000058');
INSERT INTO `general_ledger` VALUES (902,'140-10',-342875000,'2012-02-15',NULL,'Penyesuaian Persediaan Pada JL0000000058',NULL,342875000,'JL0000000058');
INSERT INTO `general_ledger` VALUES (903,'210-80',43180000,'2012-02-15',NULL,'Penjualan PT. Kramayudha Tiga Berlian Motor',NULL,43180000,'JL0000000058');
INSERT INTO `general_ledger` VALUES (904,'410-10',431800000,'2012-02-15',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',NULL,431800000,'JL0000000058');
INSERT INTO `general_ledger` VALUES (905,'510-10',342875000,'2012-02-15',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',342875000,NULL,'JL0000000058');
INSERT INTO `general_ledger` VALUES (906,'130-20',3833500,'2012-02-15',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',3833500,NULL,'JL0000000059');
INSERT INTO `general_ledger` VALUES (907,'140-10',-2495000,'2012-02-15',NULL,'Penyesuaian Persediaan Pada JL0000000059',NULL,2495000,'JL0000000059');
INSERT INTO `general_ledger` VALUES (908,'210-80',348500,'2012-02-15',NULL,'Penjualan PT. Kramayudha Tiga Berlian Motor',NULL,348500,'JL0000000059');
INSERT INTO `general_ledger` VALUES (909,'410-10',3485000,'2012-02-15',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',NULL,3485000,'JL0000000059');
INSERT INTO `general_ledger` VALUES (910,'510-10',2495000,'2012-02-15',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',2495000,NULL,'JL0000000059');
INSERT INTO `general_ledger` VALUES (911,'130-20',16100000,'2012-02-10',NULL,'Penjualan,PT. Imperium Happy Puppy',16100000,NULL,'JL0000000060');
INSERT INTO `general_ledger` VALUES (912,'140-10',-6650000,'2012-02-10',NULL,'Penyesuaian Persediaan Pada JL0000000060',NULL,6650000,'JL0000000060');
INSERT INTO `general_ledger` VALUES (913,'410-10',16100000,'2012-02-10',NULL,'Penjualan,PT. Imperium Happy Puppy',NULL,16100000,'JL0000000060');
INSERT INTO `general_ledger` VALUES (914,'510-10',6650000,'2012-02-10',NULL,'Penjualan,PT. Imperium Happy Puppy',6650000,NULL,'JL0000000060');
INSERT INTO `general_ledger` VALUES (915,'110-20',-13000000,'2012-02-01',NULL,'Pembelian,PT. Catur Mitra Sepakat',NULL,13000000,'001/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (916,'140-10',13000000,'2012-02-01',NULL,'Pembelian,PT. Catur Mitra Sepakat',13000000,NULL,'001/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (917,'110-20',2400000,'2012-02-02',NULL,'Penjualan,Bapak Arman Arifin',2400000,NULL,'JL0000000061');
INSERT INTO `general_ledger` VALUES (918,'140-10',-2000000,'2012-02-02',NULL,'Penyesuaian Persediaan Pada JL0000000061',NULL,2000000,'JL0000000061');
INSERT INTO `general_ledger` VALUES (919,'410-10',2400000,'2012-02-02',NULL,'Penjualan,Bapak Arman Arifin',NULL,2400000,'JL0000000061');
INSERT INTO `general_ledger` VALUES (920,'510-10',2000000,'2012-02-02',NULL,'Penjualan,Bapak Arman Arifin',2000000,NULL,'JL0000000061');
INSERT INTO `general_ledger` VALUES (921,'110-20',18500000,'2012-02-15',NULL,'Penjualan,PT. Grand Puri Permai',18500000,NULL,'JL0000000062');
INSERT INTO `general_ledger` VALUES (922,'140-10',-16150000,'2012-02-15',NULL,'Penyesuaian Persediaan Pada JL0000000062',NULL,16150000,'JL0000000062');
INSERT INTO `general_ledger` VALUES (923,'410-10',18500000,'2012-02-15',NULL,'Penjualan,PT. Grand Puri Permai',NULL,18500000,'JL0000000062');
INSERT INTO `general_ledger` VALUES (924,'510-10',16150000,'2012-02-15',NULL,'Penjualan,PT. Grand Puri Permai',16150000,NULL,'JL0000000062');
INSERT INTO `general_ledger` VALUES (925,'130-20',5950000,'2012-02-16',NULL,'Penjualan,PT. Imperium Happy Puppy',5950000,NULL,'JL0000000063');
INSERT INTO `general_ledger` VALUES (926,'140-10',-2375000,'2012-02-16',NULL,'Penyesuaian Persediaan Pada JL0000000063',NULL,2375000,'JL0000000063');
INSERT INTO `general_ledger` VALUES (927,'410-10',5950000,'2012-02-16',NULL,'Penjualan,PT. Imperium Happy Puppy',NULL,5950000,'JL0000000063');
INSERT INTO `general_ledger` VALUES (928,'510-10',2375000,'2012-02-16',NULL,'Penjualan,PT. Imperium Happy Puppy',2375000,NULL,'JL0000000063');
INSERT INTO `general_ledger` VALUES (929,'130-20',6640000,'2012-02-16',NULL,'Penjualan,PT. Imperium Happy Puppy',6640000,NULL,'JL0000000064');
INSERT INTO `general_ledger` VALUES (930,'140-10',-2660000,'2012-02-16',NULL,'Penyesuaian Persediaan Pada JL0000000064',NULL,2660000,'JL0000000064');
INSERT INTO `general_ledger` VALUES (931,'410-10',6640000,'2012-02-16',NULL,'Penjualan,PT. Imperium Happy Puppy',NULL,6640000,'JL0000000064');
INSERT INTO `general_ledger` VALUES (932,'510-10',2660000,'2012-02-16',NULL,'Penjualan,PT. Imperium Happy Puppy',2660000,NULL,'JL0000000064');
INSERT INTO `general_ledger` VALUES (933,'110-20',-1020000,'2012-02-10',NULL,'Pembelian,Vivi Electrindo',NULL,1020000,'002/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (934,'140-10',1020000,'2012-02-10',NULL,'Pembelian,Vivi Electrindo',1020000,NULL,'002/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (940,'110-20',-41740000,'2012-02-22',NULL,'Pembelian,Muhtadin Azis',NULL,41740000,'003/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (941,'140-10',41740000,'2012-02-22',NULL,'Pembelian,Muhtadin Azis',41740000,NULL,'003/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (942,'110-20',-19871000,'2012-02-20',NULL,'Pembelian,Taruna Tehnik',NULL,19871000,'004/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (943,'140-10',19871000,'2012-02-20',NULL,'Pembelian,Taruna Tehnik',19871000,NULL,'004/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (944,'130-20',102235100,'2012-02-22',NULL,'Penjualan,PT. Gobel Dharma Nusantara',102235100,NULL,'JL0000000066');
INSERT INTO `general_ledger` VALUES (945,'110-20',30670530,'2012-02-22',NULL,'Uang Muka Penjualan PadaJL0000000066',30670530,NULL,'JL0000000066');
INSERT INTO `general_ledger` VALUES (946,'130-20',-30670530,'2012-02-22',NULL,'Uang Muka Penjualan pada JL0000000066',NULL,30670530,'JL0000000066');
INSERT INTO `general_ledger` VALUES (947,'140-10',-61611000,'2012-02-22',NULL,'Penyesuaian Persediaan Pada JL0000000066',NULL,61611000,'JL0000000066');
INSERT INTO `general_ledger` VALUES (948,'210-80',9294100,'2012-02-22',NULL,'Penjualan PT. Gobel Dharma Nusantara',NULL,9294100,'JL0000000066');
INSERT INTO `general_ledger` VALUES (949,'410-10',92941000,'2012-02-22',NULL,'Penjualan,PT. Gobel Dharma Nusantara',NULL,92941000,'JL0000000066');
INSERT INTO `general_ledger` VALUES (950,'510-10',61611000,'2012-02-22',NULL,'Penjualan,PT. Gobel Dharma Nusantara',61611000,NULL,'JL0000000066');
INSERT INTO `general_ledger` VALUES (951,'130-20',10780000,'2012-02-27',NULL,'Penjualan,PT. Imperium Happy Puppy',10780000,NULL,'JL0000000067');
INSERT INTO `general_ledger` VALUES (952,'140-10',-4370000,'2012-02-27',NULL,'Penyesuaian Persediaan Pada JL0000000067',NULL,4370000,'JL0000000067');
INSERT INTO `general_ledger` VALUES (953,'410-10',10780000,'2012-02-27',NULL,'Penjualan,PT. Imperium Happy Puppy',NULL,10780000,'JL0000000067');
INSERT INTO `general_ledger` VALUES (954,'510-10',4370000,'2012-02-27',NULL,'Penjualan,PT. Imperium Happy Puppy',4370000,NULL,'JL0000000067');
INSERT INTO `general_ledger` VALUES (955,'110-20',-5100000,'2012-02-11',NULL,'Pembelian,PT. Catur Mitra Sepakat',NULL,5100000,'005/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (956,'140-10',5100000,'2012-02-11',NULL,'Pembelian,PT. Catur Mitra Sepakat',5100000,NULL,'005/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (957,'110-20',-600000,'2012-02-11',NULL,'Pembelian,Muhtadin Azis',NULL,600000,'006/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (958,'140-10',600000,'2012-02-11',NULL,'Pembelian,Muhtadin Azis',600000,NULL,'006/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (959,'110-20',6200000,'2012-02-15',NULL,'Penjualan,CV. Bina Guna',6200000,NULL,'JL0000000068');
INSERT INTO `general_ledger` VALUES (960,'140-10',-5700000,'2012-02-15',NULL,'Penyesuaian Persediaan Pada JL0000000068',NULL,5700000,'JL0000000068');
INSERT INTO `general_ledger` VALUES (961,'410-10',6200000,'2012-02-15',NULL,'Penjualan,CV. Bina Guna',NULL,6200000,'JL0000000068');
INSERT INTO `general_ledger` VALUES (962,'510-10',5700000,'2012-02-15',NULL,'Penjualan,CV. Bina Guna',5700000,NULL,'JL0000000068');
INSERT INTO `general_ledger` VALUES (963,'110-20',-2500000,'2012-02-10',NULL,'Pembelian,Murjili',NULL,2500000,'007/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (964,'140-10',2500000,'2012-02-10',NULL,'Pembelian,Murjili',2500000,NULL,'007/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (965,'110-20',-11632000,'2012-02-10',NULL,'Pembelian,Vivi Electrindo',NULL,11632000,'008/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (966,'140-10',11632000,'2012-02-10',NULL,'Pembelian,Vivi Electrindo',11632000,NULL,'008/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (967,'130-20',21423600,'2012-02-15',NULL,'Penjualan,PT. Gobel Dharma Nusantara',21423600,NULL,'JL0000000069');
INSERT INTO `general_ledger` VALUES (968,'140-10',-15182000,'2012-02-15',NULL,'Penyesuaian Persediaan Pada JL0000000069',NULL,15182000,'JL0000000069');
INSERT INTO `general_ledger` VALUES (969,'210-80',1947600,'2012-02-15',NULL,'Penjualan PT. Gobel Dharma Nusantara',NULL,1947600,'JL0000000069');
INSERT INTO `general_ledger` VALUES (970,'410-10',19476000,'2012-02-15',NULL,'Penjualan,PT. Gobel Dharma Nusantara',NULL,19476000,'JL0000000069');
INSERT INTO `general_ledger` VALUES (971,'510-10',15182000,'2012-02-15',NULL,'Penjualan,PT. Gobel Dharma Nusantara',15182000,NULL,'JL0000000069');
INSERT INTO `general_ledger` VALUES (972,'110-20',750000,'2012-03-01',NULL,'Penjualan,BANK BTPN',750000,NULL,'JL0000000070');
INSERT INTO `general_ledger` VALUES (973,'140-10',-285000,'2012-03-01',NULL,'Penyesuaian Persediaan Pada JL0000000070',NULL,285000,'JL0000000070');
INSERT INTO `general_ledger` VALUES (974,'410-10',750000,'2012-03-01',NULL,'Penjualan,BANK BTPN',NULL,750000,'JL0000000070');
INSERT INTO `general_ledger` VALUES (975,'510-10',285000,'2012-03-01',NULL,'Penjualan,BANK BTPN',285000,NULL,'JL0000000070');
INSERT INTO `general_ledger` VALUES (976,'130-20',241510500,'2012-03-01',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',241510500,NULL,'JL0000000071');
INSERT INTO `general_ledger` VALUES (977,'140-10',-157185000,'2012-03-01',NULL,'Penyesuaian Persediaan Pada JL0000000071',NULL,157185000,'JL0000000071');
INSERT INTO `general_ledger` VALUES (978,'210-80',21955500,'2012-03-01',NULL,'Penjualan PT. Kramayudha Tiga Berlian Motor',NULL,21955500,'JL0000000071');
INSERT INTO `general_ledger` VALUES (979,'410-10',219555000,'2012-03-01',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',NULL,219555000,'JL0000000071');
INSERT INTO `general_ledger` VALUES (980,'510-10',157185000,'2012-03-01',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',157185000,NULL,'JL0000000071');
INSERT INTO `general_ledger` VALUES (981,'130-20',19167500,'2012-03-01',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',19167500,NULL,'JL0000000072');
INSERT INTO `general_ledger` VALUES (982,'140-10',-12475000,'2012-03-01',NULL,'Penyesuaian Persediaan Pada JL0000000072',NULL,12475000,'JL0000000072');
INSERT INTO `general_ledger` VALUES (983,'210-80',1742500,'2012-03-01',NULL,'Penjualan PT. Kramayudha Tiga Berlian Motor',NULL,1742500,'JL0000000072');
INSERT INTO `general_ledger` VALUES (984,'410-10',17425000,'2012-03-01',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',NULL,17425000,'JL0000000072');
INSERT INTO `general_ledger` VALUES (985,'510-10',12475000,'2012-03-01',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',12475000,NULL,'JL0000000072');
INSERT INTO `general_ledger` VALUES (986,'130-20',72836500,'2012-03-01',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',72836500,NULL,'JL0000000073');
INSERT INTO `general_ledger` VALUES (987,'140-10',-47405000,'2012-03-01',NULL,'Penyesuaian Persediaan Pada JL0000000073',NULL,47405000,'JL0000000073');
INSERT INTO `general_ledger` VALUES (988,'210-80',6621500,'2012-03-01',NULL,'Penjualan PT. Kramayudha Tiga Berlian Motor',NULL,6621500,'JL0000000073');
INSERT INTO `general_ledger` VALUES (989,'410-10',66215000,'2012-03-01',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',NULL,66215000,'JL0000000073');
INSERT INTO `general_ledger` VALUES (990,'510-10',47405000,'2012-03-01',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',47405000,NULL,'JL0000000073');
INSERT INTO `general_ledger` VALUES (991,'110-20',5500000,'2012-03-02',NULL,'Penjualan,PT. Cahaya Sakti Investindo Sukses',5500000,NULL,'JL0000000074');
INSERT INTO `general_ledger` VALUES (992,'140-10',-5200000,'2012-03-02',NULL,'Penyesuaian Persediaan Pada JL0000000074',NULL,5200000,'JL0000000074');
INSERT INTO `general_ledger` VALUES (993,'410-10',5500000,'2012-03-02',NULL,'Penjualan,PT. Cahaya Sakti Investindo Sukses',NULL,5500000,'JL0000000074');
INSERT INTO `general_ledger` VALUES (994,'510-10',5200000,'2012-03-02',NULL,'Penjualan,PT. Cahaya Sakti Investindo Sukses',5200000,NULL,'JL0000000074');
INSERT INTO `general_ledger` VALUES (995,'130-20',10843250,'2012-03-05',NULL,'Penjualan,PT. Gobel Dharma Nusantara',10843250,NULL,'JL0000000075');
INSERT INTO `general_ledger` VALUES (996,'140-10',-9645000,'2012-03-05',NULL,'Penyesuaian Persediaan Pada JL0000000075',NULL,9645000,'JL0000000075');
INSERT INTO `general_ledger` VALUES (997,'210-80',985750,'2012-03-05',NULL,'Penjualan PT. Gobel Dharma Nusantara',NULL,985750,'JL0000000075');
INSERT INTO `general_ledger` VALUES (998,'410-10',9857500,'2012-03-05',NULL,'Penjualan,PT. Gobel Dharma Nusantara',NULL,9857500,'JL0000000075');
INSERT INTO `general_ledger` VALUES (999,'510-10',9645000,'2012-03-05',NULL,'Penjualan,PT. Gobel Dharma Nusantara',9645000,NULL,'JL0000000075');
INSERT INTO `general_ledger` VALUES (1000,'110-20',-30000000,'2012-03-06',NULL,'Pembelian,PT. Catur Mitra Sepakat',NULL,30000000,'001/SV/PO/03/2012');
INSERT INTO `general_ledger` VALUES (1001,'140-10',30000000,'2012-03-06',NULL,'Pembelian,PT. Catur Mitra Sepakat',30000000,NULL,'001/SV/PO/03/2012');
INSERT INTO `general_ledger` VALUES (1002,'130-20',20399999.4,'2012-03-07',NULL,'Penjualan,PT. Gobel Dharma Nusantara',20399999.4,NULL,'JL0000000076');
INSERT INTO `general_ledger` VALUES (1003,'140-10',-18000000,'2012-03-07',NULL,'Penyesuaian Persediaan Pada JL0000000076',NULL,18000000,'JL0000000076');
INSERT INTO `general_ledger` VALUES (1004,'210-80',1854545.4,'2012-03-07',NULL,'Penjualan PT. Gobel Dharma Nusantara',NULL,1854545.4,'JL0000000076');
INSERT INTO `general_ledger` VALUES (1005,'410-10',18545454,'2012-03-07',NULL,'Penjualan,PT. Gobel Dharma Nusantara',NULL,18545454,'JL0000000076');
INSERT INTO `general_ledger` VALUES (1006,'510-10',18000000,'2012-03-07',NULL,'Penjualan,PT. Gobel Dharma Nusantara',18000000,NULL,'JL0000000076');
INSERT INTO `general_ledger` VALUES (1007,'130-20',13599999.6,'2012-03-07',NULL,'Penjualan,PT. Gobel Dharma Nusantara',13599999.6,NULL,'JL0000000077');
INSERT INTO `general_ledger` VALUES (1008,'140-10',-12000000,'2012-03-07',NULL,'Penyesuaian Persediaan Pada JL0000000077',NULL,12000000,'JL0000000077');
INSERT INTO `general_ledger` VALUES (1009,'210-80',1236363.6,'2012-03-07',NULL,'Penjualan PT. Gobel Dharma Nusantara',NULL,1236363.6,'JL0000000077');
INSERT INTO `general_ledger` VALUES (1010,'410-10',12363636,'2012-03-07',NULL,'Penjualan,PT. Gobel Dharma Nusantara',NULL,12363636,'JL0000000077');
INSERT INTO `general_ledger` VALUES (1011,'510-10',12000000,'2012-03-07',NULL,'Penjualan,PT. Gobel Dharma Nusantara',12000000,NULL,'JL0000000077');
INSERT INTO `general_ledger` VALUES (1012,'130-20',16819000,'2012-03-10',NULL,'Penjualan,PT. Gobel Dharma Nusantara',16819000,NULL,'JL0000000078');
INSERT INTO `general_ledger` VALUES (1013,'140-10',-11033000,'2012-03-10',NULL,'Penyesuaian Persediaan Pada JL0000000078',NULL,11033000,'JL0000000078');
INSERT INTO `general_ledger` VALUES (1014,'210-80',1529000,'2012-03-10',NULL,'Penjualan PT. Gobel Dharma Nusantara',NULL,1529000,'JL0000000078');
INSERT INTO `general_ledger` VALUES (1015,'410-10',15290000,'2012-03-10',NULL,'Penjualan,PT. Gobel Dharma Nusantara',NULL,15290000,'JL0000000078');
INSERT INTO `general_ledger` VALUES (1016,'510-10',11033000,'2012-03-10',NULL,'Penjualan,PT. Gobel Dharma Nusantara',11033000,NULL,'JL0000000078');
INSERT INTO `general_ledger` VALUES (1017,'130-20',5899999.6,'2012-03-08',NULL,'Penjualan,PT. Wahana Wirawan',5899999.6,NULL,'JL0000000079');
INSERT INTO `general_ledger` VALUES (1018,'140-10',-5315000,'2012-03-08',NULL,'Penyesuaian Persediaan Pada JL0000000079',NULL,5315000,'JL0000000079');
INSERT INTO `general_ledger` VALUES (1019,'210-80',536363.6,'2012-03-08',NULL,'Penjualan PT. Wahana Wirawan',NULL,536363.6,'JL0000000079');
INSERT INTO `general_ledger` VALUES (1020,'410-10',5363636,'2012-03-08',NULL,'Penjualan,PT. Wahana Wirawan',NULL,5363636,'JL0000000079');
INSERT INTO `general_ledger` VALUES (1021,'510-10',5315000,'2012-03-08',NULL,'Penjualan,PT. Wahana Wirawan',5315000,NULL,'JL0000000079');
INSERT INTO `general_ledger` VALUES (1022,'130-20',7000004,'2012-03-09',NULL,'Penjualan,PT. Xcell Visual Wibawa',7000004,NULL,'JL0000000080');
INSERT INTO `general_ledger` VALUES (1023,'140-10',-5600000,'2012-03-09',NULL,'Penyesuaian Persediaan Pada JL0000000080',NULL,5600000,'JL0000000080');
INSERT INTO `general_ledger` VALUES (1024,'210-80',636364,'2012-03-09',NULL,'Penjualan PT. Xcell Visual Wibawa',NULL,636364,'JL0000000080');
INSERT INTO `general_ledger` VALUES (1025,'410-10',6363640,'2012-03-09',NULL,'Penjualan,PT. Xcell Visual Wibawa',NULL,6363640,'JL0000000080');
INSERT INTO `general_ledger` VALUES (1026,'510-10',5600000,'2012-03-09',NULL,'Penjualan,PT. Xcell Visual Wibawa',5600000,NULL,'JL0000000080');
INSERT INTO `general_ledger` VALUES (1027,'110-20',16660000,'2012-03-09',NULL,'Penjualan,Bapak Chandra Wardana',16660000,NULL,'JL0000000081');
INSERT INTO `general_ledger` VALUES (1028,'140-10',-8330000,'2012-03-09',NULL,'Penyesuaian Persediaan Pada JL0000000081',NULL,8330000,'JL0000000081');
INSERT INTO `general_ledger` VALUES (1029,'410-10',16660000,'2012-03-09',NULL,'Penjualan,Bapak Chandra Wardana',NULL,16660000,'JL0000000081');
INSERT INTO `general_ledger` VALUES (1030,'510-10',8330000,'2012-03-09',NULL,'Penjualan,Bapak Chandra Wardana',8330000,NULL,'JL0000000081');
INSERT INTO `general_ledger` VALUES (1031,'110-20',2900000,'2012-03-09',NULL,'Penjualan,PT. Panglima Sakti Utama',2900000,NULL,'JL0000000082');
INSERT INTO `general_ledger` VALUES (1032,'140-10',-1500000,'2012-03-09',NULL,'Penyesuaian Persediaan Pada JL0000000082',NULL,1500000,'JL0000000082');
INSERT INTO `general_ledger` VALUES (1033,'410-10',2900000,'2012-03-09',NULL,'Penjualan,PT. Panglima Sakti Utama',NULL,2900000,'JL0000000082');
INSERT INTO `general_ledger` VALUES (1034,'510-10',1500000,'2012-03-09',NULL,'Penjualan,PT. Panglima Sakti Utama',1500000,NULL,'JL0000000082');
INSERT INTO `general_ledger` VALUES (1035,'130-20',1110000,'2012-03-13',NULL,'Penjualan,Aston Tropicana Hotel && Premier PLaza',1110000,NULL,'JL0000000083');
INSERT INTO `general_ledger` VALUES (1036,'140-10',-450000,'2012-03-13',NULL,'Penyesuaian Persediaan Pada JL0000000083',NULL,450000,'JL0000000083');
INSERT INTO `general_ledger` VALUES (1037,'410-10',1110000,'2012-03-13',NULL,'Penjualan,Aston Tropicana Hotel && Premier PLaza',NULL,1110000,'JL0000000083');
INSERT INTO `general_ledger` VALUES (1038,'510-10',450000,'2012-03-13',NULL,'Penjualan,Aston Tropicana Hotel && Premier PLaza',450000,NULL,'JL0000000083');
INSERT INTO `general_ledger` VALUES (1039,'130-20',16280000,'2012-03-15',NULL,'Penjualan,PT. Plaza Indonesia Realty Tbk',16280000,NULL,'JL0000000084');
INSERT INTO `general_ledger` VALUES (1040,'140-10',-13178000,'2012-03-15',NULL,'Penyesuaian Persediaan Pada JL0000000084',NULL,13178000,'JL0000000084');
INSERT INTO `general_ledger` VALUES (1041,'210-80',1480000,'2012-03-15',NULL,'Penjualan PT. Plaza Indonesia Realty Tbk',NULL,1480000,'JL0000000084');
INSERT INTO `general_ledger` VALUES (1042,'410-10',14800000,'2012-03-15',NULL,'Penjualan,PT. Plaza Indonesia Realty Tbk',NULL,14800000,'JL0000000084');
INSERT INTO `general_ledger` VALUES (1043,'510-10',13178000,'2012-03-15',NULL,'Penjualan,PT. Plaza Indonesia Realty Tbk',13178000,NULL,'JL0000000084');
INSERT INTO `general_ledger` VALUES (1048,'110-20',4300000,'2012-03-15',NULL,'Penjualan,BAPAK BUDI',4300000,NULL,'JL0000000086');
INSERT INTO `general_ledger` VALUES (1049,'140-10',-5025000,'2012-03-15',NULL,'Penyesuaian Persediaan Pada JL0000000086',NULL,5025000,'JL0000000086');
INSERT INTO `general_ledger` VALUES (1050,'410-10',4300000,'2012-03-15',NULL,'Penjualan,BAPAK BUDI',NULL,4300000,'JL0000000086');
INSERT INTO `general_ledger` VALUES (1051,'510-10',5025000,'2012-03-15',NULL,'Penjualan,BAPAK BUDI',5025000,NULL,'JL0000000086');
INSERT INTO `general_ledger` VALUES (1052,'110-20',8600000,'2012-03-16',NULL,'Penjualan,Bapak Sembiring',8600000,NULL,'JL0000000087');
INSERT INTO `general_ledger` VALUES (1053,'140-10',-7209000,'2012-03-16',NULL,'Penyesuaian Persediaan Pada JL0000000087',NULL,7209000,'JL0000000087');
INSERT INTO `general_ledger` VALUES (1054,'410-10',8600000,'2012-03-16',NULL,'Penjualan,Bapak Sembiring',NULL,8600000,'JL0000000087');
INSERT INTO `general_ledger` VALUES (1055,'510-10',7209000,'2012-03-16',NULL,'Penjualan,Bapak Sembiring',7209000,NULL,'JL0000000087');
INSERT INTO `general_ledger` VALUES (1056,'110-20',1600000,'2012-03-19',NULL,'Penjualan,PT. Gilang Agung Persada',1600000,NULL,'JL0000000088');
INSERT INTO `general_ledger` VALUES (1057,'140-10',-760000,'2012-03-19',NULL,'Penyesuaian Persediaan Pada JL0000000088',NULL,760000,'JL0000000088');
INSERT INTO `general_ledger` VALUES (1058,'410-10',1600000,'2012-03-19',NULL,'Penjualan,PT. Gilang Agung Persada',NULL,1600000,'JL0000000088');
INSERT INTO `general_ledger` VALUES (1059,'510-10',760000,'2012-03-19',NULL,'Penjualan,PT. Gilang Agung Persada',760000,NULL,'JL0000000088');
INSERT INTO `general_ledger` VALUES (1060,'110-20',6325000,'2012-03-19',NULL,'Penjualan,PT. Indomobil Group - Nissan',6325000,NULL,'JL0000000089');
INSERT INTO `general_ledger` VALUES (1061,'140-10',-5840000,'2012-03-19',NULL,'Penyesuaian Persediaan Pada JL0000000089',NULL,5840000,'JL0000000089');
INSERT INTO `general_ledger` VALUES (1062,'410-10',6325000,'2012-03-19',NULL,'Penjualan,PT. Indomobil Group - Nissan',NULL,6325000,'JL0000000089');
INSERT INTO `general_ledger` VALUES (1063,'510-10',5840000,'2012-03-19',NULL,'Penjualan,PT. Indomobil Group - Nissan',5840000,NULL,'JL0000000089');
INSERT INTO `general_ledger` VALUES (1064,'130-20',12502600,'2012-03-19',NULL,'Penjualan,PT. Gobel Dharma Nusantara',12502600,NULL,'JL0000000090');
INSERT INTO `general_ledger` VALUES (1065,'140-10',-8759000,'2012-03-19',NULL,'Penyesuaian Persediaan Pada JL0000000090',NULL,8759000,'JL0000000090');
INSERT INTO `general_ledger` VALUES (1066,'210-80',1136600,'2012-03-19',NULL,'Penjualan PT. Gobel Dharma Nusantara',NULL,1136600,'JL0000000090');
INSERT INTO `general_ledger` VALUES (1067,'410-10',11366000,'2012-03-19',NULL,'Penjualan,PT. Gobel Dharma Nusantara',NULL,11366000,'JL0000000090');
INSERT INTO `general_ledger` VALUES (1068,'510-10',8759000,'2012-03-19',NULL,'Penjualan,PT. Gobel Dharma Nusantara',8759000,NULL,'JL0000000090');
INSERT INTO `general_ledger` VALUES (1069,'110-20',1320000,'2012-03-19',NULL,'Penjualan,PT. Santiniluwansa Properti Sentosa',1320000,NULL,'JL0000000091');
INSERT INTO `general_ledger` VALUES (1070,'140-10',-600000,'2012-03-19',NULL,'Penyesuaian Persediaan Pada JL0000000091',NULL,600000,'JL0000000091');
INSERT INTO `general_ledger` VALUES (1071,'210-80',120000,'2012-03-19',NULL,'Penjualan PT. Santiniluwansa Properti Sentosa',NULL,120000,'JL0000000091');
INSERT INTO `general_ledger` VALUES (1072,'410-10',1200000,'2012-03-19',NULL,'Penjualan,PT. Santiniluwansa Properti Sentosa',NULL,1200000,'JL0000000091');
INSERT INTO `general_ledger` VALUES (1073,'510-10',600000,'2012-03-19',NULL,'Penjualan,PT. Santiniluwansa Properti Sentosa',600000,NULL,'JL0000000091');
INSERT INTO `general_ledger` VALUES (1074,'110-20',725000,'2012-03-20',NULL,'Penjualan,Hotel Intercontinental Jakarta',725000,NULL,'JL0000000092');
INSERT INTO `general_ledger` VALUES (1075,'140-10',-250000,'2012-03-20',NULL,'Penyesuaian Persediaan Pada JL0000000092',NULL,250000,'JL0000000092');
INSERT INTO `general_ledger` VALUES (1076,'410-10',725000,'2012-03-20',NULL,'Penjualan,Hotel Intercontinental Jakarta',NULL,725000,'JL0000000092');
INSERT INTO `general_ledger` VALUES (1077,'510-10',250000,'2012-03-20',NULL,'Penjualan,Hotel Intercontinental Jakarta',250000,NULL,'JL0000000092');
INSERT INTO `general_ledger` VALUES (1078,'110-20',150000,'2012-02-17',NULL,'Penjualan,PT. MidPlaza Prima',150000,NULL,'JL0000000093');
INSERT INTO `general_ledger` VALUES (1079,'140-10',-75000,'2012-02-17',NULL,'Penyesuaian Persediaan Pada JL0000000093',NULL,75000,'JL0000000093');
INSERT INTO `general_ledger` VALUES (1080,'410-10',150000,'2012-02-17',NULL,'Penjualan,PT. MidPlaza Prima',NULL,150000,'JL0000000093');
INSERT INTO `general_ledger` VALUES (1081,'510-10',75000,'2012-02-17',NULL,'Penjualan,PT. MidPlaza Prima',75000,NULL,'JL0000000093');
INSERT INTO `general_ledger` VALUES (1082,'130-20',210267750,'2012-03-21',NULL,'Penjualan,PT. Gobel Dharma Nusantara',210267750,NULL,'JL0000000094');
INSERT INTO `general_ledger` VALUES (1083,'140-10',-147608500,'2012-03-21',NULL,'Penyesuaian Persediaan Pada JL0000000094',NULL,147608500,'JL0000000094');
INSERT INTO `general_ledger` VALUES (1084,'210-80',19115250,'2012-03-21',NULL,'Penjualan PT. Gobel Dharma Nusantara',NULL,19115250,'JL0000000094');
INSERT INTO `general_ledger` VALUES (1085,'410-10',191152500,'2012-03-21',NULL,'Penjualan,PT. Gobel Dharma Nusantara',NULL,191152500,'JL0000000094');
INSERT INTO `general_ledger` VALUES (1086,'510-10',147608500,'2012-03-21',NULL,'Penjualan,PT. Gobel Dharma Nusantara',147608500,NULL,'JL0000000094');
INSERT INTO `general_ledger` VALUES (1087,'110-20',27170000,'2012-03-26',NULL,'Penjualan,PT. Laras Trikarsatama',27170000,NULL,'JL0000000095');
INSERT INTO `general_ledger` VALUES (1088,'140-10',-11960000,'2012-03-26',NULL,'Penyesuaian Persediaan Pada JL0000000095',NULL,11960000,'JL0000000095');
INSERT INTO `general_ledger` VALUES (1089,'410-10',27170000,'2012-03-26',NULL,'Penjualan,PT. Laras Trikarsatama',NULL,27170000,'JL0000000095');
INSERT INTO `general_ledger` VALUES (1090,'510-10',11960000,'2012-03-26',NULL,'Penjualan,PT. Laras Trikarsatama',11960000,NULL,'JL0000000095');
INSERT INTO `general_ledger` VALUES (1091,'130-20',128523997.8,'2012-03-27',NULL,'Penjualan,PT. MITRA SEJUK SELARAS',128523997.8,NULL,'JL0000000096');
INSERT INTO `general_ledger` VALUES (1092,'140-10',-121374000,'2012-03-27',NULL,'Penyesuaian Persediaan Pada JL0000000096',NULL,121374000,'JL0000000096');
INSERT INTO `general_ledger` VALUES (1093,'210-80',11683999.8,'2012-03-27',NULL,'Penjualan PT. MITRA SEJUK SELARAS',NULL,11683999.8,'JL0000000096');
INSERT INTO `general_ledger` VALUES (1094,'410-10',116839998,'2012-03-27',NULL,'Penjualan,PT. MITRA SEJUK SELARAS',NULL,116839998,'JL0000000096');
INSERT INTO `general_ledger` VALUES (1095,'510-10',121374000,'2012-03-27',NULL,'Penjualan,PT. MITRA SEJUK SELARAS',121374000,NULL,'JL0000000096');
INSERT INTO `general_ledger` VALUES (1096,'130-20',116839998,'2012-03-29',NULL,'Penjualan,PT. MITRA SEJUK SELARAS',116839998,NULL,'JL0000000097');
INSERT INTO `general_ledger` VALUES (1097,'140-10',-110340000,'2012-03-29',NULL,'Penyesuaian Persediaan Pada JL0000000097',NULL,110340000,'JL0000000097');
INSERT INTO `general_ledger` VALUES (1098,'210-80',10621818,'2012-03-29',NULL,'Penjualan PT. MITRA SEJUK SELARAS',NULL,10621818,'JL0000000097');
INSERT INTO `general_ledger` VALUES (1099,'410-10',106218180,'2012-03-29',NULL,'Penjualan,PT. MITRA SEJUK SELARAS',NULL,106218180,'JL0000000097');
INSERT INTO `general_ledger` VALUES (1100,'510-10',110340000,'2012-03-29',NULL,'Penjualan,PT. MITRA SEJUK SELARAS',110340000,NULL,'JL0000000097');
INSERT INTO `general_ledger` VALUES (1101,'130-20',84337000,'2012-03-29',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',84337000,NULL,'JL0000000098');
INSERT INTO `general_ledger` VALUES (1102,'140-10',-54890000,'2012-03-29',NULL,'Penyesuaian Persediaan Pada JL0000000098',NULL,54890000,'JL0000000098');
INSERT INTO `general_ledger` VALUES (1103,'210-80',7667000,'2012-03-29',NULL,'Penjualan PT. Kramayudha Tiga Berlian Motor',NULL,7667000,'JL0000000098');
INSERT INTO `general_ledger` VALUES (1104,'410-10',76670000,'2012-03-29',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',NULL,76670000,'JL0000000098');
INSERT INTO `general_ledger` VALUES (1105,'510-10',54890000,'2012-03-29',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',54890000,NULL,'JL0000000098');
INSERT INTO `general_ledger` VALUES (1106,'130-20',15334000,'2012-03-29',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',15334000,NULL,'JL0000000099');
INSERT INTO `general_ledger` VALUES (1107,'140-10',-9980000,'2012-03-29',NULL,'Penyesuaian Persediaan Pada JL0000000099',NULL,9980000,'JL0000000099');
INSERT INTO `general_ledger` VALUES (1108,'210-80',1394000,'2012-03-29',NULL,'Penjualan PT. Kramayudha Tiga Berlian Motor',NULL,1394000,'JL0000000099');
INSERT INTO `general_ledger` VALUES (1109,'410-10',13940000,'2012-03-29',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',NULL,13940000,'JL0000000099');
INSERT INTO `general_ledger` VALUES (1110,'510-10',9980000,'2012-03-29',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',9980000,NULL,'JL0000000099');
INSERT INTO `general_ledger` VALUES (1111,'130-20',3833500,'2012-03-29',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',3833500,NULL,'JL0000000100');
INSERT INTO `general_ledger` VALUES (1112,'140-10',-2495000,'2012-03-29',NULL,'Penyesuaian Persediaan Pada JL0000000100',NULL,2495000,'JL0000000100');
INSERT INTO `general_ledger` VALUES (1113,'210-80',348500,'2012-03-29',NULL,'Penjualan PT. Kramayudha Tiga Berlian Motor',NULL,348500,'JL0000000100');
INSERT INTO `general_ledger` VALUES (1114,'410-10',3485000,'2012-03-29',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',NULL,3485000,'JL0000000100');
INSERT INTO `general_ledger` VALUES (1115,'510-10',2495000,'2012-03-29',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',2495000,NULL,'JL0000000100');
INSERT INTO `general_ledger` VALUES (1116,'130-20',592295000,'2012-03-29',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',592295000,NULL,'JL0000000101');
INSERT INTO `general_ledger` VALUES (1117,'140-10',-426940000,'2012-03-29',NULL,'Penyesuaian Persediaan Pada JL0000000101',NULL,426940000,'JL0000000101');
INSERT INTO `general_ledger` VALUES (1118,'210-80',53845000,'2012-03-29',NULL,'Penjualan PT. Kramayudha Tiga Berlian Motor',NULL,53845000,'JL0000000101');
INSERT INTO `general_ledger` VALUES (1119,'410-10',538450000,'2012-03-29',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',NULL,538450000,'JL0000000101');
INSERT INTO `general_ledger` VALUES (1120,'510-10',426940000,'2012-03-29',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',426940000,NULL,'JL0000000101');
INSERT INTO `general_ledger` VALUES (1121,'130-20',910580000,'2012-03-29',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',910580000,NULL,'JL0000000102');
INSERT INTO `general_ledger` VALUES (1122,'140-10',-661775000,'2012-03-29',NULL,'Penyesuaian Persediaan Pada JL0000000102',NULL,661775000,'JL0000000102');
INSERT INTO `general_ledger` VALUES (1123,'210-80',82780000,'2012-03-29',NULL,'Penjualan PT. Kramayudha Tiga Berlian Motor',NULL,82780000,'JL0000000102');
INSERT INTO `general_ledger` VALUES (1124,'410-10',827800000,'2012-03-29',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',NULL,827800000,'JL0000000102');
INSERT INTO `general_ledger` VALUES (1125,'510-10',661775000,'2012-03-29',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',661775000,NULL,'JL0000000102');
INSERT INTO `general_ledger` VALUES (1126,'130-20',42168500,'2012-03-29',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',42168500,NULL,'JL0000000103');
INSERT INTO `general_ledger` VALUES (1127,'140-10',-27445000,'2012-03-29',NULL,'Penyesuaian Persediaan Pada JL0000000103',NULL,27445000,'JL0000000103');
INSERT INTO `general_ledger` VALUES (1128,'210-80',3833500,'2012-03-29',NULL,'Penjualan PT. Kramayudha Tiga Berlian Motor',NULL,3833500,'JL0000000103');
INSERT INTO `general_ledger` VALUES (1129,'410-10',38335000,'2012-03-29',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',NULL,38335000,'JL0000000103');
INSERT INTO `general_ledger` VALUES (1130,'510-10',27445000,'2012-03-29',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',27445000,NULL,'JL0000000103');
INSERT INTO `general_ledger` VALUES (1131,'130-20',15334000,'2012-03-29',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',15334000,NULL,'JL0000000104');
INSERT INTO `general_ledger` VALUES (1132,'140-10',-9980000,'2012-03-29',NULL,'Penyesuaian Persediaan Pada JL0000000104',NULL,9980000,'JL0000000104');
INSERT INTO `general_ledger` VALUES (1133,'210-80',1394000,'2012-03-29',NULL,'Penjualan PT. Kramayudha Tiga Berlian Motor',NULL,1394000,'JL0000000104');
INSERT INTO `general_ledger` VALUES (1134,'410-10',13940000,'2012-03-29',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',NULL,13940000,'JL0000000104');
INSERT INTO `general_ledger` VALUES (1135,'510-10',9980000,'2012-03-29',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',9980000,NULL,'JL0000000104');
INSERT INTO `general_ledger` VALUES (1136,'130-20',7667000,'2012-03-29',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',7667000,NULL,'JL0000000105');
INSERT INTO `general_ledger` VALUES (1137,'140-10',-4990000,'2012-03-29',NULL,'Penyesuaian Persediaan Pada JL0000000105',NULL,4990000,'JL0000000105');
INSERT INTO `general_ledger` VALUES (1138,'210-80',697000,'2012-03-29',NULL,'Penjualan PT. Kramayudha Tiga Berlian Motor',NULL,697000,'JL0000000105');
INSERT INTO `general_ledger` VALUES (1139,'410-10',6970000,'2012-03-29',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',NULL,6970000,'JL0000000105');
INSERT INTO `general_ledger` VALUES (1140,'510-10',4990000,'2012-03-29',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',4990000,NULL,'JL0000000105');
INSERT INTO `general_ledger` VALUES (1141,'130-20',3833500,'2012-03-29',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',3833500,NULL,'JL0000000106');
INSERT INTO `general_ledger` VALUES (1142,'140-10',-2495000,'2012-03-29',NULL,'Penyesuaian Persediaan Pada JL0000000106',NULL,2495000,'JL0000000106');
INSERT INTO `general_ledger` VALUES (1143,'210-80',348500,'2012-03-29',NULL,'Penjualan PT. Kramayudha Tiga Berlian Motor',NULL,348500,'JL0000000106');
INSERT INTO `general_ledger` VALUES (1144,'410-10',3485000,'2012-03-29',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',NULL,3485000,'JL0000000106');
INSERT INTO `general_ledger` VALUES (1145,'510-10',2495000,'2012-03-29',NULL,'Penjualan,PT. Kramayudha Tiga Berlian Motor',2495000,NULL,'JL0000000106');
INSERT INTO `general_ledger` VALUES (1146,'130-20',2220000,'2012-03-31',NULL,'Penjualan,Aston Tropicana Hotel && Premier PLaza',2220000,NULL,'JL0000000107');
INSERT INTO `general_ledger` VALUES (1147,'140-10',-900000,'2012-03-31',NULL,'Penyesuaian Persediaan Pada JL0000000107',NULL,900000,'JL0000000107');
INSERT INTO `general_ledger` VALUES (1148,'410-10',2220000,'2012-03-31',NULL,'Penjualan,Aston Tropicana Hotel && Premier PLaza',NULL,2220000,'JL0000000107');
INSERT INTO `general_ledger` VALUES (1149,'510-10',900000,'2012-03-31',NULL,'Penjualan,Aston Tropicana Hotel && Premier PLaza',900000,NULL,'JL0000000107');
INSERT INTO `general_ledger` VALUES (1150,'130-20',12210000,'2012-03-01',NULL,'Penjualan,PT. Indopoly Swakarsa Industry Tbk',12210000,NULL,'JL0000000108');
INSERT INTO `general_ledger` VALUES (1151,'140-10',-11300000,'2012-03-01',NULL,'Penyesuaian Persediaan Pada JL0000000108',NULL,11300000,'JL0000000108');
INSERT INTO `general_ledger` VALUES (1152,'210-80',1110000,'2012-03-01',NULL,'Penjualan PT. Indopoly Swakarsa Industry Tbk',NULL,1110000,'JL0000000108');
INSERT INTO `general_ledger` VALUES (1153,'410-10',11100000,'2012-03-01',NULL,'Penjualan,PT. Indopoly Swakarsa Industry Tbk',NULL,11100000,'JL0000000108');
INSERT INTO `general_ledger` VALUES (1154,'510-10',11300000,'2012-03-01',NULL,'Penjualan,PT. Indopoly Swakarsa Industry Tbk',11300000,NULL,'JL0000000108');
INSERT INTO `general_ledger` VALUES (1155,'110-20',-90000000,'2011-12-28',NULL,'Pembelian,PT. Sharp Electronics Indonesia',NULL,90000000,'001/SV/PO/01/2011');
INSERT INTO `general_ledger` VALUES (1156,'140-10',90000000,'2011-12-28',NULL,'Pembelian,PT. Sharp Electronics Indonesia',90000000,NULL,'001/SV/PO/01/2011');
INSERT INTO `general_ledger` VALUES (1157,'130-20',113399998.8,'2012-01-19',NULL,'Penjualan,PT. Pramindo Ikat Nusantara',113399998.8,NULL,'JL0000000109');
INSERT INTO `general_ledger` VALUES (1158,'140-10',-90000000,'2012-01-19',NULL,'Penyesuaian Persediaan Pada JL0000000109',NULL,90000000,'JL0000000109');
INSERT INTO `general_ledger` VALUES (1159,'210-80',10309090.8,'2012-01-19',NULL,'Penjualan PT. Pramindo Ikat Nusantara',NULL,10309090.8,'JL0000000109');
INSERT INTO `general_ledger` VALUES (1160,'410-10',103090908,'2012-01-19',NULL,'Penjualan,PT. Pramindo Ikat Nusantara',NULL,103090908,'JL0000000109');
INSERT INTO `general_ledger` VALUES (1161,'510-10',90000000,'2012-01-19',NULL,'Penjualan,PT. Pramindo Ikat Nusantara',90000000,NULL,'JL0000000109');
INSERT INTO `general_ledger` VALUES (1162,'130-20',594000,'2012-02-17',NULL,'Penjualan,PT. Gobel Dharma Nusantara',594000,NULL,'JL0000000110');
INSERT INTO `general_ledger` VALUES (1163,'140-10',-380000,'2012-02-17',NULL,'Penyesuaian Persediaan Pada JL0000000110',NULL,380000,'JL0000000110');
INSERT INTO `general_ledger` VALUES (1164,'210-80',54000,'2012-02-17',NULL,'Penjualan PT. Gobel Dharma Nusantara',NULL,54000,'JL0000000110');
INSERT INTO `general_ledger` VALUES (1165,'410-10',540000,'2012-02-17',NULL,'Penjualan,PT. Gobel Dharma Nusantara',NULL,540000,'JL0000000110');
INSERT INTO `general_ledger` VALUES (1166,'510-10',380000,'2012-02-17',NULL,'Penjualan,PT. Gobel Dharma Nusantara',380000,NULL,'JL0000000110');
INSERT INTO `general_ledger` VALUES (1167,'110-20',-4050000,'2012-02-28',NULL,'Pembelian,Murjili',NULL,4050000,'001/SV/PO/01/2012');
INSERT INTO `general_ledger` VALUES (1168,'140-10',4050000,'2012-02-28',NULL,'Pembelian,Murjili',4050000,NULL,'001/SV/PO/01/2012');
INSERT INTO `general_ledger` VALUES (1169,'110-20',-76130000,'2012-02-27',NULL,'Pembelian,Vivi Electrindo',NULL,76130000,'001/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (1170,'140-10',76130000,'2012-02-27',NULL,'Pembelian,Vivi Electrindo',76130000,NULL,'001/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (1171,'110-20',-7000000,'2012-02-27',NULL,'Pembelian,Murjili',NULL,7000000,'002/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (1172,'140-10',7000000,'2012-02-27',NULL,'Pembelian,Murjili',7000000,NULL,'002/SV/PO/02/2012');
INSERT INTO `general_ledger` VALUES (1173,'130-20',133382499.8,'2012-02-28',NULL,'Penjualan,PT. Gobel Dharma Nusantara',133382499.8,NULL,'JL0000000111');
INSERT INTO `general_ledger` VALUES (1174,'140-10',-87180000,'2012-02-28',NULL,'Penyesuaian Persediaan Pada JL0000000111',NULL,87180000,'JL0000000111');
INSERT INTO `general_ledger` VALUES (1175,'210-80',12125681.8,'2012-02-28',NULL,'Penjualan PT. Gobel Dharma Nusantara',NULL,12125681.8,'JL0000000111');
INSERT INTO `general_ledger` VALUES (1176,'410-10',121256818,'2012-02-28',NULL,'Penjualan,PT. Gobel Dharma Nusantara',NULL,121256818,'JL0000000111');
INSERT INTO `general_ledger` VALUES (1177,'510-10',87180000,'2012-02-28',NULL,'Penjualan,PT. Gobel Dharma Nusantara',87180000,NULL,'JL0000000111');
INSERT INTO `general_ledger` VALUES (1178,'210-20',9400000,'2012-04-16',NULL,'Pembelian,PT. Sharp Electronics Indonesia',NULL,9400000,'001/SV/PO/04/2012');
INSERT INTO `general_ledger` VALUES (1179,'140-10',9400000,'2012-04-16',NULL,'Pembelian,PT. Sharp Electronics Indonesia',9400000,NULL,'001/SV/PO/04/2012');
INSERT INTO `general_ledger` VALUES (1180,'210-20',2125000,'2012-04-16',NULL,'Pembelian,PT. Sankyo Sahabat Indonesia',NULL,2125000,'002/SV/PO/04/2012');
INSERT INTO `general_ledger` VALUES (1181,'140-10',2125000,'2012-04-16',NULL,'Pembelian,PT. Sankyo Sahabat Indonesia',2125000,NULL,'002/SV/PO/04/2012');
INSERT INTO `general_ledger` VALUES (1182,'210-20',2880000,'2012-04-19',NULL,'Pembelian,PT. Sharp Electronics Indonesia',NULL,2880000,'003/SV/PO/04/2012');
INSERT INTO `general_ledger` VALUES (1183,'140-10',2880000,'2012-04-19',NULL,'Pembelian,PT. Sharp Electronics Indonesia',2880000,NULL,'003/SV/PO/04/2012');
INSERT INTO `general_ledger` VALUES (1184,'210-20',423440000,'2012-04-23',NULL,'Pembelian,PT. Gobel Dharma Nusantara',NULL,423440000,'004/SV/PO/04/2012');
INSERT INTO `general_ledger` VALUES (1185,'140-10',423440000,'2012-04-23',NULL,'Pembelian,PT. Gobel Dharma Nusantara',423440000,NULL,'004/SV/PO/04/2012');
INSERT INTO `general_ledger` VALUES (1186,'210-20',110750000,'2012-04-25',NULL,'Pembelian,CV. Bina Guna',NULL,110750000,'005/SV/PO/04/2012');
INSERT INTO `general_ledger` VALUES (1187,'140-10',110750000,'2012-04-25',NULL,'Pembelian,CV. Bina Guna',110750000,NULL,'005/SV/PO/04/2012');
INSERT INTO `general_ledger` VALUES (1188,'210-20',56325000,'2012-04-25',NULL,'Pembelian,CV. Bina Guna',NULL,56325000,'006/SV/PO/04/2012');
INSERT INTO `general_ledger` VALUES (1189,'140-10',56325000,'2012-04-25',NULL,'Pembelian,CV. Bina Guna',56325000,NULL,'006/SV/PO/04/2012');
INSERT INTO `general_ledger` VALUES (1190,'210-20',12700000,'2012-04-26',NULL,'Pembelian,PT. Catur Mitra Sepakat',NULL,12700000,'007/SV/PO/04/2012');
INSERT INTO `general_ledger` VALUES (1191,'140-10',12700000,'2012-04-26',NULL,'Pembelian,PT. Catur Mitra Sepakat',12700000,NULL,'007/SV/PO/04/2012');
INSERT INTO `general_ledger` VALUES (1192,'110-20',-40600000,'2012-05-01',NULL,'Pembelian,PT. Saitech',NULL,40600000,'001/SV/PO/05/2012');
INSERT INTO `general_ledger` VALUES (1193,'140-10',40600000,'2012-05-01',NULL,'Pembelian,PT. Saitech',40600000,NULL,'001/SV/PO/05/2012');
INSERT INTO `general_ledger` VALUES (1194,'110-20',-123000000,'2012-05-01',NULL,'Pembelian,CV. Delta Electronics',NULL,123000000,'002/SV/PO/05/2012');
INSERT INTO `general_ledger` VALUES (1195,'140-10',123000000,'2012-05-01',NULL,'Pembelian,CV. Delta Electronics',123000000,NULL,'002/SV/PO/05/2012');
INSERT INTO `general_ledger` VALUES (1196,'210-20',2680000,'2012-05-01',NULL,'Pembelian,PT. Gobel Dharma Nusantara',NULL,2680000,'003/SV/PO/05/2012');
INSERT INTO `general_ledger` VALUES (1197,'140-10',2680000,'2012-05-01',NULL,'Pembelian,PT. Gobel Dharma Nusantara',2680000,NULL,'003/SV/PO/05/2012');
INSERT INTO `general_ledger` VALUES (1198,'210-20',21000000,'2012-05-02',NULL,'Pembelian,PT. Sharp Electronics Indonesia',NULL,21000000,'004/SV/PO/05/2012');
INSERT INTO `general_ledger` VALUES (1199,'140-10',21000000,'2012-05-02',NULL,'Pembelian,PT. Sharp Electronics Indonesia',21000000,NULL,'004/SV/PO/05/2012');
INSERT INTO `general_ledger` VALUES (1200,'110-20',-2472000,'2012-05-03',NULL,'Pembelian,Pak Heri Taufan',NULL,2472000,'005/SV/PO/05/2012');
INSERT INTO `general_ledger` VALUES (1201,'140-10',2472000,'2012-05-03',NULL,'Pembelian,Pak Heri Taufan',2472000,NULL,'005/SV/PO/05/2012');
INSERT INTO `general_ledger` VALUES (1202,'210-20',171520000,'2012-05-04',NULL,'Pembelian,PT. Gobel Dharma Nusantara',NULL,171520000,'006/SV/PO/05/2012');
INSERT INTO `general_ledger` VALUES (1203,'140-10',171520000,'2012-05-04',NULL,'Pembelian,PT. Gobel Dharma Nusantara',171520000,NULL,'006/SV/PO/05/2012');
INSERT INTO `general_ledger` VALUES (1204,'210-20',2541000,'2012-05-07',NULL,'Pembelian,PT. Sharp Electronics Indonesia',NULL,2541000,'007/SV/PO/05/2012');
INSERT INTO `general_ledger` VALUES (1205,'140-10',2541000,'2012-05-07',NULL,'Pembelian,PT. Sharp Electronics Indonesia',2541000,NULL,'007/SV/PO/05/2012');
INSERT INTO `general_ledger` VALUES (1206,'210-20',4590000,'2012-05-07',NULL,'Pembelian,PT. LG Electronics Indonesia',NULL,4590000,'008/SV/PO/05/2012');
INSERT INTO `general_ledger` VALUES (1207,'140-10',4590000,'2012-05-07',NULL,'Pembelian,PT. LG Electronics Indonesia',4590000,NULL,'008/SV/PO/05/2012');
INSERT INTO `general_ledger` VALUES (1208,'210-20',960000000,'2012-05-09',NULL,'Pembelian,PT. Sharp Electronics Indonesia',NULL,960000000,'009/SV/PO/05/2012');
INSERT INTO `general_ledger` VALUES (1209,'140-10',960000000,'2012-05-09',NULL,'Pembelian,PT. Sharp Electronics Indonesia',960000000,NULL,'009/SV/PO/05/2012');
INSERT INTO `general_ledger` VALUES (1210,'210-20',48750000,'2012-05-09',NULL,'Pembelian,PT. Sharp Electronics Indonesia',NULL,48750000,'010/SV/PO/05/2012');
INSERT INTO `general_ledger` VALUES (1211,'140-10',48750000,'2012-05-09',NULL,'Pembelian,PT. Sharp Electronics Indonesia',48750000,NULL,'010/SV/PO/05/2012');
INSERT INTO `general_ledger` VALUES (1212,'130-20',-15829000,'2012-01-03',NULL,'Pembayaran Piutang Untuk JL0000000001',NULL,15829000,'JL0000000001');
INSERT INTO `general_ledger` VALUES (1213,'110-20',15829000,'2012-01-03',NULL,'Pembayaran Piutang Untuk JL0000000001',15829000,NULL,'JL0000000001');

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
) ENGINE=MyISAM AUTO_INCREMENT=198 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `inventory` VALUES (13,30,1,-2,1750000);
INSERT INTO `inventory` VALUES (14,32,1,12,1900000);
INSERT INTO `inventory` VALUES (15,41,1,92,2400000);
INSERT INTO `inventory` VALUES (16,11,1,0,1150000);
INSERT INTO `inventory` VALUES (17,26,1,-1,1700000);
INSERT INTO `inventory` VALUES (18,34,1,2,10500000);
INSERT INTO `inventory` VALUES (19,54,1,1,80000000);
INSERT INTO `inventory` VALUES (20,1242,1,5,2150000);
INSERT INTO `inventory` VALUES (21,1223,1,1,5150000);
INSERT INTO `inventory` VALUES (22,1224,1,127,2680000);
INSERT INTO `inventory` VALUES (23,1160,1,0,5315000);
INSERT INTO `inventory` VALUES (24,1226,2,2,2084500);
INSERT INTO `inventory` VALUES (25,1227,2,1,1215500);
INSERT INTO `inventory` VALUES (26,1228,2,-10,3000000);
INSERT INTO `inventory` VALUES (27,1229,2,1,1375000);
INSERT INTO `inventory` VALUES (28,1230,2,-3,2500000);
INSERT INTO `inventory` VALUES (29,1225,1,25,5315000);
INSERT INTO `inventory` VALUES (30,1231,1,1,2325000);
INSERT INTO `inventory` VALUES (31,1232,1,10,4500000);
INSERT INTO `inventory` VALUES (32,57,1,0,18600000);
INSERT INTO `inventory` VALUES (33,1234,1,-3,5200000);
INSERT INTO `inventory` VALUES (34,1235,1,0,1350000);
INSERT INTO `inventory` VALUES (35,1236,1,1,10900000);
INSERT INTO `inventory` VALUES (36,1237,1,2,6750000);
INSERT INTO `inventory` VALUES (37,1238,2,0,10200000);
INSERT INTO `inventory` VALUES (38,1240,2,0,280000);
INSERT INTO `inventory` VALUES (39,1263,1,0,2250000);
INSERT INTO `inventory` VALUES (40,1241,1,0,2875000);
INSERT INTO `inventory` VALUES (41,1264,1,0,3294500);
INSERT INTO `inventory` VALUES (42,1265,1,0,1959000);
INSERT INTO `inventory` VALUES (43,1266,1,0,5250000);
INSERT INTO `inventory` VALUES (44,1204,2,1651,75000);
INSERT INTO `inventory` VALUES (45,1205,1,665,95000);
INSERT INTO `inventory` VALUES (46,1243,1,0,12000000);
INSERT INTO `inventory` VALUES (47,1244,1,1,200000);
INSERT INTO `inventory` VALUES (48,1215,1,-10,24000);
INSERT INTO `inventory` VALUES (49,1245,1,223,12000);
INSERT INTO `inventory` VALUES (50,1246,1,0,150000);
INSERT INTO `inventory` VALUES (51,1247,1,5,450000);
INSERT INTO `inventory` VALUES (52,1248,1,0,450000);
INSERT INTO `inventory` VALUES (53,1249,1,0,500000);
INSERT INTO `inventory` VALUES (54,1250,1,0,600000);
INSERT INTO `inventory` VALUES (55,1251,1,0,800000);
INSERT INTO `inventory` VALUES (56,1252,1,0,900000);
INSERT INTO `inventory` VALUES (57,1253,1,0,55000);
INSERT INTO `inventory` VALUES (58,1254,1,0,65000);
INSERT INTO `inventory` VALUES (59,1255,1,0,90000);
INSERT INTO `inventory` VALUES (60,1256,1,0,150000);
INSERT INTO `inventory` VALUES (61,1218,1,0,12000);
INSERT INTO `inventory` VALUES (62,1214,1,281,17500);
INSERT INTO `inventory` VALUES (63,1260,1,329,10000);
INSERT INTO `inventory` VALUES (64,1216,1,0,60000);
INSERT INTO `inventory` VALUES (65,1217,1,19,75000);
INSERT INTO `inventory` VALUES (66,1328,1,-17,100000);
INSERT INTO `inventory` VALUES (67,1257,1,0,150000);
INSERT INTO `inventory` VALUES (68,1310,2,0,76680000);
INSERT INTO `inventory` VALUES (69,1311,2,0,9260000);
INSERT INTO `inventory` VALUES (70,1312,2,0,1740000);
INSERT INTO `inventory` VALUES (71,1313,2,0,930000);
INSERT INTO `inventory` VALUES (72,1329,2,0,2800000);
INSERT INTO `inventory` VALUES (73,1314,2,0,11000000);
INSERT INTO `inventory` VALUES (74,1315,2,0,1200000);
INSERT INTO `inventory` VALUES (75,1316,2,0,1900000);
INSERT INTO `inventory` VALUES (76,1317,2,0,4600000);
INSERT INTO `inventory` VALUES (77,1318,2,0,12000);
INSERT INTO `inventory` VALUES (78,1319,2,0,6500000);
INSERT INTO `inventory` VALUES (79,1320,2,-1,400000);
INSERT INTO `inventory` VALUES (80,1321,2,1,7000000);
INSERT INTO `inventory` VALUES (81,1322,2,0,1750000);
INSERT INTO `inventory` VALUES (82,1323,2,0,4000000);
INSERT INTO `inventory` VALUES (83,1324,2,1,800000);
INSERT INTO `inventory` VALUES (84,1327,1,0,185000);
INSERT INTO `inventory` VALUES (85,1291,1,10,200000);
INSERT INTO `inventory` VALUES (86,1259,1,0,75000);
INSERT INTO `inventory` VALUES (87,1299,1,30,65000);
INSERT INTO `inventory` VALUES (88,1262,1,0,100000);
INSERT INTO `inventory` VALUES (89,1340,1,60,11000);
INSERT INTO `inventory` VALUES (90,1341,1,60,15000);
INSERT INTO `inventory` VALUES (91,1336,1,8,800000);
INSERT INTO `inventory` VALUES (92,1337,1,1,1000000);
INSERT INTO `inventory` VALUES (93,1338,1,15,10000);
INSERT INTO `inventory` VALUES (94,1339,1,15,13000);
INSERT INTO `inventory` VALUES (95,1335,1,8,356000);
INSERT INTO `inventory` VALUES (96,1334,1,2,485000);
INSERT INTO `inventory` VALUES (97,1333,1,2,235000);
INSERT INTO `inventory` VALUES (98,1342,1,4,4500000);
INSERT INTO `inventory` VALUES (99,1343,2,0,11034000);
INSERT INTO `inventory` VALUES (100,1348,1,0,1500000);
INSERT INTO `inventory` VALUES (101,1211,1,1,250000);
INSERT INTO `inventory` VALUES (102,1349,1,1,400000);
INSERT INTO `inventory` VALUES (103,1275,1,62,65000);
INSERT INTO `inventory` VALUES (104,1213,1,99,28000);
INSERT INTO `inventory` VALUES (105,1308,1,275,30000);
INSERT INTO `inventory` VALUES (106,1309,1,0,60000);
INSERT INTO `inventory` VALUES (107,1280,1,0,600000);
INSERT INTO `inventory` VALUES (108,1281,1,0,750000);
INSERT INTO `inventory` VALUES (109,1282,1,1,250000);
INSERT INTO `inventory` VALUES (110,1221,1,9,100000);
INSERT INTO `inventory` VALUES (111,1222,1,48,125000);
INSERT INTO `inventory` VALUES (112,1276,1,2,200000);
INSERT INTO `inventory` VALUES (113,1274,1,292,55000);
INSERT INTO `inventory` VALUES (114,1306,1,103,140000);
INSERT INTO `inventory` VALUES (115,1303,1,0,140000);
INSERT INTO `inventory` VALUES (116,1292,1,0,75000);
INSERT INTO `inventory` VALUES (117,1290,1,14,200000);
INSERT INTO `inventory` VALUES (118,1351,1,3,60000);
INSERT INTO `inventory` VALUES (119,1302,1,0,250000);
INSERT INTO `inventory` VALUES (120,1305,1,0,130000);
INSERT INTO `inventory` VALUES (121,1293,1,0,450000);
INSERT INTO `inventory` VALUES (122,1294,1,0,50000);
INSERT INTO `inventory` VALUES (123,1295,1,0,600000);
INSERT INTO `inventory` VALUES (124,1296,1,0,800000);
INSERT INTO `inventory` VALUES (125,1297,1,0,900000);
INSERT INTO `inventory` VALUES (126,1298,1,0,55000);
INSERT INTO `inventory` VALUES (127,1300,1,60,90000);
INSERT INTO `inventory` VALUES (128,1301,1,0,150000);
INSERT INTO `inventory` VALUES (129,1267,1,250,300000);
INSERT INTO `inventory` VALUES (130,1269,1,96,100000);
INSERT INTO `inventory` VALUES (131,1270,1,96,150000);
INSERT INTO `inventory` VALUES (132,NULL,1,1,2000000);
INSERT INTO `inventory` VALUES (133,1272,1,3,200000);
INSERT INTO `inventory` VALUES (134,1273,1,3,300000);
INSERT INTO `inventory` VALUES (135,1352,1,0,200000);
INSERT INTO `inventory` VALUES (136,1277,1,0,850000);
INSERT INTO `inventory` VALUES (137,1353,1,0,1050000);
INSERT INTO `inventory` VALUES (138,1278,1,0,400000);
INSERT INTO `inventory` VALUES (139,1268,1,105,50000);
INSERT INTO `inventory` VALUES (140,1271,1,0,65000);
INSERT INTO `inventory` VALUES (141,1354,1,0,850000);
INSERT INTO `inventory` VALUES (142,1355,1,0,75000);
INSERT INTO `inventory` VALUES (143,1330,1,0,450000);
INSERT INTO `inventory` VALUES (144,1331,1,0,900000);
INSERT INTO `inventory` VALUES (145,1356,1,0,30000);
INSERT INTO `inventory` VALUES (146,1357,1,-71,12000);
INSERT INTO `inventory` VALUES (147,1361,1,0,38000);
INSERT INTO `inventory` VALUES (148,1360,1,0,59000);
INSERT INTO `inventory` VALUES (149,1359,1,0,55000);
INSERT INTO `inventory` VALUES (150,1363,1,0,19000);
INSERT INTO `inventory` VALUES (151,1362,1,0,17500);
INSERT INTO `inventory` VALUES (152,1284,1,0,4010000);
INSERT INTO `inventory` VALUES (153,1358,1,0,32000000);
INSERT INTO `inventory` VALUES (154,1344,2,1,40950000);
INSERT INTO `inventory` VALUES (155,1345,2,3,13000000);
INSERT INTO `inventory` VALUES (156,1346,2,1,11275000);
INSERT INTO `inventory` VALUES (157,1347,2,1,1875000);
INSERT INTO `inventory` VALUES (158,1364,2,1,250356000);
INSERT INTO `inventory` VALUES (159,1365,1,1,12000000);
INSERT INTO `inventory` VALUES (160,1366,1,1,1850000);
INSERT INTO `inventory` VALUES (161,1367,2,3,18000000);
INSERT INTO `inventory` VALUES (162,1368,1,2,123000);
INSERT INTO `inventory` VALUES (163,1369,1,2,315000);
INSERT INTO `inventory` VALUES (164,1370,1,8,205000);
INSERT INTO `inventory` VALUES (165,1371,1,8,560000);
INSERT INTO `inventory` VALUES (166,1372,1,30,66000);
INSERT INTO `inventory` VALUES (167,1373,2,237,1290000);
INSERT INTO `inventory` VALUES (168,1374,2,474,3600000);
INSERT INTO `inventory` VALUES (169,1375,2,79,3150000);
INSERT INTO `inventory` VALUES (170,1376,2,4,6550000);
INSERT INTO `inventory` VALUES (171,1377,2,1,56500000);
INSERT INTO `inventory` VALUES (172,1326,1,2,2350000);
INSERT INTO `inventory` VALUES (173,1279,2,0,15500000);
INSERT INTO `inventory` VALUES (174,1378,1,0,136000);
INSERT INTO `inventory` VALUES (175,1325,1,0,11000000);
INSERT INTO `inventory` VALUES (176,1380,1,0,1000000);
INSERT INTO `inventory` VALUES (177,1381,1,8,50000);
INSERT INTO `inventory` VALUES (178,1350,1,0,2550000);
INSERT INTO `inventory` VALUES (179,500,1,0,15000000);
INSERT INTO `inventory` VALUES (180,1385,1,0,350000);
INSERT INTO `inventory` VALUES (181,1386,1,0,450000);
INSERT INTO `inventory` VALUES (182,1384,1,0,50000);
INSERT INTO `inventory` VALUES (183,1382,1,0,2000000);
INSERT INTO `inventory` VALUES (184,1387,1,0,7000000);
INSERT INTO `inventory` VALUES (185,1388,1,1,2650000);
INSERT INTO `inventory` VALUES (186,1389,2,1,2125000);
INSERT INTO `inventory` VALUES (187,1392,2,5500,37550);
INSERT INTO `inventory` VALUES (188,1395,1,2,2350000);
INSERT INTO `inventory` VALUES (189,1394,1,4,2950000);
INSERT INTO `inventory` VALUES (190,1393,1,2,4450000);
INSERT INTO `inventory` VALUES (191,1396,1,8,20500000);
INSERT INTO `inventory` VALUES (192,1397,2,1,21000000);
INSERT INTO `inventory` VALUES (193,1398,2,30,26000);
INSERT INTO `inventory` VALUES (194,1399,2,47,36000);
INSERT INTO `inventory` VALUES (195,1400,2,1,1683000);
INSERT INTO `inventory` VALUES (196,1401,2,1,858000);
INSERT INTO `inventory` VALUES (197,1402,1,1,4590000);

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
  `in_date` date default NULL,
  `in_cust_kode` varchar(255) collate latin1_general_ci default NULL,
  `in_order_kode` varchar(255) collate latin1_general_ci default NULL,
  `in_amount` double default NULL,
  `in_tax` double default NULL,
  `in_kode_jual` varchar(255) collate latin1_general_ci default NULL,
  `in_delete` tinyint(3) default '0',
  `in_pic_id` tinyint(3) default NULL,
  `in_paid` tinyint(1) default '0',
  `in_due` date default NULL,
  `in_payment_method` varchar(255) collate latin1_general_ci default NULL,
  `in_po` varchar(255) collate latin1_general_ci default NULL,
  `in_paid_date` date default NULL,
  `in_tagihan` double default NULL,
  `in_tagihan_tax` double default NULL,
  `in_tagihan_total` double default NULL,
  `in_balance` double default NULL,
  `in_fakturpajak` tinyint(1) default '0',
  PRIMARY KEY  (`in_id`)
) ENGINE=MyISAM AUTO_INCREMENT=125 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `invoice` VALUES (1,'000/SV/IN/00/2012',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0);
INSERT INTO `invoice` VALUES (21,'001/SV/IN/01/2012','2012-01-03','SVC-0000005',NULL,14390000,1439000,'JL0000000001',0,NULL,0,NULL,'CASH','F/CP - 01/06',NULL,14390000,1439000,NULL,NULL,1);
INSERT INTO `invoice` VALUES (22,'002/SV/IN/03/2012','2012-03-01','SVC-0000076',NULL,750000,0,'JL0000000070',0,NULL,0,'2012-03-01','CASH',NULL,NULL,NULL,NULL,NULL,NULL,0);
INSERT INTO `invoice` VALUES (23,'001/SV/IN/03/2012','2012-03-01','SVC-0000049',NULL,11100000,1110000,'JL0000000108',0,NULL,0,'2012-03-15','HUTANG','EH - 202847',NULL,11100000,1110000,NULL,NULL,0);
INSERT INTO `invoice` VALUES (24,'030/SV/IN/03/2012','2012-03-29','SVC-0000003',NULL,3485000,348500,'JL0000000106',0,NULL,0,'2012-04-10','HUTANG','PO#390/APD/III/12',NULL,3485000,348500,NULL,NULL,0);
INSERT INTO `invoice` VALUES (25,'031/SV/IN/03/2012','2012-03-29','SVC-0000003',NULL,6970000,697000,'JL0000000105',0,NULL,0,'2012-04-05','HUTANG','PO#389/APD/III/12',NULL,6970000,697000,NULL,NULL,0);
INSERT INTO `invoice` VALUES (26,'032/SV/IN/03/2012','2012-03-29','SVC-0000003',NULL,13940000,1394000,'JL0000000104',0,NULL,0,'2012-04-05','HUTANG','PO#386/APD/III/12',NULL,13940000,1394000,NULL,NULL,0);
INSERT INTO `invoice` VALUES (27,'033/SV/IN/03/2012','2012-03-29','SVC-0000003',NULL,38335000,3833500,'JL0000000103',0,NULL,0,'2012-04-05','HUTANG','PO#385/APD/III/12',NULL,38335000,3833500,NULL,NULL,0);
INSERT INTO `invoice` VALUES (28,'034/SV/IN/03/2012','2012-03-29','SVC-0000003',NULL,827800000,82780000,'JL0000000102',0,NULL,0,'2012-04-05','HUTANG','PO#380/APD/III/12',NULL,827800000,82780000,NULL,NULL,0);
INSERT INTO `invoice` VALUES (29,'035/SV/IN/03/2012','2012-03-29','SVC-0000003',NULL,538450000,53845000,'JL0000000101',0,NULL,0,'2012-04-05','HUTANG','PO#379/APD/III/12',NULL,538450000,53845000,NULL,NULL,0);
INSERT INTO `invoice` VALUES (30,'036/SV/IN/03/2012','2012-03-29','SVC-0000003',NULL,3485000,348500,'JL0000000100',0,NULL,0,'2012-04-05','HUTANG','PO#372/APD/II/12',NULL,3485000,348500,NULL,NULL,0);
INSERT INTO `invoice` VALUES (31,'002/SV/IN/01/2012','2012-01-03','SVC-0000002',NULL,462455000,46245500,'JL0000000002',0,NULL,0,'2012-01-28','HUTANG',NULL,NULL,138736500,13873650,NULL,NULL,1);
INSERT INTO `invoice` VALUES (32,'003/SV/IN/01/2012','2012-01-03','SVC-0000002',NULL,92941000,9294100,'JL0000000003',0,NULL,0,'2012-01-28','HUTANG',NULL,NULL,27882300,2788230,NULL,NULL,1);
INSERT INTO `invoice` VALUES (33,'004/SV/IN/01/2012','2012-01-03','SVC-0000003',NULL,521425000,52142500,'JL0000000004',0,NULL,0,'2012-01-15','HUTANG','PO#292/APD/XII/11',NULL,521425000,52142500,NULL,NULL,1);
INSERT INTO `invoice` VALUES (34,'005/SV/IN/01/2012','2012-01-03','SVC-0000004',NULL,134272500,13427250,'JL0000000005',0,NULL,0,'2012-02-03','HUTANG','PO - 021/TME/P/XI/2011',NULL,83083500,8308350,NULL,NULL,1);
INSERT INTO `invoice` VALUES (35,'006/SV/IN/01/2012','2012-01-03','SVC-0000003',NULL,60450000,6045000,'JL0000000006',0,NULL,0,'2012-01-20','HUTANG','PO#286/APD/XI/11',NULL,60450000,6045000,NULL,NULL,1);
INSERT INTO `invoice` VALUES (36,'007/SV/IN/01/2012','2012-01-05','SVC-0000001',NULL,3160000,316000,'JL0000000007',0,NULL,0,'2012-02-05','HUTANG','PO# 49910694',NULL,3160000,316000,NULL,NULL,1);
INSERT INTO `invoice` VALUES (37,'008/SV/IN/01/2012','2012-01-05','SVC-0000006',NULL,500000,0,'JL0000000008',0,NULL,0,NULL,'CASH',NULL,NULL,NULL,NULL,NULL,NULL,0);
INSERT INTO `invoice` VALUES (38,'009/SV/IN/01/2012','2012-01-09','SVC-0000002',NULL,7290000,729000,'JL0000000009',0,NULL,0,'2012-01-28','HUTANG',NULL,NULL,7290000,729000,NULL,NULL,1);
INSERT INTO `invoice` VALUES (39,'016/SV/IN/01/2012','2012-01-19','SVC-0000050',NULL,15730000,1573000,'JL0000000010',0,NULL,0,'2012-02-19','HUTANG','KP - 08/BHN-PURCH/I/2012',NULL,15730000,1573000,NULL,NULL,0);
INSERT INTO `invoice` VALUES (40,'010/SV/IN/01/2012','2012-01-14','SVC-0000006',NULL,3550000,0,'JL0000000011',0,NULL,0,'2012-02-14','CASH','',NULL,NULL,NULL,NULL,NULL,0);
INSERT INTO `invoice` VALUES (41,'011/SV/IN/01/2012','2012-01-14','SVC-0000070',NULL,2800000,0,'JL0000000012',0,NULL,0,NULL,'CASH',NULL,NULL,NULL,NULL,NULL,NULL,0);
INSERT INTO `invoice` VALUES (42,'012/SV/IN/01/2012','2012-01-17','SVC-0000010',NULL,17181815,1718181.5,'JL0000000013',0,NULL,0,'2012-01-23','HUTANG',NULL,NULL,17181815,1718181.5,NULL,NULL,1);
INSERT INTO `invoice` VALUES (43,'013/SV/IN/01/2012','2012-01-18','SVC-0000071',NULL,4000000,0,'JL0000000014',0,NULL,0,'2012-01-20','CASH',NULL,NULL,NULL,NULL,NULL,NULL,0);
INSERT INTO `invoice` VALUES (44,'014/SV/IN/01/2012','2012-01-18','SVC-0000013',NULL,2530000,0,'JL0000000015',0,NULL,0,'2012-01-25','HUTANG','ADM - 120155',NULL,2530000,0,NULL,NULL,0);
INSERT INTO `invoice` VALUES (45,'015/SV/IN/01/2012','2012-01-18','SVC-0000013',NULL,1150000,0,'JL0000000016',0,NULL,0,'2012-01-25','HUTANG','ADM - 120158',NULL,1150000,0,NULL,NULL,0);
INSERT INTO `invoice` VALUES (46,'017/SV/IN/01/2012','2012-01-19','SVC-0000003',NULL,511400000,51140000,'JL0000000017',0,NULL,0,'2012-02-10','HUTANG','PO#304/APD/XII/11',NULL,511400000,51140000,NULL,NULL,1);
INSERT INTO `invoice` VALUES (47,'018/SV/IN/01/2012','2012-01-19','SVC-0000003',NULL,1315550000,131555000,'JL0000000018',0,NULL,0,'2012-02-19','HUTANG','PO#305/APD/XII/11',NULL,1315550000,131555000,NULL,NULL,0);
INSERT INTO `invoice` VALUES (48,'019/SV/IN/01/2012','2012-01-19','SVC-0000003',NULL,101065000,10106500,'JL0000000019',0,NULL,0,'2012-02-19','HUTANG','PO#308/APD/XII/11',NULL,101065000,10106500,NULL,NULL,0);
INSERT INTO `invoice` VALUES (49,'020/SV/IN/01/2012','2012-01-19','SVC-0000003',NULL,6970000,697000,'JL0000000020',0,NULL,0,'2012-02-19','HUTANG','PO#309/APD/XII/11',NULL,6970000,697000,NULL,NULL,0);
INSERT INTO `invoice` VALUES (50,'021/SV/IN/01/2012','2012-01-19','SVC-0000003',NULL,154250000,15425000,'JL0000000021',0,NULL,0,'2012-02-19','HUTANG','PO#321/APD/I/12',NULL,154250000,15425000,NULL,NULL,0);
INSERT INTO `invoice` VALUES (51,'023/SV/IN/01/2012','2012-01-24','SVC-0000013',NULL,9680100,0,'JL0000000023',0,NULL,0,'2012-01-31','HUTANG','ADM - 120173',NULL,9680100,0,NULL,NULL,0);
INSERT INTO `invoice` VALUES (52,'024/SV/IN/01/2012','2012-01-24','SVC-0000013',NULL,2070000,0,'JL0000000024',0,NULL,0,'2012-01-31','HUTANG','ADM - 120189',NULL,2070000,0,NULL,NULL,0);
INSERT INTO `invoice` VALUES (53,'025/SV/IN/01/2012','2012-01-26','SVC-0000010',NULL,12272725,1227272.5,'JL0000000025',0,NULL,0,'2012-02-02','HUTANG',NULL,NULL,12272725,1227272.5,NULL,NULL,0);
INSERT INTO `invoice` VALUES (54,'026/SV/IN/01/2012','2012-01-27','SVC-0000002',NULL,7613635,761363.5,'JL0000000026',0,NULL,0,'2012-02-10','HUTANG',NULL,NULL,7613635,761363.5,NULL,NULL,0);
INSERT INTO `invoice` VALUES (55,'030/SV/IN/01/2012','2012-01-31','SVC-0000003',NULL,139400000,13940000,'JL0000000027',0,NULL,0,'2012-02-10','HUTANG','PO#317/APD/I/12',NULL,139400000,13940000,NULL,NULL,0);
INSERT INTO `invoice` VALUES (56,'031/SV/IN/01/2012','2012-01-31','SVC-0000003',NULL,13940000,1394000,'JL0000000028',0,NULL,0,'2012-02-10','HUTANG','PO#318/APD/I/12',NULL,13940000,1394000,NULL,NULL,0);
INSERT INTO `invoice` VALUES (57,'032/SV/IN/01/2012','2012-01-31','SVC-0000003',NULL,866725000,86672500,'JL0000000029',0,NULL,0,'2012-02-10','HUTANG','PO#322/APD/1/12',NULL,866725000,86672500,NULL,NULL,0);
INSERT INTO `invoice` VALUES (58,'033/SV/IN/01/2012','2012-01-31','SVC-0000003',NULL,223040000,22304000,'JL0000000030',0,NULL,0,'2012-02-10','HUTANG','PO#331/APD/1/12',NULL,223040000,22304000,NULL,NULL,0);
INSERT INTO `invoice` VALUES (59,'001/SV/IN/02/2012','2012-02-02','SVC-0000021',NULL,16450000,0,'JL0000000031',0,NULL,0,'2012-02-09','HUTANG','00523/WS/ITN/1/2012',NULL,16450000,0,NULL,NULL,0);
INSERT INTO `invoice` VALUES (60,'002/SV/IN/02/2012','2012-02-02','SVC-0000003',NULL,183775000,18377500,'JL0000000033',0,NULL,0,'2012-02-09','HUTANG','PO#327/APD/I/12',NULL,183775000,18377500,NULL,NULL,0);
INSERT INTO `invoice` VALUES (61,'003/SV/IN/02/2012','2012-02-02','SVC-0000003',NULL,762500000,76250000,'JL0000000034',0,NULL,0,'2012-02-09','HUTANG','PO#328/APD/I/12',NULL,762500000,76250000,NULL,NULL,0);
INSERT INTO `invoice` VALUES (62,'005/SV/IN/02/2012','2012-02-03','SVC-0000020',NULL,3800000,380000,'JL0000000035',0,NULL,0,'2012-02-17','HUTANG','03/GA - PURCH/WO/I/12',NULL,3800000,380000,NULL,NULL,0);
INSERT INTO `invoice` VALUES (63,'006/SV/IN/02/2012','2012-02-06','SVC-0000019',NULL,19500000,0,'JL0000000036',0,NULL,0,'2012-02-20','HUTANG','PO - 113 NF / IPT / I / 2012',NULL,19500000,0,NULL,NULL,0);
INSERT INTO `invoice` VALUES (64,'007/SV/IN/02/2012','2012-02-06','SVC-0000018',NULL,1295000,0,'JL0000000037',0,NULL,0,'2012-02-20','HUTANG','001/Astro-SV/XI-2011',NULL,1295000,0,NULL,NULL,0);
INSERT INTO `invoice` VALUES (65,'008/SV/IN/02/2012','2012-02-09','SVC-0000039',NULL,17925000,1792500,'JL0000000038',0,NULL,0,'2012-02-23','HUTANG',NULL,NULL,17925000,1792500,NULL,NULL,0);
INSERT INTO `invoice` VALUES (66,'009/SV/IN/02/2012','2012-02-10','SVC-0000072',NULL,39900000,0,'JL0000000039',0,NULL,0,NULL,'CASH',NULL,NULL,NULL,NULL,NULL,NULL,0);
INSERT INTO `invoice` VALUES (67,'011/SV/IN/02/2012','2012-02-13','SVC-0000022',NULL,11300000,0,'JL0000000040',0,NULL,0,NULL,'CASH','MN 009/CSIS/12/11',NULL,NULL,NULL,NULL,NULL,0);
INSERT INTO `invoice` VALUES (68,'012/SV/IN/02/2012','2012-02-13','SVC-0000073',NULL,83950000,0,'JL0000000041',0,NULL,0,NULL,'CASH','006/RU - ALD/XI/11',NULL,NULL,NULL,NULL,NULL,0);
INSERT INTO `invoice` VALUES (69,'014/SV/IN/02/2012','2012-02-15','SVC-0000003',NULL,48790000,4879000,'JL0000000042',0,NULL,0,'2012-02-20','HUTANG','PO#338/APD/I/12',NULL,48790000,4879000,NULL,NULL,0);
INSERT INTO `invoice` VALUES (70,'015/SV/IN/02/2012','2012-02-15','SVC-0000003',NULL,3485000,348500,'JL0000000043',0,NULL,0,'2012-02-20','HUTANG','PO#339/APD/I/12',NULL,3485000,348500,NULL,NULL,0);
INSERT INTO `invoice` VALUES (71,'016/SV/IN/02/2012','2012-02-15','SVC-0000003',NULL,348475000,34847500,'JL0000000044',0,NULL,0,'2012-02-20','HUTANG','PO#342/APD/I/12',NULL,348475000,34847500,NULL,NULL,0);
INSERT INTO `invoice` VALUES (72,'026/SV/IN/02/2012','2012-02-21','SVC-0000002',NULL,8580000,858000,'JL0000000045',0,NULL,0,'2012-02-29','HUTANG','GDN - PO000957',NULL,8580000,858000,NULL,NULL,0);
INSERT INTO `invoice` VALUES (73,'027/SV/IN/02/2012','2012-02-22','SVC-0000002',NULL,462455000,46245500,'JL0000000046',0,NULL,0,'2012-02-29','HUTANG','GDN - PO000838',NULL,138736500,13873650,NULL,NULL,0);
INSERT INTO `invoice` VALUES (74,'028/SV/IN/02/2012','2012-02-22','SVC-0000002',NULL,12885000,1288500,'JL0000000047',0,NULL,0,'2012-03-07','HUTANG',NULL,NULL,12885000,1288500,NULL,NULL,0);
INSERT INTO `invoice` VALUES (75,'030/SV/IN/02/2012','2012-02-23','SVC-0000013',NULL,1312000,0,'JL0000000048',0,NULL,0,'2012-03-01','HUTANG','ADM - 120299',NULL,1312000,0,NULL,NULL,0);
INSERT INTO `invoice` VALUES (76,'003/SV/IN/03/2012','2012-03-01','SVC-0000003',NULL,3485000,348500,'JL0000000051',0,NULL,0,'2012-03-15','HUTANG','PO#345/APD/I/12',NULL,3485000,348500,NULL,NULL,0);
INSERT INTO `invoice` VALUES (77,'004/SV/IN/03/2012','2012-03-01','SVC-0000003',NULL,109425000,10942500,'JL0000000052',0,NULL,0,'2012-03-15','HUTANG','PO#356/APD/II/12',NULL,109425000,10942500,NULL,NULL,0);
INSERT INTO `invoice` VALUES (78,'005/SV/IN/03/2012','2012-03-01','SVC-0000003',NULL,533925000,53392500,'JL0000000053',0,NULL,0,'2012-03-15','HUTANG','PO#357/APD/II/12',NULL,533925000,53392500,NULL,NULL,0);
INSERT INTO `invoice` VALUES (79,'013/SV/IN/02/2012','2012-02-14','SVC-0000074',NULL,92152500,0,'JL0000000054',0,NULL,0,'2012-02-16','HUTANG',NULL,NULL,79000000,0,NULL,NULL,0);
INSERT INTO `invoice` VALUES (80,'027/SV/IN/01/2012','2012-01-27','SVC-0000002',NULL,267180000,26718000,'JL0000000055',0,NULL,0,'2012-02-10','HUTANG',NULL,NULL,267180000,26718000,NULL,NULL,0);
INSERT INTO `invoice` VALUES (81,'028/SV/IN/01/2012','2012-01-27','SVC-0000002',NULL,55480000,5548000,'JL0000000056',0,NULL,0,'2012-02-10','HUTANG',NULL,NULL,55480000,5548000,NULL,NULL,0);
INSERT INTO `invoice` VALUES (82,'029/SV/IN/01/2012','2012-01-27','SVC-0000002',NULL,11620000,1162000,'JL0000000057',0,NULL,0,'2012-02-10','HUTANG',NULL,NULL,11620000,1162000,NULL,NULL,0);
INSERT INTO `invoice` VALUES (83,'017/SV/IN/02/2012','2012-02-15','SVC-0000003',NULL,431800000,43180000,'JL0000000058',0,NULL,0,'2012-02-25','HUTANG','PO#343/APD/I/12',NULL,431800000,43180000,NULL,NULL,0);
INSERT INTO `invoice` VALUES (84,'018/SV/IN/02/2012','2012-02-15','SVC-0000003',NULL,3485000,348500,'JL0000000059',0,NULL,0,'2012-02-25','HUTANG','PO#349/APD/I/12',NULL,3485000,348500,NULL,NULL,0);
INSERT INTO `invoice` VALUES (85,'010/SV/IN/02/2012','2012-02-10','SVC-0000013',NULL,16100000,0,'JL0000000060',0,NULL,0,'2012-02-17','HUTANG','ADM - 120222',NULL,16100000,0,NULL,NULL,0);
INSERT INTO `invoice` VALUES (86,'004/SV/IN/02/2012','2012-02-02','SVC-0000075',NULL,2400000,0,'JL0000000061',0,NULL,0,NULL,'CASH',NULL,NULL,NULL,NULL,NULL,NULL,0);
INSERT INTO `invoice` VALUES (87,'019/SV/IN/02/2012','2012-02-15','SVC-0000006',NULL,18500000,0,'JL0000000062',0,NULL,0,'2012-02-15','CASH',NULL,NULL,NULL,NULL,NULL,NULL,0);
INSERT INTO `invoice` VALUES (88,'022/SV/IN/02/2012','2012-02-16','SVC-0000013',NULL,5950000,0,'JL0000000063',0,NULL,0,'2012-02-23','HUTANG','ADM - 120225',NULL,5950000,0,NULL,NULL,0);
INSERT INTO `invoice` VALUES (89,'023/SV/IN/02/2012','2012-02-16','SVC-0000013',NULL,6640000,0,'JL0000000064',0,NULL,0,'2012-02-23','HUTANG','ADM - 120228',NULL,6640000,0,NULL,NULL,0);
INSERT INTO `invoice` VALUES (90,'029/SV/IN/02/2012','2012-02-22','SVC-0000002',NULL,92941000,9294100,'JL0000000066',0,NULL,0,'2012-03-07','HUTANG',NULL,NULL,27882300,2788230,NULL,NULL,0);
INSERT INTO `invoice` VALUES (91,'031/SV/IN/02/2012','2012-02-27','SVC-0000013',NULL,10780000,0,'JL0000000067',0,NULL,0,'2012-03-05','HUTANG','ADM - 1202119',NULL,10780000,0,NULL,NULL,0);
INSERT INTO `invoice` VALUES (92,'020/SV/IN/02/2012','2012-02-15','SVC-0000032',NULL,6200000,0,'JL0000000068',0,NULL,0,'2012-02-15','CASH',NULL,NULL,NULL,NULL,NULL,NULL,0);
INSERT INTO `invoice` VALUES (93,'021/SV/IN/02/2012','2012-02-15','SVC-0000002',NULL,19476000,1947600,'JL0000000069',0,NULL,0,'2012-02-29','HUTANG','GDN - PO000899',NULL,19476000,1947600,NULL,NULL,0);
INSERT INTO `invoice` VALUES (94,'006/SV/IN/03/2012','2012-03-01','SVC-0000003',NULL,219555000,21955500,'JL0000000071',0,NULL,0,'2012-03-15','HUTANG','PO#360/APD/II/12',NULL,219555000,21955500,NULL,NULL,0);
INSERT INTO `invoice` VALUES (95,'007/SV/IN/03/2012','2012-03-01','SVC-0000003',NULL,17425000,1742500,'JL0000000072',0,NULL,0,'2012-03-14','HUTANG','PO#361/APD/II/12',NULL,17425000,1742500,NULL,NULL,0);
INSERT INTO `invoice` VALUES (96,'008/SV/IN/03/2012','2012-03-01','SVC-0000003',NULL,66215000,6621500,'JL0000000073',0,NULL,0,'2012-03-14','HUTANG','PO#348/APD/I/12',NULL,66215000,6621500,NULL,NULL,0);
INSERT INTO `invoice` VALUES (97,'009/SV/IN/03/2012','2012-03-02','SVC-0000022',NULL,5500000,0,'JL0000000074',0,NULL,0,'2012-03-02','CASH','MN 001/CSIS/02/12',NULL,NULL,NULL,NULL,NULL,0);
INSERT INTO `invoice` VALUES (98,'010/SV/IN/03/2012','2012-03-05','SVC-0000002',NULL,9857500,985750,'JL0000000075',0,NULL,0,'2012-03-10','HUTANG',NULL,NULL,9857500,985750,NULL,NULL,0);
INSERT INTO `invoice` VALUES (99,'011/SV/IN/03/2012','2012-03-07','SVC-0000002',NULL,18545454,1854545.4,'JL0000000076',0,NULL,0,'2012-03-10','HUTANG',NULL,NULL,18545454,1854545.4,NULL,NULL,0);
INSERT INTO `invoice` VALUES (100,'012/SV/IN/03/2012','2012-03-07','SVC-0000002',NULL,12363636,1236363.6,'JL0000000077',0,NULL,0,'2012-03-10','HUTANG',NULL,NULL,12363636,1236363.6,NULL,NULL,0);
INSERT INTO `invoice` VALUES (101,'017/SV/IN/03/2012','2012-03-10','SVC-0000002',NULL,15290000,1529000,'JL0000000078',0,NULL,0,'2012-03-14','HUTANG','GDN - PO001013',NULL,15290000,1529000,NULL,NULL,0);
INSERT INTO `invoice` VALUES (102,'013/SV/IN/03/2012','2012-03-08','SVC-0000047',NULL,5363636,536363.6,'JL0000000079',0,NULL,0,'2012-03-23','HUTANG',NULL,NULL,5363636,536363.6,NULL,NULL,0);
INSERT INTO `invoice` VALUES (103,'014/SV/IN/03/2012','2012-03-09','SVC-0000010',NULL,6363640,636364,'JL0000000080',0,NULL,0,'2012-03-15','HUTANG',NULL,NULL,6363640,636364,NULL,NULL,0);
INSERT INTO `invoice` VALUES (104,'015/SV/IN/03/2012','2012-03-09','SVC-0000064',NULL,16660000,0,'JL0000000081',0,NULL,0,'2012-03-03','CASH',NULL,NULL,NULL,NULL,NULL,NULL,0);
INSERT INTO `invoice` VALUES (105,'016/SV/IN/03/2012','2012-03-09','SVC-0000065',NULL,2900000,0,'JL0000000082',0,NULL,0,'2012-03-09','CASH','018/PO/PGSU/III/2012',NULL,NULL,NULL,NULL,NULL,0);
INSERT INTO `invoice` VALUES (106,'018/SV/IN/03/2012','2012-03-13','SVC-0000018',NULL,1110000,0,'JL0000000083',0,NULL,0,'2012-03-26','HUTANG',NULL,NULL,1110000,0,NULL,NULL,0);
INSERT INTO `invoice` VALUES (107,'019/SV/IN/03/2012','2012-03-15','SVC-0000046',NULL,14800000,1480000,'JL0000000084',0,NULL,0,'2012-04-14','HUTANG','8000014323 - 3',NULL,14800000,1480000,NULL,NULL,0);
INSERT INTO `invoice` VALUES (108,'020/SV/IN/03/2012','2012-03-15','SVC-0000077',NULL,4300000,0,'JL0000000086',0,NULL,0,'2012-03-15','CASH',NULL,NULL,NULL,NULL,NULL,NULL,0);
INSERT INTO `invoice` VALUES (109,'021/SV/IN/03/2012','2012-03-16','SVC-0000078',NULL,8600000,0,'JL0000000087',0,NULL,0,'2012-03-16','CASH',NULL,NULL,NULL,NULL,NULL,NULL,0);
INSERT INTO `invoice` VALUES (110,'022/SV/IN/03/2012','2012-03-19','SVC-0000066',NULL,1600000,0,'JL0000000088',0,NULL,0,'2012-03-19','CASH','3813/PTGAP/HW/12',NULL,NULL,NULL,NULL,NULL,0);
INSERT INTO `invoice` VALUES (111,'023/SV/IN/03/2012','2012-03-19','SVC-0000021',NULL,6325000,0,'JL0000000089',0,NULL,0,'2012-03-19','CASH',NULL,NULL,NULL,NULL,NULL,NULL,0);
INSERT INTO `invoice` VALUES (112,'024/SV/IN/02/2012','2012-02-17','SVC-0000002',NULL,540000,54000,'JL0000000110',0,NULL,0,'2012-03-02','HUTANG',NULL,NULL,540000,54000,NULL,NULL,0);
INSERT INTO `invoice` VALUES (113,'022/SV/IN/01/2012','2012-01-19','SVC-0000017',NULL,103090908,10309090.8,'JL0000000109',0,NULL,0,'2012-02-02','HUTANG','0891/LG.280/PIN.00.00/2011',NULL,103090908,10309090.8,NULL,NULL,0);
INSERT INTO `invoice` VALUES (114,'040/SV/IN/03/2012','2012-03-31','SVC-0000018',NULL,2220000,0,'JL0000000107',0,NULL,0,'2012-04-13','HUTANG','001/Astro-SV/XI-2011',NULL,2220000,0,NULL,NULL,0);
INSERT INTO `invoice` VALUES (115,'037/SV/IN/03/2012','2012-03-29','SVC-0000003',NULL,13940000,1394000,'JL0000000099',0,NULL,0,'2012-04-05','HUTANG','PO#371/APD/II/12',NULL,13940000,1394000,NULL,NULL,0);
INSERT INTO `invoice` VALUES (116,'038/SV/IN/03/2012','2012-03-29','SVC-0000003',NULL,76670000,7667000,'JL0000000098',0,NULL,0,'2012-04-05','HUTANG','PO#368/APD/II/12',NULL,76670000,7667000,NULL,NULL,0);
INSERT INTO `invoice` VALUES (117,'039/SV/IN/03/2012','2012-03-29','SVC-0000080',NULL,106218180,10621818,'JL0000000097',0,NULL,0,'2012-04-29','HUTANG','002/PO - AC/MSS/III/2012',NULL,106218180,10621818,NULL,NULL,0);
INSERT INTO `invoice` VALUES (118,'029/SV/IN/03/2012','2012-03-27','SVC-0000080',NULL,116839998,11683999.8,'JL0000000096',0,NULL,0,'2012-04-27','HUTANG','001/PO - AC/MSS/III/2012',NULL,116839998,11683999.8,NULL,NULL,0);
INSERT INTO `invoice` VALUES (119,'028/SV/IN/03/2012','2012-03-26','SVC-0000069',NULL,27170000,0,'JL0000000095',0,NULL,0,'2012-03-26','CASH','091 / LRS - HSP / III /2012',NULL,NULL,NULL,NULL,NULL,0);
INSERT INTO `invoice` VALUES (120,'027/SV/IN/03/2012','2012-03-21','SVC-0000002',NULL,191152500,19115250,'JL0000000094',0,NULL,0,'2012-03-30','HUTANG','GDN - PO000876',NULL,191152500,19115250,NULL,NULL,0);
INSERT INTO `invoice` VALUES (121,'025/SV/IN/02/2012','2012-02-17','SVC-0000023',NULL,150000,0,'JL0000000093',0,NULL,0,'2012-02-17','CASH','PO#000973/MP.I',NULL,NULL,NULL,NULL,NULL,0);
INSERT INTO `invoice` VALUES (122,'026/SV/IN/03/2012','2012-03-20','SVC-0000079',NULL,725000,0,'JL0000000092',0,NULL,0,'2012-03-20','CASH',NULL,NULL,NULL,NULL,NULL,NULL,0);
INSERT INTO `invoice` VALUES (123,'024/SV/IN/03/2012','2012-03-19','SVC-0000067',NULL,1200000,120000,'JL0000000091',0,NULL,0,'2012-03-19','CASH','027/SLPS/III/12',NULL,NULL,NULL,NULL,NULL,0);
INSERT INTO `invoice` VALUES (124,'025/SV/IN/03/2012','2012-03-19','SVC-0000002',NULL,11366000,1136600,'JL0000000090',0,NULL,0,'2012-03-21','HUTANG',NULL,NULL,11366000,1136600,NULL,NULL,0);

#
# Table structure for table jasa
#

CREATE TABLE `jasa` (
  `js_id` int(11) NOT NULL auto_increment,
  `js_nama` varchar(255) collate latin1_general_ci default NULL,
  `js_unit` varchar(255) collate latin1_general_ci default NULL,
  `js_tarif` double default NULL,
  `js_kode` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`js_id`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `jasa` VALUES (1,'Jasa Instalasi Unit AC Split Cassette 2 PK','Unit',450000,NULL);
INSERT INTO `jasa` VALUES (2,'Instalasi Power Cable NYM 4 x 4mm AC Split Cassette 2 PK','Meter',30000,NULL);
INSERT INTO `jasa` VALUES (3,'Instalasi Pipa Drain PVC + Armaflex AC Split Cassette 2 PK','Meter',12000,NULL);
INSERT INTO `jasa` VALUES (4,'Instalasi Pipa Refrigerant + Isolasi (1/4 + 1/2) AC Split Cassette 2 PK','Meter',65000,NULL);
INSERT INTO `jasa` VALUES (5,'Jasa Instalasi Unit AC Split Cassette 2.5 PK','Unit',450000,NULL);
INSERT INTO `jasa` VALUES (6,'Instalasi Pipa Refrigerant + Isolasi (5/8 + 3/8) AC Split Cassette 2.5 PK','Meter',150000,NULL);
INSERT INTO `jasa` VALUES (7,'Jasa Instalasi Unit AC Split Cassette 3 PK','Unit',550000,NULL);
INSERT INTO `jasa` VALUES (8,'Instalasi Pipa Refrigerant + Isolasi (3/4 + 3/8) AC Split Cassette 3 PK','Meter',160000,NULL);
INSERT INTO `jasa` VALUES (9,'Jasa Instalasi Unit AC Floor Standing 3 PK','Unit',550000,NULL);
INSERT INTO `jasa` VALUES (10,'Jasa Instalasi Unit AC Floor Standing 2 PK','Unit',450000,NULL);
INSERT INTO `jasa` VALUES (11,'Jasa Instalasi Unit AC Floor Standing 5 PK','Unit',550000,NULL);
INSERT INTO `jasa` VALUES (12,'Jasa Instalasi Unit AC Split Cassette 4 PK','Unit',550000,NULL);
INSERT INTO `jasa` VALUES (13,'Jasa Instalasi Unit AC Split Cassette 5 PK','Unit',550000,NULL);
INSERT INTO `jasa` VALUES (14,'Jasa Instalasi Unit AC Split Cassette 6 PK','Unit',550000,NULL);
INSERT INTO `jasa` VALUES (15,'Jasa Instalasi Unit AC Split Wall Mounted 1/2 PK','Unit',200000,NULL);
INSERT INTO `jasa` VALUES (16,'Jasa Instalasi Unit AC Split Wall Mounted 1 PK','Unit',200000,NULL);
INSERT INTO `jasa` VALUES (17,'Jasa Instalasi Unit AC Split Wall Mounted 1.5 PK','Unit',250000,NULL);
INSERT INTO `jasa` VALUES (18,'Jasa Instalasi Unit AC Split Wall Mounted 2 PK','Unit',250000,NULL);
INSERT INTO `jasa` VALUES (19,'Jasa Instalasi Unit AC Split Wall Mounted 2.5 PK','Unit',350000,NULL);
INSERT INTO `jasa` VALUES (20,'Instalasi Bracket Outdoor AC Split Wall Mounted 1/2 PK','Unit',60000,NULL);
INSERT INTO `jasa` VALUES (21,'Instalasi Bracket Outdoor AC Split Wall Mounted 1 PK','Unit',60000,NULL);
INSERT INTO `jasa` VALUES (22,'Instalasi Bracket Outdoor AC Split Wall Mounted 1.5 PK','Unit',75000,NULL);
INSERT INTO `jasa` VALUES (23,'Instalasi Bracket Outdoor AC Split Wall Mounted 2 PK','Unit',75000,NULL);
INSERT INTO `jasa` VALUES (24,'Instalasi Bracket Outdoor AC Split Wall Mounted 2.5 PK','Unit',100000,NULL);
INSERT INTO `jasa` VALUES (25,'Instalasi Power Cable NYM 4 x 4mm AC Split Cassette 2.5 PK','Meter',30000,NULL);
INSERT INTO `jasa` VALUES (26,'Instalasi Power Cable NYM 4 x 4mm AC Split Cassette 3 PK','Meter',30000,NULL);
INSERT INTO `jasa` VALUES (27,'Instalasi Power Cable NYM 4 x 4mm AC Split Cassette 4 PK','Meter',30000,NULL);
INSERT INTO `jasa` VALUES (28,'Instalasi Power Cable NYM 4 x 4mm AC Split Cassette 5 PK','Meter',30000,NULL);
INSERT INTO `jasa` VALUES (29,'Instalasi Power Cable NYM 4 x 4mm AC Split Cassette 6 PK','Meter',30000,NULL);
INSERT INTO `jasa` VALUES (30,'Instalasi Pipa Drain PVC + Armaflex AC Split Cassette 2.5 PK','Meter',12000,NULL);
INSERT INTO `jasa` VALUES (31,'Instalasi Pipa Drain PVC + Armaflex AC Split Cassette 3 PK','Meter',12000,NULL);
INSERT INTO `jasa` VALUES (32,'Instalasi Pipa Drain PVC + Armaflex AC Split Cassette 4 PK','Meter',12000,NULL);
INSERT INTO `jasa` VALUES (33,'Instalasi Pipa Drain PVC + Armaflex AC Split Cassette 5 PK','Meter',12000,NULL);
INSERT INTO `jasa` VALUES (34,'Instalasi Pipa Drain PVC + Armaflex AC Split Cassette 6 PK','Meter',12000,NULL);
INSERT INTO `jasa` VALUES (35,'Instalasi Power Cable NYM 3 x 2.5mm AC Split Wall Mounted 1/2 PK','Meter',17500,NULL);
INSERT INTO `jasa` VALUES (36,'Instalasi Power Cable NYM 3 x 2.5mm AC Split Wall Mounted 1 PK','Meter',17500,NULL);
INSERT INTO `jasa` VALUES (37,'Instalasi Power Cable NYM 3 x 2.5mm AC Split Wall Mounted 1.5 PK','Meter',17500,NULL);
INSERT INTO `jasa` VALUES (38,'Instalasi Power Cable NYM 3 x 2.5mm AC Split Wall Mounted 2 PK','Meter',17500,NULL);
INSERT INTO `jasa` VALUES (39,'Instalasi Power Cable NYM 3 x 2.5mm AC Split Wall Mounted 2.5 PK','Meter',17500,NULL);
INSERT INTO `jasa` VALUES (40,'Instalasi Pipa Refrigerant + Isolasi (3/4 + 3/8) AC Split Cassette 4 PK','Meter',160000,NULL);
INSERT INTO `jasa` VALUES (41,'Instalasi Pipa Refrigerant + Isolasi (3/4 + 3/8) AC Split Cassette 5 PK','Meter',160000,NULL);
INSERT INTO `jasa` VALUES (42,'Instalasi Pipa Refrigerant + Isolasi (3/4 + 3/8) AC Split Cassette 6 PK','Meter',160000,NULL);
INSERT INTO `jasa` VALUES (43,'Instalasi Pipa Drain PVC + Armaflex AC Split Wall Mounted 1/2 PK','Meter',12000,NULL);
INSERT INTO `jasa` VALUES (44,'Instalasi Pipa Drain PVC + Armaflex AC Split Wall Mounted 1 PK','Meter',12000,NULL);
INSERT INTO `jasa` VALUES (45,'Instalasi Pipa Drain PVC + Armaflex AC Split Wall Mounted 1.5 PK','Meter',12000,NULL);
INSERT INTO `jasa` VALUES (46,'Instalasi Pipa Drain PVC + Armaflex AC Split Wall Mounted 2 PK','Meter',12000,NULL);
INSERT INTO `jasa` VALUES (47,'Instalasi Pipa Drain PVC + Armaflex AC Split Wall Mounted 2.5 PK','Meter',12000,NULL);
INSERT INTO `jasa` VALUES (48,'Instalasi Pipa Refrigerant + Isolasi (1/4 + 3/8) AC Split Wall Maounted 1/2 PK','Meter',55000,NULL);
INSERT INTO `jasa` VALUES (49,'Instalasi Pipa Refrigerant + Isolasi (1/4 + 3/8) AC Split Wall Maounted 1 PK','Meter',55000,NULL);
INSERT INTO `jasa` VALUES (50,'Instalasi Pipa Refrigerant + Isolasi (1/4 + 1/2) AC Split Wall Maounted 1.5 PK','Meter',65000,NULL);
INSERT INTO `jasa` VALUES (51,'Instalasi Pipa Refrigerant + Isolasi (1/4 + 1/2) AC Split Wall Maounted 2 PK','Meter',65000,NULL);
INSERT INTO `jasa` VALUES (52,'Instalasi Pipa Refrigerant + Isolasi (1/4 + 5/8) AC Split Wall Maounted 2.5 PK','Meter',90000,NULL);
INSERT INTO `jasa` VALUES (53,'Instalasi Power Cable NYM 4 x 4mm AC Floor Standing 2 PK','Meter',30000,NULL);
INSERT INTO `jasa` VALUES (54,'Instalasi Power Cable NYM 4 x 4mm AC Floor Standing 3 PK','Meter',30000,NULL);
INSERT INTO `jasa` VALUES (55,'Instalasi Power Cable NYM 4 x 4mm AC Floor Standing 5 PK','Meter',30000,NULL);
INSERT INTO `jasa` VALUES (56,'Instalasi Pipa Drain PVC + Armaflex AC Floor Standing 2 PK','Meter',12000,NULL);
INSERT INTO `jasa` VALUES (57,'Instalasi Pipa Drain PVC + Armaflex AC Floor Standing 3 PK','Meter',12000,NULL);
INSERT INTO `jasa` VALUES (58,'Instalasi Pipa Drain PVC + Armaflex AC Floor Standing 5 PK','Meter',12000,NULL);
INSERT INTO `jasa` VALUES (59,'Instalasi Pipa Refrigerant + Isolasi (1/4 + 1/2) AC Floor Standing 2 PK','Meter',65000,NULL);
INSERT INTO `jasa` VALUES (60,'Instalasi Pipa Refrigerant + Isolasi (3/4 + 3/8) AC Floor Standing 3 PK','Meter',160000,NULL);
INSERT INTO `jasa` VALUES (61,'Instalasi Pipa Refrigerant + Isolasi (3/4 + 3/8) AC Floor Standing 5 PK','Meter',160000,NULL);
INSERT INTO `jasa` VALUES (62,'Biaya Kirim','Unit',200000,NULL);

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
  `ju_downpayment` double default NULL,
  `ju_downpayment_tax` double default NULL,
  `ju_balance` double default NULL,
  `ju_isdp` tinyint(1) default '0',
  PRIMARY KEY  (`ju_id`)
) ENGINE=MyISAM AUTO_INCREMENT=206 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `jual` VALUES (1,'JL0000000000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0);
INSERT INTO `jual` VALUES (92,'JL0000000001','SVC-0000005','2012-01-03',NULL,NULL,NULL,'CASH','F/CP - 01/06',NULL,NULL,14390000,1439000,NULL,'Ya',NULL,2,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (94,'JL0000000002','SVC-0000002','2012-01-03',NULL,NULL,'2012-01-28','HUTANG',NULL,NULL,3,462455000,46245500,NULL,'Ya',NULL,3,138736500,NULL,NULL,0);
INSERT INTO `jual` VALUES (95,'JL0000000003','SVC-0000002','2012-01-03',NULL,NULL,'2012-01-28','HUTANG',NULL,NULL,3,92941000,9294100,NULL,'Ya',NULL,3,27882300,NULL,NULL,0);
INSERT INTO `jual` VALUES (96,'JL0000000004','SVC-0000003','2012-01-03',NULL,NULL,'2012-01-15','HUTANG','PO#292/APD/XII/11',NULL,NULL,521425000,52142500,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (97,'JL0000000005','SVC-0000004','2012-01-03',NULL,NULL,'2012-02-03','HUTANG','PO - 021/TME/P/XI/2011',NULL,5,134272500,13427250,NULL,'Ya',NULL,3,55389000,NULL,NULL,0);
INSERT INTO `jual` VALUES (98,'JL0000000006','SVC-0000003','2012-01-03',NULL,NULL,'2012-01-20','HUTANG','PO#286/APD/XI/11',NULL,NULL,60450000,6045000,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (99,'JL0000000007','SVC-0000001','2012-01-05',NULL,NULL,'2012-02-05','HUTANG','PO# 49910694',NULL,NULL,3160000,316000,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (100,'JL0000000008','SVC-0000006','2012-01-05',NULL,NULL,NULL,'CASH',NULL,NULL,NULL,500000,50000,NULL,'Tidak',NULL,2,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (101,'JL0000000009','SVC-0000002','2012-01-09',NULL,NULL,'2012-01-28','HUTANG',NULL,NULL,12,7290000,729000,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (102,'JL0000000010','SVC-0000050','2012-01-19',NULL,NULL,'2012-02-19','HUTANG','KP - 08/BHN-PURCH/I/2012',NULL,NULL,15730000,1573000,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (103,'JL0000000011','SVC-0000006','2012-01-14',NULL,NULL,'2012-02-14','CASH','',NULL,NULL,3550000,355000,NULL,'Tidak',NULL,2,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (104,'JL0000000012','SVC-0000070','2012-01-14',NULL,NULL,NULL,'CASH',NULL,NULL,NULL,2800000,280000,NULL,'Tidak',NULL,2,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (105,'JL0000000013','SVC-0000010','2012-01-17',NULL,NULL,'2012-01-23','HUTANG',NULL,NULL,NULL,17181815,1718181.5,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (106,'JL0000000014','SVC-0000071','2012-01-18',NULL,NULL,'2012-01-20','CASH',NULL,NULL,NULL,4000000,400000,NULL,'Tidak',NULL,2,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (107,'JL0000000015','SVC-0000013','2012-01-18',NULL,NULL,'2012-01-25','HUTANG','ADM - 120155',NULL,NULL,2530000,253000,NULL,'Tidak',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (108,'JL0000000016','SVC-0000013','2012-01-18',NULL,NULL,'2012-01-25','HUTANG','ADM - 120158',NULL,NULL,1150000,115000,NULL,'Tidak',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (109,'JL0000000017','SVC-0000003','2012-01-19',NULL,NULL,'2012-02-10','HUTANG','PO#304/APD/XII/11',NULL,NULL,511400000,51140000,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (110,'JL0000000018','SVC-0000003','2012-01-19',NULL,NULL,'2012-02-19','HUTANG','PO#305/APD/XII/11',NULL,NULL,1315550000,131555000,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (111,'JL0000000019','SVC-0000003','2012-01-19',NULL,NULL,'2012-02-19','HUTANG','PO#308/APD/XII/11',NULL,NULL,101065000,10106500,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (112,'JL0000000020','SVC-0000003','2012-01-19',NULL,NULL,'2012-02-19','HUTANG','PO#309/APD/XII/11',NULL,NULL,6970000,697000,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (113,'JL0000000021','SVC-0000003','2012-01-19',NULL,NULL,'2012-02-19','HUTANG','PO#321/APD/I/12',NULL,NULL,154250000,15425000,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (115,'JL0000000023','SVC-0000013','2012-01-24',NULL,NULL,'2012-01-31','HUTANG','ADM - 120173',NULL,NULL,9680100,968010,NULL,'Tidak',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (116,'JL0000000024','SVC-0000013','2012-01-24',NULL,NULL,'2012-01-31','HUTANG','ADM - 120189',NULL,NULL,2070000,207000,NULL,'Tidak',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (117,'JL0000000025','SVC-0000010','2012-01-26',NULL,NULL,'2012-02-02','HUTANG',NULL,NULL,NULL,12272725,1227272.5,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (118,'JL0000000026','SVC-0000002','2012-01-27',NULL,NULL,'2012-02-10','HUTANG',NULL,NULL,13,7613635,761363.5,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (119,'JL0000000027','SVC-0000003','2012-01-31',NULL,NULL,'2012-02-10','HUTANG','PO#317/APD/I/12',NULL,14,139400000,13940000,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (120,'JL0000000028','SVC-0000003','2012-01-31',NULL,NULL,'2012-02-10','HUTANG','PO#318/APD/I/12',NULL,14,13940000,1394000,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (121,'JL0000000029','SVC-0000003','2012-01-31',NULL,NULL,'2012-02-10','HUTANG','PO#322/APD/1/12',NULL,14,866725000,86672500,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (122,'JL0000000030','SVC-0000003','2012-01-31',NULL,NULL,'2012-02-10','HUTANG','PO#331/APD/1/12',NULL,14,223040000,22304000,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (123,'JL0000000031','SVC-0000021','2012-02-02',NULL,NULL,'2012-02-09','HUTANG','00523/WS/ITN/1/2012',NULL,NULL,16450000,1645000,NULL,'Tidak',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (125,'JL0000000033','SVC-0000003','2012-02-02',NULL,NULL,'2012-02-09','HUTANG','PO#327/APD/I/12',NULL,14,183775000,18377500,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (126,'JL0000000034','SVC-0000003','2012-02-02',NULL,NULL,'2012-02-09','HUTANG','PO#328/APD/I/12',NULL,14,762500000,76250000,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (127,'JL0000000035','SVC-0000020','2012-02-03',NULL,NULL,'2012-02-17','HUTANG','03/GA - PURCH/WO/I/12',NULL,NULL,3800000,380000,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (128,'JL0000000036','SVC-0000019','2012-02-06',NULL,NULL,'2012-02-20','HUTANG','PO - 113 NF / IPT / I / 2012',NULL,NULL,19500000,1950000,NULL,'Tidak',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (129,'JL0000000037','SVC-0000018','2012-02-06',NULL,NULL,'2012-02-20','HUTANG','001/Astro-SV/XI-2011',NULL,NULL,1295000,129500,NULL,'Tidak',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (130,'JL0000000038','SVC-0000039','2012-02-09',NULL,NULL,'2012-02-23','HUTANG',NULL,NULL,NULL,17925000,1792500,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (131,'JL0000000039','SVC-0000072','2012-02-10',NULL,NULL,NULL,'CASH',NULL,NULL,NULL,39900000,3990000,NULL,'Tidak',NULL,2,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (132,'JL0000000040','SVC-0000022','2012-02-13',NULL,NULL,NULL,'CASH','MN 009/CSIS/12/11',NULL,NULL,11300000,1130000,NULL,'Tidak',NULL,2,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (133,'JL0000000041','SVC-0000073','2012-02-13',NULL,NULL,NULL,'CASH','006/RU - ALD/XI/11',NULL,NULL,83950000,8395000,NULL,'Tidak',NULL,2,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (134,'JL0000000042','SVC-0000003','2012-02-15',NULL,NULL,'2012-02-20','HUTANG','PO#338/APD/I/12',NULL,14,48790000,4879000,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (135,'JL0000000043','SVC-0000003','2012-02-15',NULL,NULL,'2012-02-20','HUTANG','PO#339/APD/I/12',NULL,14,3485000,348500,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (136,'JL0000000044','SVC-0000003','2012-02-15',NULL,NULL,'2012-02-20','HUTANG','PO#342/APD/I/12',NULL,14,348475000,34847500,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (137,'JL0000000045','SVC-0000002','2012-02-21',NULL,NULL,'2012-02-29','HUTANG','GDN - PO000957',NULL,16,8580000,858000,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (138,'JL0000000046','SVC-0000002','2012-02-22',NULL,NULL,'2012-02-29','HUTANG','GDN - PO000838',NULL,3,462455000,46245500,NULL,'Ya',NULL,3,138736500,NULL,NULL,0);
INSERT INTO `jual` VALUES (139,'JL0000000047','SVC-0000002','2012-02-22',NULL,NULL,'2012-03-07','HUTANG',NULL,NULL,7,12885000,1288500,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (140,'JL0000000048','SVC-0000013','2012-02-23',NULL,NULL,'2012-03-01','HUTANG','ADM - 120299',NULL,NULL,1312000,131200,NULL,'Tidak',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (143,'JL0000000051','SVC-0000003','2012-03-01',NULL,NULL,'2012-03-15','HUTANG','PO#345/APD/I/12',NULL,14,3485000,348500,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (144,'JL0000000052','SVC-0000003','2012-03-01',NULL,NULL,'2012-03-15','HUTANG','PO#356/APD/II/12',NULL,14,109425000,10942500,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (145,'JL0000000053','SVC-0000003','2012-03-01',NULL,NULL,'2012-03-15','HUTANG','PO#357/APD/II/12',NULL,14,533925000,53392500,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (146,'JL0000000054','SVC-0000074','2012-02-14',NULL,NULL,'2012-02-16','HUTANG',NULL,NULL,4,92152500,9215250,NULL,'Tidak',NULL,3,79000000,NULL,NULL,0);
INSERT INTO `jual` VALUES (147,'JL0000000055','SVC-0000002','2012-01-27',NULL,NULL,'2012-02-10','HUTANG',NULL,NULL,6,267180000,26718000,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (148,'JL0000000056','SVC-0000002','2012-01-27',NULL,NULL,'2012-02-10','HUTANG',NULL,NULL,6,55480000,5548000,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (149,'JL0000000057','SVC-0000002','2012-01-27',NULL,NULL,'2012-02-10','HUTANG',NULL,NULL,6,11620000,1162000,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (150,'JL0000000058','SVC-0000003','2012-02-15',NULL,NULL,'2012-02-25','HUTANG','PO#343/APD/I/12',NULL,14,431800000,43180000,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (151,'JL0000000059','SVC-0000003','2012-02-15',NULL,NULL,'2012-02-25','HUTANG','PO#349/APD/I/12',NULL,14,3485000,348500,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (152,'JL0000000060','SVC-0000013','2012-02-10',NULL,NULL,'2012-02-17','HUTANG','ADM - 120222',NULL,NULL,16100000,1610000,NULL,'Tidak',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (153,'JL0000000061','SVC-0000075','2012-02-02',NULL,NULL,NULL,'CASH',NULL,NULL,NULL,2400000,240000,NULL,'Tidak',NULL,2,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (154,'JL0000000062','SVC-0000006','2012-02-15',NULL,NULL,'2012-02-15','CASH',NULL,NULL,NULL,18500000,1850000,NULL,'Tidak',NULL,2,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (155,'JL0000000063','SVC-0000013','2012-02-16',NULL,NULL,'2012-02-23','HUTANG','ADM - 120225',NULL,NULL,5950000,595000,NULL,'Tidak',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (156,'JL0000000064','SVC-0000013','2012-02-16',NULL,NULL,'2012-02-23','HUTANG','ADM - 120228',NULL,NULL,6640000,664000,NULL,'Tidak',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (158,'JL0000000066','SVC-0000002','2012-02-22',NULL,NULL,'2012-03-07','HUTANG',NULL,NULL,3,92941000,9294100,NULL,'Ya',NULL,3,27882300,NULL,NULL,0);
INSERT INTO `jual` VALUES (159,'JL0000000067','SVC-0000013','2012-02-27',NULL,NULL,'2012-03-05','HUTANG','ADM - 1202119',NULL,NULL,10780000,1078000,NULL,'Tidak',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (160,'JL0000000068','SVC-0000032','2012-02-15',NULL,NULL,'2012-02-15','CASH',NULL,NULL,NULL,6200000,620000,NULL,'Tidak',NULL,2,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (161,'JL0000000069','SVC-0000002','2012-02-15',NULL,NULL,'2012-02-29','HUTANG','GDN - PO000899',NULL,20,19476000,1947600,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (162,'JL0000000070','SVC-0000076','2012-03-01',NULL,NULL,'2012-03-01','CASH',NULL,NULL,NULL,750000,75000,NULL,'Tidak',NULL,2,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (163,'JL0000000071','SVC-0000003','2012-03-01',NULL,NULL,'2012-03-15','HUTANG','PO#360/APD/II/12',NULL,14,219555000,21955500,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (164,'JL0000000072','SVC-0000003','2012-03-01',NULL,NULL,'2012-03-14','HUTANG','PO#361/APD/II/12',NULL,14,17425000,1742500,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (165,'JL0000000073','SVC-0000003','2012-03-01',NULL,NULL,'2012-03-14','HUTANG','PO#348/APD/I/12',NULL,14,66215000,6621500,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (166,'JL0000000074','SVC-0000022','2012-03-02',NULL,NULL,'2012-03-02','CASH','MN 001/CSIS/02/12',NULL,NULL,5500000,550000,NULL,'Tidak',NULL,2,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (167,'JL0000000075','SVC-0000002','2012-03-05',NULL,NULL,'2012-03-10','HUTANG',NULL,NULL,9,9857500,985750,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (168,'JL0000000076','SVC-0000002','2012-03-07',NULL,NULL,'2012-03-10','HUTANG',NULL,NULL,NULL,18545454,1854545.4,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (169,'JL0000000077','SVC-0000002','2012-03-07',NULL,NULL,'2012-03-10','HUTANG',NULL,NULL,NULL,12363636,1236363.6,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (170,'JL0000000078','SVC-0000002','2012-03-10',NULL,NULL,'2012-03-14','HUTANG','GDN - PO001013',NULL,8,15290000,1529000,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (171,'JL0000000079','SVC-0000047','2012-03-08',NULL,NULL,'2012-03-23','HUTANG',NULL,NULL,NULL,5363636,536363.6,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (172,'JL0000000080','SVC-0000010','2012-03-09',NULL,NULL,'2012-03-15','HUTANG',NULL,NULL,NULL,6363640,636364,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (173,'JL0000000081','SVC-0000064','2012-03-09',NULL,NULL,'2012-03-03','CASH',NULL,NULL,NULL,16660000,1666000,NULL,'Tidak',NULL,2,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (174,'JL0000000082','SVC-0000065','2012-03-09',NULL,NULL,'2012-03-09','CASH','018/PO/PGSU/III/2012',NULL,NULL,2900000,290000,NULL,'Tidak',NULL,2,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (175,'JL0000000083','SVC-0000018','2012-03-13',NULL,NULL,'2012-03-26','HUTANG',NULL,NULL,NULL,1110000,111000,NULL,'Tidak',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (176,'JL0000000084','SVC-0000046','2012-03-15',NULL,NULL,'2012-04-14','HUTANG','8000014323 - 3',NULL,NULL,14800000,1480000,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (178,'JL0000000085','SVC-0000063','2012-03-15',NULL,NULL,'2012-03-29','HUTANG','060/PO/CASM/III/12',NULL,NULL,12920000,1292000,NULL,'Tidak',NULL,NULL,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (179,'JL0000000086','SVC-0000077','2012-03-15',NULL,NULL,'2012-03-15','CASH',NULL,NULL,NULL,4300000,430000,NULL,'Tidak',NULL,2,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (180,'JL0000000087','SVC-0000078','2012-03-16',NULL,NULL,'2012-03-16','CASH',NULL,NULL,NULL,8600000,860000,NULL,'Tidak',NULL,2,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (181,'JL0000000088','SVC-0000066','2012-03-19',NULL,NULL,'2012-03-19','CASH','3813/PTGAP/HW/12',NULL,NULL,1600000,160000,NULL,'Tidak',NULL,2,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (182,'JL0000000089','SVC-0000021','2012-03-19',NULL,NULL,'2012-03-19','CASH',NULL,NULL,NULL,6325000,632500,NULL,'Tidak',NULL,2,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (183,'JL0000000090','SVC-0000002','2012-03-19',NULL,NULL,'2012-03-21','HUTANG',NULL,NULL,10,11366000,1136600,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (184,'JL0000000091','SVC-0000067','2012-03-19',NULL,NULL,'2012-03-19','CASH','027/SLPS/III/12',NULL,NULL,1200000,120000,NULL,'Ya',NULL,2,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (185,'JL0000000092','SVC-0000079','2012-03-20',NULL,NULL,'2012-03-20','CASH',NULL,NULL,NULL,725000,72500,NULL,'Tidak',NULL,2,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (186,'JL0000000093','SVC-0000023','2012-02-17',NULL,NULL,'2012-02-17','CASH','PO#000973/MP.I',NULL,NULL,150000,15000,NULL,'Tidak',NULL,2,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (187,'JL0000000094','SVC-0000002','2012-03-21',NULL,NULL,'2012-03-30','HUTANG','GDN - PO000876',NULL,11,191152500,19115250,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (188,'JL0000000095','SVC-0000069','2012-03-26',NULL,NULL,'2012-03-26','CASH','091 / LRS - HSP / III /2012',NULL,NULL,27170000,2717000,NULL,'Tidak',NULL,2,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (189,'JL0000000096','SVC-0000080','2012-03-27',NULL,NULL,'2012-04-27','HUTANG','001/PO - AC/MSS/III/2012',NULL,NULL,116839998,11683999.8,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (190,'JL0000000097','SVC-0000080','2012-03-29',NULL,NULL,'2012-04-29','HUTANG','002/PO - AC/MSS/III/2012',NULL,NULL,106218180,10621818,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (191,'JL0000000098','SVC-0000003','2012-03-29',NULL,NULL,'2012-04-05','HUTANG','PO#368/APD/II/12',NULL,14,76670000,7667000,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (192,'JL0000000099','SVC-0000003','2012-03-29',NULL,NULL,'2012-04-05','HUTANG','PO#371/APD/II/12',NULL,14,13940000,1394000,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (193,'JL0000000100','SVC-0000003','2012-03-29',NULL,NULL,'2012-04-05','HUTANG','PO#372/APD/II/12',NULL,14,3485000,348500,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (194,'JL0000000101','SVC-0000003','2012-03-29',NULL,NULL,'2012-04-05','HUTANG','PO#379/APD/III/12',NULL,14,538450000,53845000,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (195,'JL0000000102','SVC-0000003','2012-03-29',NULL,NULL,'2012-04-05','HUTANG','PO#380/APD/III/12',NULL,14,827800000,82780000,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (196,'JL0000000103','SVC-0000003','2012-03-29',NULL,NULL,'2012-04-05','HUTANG','PO#385/APD/III/12',NULL,14,38335000,3833500,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (197,'JL0000000104','SVC-0000003','2012-03-29',NULL,NULL,'2012-04-05','HUTANG','PO#386/APD/III/12',NULL,14,13940000,1394000,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (198,'JL0000000105','SVC-0000003','2012-03-29',NULL,NULL,'2012-04-05','HUTANG','PO#389/APD/III/12',NULL,14,6970000,697000,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (199,'JL0000000106','SVC-0000003','2012-03-29',NULL,NULL,'2012-04-10','HUTANG','PO#390/APD/III/12',NULL,14,3485000,348500,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (200,'JL0000000107','SVC-0000018','2012-03-31',NULL,NULL,'2012-04-13','HUTANG','001/Astro-SV/XI-2011',NULL,NULL,2220000,222000,NULL,'Tidak',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (201,'JL0000000108','SVC-0000049','2012-03-01',NULL,NULL,'2012-03-15','HUTANG','EH - 202847',NULL,NULL,11100000,1110000,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (202,'JL0000000109','SVC-0000017','2012-01-19',NULL,NULL,'2012-02-02','HUTANG','0891/LG.280/PIN.00.00/2011',NULL,NULL,103090908,10309090.8,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (203,'JL0000000110','SVC-0000002','2012-02-17',NULL,NULL,'2012-03-02','HUTANG',NULL,NULL,NULL,540000,54000,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (204,'JL0000000111','SVC-0000002','2012-02-28',NULL,NULL,'2012-03-13','HUTANG','GDN - PO000946',NULL,8,121256818,12125681.8,NULL,'Ya',NULL,3,0,NULL,NULL,0);
INSERT INTO `jual` VALUES (205,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,0);

#
# Table structure for table jualdetail
#

CREATE TABLE `jualdetail` (
  `jd_id` int(11) NOT NULL auto_increment,
  `jd_kode` varchar(255) collate latin1_general_ci default NULL,
  `jd_tgl` date default NULL,
  `jd_kd_barang` int(11) default NULL,
  `jd_nama_barang` varchar(255) collate latin1_general_ci default NULL,
  `jd_type` varchar(255) character set latin1 default NULL,
  `jd_qty` int(11) default NULL,
  `jd_harga_pokok` double default NULL,
  `jd_harga_jual` double default NULL,
  `jd_discrp` double default NULL,
  `jd_disc_persen` tinyint(3) default NULL,
  `jd_total` double default NULL,
  `jd_margin` double default NULL,
  `jd_satuan` varchar(255) collate latin1_general_ci default NULL,
  PRIMARY KEY  (`jd_id`)
) ENGINE=MyISAM AUTO_INCREMENT=521 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `jualdetail` VALUES (124,'JL0000000001','2012-01-02',1243,'AC FLOOR STANDING 3 PK','CS/CU-C28FFP8',1,11800000,12400000,0,0,12400000,600000,'Unit');
INSERT INTO `jualdetail` VALUES (125,'JL0000000001','2012-01-02',1244,'BRACKET OUTDOOR AC FLOOR STANDING','3 PK',1,200000,310000,0,0,310000,110000,'Unit');
INSERT INTO `jualdetail` VALUES (126,'JL0000000001','2012-01-02',1215,'KABEL POWER ','NYM 4 x 4mm',10,24000,33000,0,0,330000,90000,'Meter');
INSERT INTO `jualdetail` VALUES (127,'JL0000000001','2012-01-02',1245,'PIPA DRAIN ','PVC + ARMAFLEX',7,12000,20000,0,0,140000,56000,'Meter');
INSERT INTO `jualdetail` VALUES (128,'JL0000000001','2012-01-02',1246,'PIPA REFRIGERANT + ISOLASI (5/8\"+3/8\")','AC CASSETTE 2.5 PK',4,150000,165000,0,0,660000,60000,NULL);
INSERT INTO `jualdetail` VALUES (129,'JL0000000001','2012-01-02',9,'Jasa Instalasi Unit AC Floor Standing 3 PK',NULL,1,0,600000,0,0,600000,600000,'Unit');
INSERT INTO `jualdetail` VALUES (146,'JL0000000002','2012-01-02',1248,'BIAYA INSTAL+BONGKAR AC LAMA+BOBOKAN ','AC SPLIT 1 PK',25,500000,750000,0,0,18750000,6250000,NULL);
INSERT INTO `jualdetail` VALUES (147,'JL0000000002','2012-01-02',1249,'BIAYA INSTAL+BONGKAR AC LAMA+BOBOKAN','AC SPLIT 1.5 - 2 PK',76,600000,800000,0,0,60800000,15200000,NULL);
INSERT INTO `jualdetail` VALUES (148,'JL0000000002','2012-01-02',1250,'BIAYA INSTAL+BONGKAR AC LAMA+BOBOKAN','AC SPLIT 2.5 PK',17,700000,900000,0,0,15300000,3400000,NULL);
INSERT INTO `jualdetail` VALUES (149,'JL0000000002','2012-01-02',1251,'BIAYA INSTAL+BONGKAR AC LAMA+BOBOKAN','AC CASETTE 2 PK',4,700000,925000,0,0,3700000,900000,NULL);
INSERT INTO `jualdetail` VALUES (150,'JL0000000002','2012-01-02',1252,'BIAYA INSTAL+BONGKAR AC LAMA+BOBOKAN','AC CASETTE 2.5 PK',9,850000,1100000,0,0,9900000,2250000,NULL);
INSERT INTO `jualdetail` VALUES (151,'JL0000000002','2012-01-02',1253,'JASA TARIKAN + PIPA REFRIGERANT ','AC SPLIT 1 PK',330,50000,85000,0,0,28050000,11550000,NULL);
INSERT INTO `jualdetail` VALUES (152,'JL0000000002','2012-01-02',1254,'JASA TARIKAN + PIPA REFRIGERANT ','AC SPLIT 1.5 - 2 PK ',995,75000,100000,0,0,99500000,24875000,NULL);
INSERT INTO `jualdetail` VALUES (153,'JL0000000002','2012-01-02',1255,'JASA TARIKAN + PIPA REFRIGERANT ','AC SPLIT 2.5 PK',270,150000,185000,0,0,49950000,9450000,NULL);
INSERT INTO `jualdetail` VALUES (154,'JL0000000002','2012-01-02',1256,'JASA TARIKAN + PIPA REFRIGERANT ','AC CASETTE 2 - 2.5 PK',235,175000,195000,0,0,45825000,4700000,NULL);
INSERT INTO `jualdetail` VALUES (155,'JL0000000002','2012-01-02',1218,'PIPA DRAIN','PVC 3/4\"',890,9000,22000,0,0,19580000,11570000,'unit');
INSERT INTO `jualdetail` VALUES (156,'JL0000000002','2012-01-02',1214,'KABEL POWER ','NYM 3 x 2.5mm',1555,17500,30000,0,0,46650000,19437500,'unit');
INSERT INTO `jualdetail` VALUES (157,'JL0000000002','2012-01-02',1260,'KABEL CONTROL ','NYM 3 x 2.5mm',1830,28000,27000,0,0,49410000,-1830000,NULL);
INSERT INTO `jualdetail` VALUES (158,'JL0000000002','2012-01-02',1216,'BRACKET OUTDOOR AC SPLIT','1/2 PK - 1 PK',25,60000,90000,0,0,2250000,750000,'unit');
INSERT INTO `jualdetail` VALUES (159,'JL0000000002','2012-01-02',1217,'BRACKET OUTDOOR AC SPLIT','1.5 PK - 2.5 PK',76,75000,105000,0,0,7980000,2280000,'unit');
INSERT INTO `jualdetail` VALUES (160,'JL0000000002','2012-01-02',1328,'BRACKET OUTDOOR AC SPLIT','2.5 PK',17,100000,130000,0,0,2210000,510000,NULL);
INSERT INTO `jualdetail` VALUES (161,'JL0000000002','2012-01-02',1257,'BRACKET OUTDOOR AC CASETTE','2 - 2.5 PK',13,150000,200000,0,0,2600000,650000,NULL);
INSERT INTO `jualdetail` VALUES (162,'JL0000000003','2012-01-02',1248,'BIAYA INSTAL+BONGKAR AC LAMA+BOBOKAN ','AC SPLIT 1 PK',1,500000,750000,0,0,750000,250000,NULL);
INSERT INTO `jualdetail` VALUES (163,'JL0000000003','2012-01-02',1249,'BIAYA INSTAL+BONGKAR AC LAMA+BOBOKAN','AC SPLIT 1.5 - 2 PK',8,600000,800000,0,0,6400000,1600000,NULL);
INSERT INTO `jualdetail` VALUES (164,'JL0000000003','2012-01-02',1250,'BIAYA INSTAL+BONGKAR AC LAMA+BOBOKAN','AC SPLIT 2.5 PK',9,700000,900000,0,0,8100000,1800000,NULL);
INSERT INTO `jualdetail` VALUES (165,'JL0000000003','2012-01-02',1251,'BIAYA INSTAL+BONGKAR AC LAMA+BOBOKAN','AC CASETTE 2 PK',1,700000,925000,0,0,925000,225000,NULL);
INSERT INTO `jualdetail` VALUES (166,'JL0000000003','2012-01-02',1252,'BIAYA INSTAL+BONGKAR AC LAMA+BOBOKAN','AC CASETTE 2.5 PK',2,850000,1100000,0,0,2200000,500000,NULL);
INSERT INTO `jualdetail` VALUES (167,'JL0000000003','2012-01-02',1253,'JASA TARIKAN + PIPA REFRIGERANT ','AC SPLIT 1 PK',8,50000,85000,0,0,680000,280000,NULL);
INSERT INTO `jualdetail` VALUES (168,'JL0000000003','2012-01-02',1254,'JASA TARIKAN + PIPA REFRIGERANT ','AC SPLIT 1.5 - 2 PK ',130,75000,100000,0,0,13000000,3250000,NULL);
INSERT INTO `jualdetail` VALUES (169,'JL0000000003','2012-01-02',1255,'JASA TARIKAN + PIPA REFRIGERANT ','AC SPLIT 2.5 PK',160,150000,185000,0,0,29600000,5600000,NULL);
INSERT INTO `jualdetail` VALUES (170,'JL0000000003','2012-01-02',1256,'JASA TARIKAN + PIPA REFRIGERANT ','AC CASETTE 2 - 2.5 PK',40,175000,195000,0,0,7800000,800000,NULL);
INSERT INTO `jualdetail` VALUES (171,'JL0000000003','2012-01-02',1218,'PIPA DRAIN','PVC 3/4\"',155,9000,22000,0,0,3410000,2015000,'unit');
INSERT INTO `jualdetail` VALUES (172,'JL0000000003','2012-01-02',1214,'KABEL POWER ','NYM 3 x 2.5mm',275,17500,30000,0,0,8250000,3437500,'unit');
INSERT INTO `jualdetail` VALUES (173,'JL0000000003','2012-01-02',1260,'KABEL CONTROL ','NYM 3 x 2.5mm',338,28000,27000,0,0,9126000,-338000,NULL);
INSERT INTO `jualdetail` VALUES (174,'JL0000000003','2012-01-02',1216,'BRACKET OUTDOOR AC SPLIT','1/2 PK - 1 PK',1,60000,90000,0,0,90000,30000,'unit');
INSERT INTO `jualdetail` VALUES (175,'JL0000000003','2012-01-02',1217,'BRACKET OUTDOOR AC SPLIT','1.5 PK - 2.5 PK',8,75000,105000,0,0,840000,240000,'unit');
INSERT INTO `jualdetail` VALUES (176,'JL0000000003','2012-01-02',1328,'BRACKET OUTDOOR AC SPLIT','2.5 PK',9,100000,130000,0,0,1170000,270000,NULL);
INSERT INTO `jualdetail` VALUES (177,'JL0000000003','2012-01-02',1257,'BRACKET OUTDOOR AC CASETTE','2 - 2.5 PK',3,150000,200000,0,0,600000,150000,NULL);
INSERT INTO `jualdetail` VALUES (178,'JL0000000004','2012-01-02',1224,'LCD TV 32\" ','TH-L32C4G',19,2495000,3475000,0,0,66025000,18620000,NULL);
INSERT INTO `jualdetail` VALUES (179,'JL0000000004','2012-01-02',1160,'LCD TV 42\" ','TH-L42U30G',69,5315000,6600000,0,0,455400000,88665000,'unit');
INSERT INTO `jualdetail` VALUES (180,'JL0000000005','2012-01-02',1310,'OUTDOOR LONG RANGE CCTV-1.6 KM','AXIS Q6035 - E',1,76680000,119000000,56525000,0,62475000,-14205000,NULL);
INSERT INTO `jualdetail` VALUES (181,'JL0000000005','2012-01-02',1311,'INDOOR CCTV DOME CAMERA','AXIS M3204',1,9260000,14500000,6887500,0,7612500,-1647500,NULL);
INSERT INTO `jualdetail` VALUES (182,'JL0000000005','2012-01-02',1312,'SOFTWARE-XPROTECT ESSENTIAL BASE+CAMERA LICENCE','_',1,1740000,4000000,1900000,0,2100000,360000,NULL);
INSERT INTO `jualdetail` VALUES (183,'JL0000000005','2012-01-02',1313,'SWITCH POE 8 PORT','AT FS708',1,930000,2500000,187500,0,2312500,1382500,NULL);
INSERT INTO `jualdetail` VALUES (184,'JL0000000005','2012-01-02',1329,'JUNCTION BOX WEATHERPROOF UNTUK SWITCH 500x4000x250','IP55',1,2800000,3500000,262500,0,3237500,437500,NULL);
INSERT INTO `jualdetail` VALUES (185,'JL0000000005','2012-01-02',1314,'COMPUTER SERVER','DELL',1,11000000,12000000,900000,0,11100000,100000,NULL);
INSERT INTO `jualdetail` VALUES (186,'JL0000000005','2012-01-02',1315,'LCD MONITOR 19\"','DELL',1,1200000,1400000,105000,0,1295000,95000,NULL);
INSERT INTO `jualdetail` VALUES (187,'JL0000000005','2012-01-02',1316,'UPS 1000 VA ICA FOR SERVER','_',1,1900000,2400000,180000,0,2220000,320000,NULL);
INSERT INTO `jualdetail` VALUES (188,'JL0000000005','2012-01-02',1317,'PENANGKAL PETIR DAN ARESTER','_',1,4600000,4900000,367500,0,4532500,-67500,NULL);
INSERT INTO `jualdetail` VALUES (189,'JL0000000005','2012-01-02',1318,'BIAYA CABLE','_',400,12000,13875,0,0,5550000,750000,NULL);
INSERT INTO `jualdetail` VALUES (190,'JL0000000005','2012-01-02',1319,'BIAYA TIANG ','TOWER 6 METER',1,6500000,7500000,562500,0,6937500,437500,NULL);
INSERT INTO `jualdetail` VALUES (191,'JL0000000005','2012-01-02',1320,'BIAYA INSTALASI UNTUK CCTV','_',2,400000,500000,75000,0,850000,50000,NULL);
INSERT INTO `jualdetail` VALUES (192,'JL0000000005','2012-01-02',1321,'BIAYA PEKERJAAN SIPIL','_',1,7000000,4500000,337500,0,4162500,-2837500,NULL);
INSERT INTO `jualdetail` VALUES (193,'JL0000000005','2012-01-02',1322,'BIAYA TESTING DAN COMMISSIONING','_',1,1750000,2000000,150000,0,1850000,100000,NULL);
INSERT INTO `jualdetail` VALUES (194,'JL0000000005','2012-01-02',1323,'BIAYA INSTALASI PENANGKAL PETIR','_',1,4000000,4500000,337500,0,4162500,162500,NULL);
INSERT INTO `jualdetail` VALUES (195,'JL0000000005','2012-01-02',1324,'BIAYA TRANSPORTASI DAN AKOMODASI','_',1,800000,15000000,1125000,0,13875000,13075000,NULL);
INSERT INTO `jualdetail` VALUES (196,'JL0000000006','2012-01-02',1224,'LCD TV 32\" ','TH-L32C4G',6,2495000,3475000,0,0,20850000,5880000,NULL);
INSERT INTO `jualdetail` VALUES (197,'JL0000000006','2012-01-02',1160,'LCD TV 42\" ','TH-L42U30G',6,5315000,6600000,0,0,39600000,7710000,'unit');
INSERT INTO `jualdetail` VALUES (198,'JL0000000007','2012-01-02',1224,'LCD TV 32\" ','TH-L32C4G',1,2495000,2885000,0,0,2885000,390000,NULL);
INSERT INTO `jualdetail` VALUES (199,'JL0000000007','2012-01-02',1204,'WALL BRACKET','FOR 22\" UP TO 32\"',1,75000,275000,0,0,275000,200000,'unit');
INSERT INTO `jualdetail` VALUES (200,'JL0000000008','2012-01-02',1327,'REMOTE AC','SPLIT INVERTER PANASONIC',2,185000,250000,0,0,500000,130000,NULL);
INSERT INTO `jualdetail` VALUES (207,'JL0000000009','2012-01-03',1291,'JASA INSTALASI AC','SPLIT 1.5 PK - 2 PK',6,250000,300000,0,0,1800000,300000,NULL);
INSERT INTO `jualdetail` VALUES (208,'JL0000000009','2012-01-03',1259,'INSTALASI BRACKET','AC SPLIT',6,75000,95000,0,0,570000,120000,NULL);
INSERT INTO `jualdetail` VALUES (209,'JL0000000009','2012-01-03',1260,'KABEL CONTROL ','NYM 3 x 2.5mm',30,28000,27000,0,0,810000,-30000,NULL);
INSERT INTO `jualdetail` VALUES (210,'JL0000000009','2012-01-03',1245,'PIPA DRAIN ','PVC + ARMAFLEX',18,12000,20000,0,0,360000,144000,'Meter');
INSERT INTO `jualdetail` VALUES (211,'JL0000000009','2012-01-03',1275,'PIPA REFRIGERANT + ISOLASI (1/4\" + 1/2\")','AC SPLIT ( 2 PK )',30,50000,100000,0,0,3000000,1500000,NULL);
INSERT INTO `jualdetail` VALUES (212,'JL0000000009','2012-01-03',1262,'JASA BONGKAR UNIT','AC SPLIT',5,100000,150000,0,0,750000,250000,NULL);
INSERT INTO `jualdetail` VALUES (213,'JL0000000010','2012-01-03',1204,'WALL BRACKET','FOR 22\" UP TO 32\"',121,75000,130000,0,0,15730000,6655000,'unit');
INSERT INTO `jualdetail` VALUES (214,'JL0000000011','2012-01-03',1228,'AC SPLIT 1 PK','CS/CU-S10MKP',1,3500000,3550000,0,0,3550000,50000,NULL);
INSERT INTO `jualdetail` VALUES (215,'JL0000000012','2012-01-03',1231,'AC SPLIT 1 PK','CS/CU-PC9MKJ',1,2325000,2800000,0,0,2800000,475000,NULL);
INSERT INTO `jualdetail` VALUES (216,'JL0000000013','2012-01-03',1230,'LCD TV 32\" ','32LK335',7,2500000,2454545,0,0,17181815,-318185,NULL);
INSERT INTO `jualdetail` VALUES (217,'JL0000000014','2012-01-03',1224,'LCD TV 32\" ','TH-L32C4G',2,2495000,2000000,0,0,4000000,-990000,NULL);
INSERT INTO `jualdetail` VALUES (218,'JL0000000015','2012-01-03',1205,'WALL BRACKET','FOR 42\" UP TO 50\"',11,95000,230000,0,0,2530000,1485000,'unit');
INSERT INTO `jualdetail` VALUES (219,'JL0000000016','2012-01-03',1205,'WALL BRACKET','FOR 42\" UP TO 50\"',5,95000,230000,0,0,1150000,675000,'unit');
INSERT INTO `jualdetail` VALUES (220,'JL0000000017','2012-01-03',1224,'LCD TV 32\" ','TH-L32C4G',56,2495000,3475000,0,0,194600000,54880000,NULL);
INSERT INTO `jualdetail` VALUES (221,'JL0000000017','2012-01-03',1160,'LCD TV 42\" ','TH-L42U30G',48,5315000,6600000,0,0,316800000,61680000,'unit');
INSERT INTO `jualdetail` VALUES (222,'JL0000000018','2012-01-03',1224,'LCD TV 32\" ','TH-L32C4G',50,2495000,3475000,0,0,173750000,49000000,NULL);
INSERT INTO `jualdetail` VALUES (223,'JL0000000018','2012-01-03',1225,'LCD TV 42\"','TH-L42U30G',173,5225000,6600000,0,0,1141800000,237875000,NULL);
INSERT INTO `jualdetail` VALUES (224,'JL0000000019','2012-01-03',1224,'LCD TV 32\" ','TH-L32C4G',29,2495000,3485000,0,0,101065000,28710000,NULL);
INSERT INTO `jualdetail` VALUES (225,'JL0000000020','2012-01-03',1224,'LCD TV 32\" ','TH-L32C4G',2,2495000,3485000,0,0,6970000,1980000,NULL);
INSERT INTO `jualdetail` VALUES (226,'JL0000000021','2012-01-03',1224,'LCD TV 32\" ','TH-L32C4G',14,2495000,3475000,0,0,48650000,13720000,NULL);
INSERT INTO `jualdetail` VALUES (227,'JL0000000021','2012-01-03',1160,'LCD TV 42\" ','TH-L42U30G',16,5315000,6600000,0,0,105600000,20560000,'unit');
INSERT INTO `jualdetail` VALUES (230,'JL0000000023','2012-01-03',1205,'WALL BRACKET','FOR 42\" UP TO 50\"',41,95000,250000,13900,0,9680100,5785100,'unit');
INSERT INTO `jualdetail` VALUES (231,'JL0000000024','2012-01-03',1205,'WALL BRACKET','FOR 42\" UP TO 50\"',9,95000,230000,0,0,2070000,1215000,'unit');
INSERT INTO `jualdetail` VALUES (232,'JL0000000025','2012-01-03',1230,'LCD TV 32\" ','32LK335',5,2500000,2454545,0,0,12272725,-227275,NULL);
INSERT INTO `jualdetail` VALUES (233,'JL0000000026','2012-01-03',1348,'CYBERKEY','_',5,1500000,1522727,0,0,7613635,113635,NULL);
INSERT INTO `jualdetail` VALUES (234,'JL0000000027','2012-01-03',1224,'LCD TV 32\" ','TH-L32C4G',40,2495000,3485000,0,0,139400000,39600000,NULL);
INSERT INTO `jualdetail` VALUES (235,'JL0000000028','2012-01-03',1224,'LCD TV 32\" ','TH-L32C4G',4,2495000,3485000,0,0,13940000,3960000,NULL);
INSERT INTO `jualdetail` VALUES (236,'JL0000000029','2012-01-03',1224,'LCD TV 32\" ','TH-L32C4G',31,2495000,3475000,0,0,107725000,30380000,NULL);
INSERT INTO `jualdetail` VALUES (237,'JL0000000029','2012-01-03',1160,'LCD TV 42\" ','TH-L42U30G',115,5315000,6600000,0,0,759000000,147775000,'unit');
INSERT INTO `jualdetail` VALUES (238,'JL0000000030','2012-01-03',1224,'LCD TV 32\" ','TH-L32C4G',64,2495000,3485000,0,0,223040000,63360000,NULL);
INSERT INTO `jualdetail` VALUES (239,'JL0000000031','2012-02-01',1160,'LCD TV 42\" ','TH-L42U30G',2,5315000,7500000,0,0,15000000,4370000,'unit');
INSERT INTO `jualdetail` VALUES (240,'JL0000000031','2012-02-01',1211,'CEILING  BRACKET','FOR 42\" UP TO 50\"',1,250000,950000,0,0,950000,700000,'unit');
INSERT INTO `jualdetail` VALUES (241,'JL0000000031','2012-02-01',1349,'TV SPLITTER + CABLING + CONECTORS','_',1,400000,500000,0,0,500000,100000,NULL);
INSERT INTO `jualdetail` VALUES (245,'JL0000000033','2012-02-01',1224,'LCD TV 32\" ','TH-L32C4G',13,2495000,3475000,0,0,45175000,12740000,NULL);
INSERT INTO `jualdetail` VALUES (246,'JL0000000033','2012-02-01',1225,'LCD TV 42\"','TH-L42U30G',21,5225000,6600000,0,0,138600000,28875000,NULL);
INSERT INTO `jualdetail` VALUES (247,'JL0000000034','2012-02-01',1224,'LCD TV 32\" ','TH-L32C4G',20,2495000,3475000,0,0,69500000,19600000,NULL);
INSERT INTO `jualdetail` VALUES (248,'JL0000000034','2012-02-01',1225,'LCD TV 42\"','TH-L42U30G',105,5225000,6600000,0,0,693000000,144375000,NULL);
INSERT INTO `jualdetail` VALUES (249,'JL0000000035','2012-02-01',1263,'AC SPLIT 3/4 PK','CS/CU-PC7NKJ',1,2250000,2400000,0,0,2400000,150000,NULL);
INSERT INTO `jualdetail` VALUES (250,'JL0000000035','2012-02-01',1274,'PIPA REFRIGERANT + ISOLASI (1/4\" + 3/8\")','AC SPLIT ( 3/4 PK - 1 PK )',10,45000,50000,0,0,500000,50000,NULL);
INSERT INTO `jualdetail` VALUES (251,'JL0000000035','2012-02-01',1218,'PIPA DRAIN','PVC 3/4\"',10,9000,12000,0,0,120000,30000,'unit');
INSERT INTO `jualdetail` VALUES (252,'JL0000000035','2012-02-01',1213,'KABEL CONTROL ',' 4 x 2.5mm',10,23000,24500,0,0,245000,15000,'unit');
INSERT INTO `jualdetail` VALUES (253,'JL0000000035','2012-02-01',1215,'KABEL POWER ','NYM 4 x 4mm',10,24000,26000,0,0,260000,20000,'Meter');
INSERT INTO `jualdetail` VALUES (254,'JL0000000035','2012-02-01',1309,'MCB 1 PHASE 16 A','AC SPLIT 3/4 PK',1,60000,75000,0,0,75000,15000,NULL);
INSERT INTO `jualdetail` VALUES (255,'JL0000000035','2012-02-01',1292,'BRACKET OUTDOOR  AC SPLIT','3/4 PK - 2 PK',1,75000,75000,0,0,75000,0,NULL);
INSERT INTO `jualdetail` VALUES (256,'JL0000000035','2012-02-01',1290,'JASA INSTALASI AC','SPLIT 3/4 PK - 1 PK',1,150000,200000,75000,0,125000,-25000,NULL);
INSERT INTO `jualdetail` VALUES (257,'JL0000000036','2012-02-01',57,'LED TV 55\"','55LV3730',1,18600000,19500000,0,0,19500000,900000,'unit');
INSERT INTO `jualdetail` VALUES (258,'JL0000000037','2012-02-01',1204,'WALL BRACKET','FOR 22\" UP TO 32\"',7,75000,185000,0,0,1295000,770000,'unit');
INSERT INTO `jualdetail` VALUES (259,'JL0000000038','2012-02-01',1234,'LCD TV 42\" ','42LK455C',3,5200000,5500000,0,0,16500000,900000,NULL);
INSERT INTO `jualdetail` VALUES (260,'JL0000000038','2012-02-01',1205,'WALL BRACKET','FOR 42\" UP TO 50\"',3,95000,400000,0,0,1200000,915000,'unit');
INSERT INTO `jualdetail` VALUES (261,'JL0000000038','2012-02-01',1351,'INSTALLATION + SETTING','LCD TV 32\" UP TO 42\"',3,60000,75000,0,0,225000,45000,NULL);
INSERT INTO `jualdetail` VALUES (262,'JL0000000039','2012-02-01',1238,'LED TV 46\"','LC-46LE530M',3,10200000,13300000,0,0,39900000,9300000,NULL);
INSERT INTO `jualdetail` VALUES (263,'JL0000000040','2012-02-01',1234,'LCD TV 42\" ','42LK455C',2,5200000,5650000,0,0,11300000,900000,NULL);
INSERT INTO `jualdetail` VALUES (264,'JL0000000041','2012-02-01',1224,'LCD TV 32\" ','TH-L32C4G',6,2495000,2800000,0,0,16800000,1830000,NULL);
INSERT INTO `jualdetail` VALUES (265,'JL0000000041','2012-02-01',1235,'LCD TV 22\"','22LK311',34,1350000,1975000,0,0,67150000,21250000,NULL);
INSERT INTO `jualdetail` VALUES (266,'JL0000000042','2012-02-01',1224,'LCD TV 32\" ','TH-L32C4G',14,2495000,3485000,0,0,48790000,13860000,NULL);
INSERT INTO `jualdetail` VALUES (267,'JL0000000043','2012-02-01',1224,'LCD TV 32\" ','TH-L32C4G',1,2495000,3485000,0,0,3485000,990000,NULL);
INSERT INTO `jualdetail` VALUES (268,'JL0000000044','2012-02-01',1224,'LCD TV 32\" ','TH-L32C4G',49,2495000,3475000,0,0,170275000,48020000,NULL);
INSERT INTO `jualdetail` VALUES (269,'JL0000000044','2012-02-01',1225,'LCD TV 42\"','TH-L42U30G',27,5225000,6600000,0,0,178200000,37125000,NULL);
INSERT INTO `jualdetail` VALUES (270,'JL0000000045','2012-02-02',1302,'BRACKET OUTDOOR AC CASSETTE','5 PK',3,150000,250000,0,0,750000,300000,NULL);
INSERT INTO `jualdetail` VALUES (271,'JL0000000045','2012-02-02',1303,'PIPA REFRIGERANT + ISOLASI ','3/4\" + 3/8\"',15,140000,160000,0,0,2400000,300000,NULL);
INSERT INTO `jualdetail` VALUES (272,'JL0000000045','2012-02-02',1305,'BRACKET OUTDOOR AC CASSETTE','3 PK',5,130000,150000,0,0,750000,100000,NULL);
INSERT INTO `jualdetail` VALUES (273,'JL0000000045','2012-02-02',1303,'PIPA REFRIGERANT + ISOLASI ','3/4\" + 3/8\"',25,140000,150000,0,0,3750000,250000,NULL);
INSERT INTO `jualdetail` VALUES (274,'JL0000000045','2012-02-02',1217,'BRACKET OUTDOOR AC SPLIT','1.5 PK - 2.5 PK',2,75000,75000,0,0,150000,0,'unit');
INSERT INTO `jualdetail` VALUES (275,'JL0000000045','2012-02-02',1275,'PIPA REFRIGERANT + ISOLASI (1/4\" + 1/2\")','AC SPLIT ( 2 PK )',10,50000,78000,0,0,780000,280000,NULL);
INSERT INTO `jualdetail` VALUES (276,'JL0000000046','2012-02-02',1293,'JASA INSTALASI+BONGKAR AC LAMA+ BOBOKAN','AC SPLIT 1 PK',25,450000,750000,0,0,18750000,7500000,NULL);
INSERT INTO `jualdetail` VALUES (277,'JL0000000046','2012-02-02',1294,'JASA INSTALASI+BONGKAR AC LAMA+BOBOKAN','AC SPLIT 1.5 PK - 2 PK',76,500000,800000,0,0,60800000,22800000,NULL);
INSERT INTO `jualdetail` VALUES (278,'JL0000000046','2012-02-02',1295,'JASA INSTALASI+BONGKAR AC LAMA+BOBOKAN','AC SPLIT 2.5 PK',17,600000,900000,0,0,15300000,5100000,NULL);
INSERT INTO `jualdetail` VALUES (279,'JL0000000046','2012-02-02',1296,'JASA INSTALASI+BONGKAR AC LAMA+BOBOKAN','AC CASSETTE 2 PK',4,800000,925000,0,0,3700000,500000,NULL);
INSERT INTO `jualdetail` VALUES (280,'JL0000000046','2012-02-02',1297,'JASA INSTALASI+BONGKAR AC LAMA+BOBOKAN','AC CASSETTE 2.5 PK',9,900000,1100000,0,0,9900000,1800000,NULL);
INSERT INTO `jualdetail` VALUES (281,'JL0000000046','2012-02-02',1298,'PIPA REFRIGERANT AC SPLIT 1 PK','AC SPLIT 1 PK',330,55000,85000,0,0,28050000,9900000,NULL);
INSERT INTO `jualdetail` VALUES (282,'JL0000000046','2012-02-02',1299,'PIPA REFRIGERANT AC SPLIT 1.5 PK - 2 PK','AC SPLIT 1.5 PK - 2 PK',995,65000,100000,0,0,99500000,34825000,NULL);
INSERT INTO `jualdetail` VALUES (283,'JL0000000046','2012-02-02',1300,'PIPA REFRIGERANT AC SPLIT 2.5 PK','AC SPLIT 2.5 PK',270,90000,185000,0,0,49950000,25650000,NULL);
INSERT INTO `jualdetail` VALUES (284,'JL0000000046','2012-02-02',1301,'PIPA REFRIGERANT AC CASSETTE 2 PK - 2.5 PK','AC CASSETTE 2 PK - 2.5 PK',235,150000,195000,0,0,45825000,10575000,NULL);
INSERT INTO `jualdetail` VALUES (285,'JL0000000046','2012-02-02',1245,'PIPA DRAIN ','PVC + ARMAFLEX',890,12000,22000,0,0,19580000,8900000,'Meter');
INSERT INTO `jualdetail` VALUES (287,'JL0000000046','2012-02-02',1214,'KABEL POWER ','NYM 3 x 2.5mm',1555,17500,30000,0,0,46650000,19437500,'unit');
INSERT INTO `jualdetail` VALUES (288,'JL0000000046','2012-02-02',1260,'KABEL CONTROL ','NYM 3 x 2.5mm',1830,28000,27000,0,0,49410000,-1830000,NULL);
INSERT INTO `jualdetail` VALUES (289,'JL0000000046','2012-02-02',1216,'BRACKET OUTDOOR AC SPLIT','1/2 PK - 1 PK',25,60000,90000,0,0,2250000,750000,'unit');
INSERT INTO `jualdetail` VALUES (290,'JL0000000046','2012-02-02',1217,'BRACKET OUTDOOR AC SPLIT','1.5 PK - 2.5 PK',76,75000,105000,0,0,7980000,2280000,'unit');
INSERT INTO `jualdetail` VALUES (291,'JL0000000046','2012-02-02',1328,'BRACKET OUTDOOR AC SPLIT','2.5 PK',17,100000,130000,0,0,2210000,510000,NULL);
INSERT INTO `jualdetail` VALUES (292,'JL0000000046','2012-02-02',1257,'BRACKET OUTDOOR AC CASETTE','2 - 2.5 PK',13,150000,200000,0,0,2600000,650000,NULL);
INSERT INTO `jualdetail` VALUES (293,'JL0000000047','2012-02-02',1290,'JASA INSTALASI AC','SPLIT 3/4 PK - 1 PK',2,150000,275000,0,0,550000,250000,NULL);
INSERT INTO `jualdetail` VALUES (294,'JL0000000047','2012-02-02',1291,'JASA INSTALASI AC','SPLIT 1.5 PK - 2 PK',4,250000,325000,0,0,1300000,300000,NULL);
INSERT INTO `jualdetail` VALUES (295,'JL0000000047','2012-02-02',1274,'PIPA REFRIGERANT + ISOLASI (1/4\" + 3/8\")','AC SPLIT ( 3/4 PK - 1 PK )',12,45000,85000,0,0,1020000,480000,NULL);
INSERT INTO `jualdetail` VALUES (296,'JL0000000047','2012-02-02',1275,'PIPA REFRIGERANT + ISOLASI (1/4\" + 1/2\")','AC SPLIT ( 2 PK )',74,50000,100000,0,0,7400000,3700000,NULL);
INSERT INTO `jualdetail` VALUES (297,'JL0000000047','2012-02-02',1245,'PIPA DRAIN ','PVC + ARMAFLEX',32,12000,20000,0,0,640000,256000,'Meter');
INSERT INTO `jualdetail` VALUES (298,'JL0000000047','2012-02-02',1214,'KABEL POWER ','NYM 3 x 2.5mm',55,17500,25000,0,0,1375000,412500,'unit');
INSERT INTO `jualdetail` VALUES (299,'JL0000000047','2012-02-02',1292,'BRACKET OUTDOOR  AC SPLIT','3/4 PK - 2 PK',6,75000,100000,0,0,600000,150000,NULL);
INSERT INTO `jualdetail` VALUES (300,'JL0000000048','2012-02-02',1205,'WALL BRACKET','FOR 42\" UP TO 50\"',5,95000,262400,0,0,1312000,837000,'unit');
INSERT INTO `jualdetail` VALUES (318,'JL0000000051','2012-03-01',1224,'LCD TV 32\" ','TH-L32C4G',1,2495000,3485000,0,0,3485000,990000,NULL);
INSERT INTO `jualdetail` VALUES (319,'JL0000000052','2012-03-01',1224,'LCD TV 32\" ','TH-L32C4G',3,2495000,3475000,0,0,10425000,2940000,NULL);
INSERT INTO `jualdetail` VALUES (320,'JL0000000052','2012-03-01',1225,'LCD TV 42\"','TH-L42U30G',15,5225000,6600000,0,0,99000000,20625000,NULL);
INSERT INTO `jualdetail` VALUES (321,'JL0000000053','2012-03-01',1224,'LCD TV 32\" ','TH-L32C4G',15,2495000,3475000,0,0,52125000,14700000,NULL);
INSERT INTO `jualdetail` VALUES (322,'JL0000000053','2012-03-01',1225,'LCD TV 42\"','TH-L42U30G',73,5225000,6600000,0,0,481800000,100375000,NULL);
INSERT INTO `jualdetail` VALUES (323,'JL0000000054','2012-02-01',1279,'AC FLOOR STANDING 5 PK','CS/CU-C45FFP8',3,15500000,17600000,0,0,52800000,6300000,NULL);
INSERT INTO `jualdetail` VALUES (324,'JL0000000054','2012-02-01',1243,'AC FLOOR STANDING 3 PK','CS/CU-C28FFP8',2,12000000,13100000,0,0,26200000,2200000,'Unit');
INSERT INTO `jualdetail` VALUES (325,'JL0000000054','2012-02-01',1280,'JASA INSTALASI AC','FLOOR STANDING 5 PK',1,600000,750000,0,0,750000,150000,NULL);
INSERT INTO `jualdetail` VALUES (326,'JL0000000054','2012-02-01',1281,'JASA INSTALASI AC','FLOOR STANDING 6 PK',1,750000,900000,0,0,900000,150000,NULL);
INSERT INTO `jualdetail` VALUES (327,'JL0000000054','2012-02-01',1282,'BRACKET OUTDOOR AC FLOOR STANDING','5 PK',1,250000,350000,0,0,350000,100000,NULL);
INSERT INTO `jualdetail` VALUES (328,'JL0000000054','2012-02-01',1244,'BRACKET OUTDOOR AC FLOOR STANDING','3 PK',1,200000,250000,0,0,250000,50000,'Unit');
INSERT INTO `jualdetail` VALUES (329,'JL0000000054','2012-02-01',1221,'PIPA AC , 2.5 PK - 3 PK','UKURAN  3/8 x 5/8',9,100000,140000,0,0,1260000,360000,'unit');
INSERT INTO `jualdetail` VALUES (330,'JL0000000054','2012-02-01',1222,'PIPA AC , 4 PK - 6 PK','UKURAN  3/4 x 3/8',48,125000,175000,0,0,8400000,2400000,'unit');
INSERT INTO `jualdetail` VALUES (331,'JL0000000054','2012-02-01',1357,'KABEL FEEDER ','NYY 3 x 2,5 mm',71,12000,17500,0,0,1242500,390500,NULL);
INSERT INTO `jualdetail` VALUES (332,'JL0000000055','2012-01-01',1275,'PIPA REFRIGERANT + ISOLASI (1/4\" + 1/2\")','AC SPLIT ( 2 PK )',183,320000,640000,200000,0,80520000,21960000,NULL);
INSERT INTO `jualdetail` VALUES (333,'JL0000000055','2012-01-01',1308,'KABEL CONTROL ',' 4 x 4mm',183,172000,280000,0,0,51240000,19764000,NULL);
INSERT INTO `jualdetail` VALUES (334,'JL0000000055','2012-01-01',1378,'KABEL POWER','NYM 3 X 4mm',183,136000,240000,0,0,43920000,19032000,'Meter');
INSERT INTO `jualdetail` VALUES (335,'JL0000000055','2012-01-01',1291,'JASA INSTALASI AC','SPLIT 1.5 PK - 2 PK',183,150000,250000,0,0,45750000,18300000,NULL);
INSERT INTO `jualdetail` VALUES (336,'JL0000000055','2012-01-01',1294,'JASA INSTALASI+BONGKAR AC LAMA+BOBOKAN','AC SPLIT 1.5 PK - 2 PK',183,50000,100000,0,0,18300000,9150000,NULL);
INSERT INTO `jualdetail` VALUES (337,'JL0000000055','2012-01-01',1324,'BIAYA TRANSPORTASI DAN AKOMODASI','_',183,50000,150000,0,0,27450000,18300000,NULL);
INSERT INTO `jualdetail` VALUES (338,'JL0000000056','2012-01-01',1275,'PIPA REFRIGERANT + ISOLASI (1/4\" + 1/2\")','AC SPLIT ( 2 PK )',38,320000,640000,200000,0,16720000,4560000,NULL);
INSERT INTO `jualdetail` VALUES (339,'JL0000000056','2012-01-01',1308,'KABEL CONTROL ',' 4 x 4mm',38,172000,280000,0,0,10640000,4104000,NULL);
INSERT INTO `jualdetail` VALUES (340,'JL0000000056','2012-01-01',1378,'KABEL POWER','NYM 3 X 4mm',38,136000,240000,0,0,9120000,3952000,'Meter');
INSERT INTO `jualdetail` VALUES (341,'JL0000000056','2012-01-01',1291,'JASA INSTALASI AC','SPLIT 1.5 PK - 2 PK',38,150000,250000,0,0,9500000,3800000,NULL);
INSERT INTO `jualdetail` VALUES (342,'JL0000000056','2012-01-01',1294,'JASA INSTALASI+BONGKAR AC LAMA+BOBOKAN','AC SPLIT 1.5 PK - 2 PK',38,50000,100000,0,0,3800000,1900000,NULL);
INSERT INTO `jualdetail` VALUES (343,'JL0000000056','2012-01-01',1324,'BIAYA TRANSPORTASI DAN AKOMODASI','_',38,50000,150000,0,0,5700000,3800000,NULL);
INSERT INTO `jualdetail` VALUES (344,'JL0000000057','2012-01-01',1275,'PIPA REFRIGERANT + ISOLASI (1/4\" + 1/2\")','AC SPLIT ( 2 PK )',7,320000,640000,0,0,4480000,2240000,NULL);
INSERT INTO `jualdetail` VALUES (345,'JL0000000057','2012-01-01',1308,'KABEL CONTROL ',' 4 x 4mm',7,172000,280000,0,0,1960000,756000,NULL);
INSERT INTO `jualdetail` VALUES (346,'JL0000000057','2012-01-01',1378,'KABEL POWER','NYM 3 X 4mm',7,136000,240000,0,0,1680000,728000,'Meter');
INSERT INTO `jualdetail` VALUES (347,'JL0000000057','2012-01-01',1291,'JASA INSTALASI AC','SPLIT 1.5 PK - 2 PK',7,150000,250000,0,0,1750000,700000,NULL);
INSERT INTO `jualdetail` VALUES (348,'JL0000000057','2012-01-01',1294,'JASA INSTALASI+BONGKAR AC LAMA+BOBOKAN','AC SPLIT 1.5 PK - 2 PK',7,50000,100000,0,0,700000,350000,NULL);
INSERT INTO `jualdetail` VALUES (349,'JL0000000057','2012-01-01',1324,'BIAYA TRANSPORTASI DAN AKOMODASI','_',7,50000,150000,0,0,1050000,700000,NULL);
INSERT INTO `jualdetail` VALUES (350,'JL0000000058','2012-02-01',1224,'LCD TV 32\" ','TH-L32C4G',16,2495000,3475000,0,0,55600000,15680000,NULL);
INSERT INTO `jualdetail` VALUES (351,'JL0000000058','2012-02-01',1225,'LCD TV 42\"','TH-L42U30G',57,5315000,6600000,0,0,376200000,73245000,NULL);
INSERT INTO `jualdetail` VALUES (352,'JL0000000059','2012-02-01',1224,'LCD TV 32\" ','TH-L32C4G',1,2495000,3485000,0,0,3485000,990000,NULL);
INSERT INTO `jualdetail` VALUES (353,'JL0000000060','2012-02-01',1205,'WALL BRACKET','FOR 42\" UP TO 50\"',70,95000,230000,0,0,16100000,9450000,'unit');
INSERT INTO `jualdetail` VALUES (354,'JL0000000061','2012-02-01',1380,'KACA MATA 3D','PANASONIC',2,1000000,1200000,0,0,2400000,400000,NULL);
INSERT INTO `jualdetail` VALUES (355,'JL0000000062','2012-02-01',1223,'AC SPLIT 1.5 PK','CS/CU - S13MKP',1,5150000,5500000,0,0,5500000,350000,NULL);
INSERT INTO `jualdetail` VALUES (356,'JL0000000062','2012-02-01',1325,'AC CASSETTE  2 PK','CS/CU-PC18DB4',1,11000000,13000000,0,0,13000000,2000000,NULL);
INSERT INTO `jualdetail` VALUES (357,'JL0000000063','2012-02-01',1205,'WALL BRACKET','FOR 42\" UP TO 50\"',25,95000,230000,0,0,5750000,3375000,'unit');
INSERT INTO `jualdetail` VALUES (358,'JL0000000063','2012-02-01',62,'Biaya Kirim',NULL,1,0,200000,0,0,200000,200000,'Unit');
INSERT INTO `jualdetail` VALUES (359,'JL0000000064','2012-02-01',1205,'WALL BRACKET','FOR 42\" UP TO 50\"',28,95000,230000,0,0,6440000,3780000,'unit');
INSERT INTO `jualdetail` VALUES (360,'JL0000000064','2012-02-01',62,'Biaya Kirim',NULL,1,0,200000,0,0,200000,200000,'Unit');
INSERT INTO `jualdetail` VALUES (370,'JL0000000066','2012-02-01',1248,'BIAYA INSTAL+BONGKAR AC LAMA+BOBOKAN ','AC SPLIT 1 PK',1,450000,750000,0,0,750000,300000,NULL);
INSERT INTO `jualdetail` VALUES (371,'JL0000000066','2012-02-01',1249,'BIAYA INSTAL+BONGKAR AC LAMA+BOBOKAN','AC SPLIT 1.5 - 2 PK',8,500000,800000,0,0,6400000,2400000,NULL);
INSERT INTO `jualdetail` VALUES (372,'JL0000000066','2012-02-01',1250,'BIAYA INSTAL+BONGKAR AC LAMA+BOBOKAN','AC SPLIT 2.5 PK',9,600000,900000,0,0,8100000,2700000,NULL);
INSERT INTO `jualdetail` VALUES (373,'JL0000000066','2012-02-01',1251,'BIAYA INSTAL+BONGKAR AC LAMA+BOBOKAN','AC CASETTE 2 PK',1,800000,925000,0,0,925000,125000,NULL);
INSERT INTO `jualdetail` VALUES (374,'JL0000000066','2012-02-01',1252,'BIAYA INSTAL+BONGKAR AC LAMA+BOBOKAN','AC CASETTE 2.5 PK',2,900000,1100000,0,0,2200000,400000,NULL);
INSERT INTO `jualdetail` VALUES (375,'JL0000000066','2012-02-01',1253,'JASA TARIKAN + PIPA REFRIGERANT ','AC SPLIT 1 PK',8,55000,85000,0,0,680000,240000,NULL);
INSERT INTO `jualdetail` VALUES (376,'JL0000000066','2012-02-01',1254,'JASA TARIKAN + PIPA REFRIGERANT ','AC SPLIT 1.5 - 2 PK ',130,65000,100000,0,0,13000000,4550000,NULL);
INSERT INTO `jualdetail` VALUES (377,'JL0000000066','2012-02-01',1255,'JASA TARIKAN + PIPA REFRIGERANT ','AC SPLIT 2.5 PK',160,90000,185000,0,0,29600000,15200000,NULL);
INSERT INTO `jualdetail` VALUES (378,'JL0000000066','2012-02-01',1256,'JASA TARIKAN + PIPA REFRIGERANT ','AC CASETTE 2 - 2.5 PK',40,150000,195000,0,0,7800000,1800000,NULL);
INSERT INTO `jualdetail` VALUES (379,'JL0000000066','2012-02-01',1218,'PIPA DRAIN','PVC 3/4\"',155,12000,22000,0,0,3410000,1550000,'unit');
INSERT INTO `jualdetail` VALUES (380,'JL0000000066','2012-02-01',1214,'KABEL POWER ','NYM 3 x 2.5mm',275,25000,30000,0,0,8250000,1375000,'unit');
INSERT INTO `jualdetail` VALUES (381,'JL0000000066','2012-02-01',1260,'KABEL CONTROL ','NYM 3 x 2.5mm',338,27000,27000,0,0,9126000,0,NULL);
INSERT INTO `jualdetail` VALUES (382,'JL0000000066','2012-02-01',1216,'BRACKET OUTDOOR AC SPLIT','1/2 PK - 1 PK',1,60000,90000,0,0,90000,30000,'unit');
INSERT INTO `jualdetail` VALUES (383,'JL0000000066','2012-02-01',1217,'BRACKET OUTDOOR AC SPLIT','1.5 PK - 2.5 PK',8,75000,105000,0,0,840000,240000,'unit');
INSERT INTO `jualdetail` VALUES (384,'JL0000000066','2012-02-01',1328,'BRACKET OUTDOOR AC SPLIT','2.5 PK',9,100000,130000,0,0,1170000,270000,NULL);
INSERT INTO `jualdetail` VALUES (385,'JL0000000066','2012-02-01',1257,'BRACKET OUTDOOR AC CASETTE','2 - 2.5 PK',3,150000,200000,0,0,600000,150000,NULL);
INSERT INTO `jualdetail` VALUES (386,'JL0000000067','2012-02-01',1205,'WALL BRACKET','FOR 42\" UP TO 50\"',46,95000,230000,0,0,10580000,6210000,'unit');
INSERT INTO `jualdetail` VALUES (387,'JL0000000067','2012-02-01',62,'Biaya Kirim',NULL,1,0,200000,0,0,200000,200000,'Unit');
INSERT INTO `jualdetail` VALUES (388,'JL0000000068','2012-02-01',1350,'AC SPLIT 3/4 PK ALOWA SERIES','CS/CU-KC7NKJ',2,2550000,2750000,0,0,5500000,400000,NULL);
INSERT INTO `jualdetail` VALUES (389,'JL0000000068','2012-02-01',1290,'JASA INSTALASI AC','SPLIT 3/4 PK - 1 PK',2,300000,350000,0,0,700000,100000,NULL);
INSERT INTO `jualdetail` VALUES (390,'JL0000000069','2012-02-01',1290,'JASA INSTALASI AC','SPLIT 3/4 PK - 1 PK',8,150000,200000,0,0,1600000,400000,NULL);
INSERT INTO `jualdetail` VALUES (391,'JL0000000069','2012-02-01',1381,'BRACKET OUTDOOR AC SPLIT','3/4 PK - 1 PK',8,50000,60000,0,0,480000,80000,'Unit');
INSERT INTO `jualdetail` VALUES (392,'JL0000000069','2012-02-01',1260,'KABEL CONTROL ','NYM 3 x 2.5mm',121,10000,17500,0,0,2117500,907500,NULL);
INSERT INTO `jualdetail` VALUES (393,'JL0000000069','2012-02-01',1274,'PIPA REFRIGERANT + ISOLASI (1/4\" + 3/8\")','AC SPLIT ( 3/4 PK - 1 PK )',121,45000,55000,0,0,6655000,1210000,NULL);
INSERT INTO `jualdetail` VALUES (394,'JL0000000069','2012-02-01',1291,'JASA INSTALASI AC','SPLIT 1.5 PK - 2 PK',2,200000,250000,0,0,500000,100000,NULL);
INSERT INTO `jualdetail` VALUES (395,'JL0000000069','2012-02-01',1217,'BRACKET OUTDOOR AC SPLIT','1.5 PK - 2.5 PK',2,75000,75000,0,0,150000,0,'unit');
INSERT INTO `jualdetail` VALUES (396,'JL0000000069','2012-02-01',1260,'KABEL CONTROL ','NYM 3 x 2.5mm',22,10000,17500,0,0,385000,165000,NULL);
INSERT INTO `jualdetail` VALUES (397,'JL0000000069','2012-02-01',1275,'PIPA REFRIGERANT + ISOLASI (1/4\" + 1/2\")','AC SPLIT ( 2 PK )',22,50000,65000,0,0,1430000,330000,NULL);
INSERT INTO `jualdetail` VALUES (398,'JL0000000069','2012-02-01',1330,'JASA INSTALASI UNIT AC SPLIT CASSETTE 5 PK (BARU)','AC CASSETTE 5 PK',2,450000,550000,0,0,1100000,200000,NULL);
INSERT INTO `jualdetail` VALUES (399,'JL0000000069','2012-02-01',1302,'BRACKET OUTDOOR AC CASSETTE','5 PK',2,250000,350000,0,0,700000,200000,NULL);
INSERT INTO `jualdetail` VALUES (400,'JL0000000069','2012-02-01',1260,'KABEL CONTROL ','NYM 3 x 2.5mm',23,10000,17500,0,0,402500,172500,NULL);
INSERT INTO `jualdetail` VALUES (401,'JL0000000069','2012-02-01',1306,'PIPA REFRIGERANT AC BIG RAC','AC BIG RAC',23,140000,160000,0,0,3680000,460000,NULL);
INSERT INTO `jualdetail` VALUES (402,'JL0000000069','2012-02-01',1245,'PIPA DRAIN ','PVC + ARMAFLEX',23,9000,12000,0,0,276000,69000,'Meter');
INSERT INTO `jualdetail` VALUES (403,'JL0000000070','2012-02-01',1267,'DUCTING PU + ACCESSORIES KOMPIT','AC DUCTING',125,300000,425000,0,0,53125000,15625000,NULL);
INSERT INTO `jualdetail` VALUES (404,'JL0000000070','2012-02-01',1260,'KABEL CONTROL ','NYM 3 x 2.5mm',0,10000,NULL,0,0,NULL,NULL,NULL);
INSERT INTO `jualdetail` VALUES (405,'JL0000000070','2012-02-01',1269,'BOX DIFFUSER','AC DUCTING',48,100000,200000,0,0,9600000,4800000,NULL);
INSERT INTO `jualdetail` VALUES (406,'JL0000000070','2012-02-01',1274,'PIPA REFRIGERANT + ISOLASI (1/4\" + 3/8\")','AC SPLIT ( 3/4 PK - 1 PK )',30,45000,60000,0,0,1800000,450000,NULL);
INSERT INTO `jualdetail` VALUES (407,'JL0000000070','2012-02-01',1275,'PIPA REFRIGERANT + ISOLASI (1/4\" + 1/2\")','AC SPLIT ( 2 PK )',30,50000,75000,0,0,2250000,750000,NULL);
INSERT INTO `jualdetail` VALUES (408,'JL0000000070','2012-02-01',1300,'PIPA REFRIGERANT AC SPLIT 2.5 PK','AC SPLIT 2.5 PK',30,90000,150000,0,0,4500000,1800000,NULL);
INSERT INTO `jualdetail` VALUES (410,'JL0000000070','2012-03-01',1205,'WALL BRACKET','FOR 42\" UP TO 50\"',3,95000,250000,0,0,750000,465000,'unit');
INSERT INTO `jualdetail` VALUES (411,'JL0000000071','2012-02-01',1267,'DUCTING PU + ACCESSORIES KOMPIT','AC DUCTING',125,300000,425000,0,0,53125000,15625000,NULL);
INSERT INTO `jualdetail` VALUES (412,'JL0000000071','2012-02-01',1268,'FLEXIBLE + ISOLASI LENGKAP 8\"','AC DUCTING',105,50000,60000,0,0,6300000,1050000,NULL);
INSERT INTO `jualdetail` VALUES (413,'JL0000000071','2012-02-01',1269,'BOX DIFFUSER','AC DUCTING',48,100000,200000,0,0,9600000,4800000,NULL);
INSERT INTO `jualdetail` VALUES (414,'JL0000000071','2012-02-01',1270,'DIFFUSER 10 x 100cm','AC DUCTING',48,150000,250000,0,0,12000000,4800000,NULL);
INSERT INTO `jualdetail` VALUES (415,'JL0000000071','2012-02-01',1274,'PIPA REFRIGERANT + ISOLASI (1/4\" + 3/8\")','AC SPLIT ( 3/4 PK - 1 PK )',30,45000,60000,0,0,1800000,450000,NULL);
INSERT INTO `jualdetail` VALUES (416,'JL0000000071','2012-02-01',1275,'PIPA REFRIGERANT + ISOLASI (1/4\" + 1/2\")','AC SPLIT ( 2 PK )',30,50000,75000,0,0,2250000,750000,NULL);
INSERT INTO `jualdetail` VALUES (417,'JL0000000071','2012-02-01',1300,'PIPA REFRIGERANT AC SPLIT 2.5 PK','AC SPLIT 2.5 PK',30,90000,150000,0,0,4500000,1800000,NULL);
INSERT INTO `jualdetail` VALUES (419,'JL0000000071','2012-03-01',1224,'LCD TV 32\" ','TH-L32C4G',63,2495000,3485000,0,0,219555000,62370000,NULL);
INSERT INTO `jualdetail` VALUES (420,'JL0000000072','2012-03-01',1224,'LCD TV 32\" ','TH-L32C4G',5,2495000,3485000,0,0,17425000,4950000,NULL);
INSERT INTO `jualdetail` VALUES (421,'JL0000000073','2012-03-01',1224,'LCD TV 32\" ','TH-L32C4G',19,2495000,3485000,0,0,66215000,18810000,NULL);
INSERT INTO `jualdetail` VALUES (422,'JL0000000074','2012-03-01',1234,'LCD TV 42\" ','42LK455C',1,5200000,5500000,0,0,5500000,300000,NULL);
INSERT INTO `jualdetail` VALUES (423,'JL0000000075','2012-03-02',1274,'PIPA REFRIGERANT + ISOLASI (1/4\" + 3/8\")','AC SPLIT ( 3/4 PK - 1 PK )',20,45000,55000,0,0,1100000,200000,NULL);
INSERT INTO `jualdetail` VALUES (424,'JL0000000075','2012-03-02',1275,'PIPA REFRIGERANT + ISOLASI (1/4\" + 1/2\")','AC SPLIT ( 2 PK )',13,50000,65000,0,0,845000,195000,NULL);
INSERT INTO `jualdetail` VALUES (425,'JL0000000075','2012-03-02',1214,'KABEL POWER ','NYM 3 x 2.5mm',161,25000,17500,0,0,2817500,-1207500,'unit');
INSERT INTO `jualdetail` VALUES (426,'JL0000000075','2012-03-02',1218,'PIPA DRAIN','PVC 3/4\"',60,12000,12000,0,0,720000,0,'unit');
INSERT INTO `jualdetail` VALUES (427,'JL0000000075','2012-03-02',1216,'BRACKET OUTDOOR AC SPLIT','1/2 PK - 1 PK',5,60000,75000,0,0,375000,75000,'unit');
INSERT INTO `jualdetail` VALUES (428,'JL0000000075','2012-03-02',1290,'JASA INSTALASI AC','SPLIT 3/4 PK - 1 PK',5,150000,200000,0,0,1000000,250000,NULL);
INSERT INTO `jualdetail` VALUES (429,'JL0000000075','2012-03-02',1277,'PANEL LISTRIK KOMPLIT','UNTUK AC 8 GROUP',1,850000,1000000,0,0,1000000,150000,NULL);
INSERT INTO `jualdetail` VALUES (430,'JL0000000075','2012-03-02',1353,'JASA CONNECTING AC+BOBOKAN+PEMASANGAN','_',1,1050000,1500000,0,0,1500000,450000,NULL);
INSERT INTO `jualdetail` VALUES (431,'JL0000000075','2012-03-02',1278,'TESTING + COMMISIONING','AC SPLIT 3/4 PK - 2 PK',1,400000,500000,0,0,500000,100000,NULL);
INSERT INTO `jualdetail` VALUES (432,'JL0000000076','2012-03-02',1228,'AC SPLIT 1 PK','CS/CU-S10MKP',6,3000000,3090909,0,0,18545454,545454,'Unit');
INSERT INTO `jualdetail` VALUES (433,'JL0000000077','2012-03-02',1228,'AC SPLIT 1 PK','CS/CU-S10MKP',4,3000000,3090909,0,0,12363636,363636,'Unit');
INSERT INTO `jualdetail` VALUES (434,'JL0000000078','2012-03-02',1267,'DUCTING PU + ACCESSORIES KOMPIT','AC DUCTING',20,300000,425000,0,0,8500000,2500000,NULL);
INSERT INTO `jualdetail` VALUES (435,'JL0000000078','2012-03-02',1268,'FLEXIBLE + ISOLASI LENGKAP 8\"','AC DUCTING',6,50000,60000,0,0,360000,60000,NULL);
INSERT INTO `jualdetail` VALUES (436,'JL0000000078','2012-03-02',1269,'BOX DIFFUSER','AC DUCTING',6,100000,200000,0,0,1200000,600000,NULL);
INSERT INTO `jualdetail` VALUES (437,'JL0000000078','2012-03-02',1270,'DIFFUSER 10 x 100cm','AC DUCTING',6,150000,250000,0,0,1500000,600000,NULL);
INSERT INTO `jualdetail` VALUES (438,'JL0000000078','2012-03-02',1271,'PIPA FREON + ISOLASI','AC SPLIT DUCTING',21,65000,75000,0,0,1575000,210000,NULL);
INSERT INTO `jualdetail` VALUES (439,'JL0000000078','2012-03-02',1213,'KABEL CONTROL ',' 4 x 2.5mm',21,23000,30000,0,0,630000,147000,'unit');
INSERT INTO `jualdetail` VALUES (440,'JL0000000078','2012-03-02',1214,'KABEL POWER ','NYM 3 x 2.5mm',30,25000,20000,0,0,600000,-150000,'unit');
INSERT INTO `jualdetail` VALUES (441,'JL0000000078','2012-03-02',1245,'PIPA DRAIN ','PVC + ARMAFLEX',15,9000,15000,0,0,225000,90000,'Meter');
INSERT INTO `jualdetail` VALUES (442,'JL0000000078','2012-03-02',1272,'JASA INSTALASI AC','SPLIT DUCTING 1.5 PK',1,200000,300000,0,0,300000,100000,NULL);
INSERT INTO `jualdetail` VALUES (443,'JL0000000078','2012-03-02',1273,'JASA INSTALASI AC','SPLIT DUCTING 2 PK',1,300000,400000,0,0,400000,100000,NULL);
INSERT INTO `jualdetail` VALUES (444,'JL0000000079','2012-03-02',1160,'LCD TV 42\" ','TH-L42U30G',1,5315000,5363636,0,0,5363636,48636,'unit');
INSERT INTO `jualdetail` VALUES (445,'JL0000000080','2012-03-02',1240,'DVD PLAYER','DP-520',20,280000,318182,0,0,6363640,763640,NULL);
INSERT INTO `jualdetail` VALUES (446,'JL0000000081','2012-03-02',1204,'WALL BRACKET','FOR 22\" UP TO 32\"',30,75000,150000,0,0,4500000,2250000,'unit');
INSERT INTO `jualdetail` VALUES (447,'JL0000000081','2012-03-02',1205,'WALL BRACKET','FOR 42\" UP TO 50\"',64,95000,190000,0,0,12160000,6080000,'unit');
INSERT INTO `jualdetail` VALUES (448,'JL0000000082','2012-03-02',1204,'WALL BRACKET','FOR 22\" UP TO 32\"',20,75000,145000,0,0,2900000,1400000,'unit');
INSERT INTO `jualdetail` VALUES (449,'JL0000000083','2012-03-02',1204,'WALL BRACKET','FOR 22\" UP TO 32\"',6,75000,185000,0,0,1110000,660000,'unit');
INSERT INTO `jualdetail` VALUES (450,'JL0000000084','2012-03-02',1264,'AIR PURIFIER','KC-A40Y-W',4,3294500,3700000,0,0,14800000,1622000,NULL);
INSERT INTO `jualdetail` VALUES (453,'JL0000000086','2012-03-02',1242,'AC SPLIT 1/2 PK','CS/CU-PC5MKJ',1,2150000,1500000,0,0,1500000,-650000,NULL);
INSERT INTO `jualdetail` VALUES (454,'JL0000000086','2012-03-02',1241,'AC SPLIT 1 PK','CS/CU-KC9NKJ',1,2875000,2800000,0,0,2800000,-75000,'Unit');
INSERT INTO `jualdetail` VALUES (455,'JL0000000087','2012-03-02',1266,'LCD TV 40\"','LC-40M500M',1,5250000,5900000,0,0,5900000,650000,NULL);
INSERT INTO `jualdetail` VALUES (456,'JL0000000087','2012-03-02',1265,'HOME THEATER','HT-CN830DVWE',1,1959000,2700000,0,0,2700000,741000,NULL);
INSERT INTO `jualdetail` VALUES (457,'JL0000000088','2012-03-02',1205,'WALL BRACKET','FOR 42\" UP TO 50\"',8,95000,200000,0,0,1600000,840000,'unit');
INSERT INTO `jualdetail` VALUES (458,'JL0000000089','2012-03-02',1224,'LCD TV 32\" ','TH-L32C4G',2,2495000,2700000,0,0,5400000,410000,NULL);
INSERT INTO `jualdetail` VALUES (459,'JL0000000089','2012-03-02',1354,'CEILING HANGING BRACKET','LCD TV 32\"',1,850000,925000,0,0,925000,75000,NULL);
INSERT INTO `jualdetail` VALUES (460,'JL0000000090','2012-03-02',1330,'JASA INSTALASI UNIT AC SPLIT CASSETTE 5 PK (BARU)','AC CASSETTE 5 PK',1,450000,600000,0,0,600000,150000,NULL);
INSERT INTO `jualdetail` VALUES (461,'JL0000000090','2012-03-02',1331,'JASA BONGKAR & PASANG AC CASSETTE 3 PK (LAMA)','AC CASSETTE 3 PK',1,900000,1050000,0,0,1050000,150000,NULL);
INSERT INTO `jualdetail` VALUES (462,'JL0000000090','2012-03-02',1213,'KABEL CONTROL ',' 4 x 2.5mm',38,23000,32000,0,0,1216000,342000,'unit');
INSERT INTO `jualdetail` VALUES (463,'JL0000000090','2012-03-02',1215,'KABEL POWER ','NYM 4 x 4mm',30,24000,37000,0,0,1110000,390000,'Meter');
INSERT INTO `jualdetail` VALUES (464,'JL0000000090','2012-03-02',1245,'PIPA DRAIN ','PVC + ARMAFLEX',10,9000,22000,0,0,220000,130000,'Meter');
INSERT INTO `jualdetail` VALUES (465,'JL0000000090','2012-03-02',1303,'PIPA REFRIGERANT + ISOLASI ','3/4\" + 3/8\"',30,140000,185000,0,0,5550000,1350000,NULL);
INSERT INTO `jualdetail` VALUES (466,'JL0000000090','2012-03-02',1246,'PIPA REFRIGERANT + ISOLASI (5/8\"+3/8\")','AC CASSETTE 2.5 PK',8,150000,165000,0,0,1320000,120000,NULL);
INSERT INTO `jualdetail` VALUES (467,'JL0000000090','2012-03-02',1302,'BRACKET OUTDOOR AC CASSETTE','5 PK',1,250000,200000,0,0,200000,-50000,NULL);
INSERT INTO `jualdetail` VALUES (468,'JL0000000090','2012-03-02',1355,'MCB 3 PHASE 25 A','_',1,75000,100000,0,0,100000,25000,NULL);
INSERT INTO `jualdetail` VALUES (469,'JL0000000091','2012-03-02',1204,'WALL BRACKET','FOR 22\" UP TO 32\"',8,75000,150000,0,0,1200000,600000,'unit');
INSERT INTO `jualdetail` VALUES (470,'JL0000000092','2012-03-02',1211,'CEILING  BRACKET','FOR 42\" UP TO 50\"',1,250000,725000,0,0,725000,475000,'unit');
INSERT INTO `jualdetail` VALUES (471,'JL0000000093','2012-02-01',1204,'WALL BRACKET','FOR 22\" UP TO 32\"',1,75000,150000,0,0,150000,75000,'unit');
INSERT INTO `jualdetail` VALUES (472,'JL0000000094','2012-03-01',1356,'KABEL FEEDER','NYY 4 x 4 mm',1040,30000,38000,0,0,39520000,8320000,NULL);
INSERT INTO `jualdetail` VALUES (473,'JL0000000094','2012-03-01',1357,'KABEL FEEDER ','NYY 3 x 2,5 mm',225,12000,15000,0,0,3375000,675000,NULL);
INSERT INTO `jualdetail` VALUES (474,'JL0000000094','2012-03-01',1284,'TESTING & COMMISSIONING','AC DUCTING',1,4010000,5000000,0,0,5000000,990000,NULL);
INSERT INTO `jualdetail` VALUES (475,'JL0000000094','2012-03-01',1361,'PIPA REFRIGERANT ','AC BIG RAC 1/4',110,38000,50000,0,0,5500000,1320000,NULL);
INSERT INTO `jualdetail` VALUES (476,'JL0000000094','2012-03-01',1360,'PIPA REFRIGERANT','AC BIG RAC 1/2',665,59000,62500,0,0,41562500,2327500,NULL);
INSERT INTO `jualdetail` VALUES (477,'JL0000000094','2012-03-01',1359,'PIPA REFRIGERANT ','AC BIG RAC 1',555,55000,100000,0,0,55500000,24975000,NULL);
INSERT INTO `jualdetail` VALUES (478,'JL0000000094','2012-03-01',1363,'PIPA DRAIN','AC BIG RAC 25\"',79,19000,30000,0,0,2370000,869000,NULL);
INSERT INTO `jualdetail` VALUES (479,'JL0000000094','2012-03-01',1362,'PIPA DRAIN','AC BIG RAC 20\"',129,17500,25000,0,0,3225000,967500,NULL);
INSERT INTO `jualdetail` VALUES (480,'JL0000000094','2012-03-01',1358,'TESTING & INSTALASI','_',1,32000000,35100000,0,0,35100000,3100000,NULL);
INSERT INTO `jualdetail` VALUES (481,'JL0000000095','2012-03-01',1204,'WALL BRACKET','FOR 22\" UP TO 32\"',143,75000,170000,0,0,24310000,13585000,'unit');
INSERT INTO `jualdetail` VALUES (482,'JL0000000095','2012-03-01',1205,'WALL BRACKET','FOR 42\" UP TO 50\"',13,95000,220000,0,0,2860000,1625000,'unit');
INSERT INTO `jualdetail` VALUES (483,'JL0000000096','2012-03-01',1343,'AC CASSETTE 2.5 PK','CS/CU - PC24DB4H',11,11034000,10621818,0,0,116839998,-4534002,NULL);
INSERT INTO `jualdetail` VALUES (484,'JL0000000097','2012-03-01',1343,'AC CASSETTE 2.5 PK','CS/CU - PC24DB4H',10,11034000,10621818,0,0,106218180,-4121820,NULL);
INSERT INTO `jualdetail` VALUES (485,'JL0000000098','2012-03-01',1224,'LCD TV 32\" ','TH-L32C4G',22,2495000,3485000,0,0,76670000,21780000,NULL);
INSERT INTO `jualdetail` VALUES (486,'JL0000000099','2012-03-01',1224,'LCD TV 32\" ','TH-L32C4G',4,2495000,3485000,0,0,13940000,3960000,NULL);
INSERT INTO `jualdetail` VALUES (487,'JL0000000100','2012-03-01',1224,'LCD TV 32\" ','TH-L32C4G',1,2495000,3485000,0,0,3485000,990000,NULL);
INSERT INTO `jualdetail` VALUES (488,'JL0000000101','2012-03-01',1224,'LCD TV 32\" ','TH-L32C4G',22,2495000,3475000,0,0,76450000,21560000,NULL);
INSERT INTO `jualdetail` VALUES (489,'JL0000000101','2012-03-01',1225,'LCD TV 42\"','TH-L42U30G',70,5315000,6600000,0,0,462000000,89950000,NULL);
INSERT INTO `jualdetail` VALUES (490,'JL0000000102','2012-03-01',1224,'LCD TV 32\" ','TH-L32C4G',16,2495000,3475000,0,0,55600000,15680000,NULL);
INSERT INTO `jualdetail` VALUES (491,'JL0000000102','2012-03-01',1225,'LCD TV 42\"','TH-L42U30G',117,5315000,6600000,0,0,772200000,150345000,NULL);
INSERT INTO `jualdetail` VALUES (492,'JL0000000103','2012-03-01',1224,'LCD TV 32\" ','TH-L32C4G',11,2495000,3485000,0,0,38335000,10890000,NULL);
INSERT INTO `jualdetail` VALUES (493,'JL0000000104','2012-03-01',1224,'LCD TV 32\" ','TH-L32C4G',4,2495000,3485000,0,0,13940000,3960000,NULL);
INSERT INTO `jualdetail` VALUES (494,'JL0000000105','2012-03-01',1224,'LCD TV 32\" ','TH-L32C4G',2,2495000,3485000,0,0,6970000,1980000,NULL);
INSERT INTO `jualdetail` VALUES (495,'JL0000000106','2012-03-01',1224,'LCD TV 32\" ','TH-L32C4G',1,2495000,3485000,0,0,3485000,990000,NULL);
INSERT INTO `jualdetail` VALUES (496,'JL0000000107','2012-03-01',1204,'WALL BRACKET','FOR 22\" UP TO 32\"',12,75000,185000,0,0,2220000,1320000,'unit');
INSERT INTO `jualdetail` VALUES (497,'JL0000000108','2012-03-01',1234,'LCD TV 42\" ','42LK455C',2,5200000,5100000,0,0,10200000,-200000,NULL);
INSERT INTO `jualdetail` VALUES (498,'JL0000000108','2012-03-01',1211,'CEILING  BRACKET','FOR 42\" UP TO 50\"',2,250000,300000,0,0,600000,100000,'unit');
INSERT INTO `jualdetail` VALUES (499,'JL0000000108','2012-03-01',1352,'JASA INSTALASI+SETTING+TESTING ','LCD TV 42\"',2,200000,150000,0,0,300000,-100000,NULL);
INSERT INTO `jualdetail` VALUES (500,'JL0000000109','2012-01-01',500,'LED TV 46\"','LC-46LE830M',6,15000000,17181818,0,0,103090908,13090908,'unit');
INSERT INTO `jualdetail` VALUES (501,'JL0000000110','2012-02-01',1205,'WALL BRACKET','FOR 42\" UP TO 50\"',4,95000,135000,0,0,540000,160000,'unit');
INSERT INTO `jualdetail` VALUES (502,'JL0000000111','2012-02-01',1267,'DUCTING PU + ACCESSORIES KOMPIT','AC DUCTING',125,300000,425000,0,0,53125000,15625000,NULL);
INSERT INTO `jualdetail` VALUES (503,'JL0000000111','2012-02-01',1384,'KABEL FLEXIBEL 8\"',NULL,105,50000,60000,0,0,6300000,1050000,'Meter');
INSERT INTO `jualdetail` VALUES (504,'JL0000000111','2012-02-01',1269,'BOX DIFFUSER','AC DUCTING',48,100000,200000,0,0,9600000,4800000,NULL);
INSERT INTO `jualdetail` VALUES (505,'JL0000000111','2012-02-01',1270,'DIFFUSER 10 x 100cm','AC DUCTING',48,150000,250000,0,0,12000000,4800000,NULL);
INSERT INTO `jualdetail` VALUES (506,'JL0000000111','2012-02-01',1274,'PIPA REFRIGERANT + ISOLASI (1/4\" + 3/8\")','AC SPLIT ( 3/4 PK - 1 PK )',30,55000,60000,0,0,1800000,150000,NULL);
INSERT INTO `jualdetail` VALUES (507,'JL0000000111','2012-02-01',1275,'PIPA REFRIGERANT + ISOLASI (1/4\" + 1/2\")','AC SPLIT ( 2 PK )',30,65000,75000,0,0,2250000,300000,NULL);
INSERT INTO `jualdetail` VALUES (508,'JL0000000111','2012-02-01',1300,'PIPA REFRIGERANT AC SPLIT 2.5 PK','AC SPLIT 2.5 PK',30,90000,150000,0,0,4500000,1800000,NULL);
INSERT INTO `jualdetail` VALUES (509,'JL0000000111','2012-02-01',1306,'PIPA REFRIGERANT AC BIG RAC','AC BIG RAC',40,140000,160000,0,0,6400000,800000,NULL);
INSERT INTO `jualdetail` VALUES (510,'JL0000000111','2012-02-01',1308,'KABEL CONTROL ',' 4 x 4mm',80,30000,35000,0,0,2800000,400000,NULL);
INSERT INTO `jualdetail` VALUES (511,'JL0000000111','2012-02-01',1213,'KABEL CONTROL ',' 4 x 2.5mm',60,28000,30000,0,0,1800000,120000,'unit');
INSERT INTO `jualdetail` VALUES (512,'JL0000000111','2012-02-01',1214,'KABEL POWER ','NYM 3 x 2.5mm',80,17500,20000,0,0,1600000,200000,'unit');
INSERT INTO `jualdetail` VALUES (513,'JL0000000111','2012-02-01',1245,'PIPA DRAIN ','PVC + ARMAFLEX',100,12000,15000,0,0,1500000,300000,'Meter');
INSERT INTO `jualdetail` VALUES (514,'JL0000000111','2012-02-01',1290,'JASA INSTALASI AC','SPLIT 3/4 PK - 1 PK',3,200000,200000,0,0,600000,0,NULL);
INSERT INTO `jualdetail` VALUES (515,'JL0000000111','2012-02-01',1272,'JASA INSTALASI AC','SPLIT DUCTING 1.5 PK',3,200000,300000,0,0,900000,300000,NULL);
INSERT INTO `jualdetail` VALUES (516,'JL0000000111','2012-02-01',1385,'JASA INSTALASI AC','SPLIT DUCTING 2.5 PK',3,350000,500000,0,0,1500000,450000,'Unit');
INSERT INTO `jualdetail` VALUES (517,'JL0000000111','2012-02-01',1386,'JASA INSTALASI AC','SPLIT DUCTING 3 PK',4,450000,600000,0,0,2400000,600000,'Unit');
INSERT INTO `jualdetail` VALUES (518,'JL0000000111','2012-02-01',1382,'ALAT BANTU & ACCESSORIES',NULL,1,2000000,3000000,0,0,3000000,1000000,'UNIT');
INSERT INTO `jualdetail` VALUES (519,'JL0000000111','2012-02-01',1324,'BIAYA TRANSPORTASI DAN AKOMODASI','_',1,800000,1000000,0,0,1000000,200000,NULL);
INSERT INTO `jualdetail` VALUES (520,'JL0000000111','2012-02-01',1387,'BIAYA FINISHING',NULL,1,7000000,8181818,0,0,8181818,1181818,'Unit');

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
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `jurnal_umum` VALUES (1,'JU00000000',NULL,NULL,NULL,NULL);
INSERT INTO `jurnal_umum` VALUES (18,'JU00000004',NULL,'2012-01-03',NULL,'Biaya Ekspedisi Indojaya - Kiriman KTB');
INSERT INTO `jurnal_umum` VALUES (19,'JU00000005',NULL,'2012-01-04',NULL,'Biaya Ekspedisi Indojaya - Kiriman KTB');
INSERT INTO `jurnal_umum` VALUES (20,'JU00000006',NULL,'2012-01-16',NULL,'Biaya Ekspedisi Indojaya - Kiriman KTB');
INSERT INTO `jurnal_umum` VALUES (21,'JU00000007',NULL,'2012-01-18',NULL,'Biaya Ekspedisi Indojaya - Kiriman KTB');

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
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `jurnal_umum_detail` VALUES (25,'JU00000004','510-80','Biaya atas Pengiriman Barang',1635000,0,1635000);
INSERT INTO `jurnal_umum_detail` VALUES (26,'JU00000004','110-20','Kas',-1635000,1635000,0);
INSERT INTO `jurnal_umum_detail` VALUES (27,'JU00000005','510-80','Biaya atas Pengiriman Barang',6610000,0,6610000);
INSERT INTO `jurnal_umum_detail` VALUES (28,'JU00000005','110-20','Kas',-6610000,6610000,0);
INSERT INTO `jurnal_umum_detail` VALUES (29,'JU00000006','510-80','Biaya atas Pengiriman Barang',325000,0,325000);
INSERT INTO `jurnal_umum_detail` VALUES (30,'JU00000006','110-20','Kas',-325000,325000,0);
INSERT INTO `jurnal_umum_detail` VALUES (31,'JU00000007','510-80','Biaya atas Pengiriman Barang',41955000,0,41955000);
INSERT INTO `jurnal_umum_detail` VALUES (32,'JU00000007','110-20','Kas',-41955000,41955000,0);

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
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
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
INSERT INTO `kategori` VALUES (30,'CCTV');
INSERT INTO `kategori` VALUES (31,'PLASMA TV');
INSERT INTO `kategori` VALUES (32,'ENGINE');
INSERT INTO `kategori` VALUES (33,'GENSET');
INSERT INTO `kategori` VALUES (34,'STAMPER');
INSERT INTO `kategori` VALUES (35,'HOME THEATER');
INSERT INTO `kategori` VALUES (36,'BESI BETON');

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
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `project` VALUES (3,'BANK PERMATA',3,'INDONESIA');
INSERT INTO `project` VALUES (4,'BASARNAS',4,'Indonesia');
INSERT INTO `project` VALUES (5,'CCTV LONGRANGE - LEBONG',5,'Bengkulu');
INSERT INTO `project` VALUES (6,'INDOSAT',3,'Jabodetabek');
INSERT INTO `project` VALUES (7,'PT. JINYOUNG',NULL,NULL);
INSERT INTO `project` VALUES (8,'TIRTAYASA',NULL,NULL);
INSERT INTO `project` VALUES (9,'BUTIK INA THOMAS',NULL,NULL);
INSERT INTO `project` VALUES (10,'INCOGNITO',3,NULL);
INSERT INTO `project` VALUES (11,'IFC UI KAMPUS UI DEPOK',3,NULL);
INSERT INTO `project` VALUES (12,'SMA AL-AZAR 3 KEBAYORAN',3,'JAKARTA');
INSERT INTO `project` VALUES (13,'CYBERKEY',3,NULL);
INSERT INTO `project` VALUES (14,'KTB PULOMAS',4,NULL);
INSERT INTO `project` VALUES (16,'PT. Sinergi Utama Raya',3,NULL);
INSERT INTO `project` VALUES (17,'APARTEMENT THE REGATTA',39,'Jakarta Pusat');
INSERT INTO `project` VALUES (18,'MAS TONO',NULL,'CILACAP');
INSERT INTO `project` VALUES (19,'PT. ENKEY',NULL,NULL);
INSERT INTO `project` VALUES (20,'INDORAMA',3,NULL);
INSERT INTO `project` VALUES (21,'MAS TONO',NULL,NULL);

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
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `salary` VALUES (36,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'SL00000000');
INSERT INTO `salary` VALUES (41,10,5000000,7550000,'2012-02-24','Februari 2012',NULL,NULL,281000,18480000,250000,67440000,NULL,7269000,390000,2800000,'BOD','SL00000001');
INSERT INTO `salary` VALUES (42,10,5000000,7550000,'2012-03-10','Maret 2012',NULL,NULL,281000,18480000,250000,67440000,NULL,7269000,390000,2800000,'BOD','SL00000002');

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
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `supplier` VALUES (3,'Sharp Electronics Indonesia, PT. ','Jl. Swadaya IV RT.14 RW.4, Rawaterate, Cakung','Jakarta Timur','021-46824070',NULL,NULL);
INSERT INTO `supplier` VALUES (9,'Gobel Dharma Nusantara, PT. ','Jl. Dewi Sartika 14, Cawang II','Jakarta Timur','021-8015666 / Fax. 021-8015675',NULL,NULL);
INSERT INTO `supplier` VALUES (11,'Techtron, CV. ',NULL,'Jakarta',NULL,NULL,NULL);
INSERT INTO `supplier` VALUES (12,'Guna Logam, PT. ','Jl. Situ Gunung Km.2','Sukabumi',NULL,NULL,NULL);
INSERT INTO `supplier` VALUES (13,'IMS, PT. ','Jl. Taman Nyiur Blok S No.13, Sunter Agung','Jakarta-14350','021-651-8347 / 021-651-2595',NULL,NULL);
INSERT INTO `supplier` VALUES (14,'Taruna Tehnik','Jl. RA. Kartini No. 10 Rt.03/05 Kel. Margahayu ','Bekasi','021-98181547',NULL,NULL);
INSERT INTO `supplier` VALUES (17,'Puterako Inti Buana, PT. ','Kompleks Ruko Atom Megah Jl. Gembong No 32H','Surabaya','031 - 3763278 ',NULL,NULL);
INSERT INTO `supplier` VALUES (18,'LG Electronics Indonesia, PT. ','One Pacific Place, Lt.11 SCBD. Jl. Jend. Sudirman Kav.52-53','Jakarta Selatan','021-57973113',NULL,NULL);
INSERT INTO `supplier` VALUES (19,'Toko Cahaya Makmur Sejahtera','Gedung Lentedeves Trade Center, Jl. Hayam Wuruk No. 127','Jakarta Barat',NULL,NULL,NULL);
INSERT INTO `supplier` VALUES (20,'Toko Sukses Abadi Teknik','Glodok HWI Lt. Dasar Blok C No. 4, JL. Hayam Wuruk','Jakarta Barat','021-6242465 / 6015289',NULL,NULL);
INSERT INTO `supplier` VALUES (21,'Muhtadin Azis','Rawa Lumbu','Bekasi','081908706046',NULL,NULL);
INSERT INTO `supplier` VALUES (22,'Murjili','Rawa Malaka','Jakarta Pusat','08129950701',NULL,NULL);
INSERT INTO `supplier` VALUES (23,'Vivi Electrindo','Jl. Prof. Dr. Latumenten Raya No.3A/53','Jakarat Barat',NULL,NULL,NULL);
INSERT INTO `supplier` VALUES (26,'Indovisual Sistem Integrasi, PT. ','Kompleks Perkantoran Multiguna Blok 1A-B, Jl.Rajawali Selatan Raya, Kemayoran','Jakarta Pusat','021-6412131',NULL,NULL);
INSERT INTO `supplier` VALUES (27,' Jati Megah, PD.','Jl. Gatot Subroto Km.5,5 No.8E Jatiuwung','Tangerang','021-59308235',NULL,NULL);
INSERT INTO `supplier` VALUES (28,'Sankyo Sahabat Indonesia, PT. ','JL. Basuki Rahmat No.18A Pondok Bambu Duren Sawit','Jakarta Timur','021-86612097',NULL,NULL);
INSERT INTO `supplier` VALUES (29,'Pak Heri Taufan',NULL,'Jakarta','021-33865652',NULL,NULL);
INSERT INTO `supplier` VALUES (30,'Catur Mitra Sepakat, PT. ','Royal Gading Square RG 10/20, Jl. Pegangsaan Dua','Jakarta Timur','021-45872249',NULL,NULL);
INSERT INTO `supplier` VALUES (31,'Bina Guna, CV.','Jl. P. Jayakarta 141 Blok E No.18','Jakarta Pusat 10730','021-6294715 / 021-6299262',NULL,NULL);
INSERT INTO `supplier` VALUES (32,'Saitech, PT. ','Wisma Eka Jiwa Lt.6 No. 6, Jl. Alteri Mangga Dua Selatan, Sawah Besar','Jakarta Pusat','021-6250508',NULL,NULL);
INSERT INTO `supplier` VALUES (34,'Delta Electronics, CV. ',NULL,NULL,NULL,NULL,NULL);

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
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
INSERT INTO `supplier_pic` VALUES (1,'Deddy Mulyawan Godjali',NULL,'081586777787 / 087882582587','Deddy.godjali@lge.com',2);
INSERT INTO `supplier_pic` VALUES (2,'','','','',7);
INSERT INTO `supplier_pic` VALUES (3,'','','','',2);
INSERT INTO `supplier_pic` VALUES (4,'','','','',7);
INSERT INTO `supplier_pic` VALUES (5,'','','',NULL,4);
INSERT INTO `supplier_pic` VALUES (6,'',NULL,NULL,NULL,6);
INSERT INTO `supplier_pic` VALUES (7,'',NULL,NULL,NULL,7);
INSERT INTO `supplier_pic` VALUES (8,'Suryani Indri',NULL,NULL,'Suryani.indri@lge.com',2);
INSERT INTO `supplier_pic` VALUES (9,NULL,NULL,NULL,NULL,2);
INSERT INTO `supplier_pic` VALUES (10,'Yuvan Christofel',NULL,'0811902374','Yuvan@seid.sharp-world.com',NULL);
INSERT INTO `supplier_pic` VALUES (11,'Nurhayati ( Bolly )',NULL,'085691677812','Nurhayati@seid.sharp-world.com',3);
INSERT INTO `supplier_pic` VALUES (12,'Ranti',NULL,'085691668573','Pjs_adm@seid.sharp-world.com',3);
INSERT INTO `supplier_pic` VALUES (13,'Ningsih ( Toci )',NULL,'081319519272','Ningsih@seid.sharp-world.com',3);
INSERT INTO `supplier_pic` VALUES (14,'Yuvan Christofel',NULL,'0811902374','Yuvan@seid.sharp-world.com',3);
INSERT INTO `supplier_pic` VALUES (15,NULL,NULL,NULL,NULL,3);
INSERT INTO `supplier_pic` VALUES (16,'',NULL,NULL,NULL,NULL);
INSERT INTO `supplier_pic` VALUES (17,'Ido',NULL,NULL,'Ido@indovisual.co.id',5);
INSERT INTO `supplier_pic` VALUES (18,'Manoj',NULL,NULL,'Manoj@sai-tek.com',8);
INSERT INTO `supplier_pic` VALUES (19,'Deepa',NULL,NULL,'Deepa@sai-tek.com',8);
INSERT INTO `supplier_pic` VALUES (20,'Noori',NULL,NULL,'Noori@Sai-tek.com',8);
INSERT INTO `supplier_pic` VALUES (21,'Pak Honggie',NULL,'0816966651',NULL,7);
INSERT INTO `supplier_pic` VALUES (22,'Deni Koswara',NULL,'08129443242','Deni.koswara@gdn.co.id',9);
INSERT INTO `supplier_pic` VALUES (23,'Deni Koswara','JL. Dewi Sartika 14, Cawang II, Jakarta Timur',NULL,'Deni.koswara@gdn.co.id',10);
INSERT INTO `supplier_pic` VALUES (24,'Deddy Mulyawan',NULL,'081586777786','Deddy.godjali@lge.com',18);
INSERT INTO `supplier_pic` VALUES (25,'Muhammad Ardan',NULL,'081280806656','muhammadardan@yahoo.com',13);
INSERT INTO `supplier_pic` VALUES (26,'Yuvan Christofel',NULL,'0811902374','yuvan@seid.sharp-world.com',12);
INSERT INTO `supplier_pic` VALUES (27,'Nurhayati (Bolly)',NULL,'085691677812','nurhayati@seid.sharp-world.com',12);
INSERT INTO `supplier_pic` VALUES (28,'Ranti',NULL,NULL,'ranti@seid.sharp-world.com',12);
INSERT INTO `supplier_pic` VALUES (29,'Andi Irwanto',NULL,NULL,'Andi_irwanto@gdn.co.id',9);
INSERT INTO `supplier_pic` VALUES (30,'Dwi Purwanto',NULL,'081210393978','Dwi_p@gdn.co.id',9);
INSERT INTO `supplier_pic` VALUES (31,'Boy Subastian',NULL,NULL,NULL,NULL);
INSERT INTO `supplier_pic` VALUES (32,'Boy Subastian',NULL,NULL,'Boy@puterako.co.id',17);
INSERT INTO `supplier_pic` VALUES (33,'Andre',NULL,'081932231789',NULL,19);
INSERT INTO `supplier_pic` VALUES (34,'Marcellus Ido',NULL,'0811175924','Ido@indovisual.co.id',26);
INSERT INTO `supplier_pic` VALUES (35,'Rudi',NULL,'081334434284',NULL,27);
INSERT INTO `supplier_pic` VALUES (36,'Sudirman',NULL,NULL,NULL,28);
INSERT INTO `supplier_pic` VALUES (37,'Mus',NULL,NULL,NULL,28);
INSERT INTO `supplier_pic` VALUES (38,'Heri Taufan',NULL,'33865652',NULL,29);
INSERT INTO `supplier_pic` VALUES (39,'Hongie',NULL,'0816966651',NULL,30);
INSERT INTO `supplier_pic` VALUES (40,'Joko',NULL,'021-90448574',NULL,30);
INSERT INTO `supplier_pic` VALUES (41,'Pak Nurul Huda',NULL,'081210210001','Nurul_huda020@yahoo.com',31);
INSERT INTO `supplier_pic` VALUES (42,'Nurul Huda',NULL,NULL,NULL,NULL);
INSERT INTO `supplier_pic` VALUES (43,'Nurul Huda',NULL,NULL,NULL,33);
INSERT INTO `supplier_pic` VALUES (44,'Nita Wijaya',NULL,NULL,NULL,34);
INSERT INTO `supplier_pic` VALUES (45,'Andrie.K',NULL,'081342270789','Andrie.k@gdn.co.id',9);
INSERT INTO `supplier_pic` VALUES (46,'Pak Rudi',NULL,NULL,NULL,20);
INSERT INTO `supplier_pic` VALUES (47,'Manoj',NULL,NULL,'Manoj@sai-tek.com',32);
INSERT INTO `supplier_pic` VALUES (48,'Deepa',NULL,NULL,'Deepa@sai-tek.com',32);
INSERT INTO `supplier_pic` VALUES (49,'Noorin',NULL,NULL,'Noorin@sai-tek.com',32);

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