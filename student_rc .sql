-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2023 at 05:48 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_rc`
--

-- --------------------------------------------------------

--
-- Table structure for table `cr_inf`
--

CREATE TABLE `cr_inf` (
  `cr_id` int(10) NOT NULL,
  `cr_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `cr_inf`
--

INSERT INTO `cr_inf` (`cr_id`, `cr_name`) VALUES
(1, 'DCSE'),
(2, 'BBA'),
(3, 'B.Tech'),
(4, 'General');

-- --------------------------------------------------------

--
-- Table structure for table `std_inf`
--

CREATE TABLE `std_inf` (
  `std_id` int(11) NOT NULL,
  `std_name` varchar(100) DEFAULT NULL,
  `std_roll` int(50) DEFAULT NULL,
  `std_gender` varchar(10) DEFAULT NULL,
  `std_city` varchar(20) DEFAULT NULL,
  `std_cr` int(10) DEFAULT NULL,
  `response_code` int(11) DEFAULT NULL,
  `response_desc` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `std_inf`
--

INSERT INTO `std_inf` (`std_id`, `std_name`, `std_roll`, `std_gender`, `std_city`, `std_cr`, `response_code`, `response_desc`) VALUES
(1, 'Snehasish Suter', 47, 'M', 'Jagaddal', 1, 1, 'Daily Attendance'),
(2, 'Bidisha Dey', 16, 'F', 'Barasat', 1, 1, 'Daily Attendance'),
(3, 'Rajesh Biswas', 23, 'M', 'Duttapulia', 2, 0, 'Irregular Attendance'),
(4, 'Sarathi Karmaker', 20, 'M', 'Kankinara', 3, 0, 'Irregular Attendance'),
(5, 'Soubhik Dutta', 40, 'M', 'Jagaddal', 4, 2, 'On NYC Period'),
(6, 'Rikta Das', 31, 'M', 'Madnipur', 1, 1, 'Daily Attendance');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cr_inf`
--
ALTER TABLE `cr_inf`
  ADD PRIMARY KEY (`cr_id`);

--
-- Indexes for table `std_inf`
--
ALTER TABLE `std_inf`
  ADD PRIMARY KEY (`std_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cr_inf`
--
ALTER TABLE `cr_inf`
  MODIFY `cr_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `std_inf`
--
ALTER TABLE `std_inf`
  MODIFY `std_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
