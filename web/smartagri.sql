-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 08, 2022 at 07:51 AM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `smartagri`
--

-- --------------------------------------------------------

--
-- Table structure for table `access`
--

CREATE TABLE `access` (
  `id` int(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `details` varchar(100) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `access`
--

INSERT INTO `access` (`id`, `type`, `name`, `price`, `details`, `image`) VALUES
(1, '', '', '', '', 'Hydrangeas.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `uname` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`uname`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `UserName` varchar(50) NOT NULL,
  `Location` varchar(50) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Answer` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`UserName`, `Location`, `Description`, `Answer`) VALUES
('Sundar', 'trichy', 'how to protect land', 'to build iron wall'),
('Sundar', 'trichy', 'how to protect land', 'hgfyfu'),
('pandiyan', 'trichy', 'test', 'ttttttt'),
('sundar', 'trichy', 'how to check weather condition', 'to see sun tv on 11 am'),
('kathija', 'trichy', 'how to improve wheat growth', 'to give more water'),
('sandhiya', 'villupuram', 'how to improve groundnut growth', 'use an nitrogen'),
('Select', 'trichy', '', ''),
('Select', 'trichy', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `areg`
--

CREATE TABLE `areg` (
  `Name` varchar(50) NOT NULL,
  `Age` varchar(50) NOT NULL,
  `Gender` varchar(50) NOT NULL,
  `MobileNumber` varchar(50) NOT NULL,
  `EmailId` varchar(50) NOT NULL,
  `Education` varchar(50) NOT NULL,
  `Experience` varchar(50) NOT NULL,
  `District` varchar(50) NOT NULL,
  `State` varchar(50) NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `ConfirmPassword` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `areg`
--

INSERT INTO `areg` (`Name`, `Age`, `Gender`, `MobileNumber`, `EmailId`, `Education`, `Experience`, `District`, `State`, `UserName`, `Password`, `ConfirmPassword`) VALUES
('sundar', '29', 'Male', '7904461600', 'sundarv@gmail.com', 'bio tech', '7', 'trichy', 'tamilnadu', 'sundar', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `fertilizer`
--

CREATE TABLE `fertilizer` (
  `CropsName` varchar(50) NOT NULL,
  `DiseaseName` varchar(50) NOT NULL,
  `FertilizerName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fertilizer`
--

INSERT INTO `fertilizer` (`CropsName`, `DiseaseName`, `FertilizerName`) VALUES
('wheat', 'Nebraska', 'nitrate'),
('rice', 'fever', 'gfyf'),
('test', 'testtttt', 'tttt'),
('groundnut', ' Peanut mottle virus', 'nitrogen'),
('test', '675', '7777'),
('testcrop', 'ttest', 'uriya 34kg'),
('paddy', 'light spot', 'sample');

-- --------------------------------------------------------

--
-- Table structure for table `freg`
--

CREATE TABLE `freg` (
  `id` int(20) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Age` varchar(20) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `MobileNumber` varchar(20) NOT NULL,
  `EmailId` varchar(50) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `District` varchar(50) NOT NULL,
  `State` varchar(50) NOT NULL,
  `AadhaarNo` varchar(50) NOT NULL,
  `LandDetails` varchar(50) NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `ConfirmPassword` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `freg`
--

INSERT INTO `freg` (`id`, `Name`, `Age`, `Gender`, `MobileNumber`, `EmailId`, `Address`, `District`, `State`, `AadhaarNo`, `LandDetails`, `UserName`, `Password`, `ConfirmPassword`) VALUES
(1, 'pandiyan', '29', 'Male', '7904461600', 'sundarv@gmail.com', 'trichy', 'yrichy', 'tamilnadu', '123456789123', '2', 'pandiyan', '123', '123');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `details` varchar(100) NOT NULL,
  `price` varchar(20) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `fid` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--


-- --------------------------------------------------------

--
-- Table structure for table `query`
--

CREATE TABLE `query` (
  `username` varchar(250) NOT NULL,
  `advisorname` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL,
  `location` varchar(250) NOT NULL,
  `img` varchar(200) NOT NULL,
  `answer` varchar(250) NOT NULL,
  `status` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `query`
--

INSERT INTO `query` (`username`, `advisorname`, `description`, `location`, `img`, `answer`, `status`) VALUES
('pandiyan', 'sundar', 'crop information', 'trichy', 'Hydrangeas.jpg', 'sample', '1');

-- --------------------------------------------------------

--
-- Table structure for table `scrops`
--

CREATE TABLE `scrops` (
  `SeasonName` varchar(50) NOT NULL,
  `CropsName` varchar(50) NOT NULL,
  `SoilType` varchar(50) NOT NULL,
  `ProcessTime` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scrops`
--

INSERT INTO `scrops` (`SeasonName`, `CropsName`, `SoilType`, `ProcessTime`) VALUES
('SummerSeason', 'wheat', 'alluvial soil', '4 months'),
('SummerSeason', 'wheat', 'black soil', '6month'),
('WinterSeason', 'test', 'test', '4 Month'),
('RainySeason', 'groundnut', 'redsoil', '5months'),
('WinterSeason', 'sugarcane', 'blacksoil', '6 months'),
('RainySeason', 'test', 'test', '3 month'),
('SummerSeason', 'testcrop', 'normalsoil', '4 month'),
('SummerSeason', 'wheet', 'testing', '6months'),
('SummerSeason', 'paddy', 'all soil', '120'),
('SummerSeason', 'paddy 65', 'all soil', '120 days');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(20) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Age` varchar(20) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `MobileNumber` varchar(20) NOT NULL,
  `EmailId` varchar(50) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `District` varchar(50) NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `ConfirmPassword` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `Name`, `Age`, `Gender`, `MobileNumber`, `EmailId`, `Address`, `District`, `UserName`, `Password`, `ConfirmPassword`) VALUES
(1, 'pandiyan', '55', 'Male', '7904461600', 'sundarv06@gmail.com', 'trichy', 'trichy', 'admin', '123', '123');
