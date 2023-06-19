-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Jun 2023 pada 20.40
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_book_store`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `full_name`, `email`, `password`) VALUES
(1, 'Elias', 'eliasfsdev@gmail.com', '$2y$10$Nqq/y251QX2Ccvb1Ax7hUuMqQSkG3yRLCxN2KPdetnSP3oaXVH70a'),
(2, 'Muhammad Aditiya Jihanto', 'aditJ16@te.student.pens.ac.id', '$2y$10$Nqq/y251QX2Ccvb1Ax7hUuMqQSkG3yRLCxN2KPdetnSP3oaXVH70a');

-- --------------------------------------------------------

--
-- Struktur dari tabel `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `authors`
--

INSERT INTO `authors` (`id`, `name`) VALUES
(3, 'Zoyi'),
(4, 'Siglent'),
(5, 'Hewlett packard'),
(6, 'Owon'),
(7, 'BrightEye'),
(8, 'Stanford Research Systems'),
(10, 'Raspberry Pi 3 Model B');

-- --------------------------------------------------------

--
-- Struktur dari tabel `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `cover` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `books`
--

INSERT INTO `books` (`id`, `title`, `author_id`, `description`, `category_id`, `cover`, `file`) VALUES
(5, 'Function generator Siglent SDGS1032X', 4, 'qwertyuiopasdfghjklzxcvbnm', 4, '64763d1097e097.83878914.jpg', '64763d10983a35.22220390.pdf'),
(6, 'Multimeter Digital Zoyi ZT101', 3, 'qwertyuiopasdfghjklzxcvbnm', 3, '64763d9910cc06.63196670.png', '64763d99115412.01065874.pdf'),
(7, 'Spectrum Analyzer HP 8595E', 5, 'Spectrum Analyzer berfungsi untuk mengukur nilai magnitude dengan output sinyal frekuensi dengan rentan frekuensi penuh. Tekan pada tombol Open atau Download untuk mengakses dokumen dan tekan AR atau 3D Model Pengalaman WEB.', 6, '64763e258f7cd2.39710601.jpg', '64763e258fed55.34505877.pdf'),
(8, 'Oscilloscope OWON SDS1022', 6, 'qwertyuiopasdfghjklzxcvbnm', 5, '64763e96905a52.94130192.jpg', '64763e9690a932.21299356.pdf'),
(9, 'BrightEye 57 3G/HD/SD/Analog Test Signal and Sync Pulse Generator', 7, 'qwertyuiopasdfghjklzxcvbnm', 7, '64763fc3527754.08338658.jpg', '64763fc352d1e3.86563675.pdf'),
(10, 'Thermocouple Monitor SR630', 8, 'qwertyuiopasdfghjklzxcvbnm', 8, '64764094f1e712.88553453.jpg', '64764094f259a5.54063319.pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(3, 'Multimeter Digital'),
(4, 'Function Generator'),
(5, 'Oscilloscope'),
(6, 'Spectrum Analyzer'),
(7, 'Sync Generator And Test Signal Generator'),
(8, 'Thermocouple Monitor'),
(10, 'Raspberry Pi');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
