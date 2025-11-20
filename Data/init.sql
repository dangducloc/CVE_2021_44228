-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2025 at 09:05 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pentest_final`
--

-- --------------------------------------------------------

--
-- Table structure for table `imgs`
--

CREATE TABLE `imgs` (
  `id` int(11) NOT NULL,
  `name_by_user` text NOT NULL,
  `name_on_server` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `imgs`
--

INSERT INTO `imgs` (`id`, `name_by_user`, `name_on_server`) VALUES
(1, 'normal_is_boring', '0adc0220976e5599bfad5322a3b23f8e.jpg'),
(2, 'just_duck', '0ff2756ca177662da9d0b31dc9d2296b.jpg'),
(3, 'no_you_can\'t', 'de0683054b8e0244eeea37931c71ac99.jpg'),
(4, 'after_a_day', 'b0dda791f69a23f669d8de39a478dc2e.jpg'),
(5, 'test_upload', 'b896a31c226998343b68d835dca77249.png'),
(6, 'druk_guy', '5fb651086bdbff75457b01c5d9761deb.jpg'),
(7, 'omni_man', '0da44377fc2fdfe97d3eae781b89e0bd.jpg'),
(8, 'pink_girl', '859b7487653efce062d0f3a2d7d8b624.jpg'),
(9, 'that\'s_what_she_said', '5fcc6bbf83799fa9f12f4528e3227979.png'),
(10, 'just_flower', '26fd54dd24be859847ab856d3b4150f8.jpg'),
(11, 'i_wanna_hang_myself', '1af4f07ae6cf0d5f4f5a5e61fedee632.jpg'),
(12, 'thurst_2009', '06b963d1f76d0a7b33baaea6f1891d8b.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `imgs`
--
ALTER TABLE `imgs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_on_server` (`name_on_server`) USING HASH;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `imgs`
--
ALTER TABLE `imgs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
