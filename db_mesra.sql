-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2023 at 03:48 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_mesra`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(120) NOT NULL,
  `keterangan` varchar(225) NOT NULL,
  `kategori` varchar(60) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(6) NOT NULL,
  `foto` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`id_brg`, `nama_brg`, `keterangan`, `kategori`, `harga`, `stok`, `foto`) VALUES
(32, 'AC PANASONIK', 'PANASONIK 1/2 PK', 'AC', 2500000, 4, 'panasoniksetengahpk1.jpeg'),
(33, 'AC PANASONIK', 'PANASONIC 1 PK', 'AC', 3500000, 6, 'panasonik1pk1.jpeg'),
(34, 'AC PANASONIK', 'PANASONIC 2 PK', 'AC', 4500000, 8, 'panasonik2pk1.jpeg'),
(35, 'AC SHARP', 'SHARP 1/2 PK', 'AC', 2000000, 9, 'sharpsetngahpk1.jpeg'),
(36, 'AC SHARP', 'AC SHARP 1 PK', 'AC', 3450000, 4, 'sharp1pk1.jpeg'),
(37, 'AC SHARP', 'SHARP 2 PK', 'AC', 4355000, 5, 'sharp2pk1.jpeg'),
(38, 'AC DAIKIN', 'DAIKIN 1/2 PK', 'AC', 2670000, 5, 'daikinsetengahpk1.jpeg'),
(39, 'AC DAIKIN', 'DAIKIN 1 PK', 'AC', 3780000, 6, 'daikin1pk1.jpeg'),
(40, 'AC DAIKIN', 'DAIKIN 2 PK', 'AC', 5785000, 8, 'daikin2pk1.jpeg'),
(45, 'POLYTRON', 'POLYTRON 1/2 PK', 'AC', 2499000, 7, 'polytronsetengahpk1.jpeg'),
(46, 'POLYTRON', 'POLYTRON 1 PK', 'AC', 3799000, 8, 'polytron1pk1.jpeg'),
(47, 'POLYTRON', 'POLYTRON 2 PK', 'AC', 4756000, 9, 'polyton2pk1.jpeg'),
(48, 'SAMSUNG', 'SAMSUNG 1/2 PK', 'AC', 2399000, 4, 'samsungsetengahpk1.jpeg'),
(49, 'SAMSUNG', 'SAMSUNG 1 PK', 'AC', 3599000, 9, 'samsung1pk1.jpeg'),
(50, 'SAMSUNG', 'SAMSUNG 2 PK', 'AC', 4899000, 10, 'samsung2pk1.jpeg'),
(51, 'LG', 'LG 1/2 PK', 'AC', 2350000, 7, 'lgstengahpk1.png'),
(52, 'LG', 'LG 1 PK', 'AC', 3799000, 8, 'lg1pk1.jpeg'),
(54, 'LG', 'LG DUAL', 'AC', 5199000, 11, 'lgdual1.jpeg'),
(55, 'LG', 'LG 2 PK', 'AC', 4780000, 12, 'LG2PK1.jpeg'),
(57, 'XIAOMI TV A2', 'XIAOMI 32 INCH ', 'TELEVISI', 1749300, 3, 'xiomi321.jpeg'),
(58, 'XIAOMI TV A2 FHD', 'XIAOMI 43 INCH ', 'TELEVISI', 1929000, 3, 'xiaomi431.jpeg'),
(59, 'XIAOMI TV A2', 'XIAOMI MI TV 4 55 INCH ', 'TELEVISI', 4900000, 4, 'xiaomi551.jpeg'),
(60, 'SONY 40W650D', 'SONY 40 INCH', 'TELEVISI', 4199000, 3, 'sony401.jpg'),
(61, 'Sony Smart TV X7500H', 'SONY 49 INCH', 'TELEVISI', 7254000, 3, 'sony491.jpg'),
(62, 'Sony Smart TV X8000H', 'SONY 55 INCH', 'TELEVISI', 9549500, 4, 'sony551.jpg'),
(63, 'Sony Smart TV X7500H', 'SONY 65 INCH', 'TELEVISI', 13499000, 1, 'sony651.jpg'),
(64, 'Panasonic TV LED TH-24F305G', 'PANASONIC 24 INCH', 'TELEVISI', 1270000, 5, 'panasonic241.jpg'),
(65, 'Panasonic TH-22D305G', 'PANASONIC 32 INCH', 'TELEVISI', 1878000, 4, 'panasoni321.jpg'),
(66, 'Panasonic TH-43D305G', 'PANASONIC 43 INCH', 'TELEVISI', 2860000, 3, 'panasonic431.jpg'),
(67, 'Panasonic TH-49D305G', 'PANASONIC 49 INCH', 'TELEVISI', 3788000, 3, 'panasonic481.jpg'),
(68, 'PANASONIC TH-50LX650G', 'PANASONIC 50 INCH', 'TELEVISI', 6819000, 4, 'panasonic501.jpg'),
(69, 'Panasonic TH-65LX650G LED 4K TV', 'PANASONIC 65 INCH', 'TELEVISI', 11390000, 3, 'panasonic651.jpg'),
(70, 'Polytron TV LED PLD24T8511', 'POLYTRON 24 INCH', 'TELEVISI', 1150000, 5, 'polytron241.jpg'),
(71, 'POLYTRON Cinemax TV LED PLD 32TV0755', 'POLYTRON 32 INCH', 'TELEVISI', 1604000, 3, 'polytron321.jpg'),
(72, 'POLYTRON Cinemax PLD 43TS153 LED', 'POLYTRON 43 INCH', 'TELEVISI', 3450000, 4, 'polytron431.jpg'),
(73, 'POLYTRON Cinemax Soundbar PLD 50BV8758 LED TV', 'POLYTRON 50 INCH', 'TELEVISI', 4172000, 3, 'polytron501.jpg'),
(74, 'Samsung UA32T4500', 'SAMSUNG 32 INCH', 'TELEVISI', 1830000, 3, 'samsung321.jpeg'),
(75, ' Samsung TV N5001', 'SAMSUNG TV 43 INCH', 'TELEVISI', 2544000, 4, 'samsung431.jpeg'),
(76, 'Samsung Crystal UHD BU8500', 'SAMSUNG TV 50 INCH', 'TELEVISI', 5995000, 3, 'samsung501.jpeg'),
(77, 'LG 24TK425A', 'LG 24 INCH', 'TELEVISI', 1599000, 4, 'lg241.jpeg'),
(78, 'LG TV LED 32LM635BPTB', 'LG TV 32 INCH', 'TELEVISI', 2099000, 3, 'lg321.jpeg'),
(79, 'LG 43LM5500PTA', 'LG TV 43 INCH', 'TELEVISI', 2900000, 4, 'lg431.jpeg'),
(80, 'LG NanoCell NANO80TNA Real 4K TV', 'LG TV 50 INCH', 'TELEVISI', 6290000, 4, 'lg501.jpeg'),
(81, 'Sharp AQUOS 2T-C24DC1i', 'SHARP TV 24 INCH', 'TELEVISI', 1250000, 2, 'sharp24inch1.jpeg'),
(82, 'Sharp TV 2T C32BA1i', 'SHARP TV 32 INCH', 'TELEVISI', 1550000, 2, 'sahrp32inch1.jpeg'),
(83, 'Sharp AQUOS TV LED 2T-C42BG1i', 'SHARP TV 42 INCH', 'TELEVISI', 4050000, 4, 'sharp42inch1.jpeg'),
(84, 'Sharp AQUOS 4T-C50BK1i 4K Ultra-HDR Android TV', 'SHARP TV 50 INCH', 'TELEVISI', 5299000, 5, 'sharp50inch1.jpeg'),
(85, 'Sharp Kulkas SJ-197ND', 'Kulkas 2 pintu 110W', 'KULKAS', 2000000, 3, 'SHARP2PINTUSJ1.jpg'),
(86, 'SHARP 1 PINTU SJ162NHS', 'sharp kulkas 1 pintu 133 Liter ', 'KULKAS', 1749000, 4, 'sharp1pintu1.jpg'),
(87, 'Sharp Kulkas Side by Side SJ-IS60M-SL', 'sharp kulkas 2 pintu 100W', 'KULKAS', 8058000, 2, 'SHARPBLIDE1.jpg'),
(88, 'Kulkas Sharp 2 Pintu Sj 246', 'Kulkas sharp 2 pintu ', 'KULKAS', 3090000, 4, 'kulkassj2461.jpg'),
(89, 'KULKAS MINI BAR SHARP SJ50MBX', 'kulkas mini sharp', 'KULKAS', 1550000, 3, 'sharpkulkasmini1.jpg'),
(90, 'LG Kulkas GN-201CK', 'LG KULKAS 1 PINTU', 'KULKAS', 2088000, 3, 'Lggn1.jpg'),
(91, 'LG Kulkas GN-H702HLHU', 'KULKAS LG 2 PINTU 110W', 'KULKAS', 7999000, 3, 'LGGNH1.jpg'),
(92, 'LG Kulkas GC-C247UGUV', 'LG 2 PINTU 170W', 'KULKAS', 11990000, 4, 'LGGC1.jpg'),
(93, 'LG Kulkas Side by Side GC-X247CKAV', 'LG 2 PINTU INVERTER', 'KULKAS', 18499000, 1, 'LGSIDE1.jpg'),
(94, 'LG Kulkas Side by Side GC-B257SLVL', 'LG KULKAS 2 PINTU INVERTER', 'KULKAS', 11150000, 3, 'LGGCB1.jpg'),
(95, 'LG GN-F392PXAK', 'Kulkas 2 Pintu', 'KULKAS', 6500000, 3, 'LGGNF1.jpg'),
(96, 'Samsung Kulkas RS61R5001M9', 'SAMUNG INVERTER ', 'KULKAS', 11678000, 3, 'SAMSUNGRS1.jpg'),
(97, 'Samsung Kulkas RS62R5041B4', 'SAMSUNG KULKAS INVERTER', 'KULKAS', 13749000, 3, 'SAMSUNGRS21.jpg'),
(98, 'Samsung RS542NCAES', 'SAMSUNG KULKAS INVERTER', 'KULKAS', 8500000, 2, 'SAMSUNGRS51.jpg'),
(99, 'Samsung Kulkas RT29K5032S8', 'SAMSUNG KULKAS INVERTER', 'KULKAS', 4890000, 3, 'SAMSUNGRT1.jpg'),
(100, 'Samsung RT46K6231BS', 'SAMSUNG KULKAS INVERTER', 'KULKAS', 7399000, 4, 'SAMSUNGRT41.jpg'),
(101, 'Kulkas samsung 384L', 'SAMSUNG KULKAS INVERTER', 'KULKAS', 5000000, 3, 'SAMSUNG381.jpg'),
(102, 'Polytron Belleza PRA 15ORX', 'KONSUMSI DAYA 75W', 'KULKAS', 1570000, 3, 'POLYTRONPRA1.jpg'),
(103, 'Polytron Kulkas Mini PRH 51R', 'KONSUMSI DAYA 68W', 'KULKAS', 1318000, 3, 'POLYRTONKULKAMINI1.jpg'),
(104, 'Polytron Belleza Jumbo PRW 23VX ', 'Kulkas 2 Pintu 140W', 'KULKAS', 2650000, 4, 'POLYRTONPRW1.jpg'),
(105, 'Polytron SCN 140', 'KULKAS LG 2 PINTU 180W', 'KULKAS', 2574, 3, 'POLYTRONSCN1.jpg'),
(106, 'Polytron PRM 28QX', 'KONSUMSI DAYA 145W', 'KULKAS', 3198000, 5, 'POLYTRONPRM1.jpg'),
(107, 'Sanyo AQR-D187', 'KONSUMSI DAYA 75W', 'KULKAS', 1499000, 4, 'SANYOAQRD1.jpg'),
(108, 'Sanyo AQR-D50', 'KONSUMSI DAYA 50W', 'KULKAS', 1269000, 4, 'SANYOAGR1.jpg'),
(109, 'SANYO AQUA Kulkas Side By Side IG-655AM', 'KULKAS INVERTER', 'KULKAS', 15499000, 3, 'SANYOAQUA1.jpg'),
(110, ' Sanyo Haier AQR-D270 ', 'Kulkas 2 Pintu', 'KULKAS', 2650000, 4, 'SANYO21.jpg'),
(111, 'Sekai Kipas Angin', 'type  SFN 1616', 'KIPAS ANGIN', 269900, 5, 'SEKAI1.jpg'),
(112, 'Miyako Kipas Angin', 'type  TJR-101', 'KIPAS ANGIN', 317100, 4, 'MIYAKO1.jpg'),
(114, 'Sogo Kipas Angin ', 'type SG-1667', 'KIPAS ANGIN', 145900, 3, 'MIYAKOSG1.jpg'),
(115, 'Cosmos Kipas Angin ', 'type 16-COCN', 'KIPAS ANGIN', 354100, 4, 'COSMOS1.jpg'),
(116, 'Cosmos Kipas Angin', 'type  12-LDA', 'KIPAS ANGIN', 153000, 4, 'COSMOS121.jpg'),
(117, 'Maspion Kipas Angin Berdiri ', 'type EX172S', 'KIPAS ANGIN', 295000, 5, 'MASPIONEX1.jpg'),
(118, 'Maspion ', 'type PW507S', 'KIPAS ANGIN', 500000, 5, 'MASPIONPW1.jpg'),
(119, 'Mitochiba ', 'type MT 1822', 'KIPAS ANGIN', 200000, 4, 'MITOCHIBA1.jpg'),
(120, 'KDK ', 'type WB-40L', 'KIPAS ANGIN', 645000, 4, 'KDK1.jpg'),
(121, 'Maspion ', 'type EX160S', 'KIPAS ANGIN', 285000, 4, 'MIYAKOSG11.jpg'),
(122, 'Sekai ', 'type HFN-1210', 'KIPAS ANGIN', 165500, 5, 'MIYOAKOKLB1.jpg'),
(123, 'Miyako ', 'type KAD-06 Kipas', 'KIPAS ANGIN', 150000, 6, 'MIYOKKAD1.jpg'),
(124, 'LG Mesin Cuci ', 'type P1600RT', 'MESIN CUCI', 2559000, 3, 'lgcuci1.jpg'),
(125, 'Aqua Japan Mesin Cuci', ' QW-780XT', 'MESIN CUCI', 1500000, 4, 'aquacc11.jpg'),
(126, 'Sharp Mesin Cuci ', 'T 65/68 M', 'MESIN CUCI', 1400000, 4, 'saharpcc1.jpg'),
(127, 'Aqua Japan Mesin Cuci', ' AQW-78DD', 'MESIN CUCI', 2100000, 4, 'aquacc2.jpg'),
(128, 'LG  Mesin Cuci', 'FC1207S5W', 'MESIN CUCI', 3899000, 5, 'lgcuci111.jpg'),
(129, 'LG Mesin Cuci ', 'F2514DTGE', 'MESIN CUCI', 11299000, 2, 'lgcuci221.jpg'),
(130, 'LG Mesin Cuci ', 'T2185VS2M', 'MESIN CUCI', 3200000, 4, 'lgtcci1.jpg'),
(131, 'LG Mesin Cuci ', 'T2107VS2M', 'MESIN CUCI', 3124000, 5, 'polytroncci1.jpg'),
(132, 'Polytron Mesin Cuci', ' Primadona Samba PWM 1358', 'MESIN CUCI', 1600000, 4, 'polytroncci2.jpg'),
(133, 'Sanken Mesin Cuci ', 'AW-S831BK', 'MESIN CUCI', 1935000, 5, 'sankencc1.jpg'),
(134, 'Blender Philips', 'TYPE  HR2116', 'BLENDER', 568500, 3, 'philipHR1.jpg'),
(135, 'Philips Series 5000 ', 'TYPE HR2221/00 Inti Blender', 'BLENDER', 462500, 3, 'philips1.jpg'),
(136, 'Niko Blender', 'TYPE  NK-BG4', 'BLENDER', 128500, 3, 'nikoN1.jpg'),
(137, 'Niko Blender ', 'TYPE NK-1731', 'BLENDER', 159500, 3, 'NikoNK1.jpg'),
(138, 'Miyako Blender', 'TYPE  BL-102PL', 'BLENDER', 179900, 3, 'miyakoblender1.jpg'),
(139, 'Cosmos Blenz Blender ', 'TYPE CB-801', 'BLENDER', 318000, 3, 'cosmosB1.jpg'),
(140, 'Magic Com Rice Cooker ', 'TYPE Cosmos 9308', 'MAGIC COM', 379000, 3, 'COSMOSMM1.jpg'),
(141, 'Magic Com Cosmos Harmond ', 'TYPE Crj 6028', 'MAGIC COM', 287000, 2, 'COSMOSHARMOD1.jpg'),
(142, 'Magic Com Cosmos Panci Stainless 2Liter 3In1', 'TYPE  Crj 9308', 'MAGIC COM', 380000, 3, 'COSMOSMAGIC1.jpg'),
(143, 'Magic Com Rice Cooker Miyako', 'MIYAKO MAGIC COM', 'MAGIC COM', 260000, 2, 'MIYAKOMAGIC1.jpg'),
(144, 'Yong Ma Magic Com ', 'TYPE SMC 8017', 'MAGIC COM', 585500, 2, 'YONGMASMC1.jpg'),
(145, 'Yong Ma Magic Com ', 'TYPE YMC 211', 'MAGIC COM', 423000, 3, 'YONGMA1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_invoice`
--

