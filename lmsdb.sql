-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2022 at 02:52 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(11) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(15) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `regDate`) VALUES
(1, 'Rabs', 'admin2', 8034436777, 'rabs@gmail.com', 'c84258e9c39059a89ab77d846ddab909', '2019-03-22 07:46:09'),
(2, 'Ameen', 'admin', 8063291667, 'elameen37@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '2020-08-04 21:32:07');

-- --------------------------------------------------------

--
-- Table structure for table `tbllaundryreq`
--

CREATE TABLE `tbllaundryreq` (
  `ID` int(10) NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `DateofLaundry` date DEFAULT NULL,
  `TopWear` varchar(120) DEFAULT NULL,
  `BootomWear` varchar(120) DEFAULT NULL,
  `Kaftan` varchar(120) CHARACTER SET latin1 COLLATE latin1_spanish_ci DEFAULT NULL,
  `WoolenCloth` varchar(120) DEFAULT NULL,
  `Other` varchar(120) DEFAULT NULL,
  `Service` varchar(120) DEFAULT NULL,
  `PickupAddress` varchar(250) DEFAULT NULL,
  `ContactPerson` varchar(120) DEFAULT NULL,
  `Description` varchar(120) DEFAULT NULL,
  `Status` varchar(5) NOT NULL,
  `Othercharges` bigint(20) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbllaundryreq`
--

INSERT INTO `tbllaundryreq` (`ID`, `UserID`, `DateofLaundry`, `TopWear`, `BootomWear`, `Kaftan`, `WoolenCloth`, `Other`, `Service`, `PickupAddress`, `ContactPerson`, `Description`, `Status`, `Othercharges`, `postingDate`) VALUES
(13, 13, '2020-07-24', '5', '3', '0', '4', '5', 'pickupservice', 'address', 'self', 'duvet', '3', 40000, '2020-07-24 20:47:10'),
(15, 12, '2021-10-24', '5', '3', '7', '3', '5', 'pickupservice', 'address', 'self', 'others - Duvet (4), Rug (2)', '3', 32350, '2021-10-24 14:12:12'),
(16, 12, '2021-10-24', '5', '12', '6', '8', '2', 'dropservice', 'Home', 'Self', 'Others - Bed Spread (3), Rug (1)', '3', 15000, '2021-10-24 16:02:12'),
(17, 12, '2021-10-24', '15', '25', '30', '21', '5', 'dropservice', 'Home', 'Self', 'Others - Bed Sheet (3), Rug ', '3', 7200, '2021-10-24 16:47:02'),
(18, 12, '2021-10-31', '7', '3', '9', '1', '6', 'pickupservice', 'Home', 'Self', 'Others - Small Rugs (4), Big Rugs (2)', '3', 16500, '2021-10-31 12:10:14'),
(19, 12, '2022-09-13', '15', '7', '6', '4', '2', 'dropservice', '', 'self', 'Rug (2)', '0', NULL, '2022-09-12 00:37:14');

-- --------------------------------------------------------

--
-- Table structure for table `tblpricelist`
--

CREATE TABLE `tblpricelist` (
  `Id` int(11) NOT NULL,
  `TopWear` varchar(120) DEFAULT NULL,
  `BottomWear` varchar(120) DEFAULT NULL,
  `Woolen` varchar(120) DEFAULT NULL,
  `Kaftan` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpricelist`
--

INSERT INTO `tblpricelist` (`Id`, `TopWear`, `BottomWear`, `Woolen`, `Kaftan`) VALUES
(1, '500 NGN', '450 NGN', '350 NGN', '1000 NGN');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `Id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(15) DEFAULT NULL,
  `Password` varchar(120) NOT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`Id`, `FullName`, `Email`, `MobileNumber`, `Password`, `regDate`) VALUES
(1, 'Sarita', 'sarita@gmail.com', 7897866565, 'f925916e2754e5e03f75dd58a5733251', '2019-03-22 10:41:45'),
(11, 'abc xyz', 'abcxyz@gmail.com', 1234567800, 'f925916e2754e5e03f75dd58a5733251', '2019-03-22 12:14:58'),
(12, 'ameen', 'test@gmail.com', 8063291668, 'cc03e747a6afbbcbf8be7668acfebee5', '2020-07-23 17:44:48'),
(13, 'Salim', 'admin@admin.com', 12345678901, 'e10adc3949ba59abbe56e057f20f883e', '2020-07-24 20:43:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbllaundryreq`
--
ALTER TABLE `tbllaundryreq`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpricelist`
--
ALTER TABLE `tblpricelist`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbllaundryreq`
--
ALTER TABLE `tbllaundryreq`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblpricelist`
--
ALTER TABLE `tblpricelist`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
