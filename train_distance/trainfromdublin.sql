-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2014 at 10:14 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `trainfromdublin`
--

-- --------------------------------------------------------

--
-- Table structure for table `dublinto`
--

CREATE TABLE IF NOT EXISTS `dublinto` (
  `Destination` varchar(15) NOT NULL,
  `Distance` varchar(15) NOT NULL,
  `Time` varchar(15) NOT NULL,
  `Station` varchar(15) NOT NULL,
  PRIMARY KEY (`Destination`),
  UNIQUE KEY `Distance` (`Distance`,`Time`,`Station`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dublinto`
--

INSERT INTO `dublinto` (`Destination`, `Distance`, `Time`, `Station`) VALUES
('Limerick', '190km', '2.23hrs', 'Hueston'),
('Galway', '200km', '2.25hrs', 'Hueston'),
('Sligo', '208km', '2.30hrs', 'Connolly'),
('Cork', '253km', '2.40hrs', 'Hueston');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