CREATE TABLE `tb_invoice` (
  `id` int(11) NOT NULL,
  `nama` varchar(60) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_invoice`
--

INSERT INTO `tb_invoice` (`id`, `nama`, `alamat`, `tgl_pesan`, `batas_bayar`) VALUES
(8, 'ilham nurhakim', 'PADANG', '2023-10-20 20:43:20', '2023-10-21 20:43:20'),
(9, 'hakim', 'tanah datar', '2023-10-20 20:44:51', '2023-10-21 20:44:51'),
(10, 'ILHAM', 'SUNGAI TARAB', '2023-10-20 20:45:33', '2023-10-21 20:45:33'),
(11, 'ILHAM', 'SUNGAI TARAB', '2023-10-20 20:46:06', '2023-10-21 20:46:06'),
(12, 'hakim', 'PADANG', '2023-10-20 20:46:38', '2023-10-21 20:46:38');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pesanan`
--

CREATE TABLE `tb_pesanan` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(50) NOT NULL,
  `jumlah` int(4) NOT NULL,
  `harga` int(11) NOT NULL,
  `pilihan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pesanan`
--

INSERT INTO `tb_pesanan` (`id`, `id_invoice`, `id_brg`, `nama_brg`, `jumlah`, `harga`, `pilihan`) VALUES
(1, 1, 19, 'AC', 1, 300000, ''),
(2, 1, 20, 'kipas angin', 1, 300000, ''),
(3, 1, 22, 'hp', 2, 5000000, ''),
(4, 1, 24, 'AC', 1, 3000000, ''),
(5, 2, 22, 'hp', 1, 5000000, ''),
(6, 2, 23, 'AC', 1, 2500000, ''),
(7, 3, 19, 'AC', 1, 300000, ''),
(8, 3, 20, 'kipas angin', 1, 300000, ''),
(9, 4, 20, 'kipas angin', 1, 300000, ''),
(10, 5, 22, 'hp', 2, 5000000, ''),
(11, 6, 39, 'AC DAIKIN', 1, 3780000, ''),
(12, 6, 38, 'AC DAIKIN', 1, 2670000, ''),
(13, 6, 37, 'AC SHARP', 1, 4355000, ''),
(14, 7, 26, 'blender', 1, 1200000, ''),
(15, 7, 27, 'magic', 1, 230000, ''),
(16, 7, 31, 'hp', 1, 1300000, ''),
(17, 7, 36, 'AC SHARP', 1, 3450000, ''),
(18, 8, 32, 'AC PANASONIK', 1, 2500000, ''),
(19, 8, 33, 'AC PANASONIK', 1, 3500000, ''),
(20, 9, 32, 'AC PANASONIK', 1, 2500000, ''),
(21, 9, 63, 'Sony Smart TV X7500H', 1, 13499000, ''),
(22, 9, 93, 'LG Kulkas Side by Side GC-X247CKAV', 1, 18499000, ''),
(23, 10, 129, 'LG Mesin Cuci ', 1, 11299000, ''),
(24, 11, 93, 'LG Kulkas Side by Side GC-X247CKAV', 1, 18499000, ''),
(25, 11, 144, 'Yong Ma Magic Com ', 1, 585500, ''),
(26, 12, 116, 'Cosmos Kipas Angin', 1, 153000, '');

--
-- Triggers `tb_pesanan`
--
DELIMITER $$
CREATE TRIGGER `pesanan_penjualan` AFTER INSERT ON `tb_pesanan` FOR EACH ROW BEGIN
	UPDATE tb_barang SET stok = stok-NEW.jumlah
    WHERE id_brg = NEW.id_brg;
    END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `username`, `password`, `role_id`) VALUES
(1, 'admin', 'admin', '0fbd30a58e586ad7b0e3ae2485e81c34', 1),
(4, 'ilham', 'ilham', '0fbd30a58e586ad7b0e3ae2485e81c34', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_brg`);

--
-- Indexes for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_brg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
