-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2022 at 02:03 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user_information`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments table`
--

CREATE TABLE `comments table` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `comment` varchar(500) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` date NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product table`
--

CREATE TABLE `product table` (
  `id` int(11) NOT NULL,
  `post_title` varchar(200) NOT NULL,
  `post_details` varchar(5000) NOT NULL,
  `post_file` blob NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` date NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user table`
--

CREATE TABLE `user table` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `age` varchar(3) NOT NULL,
  `phone` int(15) NOT NULL,
  `address` varchar(2000) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user table`
--

INSERT INTO `user table` (`id`, `username`, `age`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(1, 'MH RONY', '20', 1608445456, 'Sonatola Puraton Bondor, Sonatola,Bogura', '0000-00-00 00:00:00', '0000-00-00'),
(2, 'Rana', '25', 1879244743, 'Bogura,Rajshahi.', '0000-00-00 00:00:00', '0000-00-00'),
(3, 'Sumita', '18', 1879244743, 'Dhaka, Bangladesh', '2022-05-24 14:01:32', '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments table`
--
ALTER TABLE `comments table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product table`
--
ALTER TABLE `product table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user table`
--
ALTER TABLE `user table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments table`
--
ALTER TABLE `comments table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product table`
--
ALTER TABLE `product table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user table`
--
ALTER TABLE `user table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
