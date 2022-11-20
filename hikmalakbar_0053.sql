-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Nov 2022 pada 13.28
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hikmalakbar_0053`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `lembur0053`
--

CREATE TABLE `lembur0053` (
  `no_lembur` varchar(5) NOT NULL,
  `tgl` datetime NOT NULL,
  `no_pegawai` char(3) NOT NULL,
  `upah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `lembur0053`
--

INSERT INTO `lembur0053` (`no_lembur`, `tgl`, `no_pegawai`, `upah`) VALUES
('LB-01', '2015-05-10 00:00:00', 'P01', 50000),
('LB-02', '2015-05-10 00:00:00', 'P03', 75000),
('LB-03', '2015-06-11 00:00:00', 'P01', 75000),
('LB-04', '2015-06-12 00:00:00', 'P02', 50000),
('LB-05', '2015-07-12 00:00:00', 'P03', 50000),
('LB-06', '2015-07-13 00:00:00', 'P02', 85000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai0053`
--

CREATE TABLE `pegawai0053` (
  `no_pegawai` varchar(3) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `tanggal_lahir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pegawai0053`
--

INSERT INTO `pegawai0053` (`no_pegawai`, `nama`, `tanggal_lahir`) VALUES
('P01', 'Daryanto', '1990-02-22'),
('P02', 'Handini', '1991-05-23'),
('P03', 'Surya', '1980-06-01');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `lembur0053`
--
ALTER TABLE `lembur0053`
  ADD PRIMARY KEY (`no_lembur`),
  ADD KEY `no_pegawai` (`no_pegawai`);

--
-- Indeks untuk tabel `pegawai0053`
--
ALTER TABLE `pegawai0053`
  ADD PRIMARY KEY (`no_pegawai`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `lembur0053`
--
ALTER TABLE `lembur0053`
  ADD CONSTRAINT `lembur0053_ibfk_1` FOREIGN KEY (`no_pegawai`) REFERENCES `pegawai0053` (`no_pegawai`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
