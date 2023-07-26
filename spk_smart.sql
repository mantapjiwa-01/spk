-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2023 at 06:17 AM
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
-- Database: `spk_smart`
--

-- --------------------------------------------------------

--
-- Table structure for table `smart_admin`
--

CREATE TABLE `smart_admin` (
  `id_admin` int(11) NOT NULL,
  `nama_admin` varchar(80) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `smart_admin`
--

INSERT INTO `smart_admin` (`id_admin`, `nama_admin`, `username`, `password`, `level`) VALUES
(1, 'Administrasi', 'admin', '21232f297a57a5a743894a0e4a801fc3', 1),
(2, 'Pengguna', 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 2);

-- --------------------------------------------------------

--
-- Table structure for table `smart_alternatif`
--

CREATE TABLE `smart_alternatif` (
  `id_alternatif` int(11) NOT NULL,
  `nama_alternatif` varchar(45) NOT NULL,
  `nilai_utility` double NOT NULL,
  `hasil_alternatif` double NOT NULL,
  `ket_alternatif` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `smart_alternatif`
--

INSERT INTO `smart_alternatif` (`id_alternatif`, `nama_alternatif`, `nilai_utility`, `hasil_alternatif`, `ket_alternatif`) VALUES
(9, 'Nurpaidah, S.Pd', 0, 0, 'Tidak Bagus'),
(11, 'Dhena Aulia Pasha, S.Pd', 0, 0, 'Tidak Bagus'),
(12, 'Harry Mulyanto, S.Pd', 0, 0, 'Tidak Bagus'),
(13, 'Nuning Susilowati, S.Pd', 0, 0, 'Tidak Bagus');

-- --------------------------------------------------------

--
-- Table structure for table `smart_alternatif_kriteria`
--

CREATE TABLE `smart_alternatif_kriteria` (
  `id_alternatif` int(11) NOT NULL,
  `periode` int(4) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `nama_siswa` varchar(50) NOT NULL,
  `nilai_alternatif_kriteria` double NOT NULL,
  `bobot_alternatif_kriteria` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `smart_kriteria`
--

CREATE TABLE `smart_kriteria` (
  `id_kriteria` int(11) NOT NULL,
  `nama_kriteria` varchar(45) NOT NULL,
  `bobot_kriteria` double NOT NULL,
  `min` int(11) NOT NULL,
  `max` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `smart_kriteria`
--

INSERT INTO `smart_kriteria` (`id_kriteria`, `nama_kriteria`, `bobot_kriteria`, `min`, `max`) VALUES
(20, 'Responsive', 0.25, 0, 0),
(21, 'Emphaty', 0.2, 0, 0),
(22, 'Reability', 0.15, 0, 0),
(23, 'Assurance', 0.25, 0, 0),
(24, 'Tangibles', 0.15, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `smart_siswa`
--

CREATE TABLE `smart_siswa` (
  `id_siswa` int(11) NOT NULL,
  `nama_siswa` varchar(50) NOT NULL,
  `nisn` varchar(15) NOT NULL,
  `kelas` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `smart_siswa`
--

INSERT INTO `smart_siswa` (`id_siswa`, `nama_siswa`, `nisn`, `kelas`) VALUES
(20, 'Melisa Khalid', '0076912369', '11 IPA 2'),
(21, 'Bunga Dwi Rahayu', '0078472964', '11 IPS 4'),
(22, 'Wulan Tri Hutami', '00774829572', '11 IPA 4'),
(23, 'Tegar Putra Utama', '0076357294', '10 IPA 2');

-- --------------------------------------------------------

--
-- Table structure for table `smart_sub_kriteria`
--

CREATE TABLE `smart_sub_kriteria` (
  `id_sub_kriteria` int(11) NOT NULL,
  `nama_sub_kriteria` varchar(45) NOT NULL,
  `nilai_sub_kriteria` double NOT NULL,
  `id_kriteria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `smart_sub_kriteria`
--

INSERT INTO `smart_sub_kriteria` (`id_sub_kriteria`, `nama_sub_kriteria`, `nilai_sub_kriteria`, `id_kriteria`) VALUES
(39, 'Sangat Baik', 100, 18),
(40, 'Baik', 80, 18),
(41, 'Sangat Baik', 100, 19),
(42, 'Baik', 80, 19),
(43, 'Sangat Baik', 100, 20),
(44, 'Baik', 80, 20),
(45, 'Sangat Baik', 100, 21),
(46, 'Baik', 80, 21),
(47, 'Sangat Baik', 100, 22),
(48, 'Baik', 80, 22),
(49, 'Cukup ', 60, 18),
(50, 'Kurang ', 40, 18),
(51, 'Sangat Kurang', 0, 18),
(52, 'Cukup ', 60, 19),
(53, 'Kurang ', 40, 19),
(54, 'Sangat Kurang', 0, 19),
(55, 'Cukup ', 60, 20),
(56, 'Kurang ', 40, 20),
(57, 'Sangat Kurang', 0, 20),
(58, 'Cukup ', 60, 21),
(59, 'Kurang ', 40, 0),
(60, 'Kurang ', 40, 21),
(61, 'Sangat Kurang', 0, 21),
(62, 'Cukup ', 60, 22),
(63, 'Kurang ', 40, 22),
(64, 'Sangat Kurang', 0, 22),
(65, 'Sangat Baik', 100, 23),
(66, 'Baik', 80, 23),
(67, 'Cukup ', 60, 23),
(68, 'Kurang ', 40, 23),
(69, 'Sangat Kurang', 0, 23),
(70, 'Sangat Baik', 100, 24),
(71, 'Baik', 80, 24),
(72, 'Cukup ', 60, 24),
(73, 'Kurang ', 40, 24),
(74, 'Sangat Kurang', 0, 24);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `smart_admin`
--
ALTER TABLE `smart_admin`
  ADD PRIMARY KEY (`id_admin`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `smart_alternatif`
--
ALTER TABLE `smart_alternatif`
  ADD PRIMARY KEY (`id_alternatif`);

--
-- Indexes for table `smart_alternatif_kriteria`
--
ALTER TABLE `smart_alternatif_kriteria`
  ADD PRIMARY KEY (`id_kriteria`),
  ADD UNIQUE KEY `id_alternatif` (`id_alternatif`),
  ADD UNIQUE KEY `id_kriteria` (`id_kriteria`);

--
-- Indexes for table `smart_kriteria`
--
ALTER TABLE `smart_kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indexes for table `smart_siswa`
--
ALTER TABLE `smart_siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `smart_sub_kriteria`
--
ALTER TABLE `smart_sub_kriteria`
  ADD PRIMARY KEY (`id_sub_kriteria`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `smart_admin`
--
ALTER TABLE `smart_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `smart_alternatif`
--
ALTER TABLE `smart_alternatif`
  MODIFY `id_alternatif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `smart_kriteria`
--
ALTER TABLE `smart_kriteria`
  MODIFY `id_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `smart_siswa`
--
ALTER TABLE `smart_siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `smart_sub_kriteria`
--
ALTER TABLE `smart_sub_kriteria`
  MODIFY `id_sub_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
