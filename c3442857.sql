-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 11, 2016 at 05:42 PM
-- Server version: 5.0.67-log
-- PHP Version: 5.3.21

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `c3442857`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE IF NOT EXISTS `administrator` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`id`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(10, 'dp', 'deepanjan01');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `CustomerID` int(8) NOT NULL auto_increment,
  `FirstName` varchar(20) collate latin1_general_ci NOT NULL,
  `LastName` varchar(20) collate latin1_general_ci NOT NULL,
  `Email` varchar(50) collate latin1_general_ci NOT NULL,
  `Password` varchar(10) collate latin1_general_ci NOT NULL,
  `Gender` text collate latin1_general_ci,
  `Age` int(3) default NULL,
  PRIMARY KEY  (`CustomerID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CustomerID`, `FirstName`, `LastName`, `Email`, `Password`, `Gender`, `Age`) VALUES
(1, 'Jenny', 'Brown', 'j.brown@leedsmet.ac.uk', 'brown01', 'F', 23),
(2, 'Ray', 'Green', 'r.green@leedsmet.ac.uk', 'green01', 'M', 19),
(3, 'Arjun', 'Patel', 'a.patel@leedsmet.ac.uk', 'patel01', 'M', 20),
(4, 'Steve', 'Rich', 's.rich@leedsmet.ac.uk', 'rich01', 'M', 27),
(5, 'Amy', 'Park', 'a.park@leedsmet.ac.uk', 'park01', 'F', 20),
(6, 'Rehana', 'Hashmi', 'r.hashmi@leedsmet.ac.uk', 'hashmi01', 'F', 22);

-- --------------------------------------------------------

--
-- Table structure for table `Customer`
--

