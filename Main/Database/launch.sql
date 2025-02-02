-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2020 at 02:14 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `launch`
--

-- --------------------------------------------------------

--
-- Table structure for table `cabin_list`
--

CREATE TABLE `cabin_list` (
  `Cabin_class` varchar(25) DEFAULT NULL,
  `Cabin_fare` varchar(25) DEFAULT NULL,
  `Available_seat` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cabin_list`
--

INSERT INTO `cabin_list` (`Cabin_class`, `Cabin_fare`, `Available_seat`) VALUES
('Single AC', '1000', 38),
('Single Non AC', '900', 78),
('Double AC', '2000', 71),
('Double Non AC', '1700', 70),
('Sofa', '500', 160),
('Family AC', '1900', 65),
('Family Non AC', '1800', 82);

-- --------------------------------------------------------

--
-- Table structure for table `launch_time`
--

CREATE TABLE `launch_time` (
  `Launch_name` varchar(25) DEFAULT NULL,
  `Dep_time` varchar(25) DEFAULT NULL,
  `Arr_time` varchar(25) DEFAULT NULL,
  `Fare_range` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `launch_time`
--

INSERT INTO `launch_time` (`Launch_name`, `Dep_time`, `Arr_time`, `Fare_range`) VALUES
('Surovi-7', '8.30 PM', '4.30 AM', '500-6500'),
('Surovi-8', '8.00 PM', '3.30 AM', '500-6500'),
('Surovi-9', '7.30 PM', '3.00 AM', '500-6500'),
('Surovi-10', '7.00 PM', '3.00 AM', '500-6500');

-- --------------------------------------------------------

--
-- Table structure for table `record`
--

CREATE TABLE `record` (
  `Date` varchar(25) DEFAULT NULL,
  `Launch` varchar(25) DEFAULT NULL,
  `Cabin` varchar(25) DEFAULT NULL,
  `Total_seat` int(11) DEFAULT NULL,
  `Total_taka` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `record`
--

INSERT INTO `record` (`Date`, `Launch`, `Cabin`, `Total_seat`, `Total_taka`) VALUES
('11/28/2019', 'Surovi-7', 'Single AC', 22, 22000),
('11/28/2019', 'Surovi-7', 'Single Non AC', 17, 15300),
('11/28/2019', 'Surovi-7', 'Double AC', 393, 786000),
('11/28/2019', 'Surovi-7', 'Sofa', 20, 10000),
('11/28/2019', 'Surovi-10', 'Family AC', 7, 13300);

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `User_name` varchar(10) NOT NULL,
  `Password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`User_name`, `Password`) VALUES
('mehedi', '456'),
('sakib', '123');

-- --------------------------------------------------------

--
-- Table structure for table `view_pass`
--

CREATE TABLE `view_pass` (
  `Ticket_ID` int(11) NOT NULL,
  `Name` varchar(25) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Contact` int(11) DEFAULT NULL,
  `Sell_Date` varchar(25) DEFAULT NULL,
  `launche_Name` varchar(25) DEFAULT NULL,
  `From_place` varchar(25) DEFAULT NULL,
  `To_place` varchar(25) DEFAULT NULL,
  `Travel_Date` varchar(25) DEFAULT NULL,
  `Boarding_time` varchar(25) DEFAULT NULL,
  `Cabin_class` varchar(25) DEFAULT NULL,
  `Seat_NO` int(11) DEFAULT NULL,
  `TAKA` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `view_pass`
--

INSERT INTO `view_pass` (`Ticket_ID`, `Name`, `Age`, `Contact`, `Sell_Date`, `launche_Name`, `From_place`, `To_place`, `Travel_Date`, `Boarding_time`, `Cabin_class`, `Seat_NO`, `TAKA`) VALUES
(2, 'sfe', 5, 12, '11/28/2019', 'Surovi-7', 'Patuakhali', 'Dhaka', '11/30/2019', '7.30 PM', 'Sofa', 12, 6000),
(3, 'hy', 6, 14, '11/28/2019', 'Surovi-7', 'Bhola', 'Patuakhali', '12/2/2019', '7.00 PM', 'Sofa', 8, 4000),
(5, 'ld', 7, 3, '11/28/2019', 'Surovi-7', 'Khulna', 'Dhaka', '11/28/2019', '7.00 PM', 'Single AC', 13, 13000),
(7, 'hrr', 54, 234, '11/28/2019', 'Surovi-10', 'Chadpur', 'Dhaka', '11/28/2019', '7.30 PM', 'Family AC', 7, 13300),
(9, 'ser', 6, 34, '11/28/2019', 'Surovi-7', 'Bhola', 'Barishal', '11/28/2019', '8.00 PM', 'Single Non AC', 15, 13500);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`User_name`);

--
-- Indexes for table `view_pass`
--
ALTER TABLE `view_pass`
  ADD PRIMARY KEY (`Ticket_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
