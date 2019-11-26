-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 23, 2019 at 12:29 PM
-- Server version: 5.7.23
-- PHP Version: 7.0.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cryout`
--

-- --------------------------------------------------------

--
-- Table structure for table `fileacomplaint`
--

DROP TABLE IF EXISTS `fileacomplaint`;
CREATE TABLE IF NOT EXISTS `fileacomplaint` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` text NOT NULL,
  `medical` tinyint(1) NOT NULL,
  `police` tinyint(1) NOT NULL,
  `details` varchar(100) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fileacomplaint`
--

INSERT INTO `fileacomplaint` (`id`, `type`, `medical`, `police`, `details`, `name`, `email`,`phone`) VALUES
(1, 'theft', 0, 1,'Someone snatched my chain near SJCE, Mysuru', 'Sheethal H D', 'sheethal@gmail.com','123456789'),
(2, 'assault', 0, 1, 'I have been attacked by some unknown guys in my area(VV puram)', 'Vishal B', 'vishal@gmail.com','12345987'),
(3, 'murder', 0, 1, 'My neighbour Mr.Pratham passed away last week. I suspect he was murdered by his co-worker.', 'Dharvi K S', 'dharvi@gmail.com','142465466');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `name` text NOT NULL,
  `city` text NOT NULL,
  `govtid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`, `city`, `govtid`) VALUES
(1, 'shreya.chandra96@gmail.com', '4a3232c59ecda21ac71bebe3b329bf36', 'shreya', 'delhi', 1234),
(2, 'shreya.chandra96@gmail.com', '4a3232c59ecda21ac71bebe3b329bf36', 'SHREYA', 'DELHI', 1234),
(4, 'spoo@gmail.com', 'cace2267e5f6364de1a9e528338c211e', 'spoo', 'mysuru', 1212);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