CREATE TABLE IF NOT EXISTS `Customer` (
  `CustomerID` int(8) NOT NULL COMMENT 'Checked',
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(10) NOT NULL,
  `Gender` varchar(1) NOT NULL,
  `Age` int(3) NOT NULL,
  PRIMARY KEY  (`CustomerID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Customer`
--

INSERT INTO `Customer` (`CustomerID`, `FirstName`, `LastName`, `Email`, `Password`, `Gender`, `Age`) VALUES
(1, 'Jenny', 'Brown', 'j.brown@leedsmet.ac.uk', 'brown01', 'F', 23),
(2, 'Ray', 'Green', 'r.green@leedsmet.ac.uk', 'green01', 'M', 19),
(3, 'Arjun', 'Patel', 'a.patel@leedsmet.ac.uk', 'patel01', 'M', 20),
(4, 'Steve', 'Rich', 's.rich@leedsmet.ac.uk', 'rich01', 'M', 27),
(5, 'Amy', 'Park', 'a.park@leedsmet.ac.uk', 'park01', 'F', 20),
(6, 'Rehana', 'Hashmi', 'r.hashmi@leedsmet.ac.uk', 'hashmi01', 'F', 22);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `eventID` int(8) NOT NULL,
  `eventName` varchar(50) NOT NULL,
  `eventLocation` varchar(50) NOT NULL,
  PRIMARY KEY  (`eventID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`eventID`, `eventName`, `eventLocation`) VALUES
(1, 'Exciting', 'Stadium'),
(2, 'Boring', 'Stadium'),
(3, 'Night Time', 'Stadium'),
(4, 'Day Time', 'Stadium'),
(5, 'Inside', 'Arena'),
(6, 'Loud', 'Arena'),
(7, 'Standing', 'Arena'),
(8, 'Sitting', 'Arena'),
(9, 'Acting', 'Theatre'),
(10, 'Singing', 'Theatre'),
(11, 'Dancing', 'Theatre'),
(12, 'Joking', 'Theatre');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(40) default NULL,
  `price` float NOT NULL,
  `description` varchar(500) NOT NULL,
  `imagename` varchar(25) NOT NULL,
  `category` varchar(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `shipping` float NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `description`, `imagename`, `category`, `quantity`, `shipping`) VALUES
(1, 'Epiphone Explorer', 249.99, '6 String electric guitar.', 'epiphone explorer.jpg', 'electric-guitar', 10, 5.99),
(2, 'Gibson Les Paul Special Edition', 149.99, '6 String electric guitar retro look', 'les-paul-special.jpg', 'electric-guitar', 4, 9.99),
(3, 'Gibson SG Special ', 699.99, '6 String electric guitar. Gibson classic edition.', 'gibson-sg-special.jpg', 'electric-guitar', 9, 9.99),
(4, 'Ibanez Joe Satriani Signature Edition', 459.99, '6 String electric guitar. Joe Satriani Special edition.', 'ibanez-joe-satriani.jpg', 'electric-guitar', 8, 9.99),
(5, 'Gibson Les Paul', 639.99, '6 String electric guitar. Original Gibson Les Paul with retro look.', 'les-paul.jpg', 'electric-guitar', 7, 9.99),
(6, 'Ibanez GS180 4 String', 149.99, 'Ibanez 4 string bass guitar double pickup', 'ibanez4string.jpg', 'bass-guitar', 15, 7.99),
(7, 'Harlem Warlock Bass', 99.99, 'Harlem 4-String bass guitar in Warlock design.', 'harlem-bass.jpg', 'bass-guitar', 10, 3.99),
(8, 'Warwick Corvette', 2249.99, 'Warwick Corvette 4 string bass with natural oil finish', 'warwick-corvette.jpg', 'bass-guitar', 12, 10.99),
(9, 'Warwick Streamer', 3449.99, 'Warwick streamer stage II 5-string bass with nirvana black OFC', 'warwick-streamer.jpg', 'bass-guitar', 8, 10.99),
(10, 'Oregon 6 String', 249.99, 'Oregon 6 String Neck Thru Bass Guitar with natural details', 'oregon-6string.jpg', 'bass-guitar', 10, 6.99),
(11, 'Washburn WD7S', 169.99, '6 String Acoustic Guitar with Antique Tobacco Details', 'washburn-wd7s.jpg', 'acoustic-guitar', 15, 7.99),
(12, 'Yamaha F310', 89.99, '6 String Acoustic guitar with Rosewood Bridge and Fingerbrad.', 'yamaha-f310.jpg', 'acoustic-guitar', 10, 3.99),
(13, 'Fender CD 60 Sunburst', 104.95, 'Fender Acoustic Guitar with Sunburst Details.', 'fender-cd-60.jpg', 'acoustic-guitar', 9, 4.99),
(14, 'Fender CD 60 Black', 104.95, 'Fender 6 string acoustic guitar in black.', 'fender-cd-60-black.jpg', 'acoustic-guitar', 15, 4.99),
(15, 'Ibanez PF 15 Dreadnought', 109.99, 'Ibanez Dreadnought Acoustic Guitar with light violin sunburst', 'ibanez-dreadnought.jpg', 'acoustic-guitar', 11, 7.99),
(16, 'Mapez Tornado III Black', 249.99, 'Mapex Tornado III 22&quot; rock fusion drum kit, black', 'mapex-tornado-black.jpg', 'drums', 5, 10.99),
(17, 'GD-2 Drum Kit', 229.99, 'GD-2 Beginner Drum Kit in Wine Red', 'gd2-drums.jpg', 'drums', 7, 9.99),
(18, 'Mapex Tornado III Burgundy', 279.99, 'Mapex Tornado III 22&quot; Rock  Drum Kit, Burgundy with extra crash', 'mapex-tornado.jpg', 'drums', 12, 10.99),
(19, 'Pearl Roadshow', 359.99, 'Pearl Roadshow 5 piece compact drum kit , Bronze metallic', 'pearl-roadshow.jpg', 'drums', 6, 10.99),
(20, 'Pearl Export EXX', 599.99, 'Pearl export EEX 22&quot; rock drum kit, Blue Sparkle with Sabian Cymbals', 'pearl-export.jpg', 'drums', 3, 12.99),
(21, 'Marshall MG15CFR', 85.99, 'Marshall MG15CFR Carbon Fibre 15W Guitar Combo with Reverb Details', 'marshall-carbon.jpg', 'amplifier', 17, 3.99),
(22, 'Roland CUBE', 115.99, 'Roland CUBE Lite Monitor Amplifier', 'roland-cube.jpg', 'amplifier', 7, 4.99),
(23, 'Fender Champion', 200.99, 'Fender Champion 100 Amplifier with Effects', 'fender-champion.jpg', 'amplifier', 10, 4.99),
(24, 'Vox AC15VR', 259.99, 'Vox AC15VR Valve Reactor Guitar Amplifier', 'vox-amp.jpg', 'amplifier', 3, 259.99),
(25, 'Marshall 2245THW', 1999.99, 'Marshall 2245THW Handwired 30 Watt Valve Guitar Amp Head w/ Tremolo Details', 'marshall-handwired.jpg', 'amplifier', 3, 12.99);

-- --------------------------------------------------------

--
-- Table structure for table `testproducts`
--

CREATE TABLE IF NOT EXISTS `testproducts` (
  `ProductID` int(8) NOT NULL auto_increment,
  `ProductName` varchar(50) NOT NULL,
  `ProductPrice` float NOT NULL,
  `ImageName` varchar(15) NOT NULL,
  PRIMARY KEY  (`ProductID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `testproducts`
--

INSERT INTO `testproducts` (`ProductID`, `ProductName`, `ProductPrice`, `ImageName`) VALUES
(1, 'Cap', 3.99, 'caps.jpg'),
(2, 'Mugs', 2.99, 'mugs.jpg'),
(3, 'T-Shirt', 10.99, 't-shirt.jpg'),
(4, 'Book', 6.99, 'book.jpg'),
(5, 'Calendar', 11.99, 'calendar.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `userID` int(10) NOT NULL auto_increment,
  `firstname` varchar(15) NOT NULL,
  `lastname` varchar(15) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `HouseNumber` float NOT NULL,
  `StreetName` varchar(20) NOT NULL,
  `MobileNumber` varchar(12) NOT NULL,
  `Postcode` varchar(9) NOT NULL,
  PRIMARY KEY  (`userID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=70 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `firstname`, `lastname`, `password`, `email`, `HouseNumber`, `StreetName`, `MobileNumber`, `Postcode`) VALUES
(3, 'Deepanjan', 'Paul', 'aa6024fa27f44b74cf11f08ffaeb1d56', 'deepanjan@gmail.com', 15, 'Woodhouse Flats', '07951112511', 'LS29EP'),
(15, 'john', 'cena', 'e19d5cd5af0378da05f63f891c7467af', 'johncena@gmail.com', 12, 'Street', '0789456123', 'AB01CD'),
(67, 'johnny', 'depp', '197978e0d56c9824f69a32535e1b65f5', 'jd@gmail.com', 45, 'Street', '0789456123', 'AB12BV6'),
(68, 'johnny', 'depp', '197978e0d56c9824f69a32535e1b65f5', 'jd@gmail.com', 45, 'Street', '0789456123', 'AB12BV6'),
(69, 'sherlock', 'holmes', '174f741e3d18d76bed94a443794c05bb', 'sherlock@yahoo.com', 221, 'Baker Street', '0789456123', 'NW16XE');
