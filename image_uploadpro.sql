-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2017 at 10:12 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `image_uploadpro`
--

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `image_text` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `dateOF` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `image`, `image_text`, `title`, `dateOF`) VALUES
(1, '19990470_2072250649467864_5743846193287535691_n.jpg', 'Some stills of the ''''Sabra Sport Relay Carnival 2k17'''' which was organized by the Students'' Union, Faculty of Applied Science , Department of Sport Sciences and Physical Education, Sabaragamuwa University of Sri Lanka held on 15th July 2K17 at Sabaragamuwa University of Sri Lanka.', 'Sabra Sport Relay Carnival 2k17', '2017-07-15'),
(2, '20525549_2097638116929117_4369835694280500352_n.jpg', 'Some stills of the ''''Sabra Taekwondo Grading - July'''' which was organized by the Sports Sub comity, Main Students'' Union, ,Sabaragamuwa University of Sri Lanka held on 28th July 2K17 at Sabaragamuwa University of Sri Lanka.', 'Sabra Taekwondo Grading - July', '2017-07-28');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
