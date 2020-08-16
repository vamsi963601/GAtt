-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 21, 2020 at 10:51 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `GAtt`
--

-- --------------------------------------------------------

--
-- Table structure for table `time_table`
--

CREATE TABLE `time_table` (
  `id` int(11) NOT NULL,
  `course_id` varchar(10) NOT NULL,
  `sec` varchar(10) NOT NULL,
  `branch` varchar(10) NOT NULL,
  `sem` varchar(5) NOT NULL,
  `subj` varchar(150) NOT NULL,
  `user_id` varchar(10) NOT NULL,
  `day` varchar(11) NOT NULL,
  `sessions` varchar(25) NOT NULL,
  `year` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `time_table`
--

INSERT INTO `time_table` (`id`, `course_id`, `sec`, `branch`, `sem`, `subj`, `user_id`, `day`, `sessions`, `year`) VALUES
(1, 'ECS492', 'I', 'CSE', '8', 'Comprehensive Viva', '120005', 'Monday', '09:00 to 10:00', '2016-2017'),
(2, 'ECS492', 'I', 'CSE', '8', 'Comprehensive Viva', '120005', 'Monday', '10:00 to 11:00', '2016-2017'),
(3, 'ECS492', 'I', 'CSE', '8', 'Comprehensive Viva', '120005', 'Monday', '11:00 to 12:00', '2016-2017'),
(4, 'ECS302', 'I', 'CSE', '6', 'Artificial Intelligence', '120005', 'Monday', '14:30 to 15:30', '2017-2018'),
(5, 'ECS302', 'E', 'CSE', '6', 'Artificial Intelligence', '120005', 'Tuesday', '09:00 to 10:00', '2017-2018'),
(6, 'EID224', 'C', 'CSE', '4', 'Operating Systems Laboratory', '120005', 'Tuesday', '13:30 to 14:30', '2018-2019'),
(7, 'EID224', 'C', 'CSE', '4', 'Operating Systems Laboratory', '120005', 'Tuesday', '14:30 to 15:30', '2018-2019'),
(8, 'EID224', 'C', 'CSE', '4', 'Operating Systems Laboratory', '120005', 'Tuesday', '15:30 to 16:30', '2018-2019'),
(9, 'ECS302', 'I', 'CSE', '6', 'Artificial Intelligence', '120005', 'Wednesday', '09:00 to 10:00', '2017-2018'),
(10, 'ECS302', 'E', 'CSE', '6', 'Artificial Intelligence', '120005', 'Wednesday', '11:00 to 12:00', '2017-2018'),
(11, 'ECS302', 'E', 'CSE', '6', 'Artificial Intelligence', '120005', 'Wednesday', '15:30 to 16:30', '2017-2018'),
(12, 'ECS302', 'I', 'CSE', '6', 'Artificial Intelligence', '120005', 'Thursday', '10:00 to 11:00', '2017-2018'),
(13, 'ECS302', 'I', 'CSE', '6', 'Artificial Intelligence', '120005', 'Friday', '09:00 to 10:00', '2017-2018'),
(14, 'EID222', 'K', 'CSE', '4', 'Programming with JAVA Laboratory', '120005', 'Friday', '13:30 to 14:30', '2018-2019'),
(15, 'EID222', 'K', 'CSE', '4', 'Programming with JAVA Laboratory', '120005', 'Friday', '14:30 to 15:30', '2018-2019'),
(16, 'EID222', 'K', 'CSE', '4', 'Programming with JAVA Laboratory', '120005', 'Friday', '15:30 to 16:30', '2018-2019'),
(17, 'ECS302', 'E', 'CSE', '6', 'Artificial Intelligence', '120005', 'Saturday', '11:00 to 12:00', '2017-2018');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `user_id` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `first_name`, `last_name`, `user_id`, `password`) VALUES
(1, 'sample@gmail.com', 'Jhon', 'Guttonberg', '120005', 'ghs@2130');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `time_table`
--
ALTER TABLE `time_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `time_table`
--
ALTER TABLE `time_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
