-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2017 at 10:13 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sporteventmanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_badmintoncourt`
--

CREATE TABLE IF NOT EXISTS `admin_badmintoncourt` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `eventname` varchar(200) NOT NULL,
  `dateOF` date NOT NULL,
  `timePeriod` varchar(120) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin_badmintoncourt`
--

INSERT INTO `admin_badmintoncourt` (`ID`, `eventname`, `dateOF`, `timePeriod`) VALUES
(1, 'Badminton Practice', '2017-07-19', ' 8.00am-10.00am');

-- --------------------------------------------------------

--
-- Table structure for table `admin_basketballcourt`
--

CREATE TABLE IF NOT EXISTS `admin_basketballcourt` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `eventname` varchar(200) NOT NULL,
  `dateOF` date NOT NULL,
  `timePeriod` varchar(120) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin_basketballcourt`
--

INSERT INTO `admin_basketballcourt` (`ID`, `eventname`, `dateOF`, `timePeriod`) VALUES
(1, 'Basketball Practice', '2017-08-09', ' 8.00am-10.00am');

-- --------------------------------------------------------

--
-- Table structure for table `admin_gym`
--

CREATE TABLE IF NOT EXISTS `admin_gym` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `eventname` varchar(200) NOT NULL,
  `dateOF` date NOT NULL,
  `timePeriod` varchar(120) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin_gym`
--

INSERT INTO `admin_gym` (`ID`, `eventname`, `dateOF`, `timePeriod`) VALUES
(1, 'Karate Practice', '2017-07-28', ' 8.00am-10.00am');

-- --------------------------------------------------------

--
-- Table structure for table `admin_playground`
--

CREATE TABLE IF NOT EXISTS `admin_playground` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `eventname` varchar(200) NOT NULL,
  `dateOF` date NOT NULL,
  `timePeriod` varchar(120) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin_playground`
--

INSERT INTO `admin_playground` (`ID`, `eventname`, `dateOF`, `timePeriod`) VALUES
(1, 'Soccer Practice', '2017-07-21', '8.00am-10.00am');

-- --------------------------------------------------------

--
-- Table structure for table `admin_swimmingpool`
--

CREATE TABLE IF NOT EXISTS `admin_swimmingpool` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `eventname` varchar(200) NOT NULL,
  `dateOF` date NOT NULL,
  `timePeriod` varchar(120) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin_swimmingpool`
--

INSERT INTO `admin_swimmingpool` (`ID`, `eventname`, `dateOF`, `timePeriod`) VALUES
(1, 'Swimming practice', '2017-07-26', '8.00am-10.00am');

-- --------------------------------------------------------

--
-- Table structure for table `admin_tenniscourt`
--

CREATE TABLE IF NOT EXISTS `admin_tenniscourt` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `eventname` varchar(200) NOT NULL,
  `dateOF` date NOT NULL,
  `timePeriod` varchar(120) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin_tenniscourt`
--

INSERT INTO `admin_tenniscourt` (`ID`, `eventname`, `dateOF`, `timePeriod`) VALUES
(1, 'Tennis Practice', '2017-07-21', ' 8.00am-10.00am');

-- --------------------------------------------------------

--
-- Table structure for table `interuniversityevents`
--

CREATE TABLE IF NOT EXISTS `interuniversityevents` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `eventname` varchar(200) NOT NULL,
  `dateOF` date NOT NULL,
  `timeOF` time NOT NULL,
  `venue` varchar(200) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `interuniversityevents`
--

INSERT INTO `interuniversityevents` (`ID`, `eventname`, `dateOF`, `timeOF`, `venue`) VALUES
(18, 'SUSL Basketball', '2017-05-23', '19:00:00', 'Basketball Ground');

-- --------------------------------------------------------

--
-- Table structure for table `universityevents`
--

CREATE TABLE IF NOT EXISTS `universityevents` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `eventname` varchar(200) NOT NULL,
  `dateOF` date NOT NULL,
  `timeOF` time NOT NULL,
  `venue` varchar(200) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `universityevents`
--

INSERT INTO `universityevents` (`ID`, `eventname`, `dateOF`, `timeOF`, `venue`) VALUES
(1, 'Volley Challenge', '2017-07-11', '09:00:00', 'University Ground'),
(2, 'Sabra Challenge', '2017-07-20', '09:30:00', 'Play Ground'),
(3, 'SUSL Cricket', '2017-08-11', '08:30:00', 'Play Ground'),
(4, 'Sabra Swimming', '2017-07-21', '09:00:00', 'Swimming Pool');

-- --------------------------------------------------------

--
-- Table structure for table `update_score`
--

CREATE TABLE IF NOT EXISTS `update_score` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `eventname` varchar(100) NOT NULL,
  `dateOF` date NOT NULL,
  `timeOF` time NOT NULL,
  `venue` varchar(100) NOT NULL,
  `teamname` varchar(100) NOT NULL,
  `score` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `update_score`
--

INSERT INTO `update_score` (`id`, `eventname`, `dateOF`, `timeOF`, `venue`, `teamname`, `score`) VALUES
(1, 'Baskeball', '2017-08-02', '10:00:00', 'Sabra Basketball court', 'Sabra', '25'),
(2, 'Cricket', '2017-08-03', '09:30:00', 'R Preamadasa Ground', 'Sabra', '150/1(over 15)');

-- --------------------------------------------------------

--
-- Table structure for table `user_badmintoncourt`
--

CREATE TABLE IF NOT EXISTS `user_badmintoncourt` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `eventname` varchar(200) NOT NULL,
  `dateOF` date NOT NULL,
  `timePeriod` varchar(120) NOT NULL,
  `userName` varchar(200) NOT NULL,
  `userPost` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user_badmintoncourt`
