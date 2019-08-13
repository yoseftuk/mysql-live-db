-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 13, 2019 at 02:25 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yoos_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `description` text COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`) VALUES
(1, 'demo_title 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam bibendum tristique mauris, lobortis sagittis eros vehicula finibus. Fusce purus lacus, rhoncus sit amet feugiat ac, tincidunt in felis. Morbi suscipit eu ex non malesuada. Nunc volutpat purus enim, quis efficitur massa porta at. Proin id lacus sagittis, rhoncus quam at, gravida mi. Suspendisse consectetur, mauris a convallis dapibus, lacus libero dapibus libero, sit amet fermentum eros turpis non neque. Phasellus at odio quam.'),
(10, 'demo_title_4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam bibendum tristique mauris, lobortis sagittis eros vehicula finibus. Fusce purus lacus, rhoncus sit amet feugiat ac, tincidunt in felis. Morbi suscipit eu ex non malesuada. Nunc volutpat purus enim, quis efficitur massa porta at. Proin id lacus sagittis, rhoncus quam at, gravida mi. Suspendisse consectetur, mauris a convallis dapibus, lacus libero dapibus libero, sit amet fermentum eros turpis non neque. Phasellus at odio quam.'),
(9, 'demo_title 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam bibendum tristique mauris, lobortis sagittis eros vehicula finibus. Fusce purus lacus, rhoncus sit amet feugiat ac, tincidunt in felis. Morbi suscipit eu ex non malesuada. Nunc volutpat purus enim, quis efficitur massa porta at. Proin id lacus sagittis, rhoncus quam at, gravida mi. Suspendisse consectetur, mauris a convallis dapibus, lacus libero dapibus libero, sit amet fermentum eros turpis non neque. Phasellus at odio quam.'),
(8, 'demo_title 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam bibendum tristique mauris, lobortis sagittis eros vehicula finibus. Fusce purus lacus, rhoncus sit amet feugiat ac, tincidunt in felis. Morbi suscipit eu ex non malesuada. Nunc volutpat purus enim, quis efficitur massa porta at. Proin id lacus sagittis, rhoncus quam at, gravida mi. Suspendisse consectetur, mauris a convallis dapibus, lacus libero dapibus libero, sit amet fermentum eros turpis non neque. Phasellus at odio quam.');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
