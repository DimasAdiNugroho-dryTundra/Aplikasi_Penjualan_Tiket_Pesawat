-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2023 at 06:31 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aplikasi_penjualan_tiket_pesawat`
--

-- --------------------------------------------------------

--
-- Table structure for table `laporan`
--

CREATE TABLE `laporan` (
  `id_laporan` varchar(10) NOT NULL,
  `id_transaksi` varchar(10) NOT NULL COMMENT 'id_transaksi from transaksi',
  `id_pengguna` varchar(10) NOT NULL,
  `Jumlah` int(10) NOT NULL COMMENT 'jumlah dari keseluruhan pesanan'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `laporan`
--

INSERT INTO `laporan` (`id_laporan`, `id_transaksi`, `id_pengguna`, `Jumlah`) VALUES
('lpr0001', 'trx0001', 'admin0003', 1),
('lpr0002', 'trx0002', 'admin0004', 1),
('lpr0003', 'trx0003', 'admin0002', 2),
('lpr0004', 'trx0004', 'admin0001', 2),
('lpr0005', 'trx0005', 'admin0005', 2);

-- --------------------------------------------------------

--
-- Table structure for table `maskapai`
--

CREATE TABLE `maskapai` (
  `id_maskapai` varchar(10) NOT NULL,
  `nm_maskapai` varchar(50) NOT NULL COMMENT 'nama maskapai',
  `rute` varchar(10) NOT NULL,
  `harga_jual` int(20) NOT NULL,
  `harga_pokok` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `maskapai`
--

INSERT INTO `maskapai` (`id_maskapai`, `nm_maskapai`, `rute`, `harga_jual`, `harga_pokok`) VALUES
('air0001', 'Garuda Airlines', 'BDJ-SINA', 1900000, 1750000),
('air0002', 'Citilink', 'BDJ-SUB', 1200000, 1090000),
('air0003', 'Lion Air', 'UPG-BDJ', 1320000, 1250000),
('air0004', 'Batik Air', 'BDJ-UPG', 1300000, 1215000),
('air0005', 'Super Air Jet', 'DPS-UPG', 1300000, 1200000);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` varchar(10) NOT NULL,
  `nm_pelanggan` varchar(50) NOT NULL COMMENT 'nama pelanggan',
  `jenis_identitas` varchar(10) NOT NULL,
  `no_identitas` varchar(30) NOT NULL,
  `kontak` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nm_pelanggan`, `jenis_identitas`, `no_identitas`, `kontak`) VALUES
('plg0001', 'Argono Pangestu', 'KTP', '6471020811990001', '082148524506'),
('plg0002', 'Rini Rahayu', 'KTP', '6202131612960003', '086546546564'),
('plg0003', 'Jarwa Nainggolan', 'KTP', '6271010506690021', '086692644500'),
('plg0004', 'Zalda Wahyuni', 'KTP', '3175061205030002', '082711829465'),
('plg0005', 'Ulva Susanti', 'Pasport', 'S 215140', '086515435724');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` varchar(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `username`, `password`) VALUES
('admin0001', 'Dimas Adi Nugroho', 'dms123'),
('admin0002', 'Zulfa Hassanah', 'zul103'),
('admin0003', 'Rudi Tamba', 'tambatanhati'),
('admin0004', 'Yessi Andriani', 'yesorno'),
('admin0005', 'Maras Prabowo', 'ri01');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` varchar(10) NOT NULL,
  `tanggal` date NOT NULL,
  `id_pelanggan` varchar(10) NOT NULL,
  `no_tiket` varchar(10) NOT NULL,
  `id_maskapai` varchar(10) NOT NULL,
  `berangkat` date NOT NULL,
  `tiba` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `tanggal`, `id_pelanggan`, `no_tiket`, `id_maskapai`, `berangkat`, `tiba`) VALUES
('trx0001', '2023-10-08', 'plg0001', '0001', 'air0002', '2023-10-09', '2023-10-09'),
('trx0002', '2023-10-09', 'plg0003', '0002', 'air0004', '2023-10-25', '2023-10-25'),
('trx0003', '2023-10-09', 'plg0002', '0003', 'air0003', '2023-10-22', '2023-10-22'),
('trx0004', '2023-10-10', 'plg0005', '0004', 'air0001', '2023-11-01', '2023-11-01'),
('trx0005', '2023-10-10', 'plg0004', '0005', 'air0005', '2023-10-28', '2023-10-28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`id_laporan`),
  ADD KEY `id_transaksi` (`id_transaksi`),
  ADD KEY `id_pengguna` (`id_pengguna`);

--
-- Indexes for table `maskapai`
--
ALTER TABLE `maskapai`
  ADD PRIMARY KEY (`id_maskapai`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_pelanggan` (`id_pelanggan`),
  ADD KEY `id_maskapai` (`id_maskapai`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `laporan`
--
ALTER TABLE `laporan`
  ADD CONSTRAINT `laporan_ibfk_3` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id_transaksi`),
  ADD CONSTRAINT `laporan_ibfk_4` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`id_pengguna`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`),
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`id_maskapai`) REFERENCES `maskapai` (`id_maskapai`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