--

INSERT INTO `user_badmintoncourt` (`ID`, `eventname`, `dateOF`, `timePeriod`, `userName`, `userPost`, `email`) VALUES
(1, 'Badminton Practice', '2017-07-19', '8.00am-10.00am', 'Tharani', 'Badminton Team Leader', 'thara@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user_basketballcourt`
--

CREATE TABLE IF NOT EXISTS `user_basketballcourt` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `eventname` varchar(200) NOT NULL,
  `dateOF` date NOT NULL,
  `timePeriod` varchar(120) NOT NULL,
  `userName` varchar(200) NOT NULL,
  `userPost` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user_basketballcourt`
--

INSERT INTO `user_basketballcourt` (`ID`, `eventname`, `dateOF`, `timePeriod`, `userName`, `userPost`, `email`) VALUES
(1, 'Basketball Practice', '2017-08-09', '8.00am-10.00am', 'Saman', 'Basketball Team Leader', 'saman@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user_gym`
--

CREATE TABLE IF NOT EXISTS `user_gym` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `eventname` varchar(200) NOT NULL,
  `dateOF` date NOT NULL,
  `timePeriod` varchar(120) NOT NULL,
  `userName` varchar(200) NOT NULL,
  `userPost` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user_gym`
--

INSERT INTO `user_gym` (`ID`, `eventname`, `dateOF`, `timePeriod`, `userName`, `userPost`, `email`) VALUES
(1, 'Karate Practice', '2017-07-28', ' 8.00am-10.00am', 'Kamal', 'Karate Team Leader', 'kamal@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user_playground`
--

CREATE TABLE IF NOT EXISTS `user_playground` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `eventname` varchar(200) NOT NULL,
  `dateOF` date NOT NULL,
  `timePeriod` varchar(120) NOT NULL,
  `userName` varchar(200) NOT NULL,
  `userPost` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `user_playground`
--

INSERT INTO `user_playground` (`ID`, `eventname`, `dateOF`, `timePeriod`, `userName`, `userPost`, `email`) VALUES
(1, 'Soccer Practice', '2017-07-21', '8.00am-10.00am', 'Kamal', 'Soccer Team Group Leader', 'kamal@gmail.com'),
(2, 'Baseball Practice', '2017-07-28', '8.00am-10.00am', 'Nimal', 'Baseball Team Group Leader', 'nima@gmail.com'),
(3, 'Karate Practice', '2017-07-28', '8.00am-10.00am', 'Kamal', 'Karate Team Leader', 'kamal@gmail.com'),
(4, 'Karate Practice', '2017-07-28', ' 8.00am-10.00am', 'Kamal', 'Karate Team Leader', 'kamal@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user_swimmingpool`
--

CREATE TABLE IF NOT EXISTS `user_swimmingpool` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `eventname` varchar(200) NOT NULL,
  `dateOF` date NOT NULL,
  `timePeriod` varchar(120) NOT NULL,
  `userName` varchar(200) NOT NULL,
  `userPost` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user_swimmingpool`
--

INSERT INTO `user_swimmingpool` (`ID`, `eventname`, `dateOF`, `timePeriod`, `userName`, `userPost`, `email`) VALUES
(1, 'Swimming practice', '2017-07-26', ' 8.00am-10.00am', 'Amal', 'Swimming Team Captain', 'amal@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user_tenniscourt`
--

CREATE TABLE IF NOT EXISTS `user_tenniscourt` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `eventname` varchar(200) NOT NULL,
  `dateOF` date NOT NULL,
  `timePeriod` varchar(120) NOT NULL,
  `userName` varchar(200) NOT NULL,
  `userPost` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user_tenniscourt`
--

INSERT INTO `user_tenniscourt` (`ID`, `eventname`, `dateOF`, `timePeriod`, `userName`, `userPost`, `email`) VALUES
(1, 'Tennis Practice', '2017-07-21', ' 8.00am-10.00am', 'Lalani', 'Tennis Team Leader', 'lalani@gmail.com');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
