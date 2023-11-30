-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2023 at 02:56 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lawyermanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE `administrator` (
  `administrator_id` varchar(20) NOT NULL,
  `city` varchar(40) NOT NULL,
  `address` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`administrator_id`, `city`, `address`) VALUES
('Admin', 'Karachi', 'D-19 jkdki');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(11) NOT NULL,
  `date` varchar(20) NOT NULL,
  `description` varchar(300) NOT NULL,
  `client_id` varchar(20) NOT NULL,
  `lawyer_id` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `date`, `description`, `client_id`, `lawyer_id`, `status`) VALUES
(18, '2023-10-02', 'Thanks i will reach on time.', 'Client653bfb87d2f36', 'Lawyer653bfaeb0ba24', 'Accepted'),
(19, '2023-09-01', 'Will meet you on sunday.', 'Client653bfb87d2f36', 'Lawyer653bfa85ea652', 'Accepted'),
(20, '2024-05-09', 'Will meet you soon.', 'Client653d02654e94e', 'Lawyer653bfa85ea652', 'Pending'),
(21, '2023-12-10', '100k Will be transfered to you on our first meetup.', 'Client653d02654e94e', 'Lawyer653cfe168b5eb', 'Accepted');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `client_id` varchar(20) NOT NULL,
  `contact_number` varchar(15) NOT NULL,
  `full_address` varchar(200) NOT NULL,
  `city` varchar(100) NOT NULL,
  `zip_code` varchar(50) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`client_id`, `contact_number`, `full_address`, `city`, `zip_code`, `image`) VALUES
('Client653bfb87d2f36', '03433333231', 'HOUSE# f-16', 'Multan', '93933 ', '20231027200351_5b8f3d9f30460aeedbe6a235e2d001d3.jpg '),
('Client653d02654e94e', '03435585554', 'HOUSE# D-55 BLOCK 8 KARACHI,PAKISTAN', 'Karachi', '39393 ', '20231028144525_boys-dp-from-funkylife-46.jpg '),
('Client653d02aa352b5', '03438383333', 'HOUSE# D-18 BLOCK P LAHORE,PAKISTAN', 'Lahore', '33243 ', '20231028144634_unnamed.png ');

-- --------------------------------------------------------

--
-- Table structure for table `lawyer`
--

CREATE TABLE `lawyer` (
  `lawyer_id` varchar(20) NOT NULL,
  `contact_Number` varchar(15) NOT NULL,
  `university_College` varchar(100) NOT NULL,
  `degree` varchar(100) NOT NULL,
  `passing_year` varchar(100) NOT NULL,
  `full_address` varchar(200) NOT NULL,
  `city` varchar(50) NOT NULL,
  `zip_code` varchar(50) NOT NULL,
  `practise_Length` varchar(100) NOT NULL,
  `case_handle` varchar(500) NOT NULL,
  `speciality` varchar(100) NOT NULL,
  `image` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `lawyer`
--

INSERT INTO `lawyer` (`lawyer_id`, `contact_Number`, `university_College`, `degree`, `passing_year`, `full_address`, `city`, `zip_code`, `practise_Length`, `case_handle`, `speciality`, `image`) VALUES
('Lawyer653bfa85ea652', '03433898700', 'IQRA', 'LLB', '2013', 'HOUSE#  KARACHI,PAKISTAN', 'Lahore', '75950', '11-15 years', 'Criminal matter,Civil matter,Writ Jurisdiction,Company law,Contract law,Commercial matter,Construction law,', 'IT Law', '20231027195933_Aliyan.jpg'),
('Lawyer653bfaeb0ba24', '03433298700', 'Ziauddin', 'LLM', '2016', 'HOUSE#  AREA KARACHI,PAKISTAN', 'Karachi', '84844', 'Most Senior', 'Criminal matter,Civil matter,Writ Jurisdiction,Company law,Contract law,Commercial matter,Construction law,Information Technology,Family Law,Religious Matter,Investment Matter,Labour Law,Property Law,Taxation Matter,Others,', 'Criminal Law', '20231027200115_25786134576ce0344893b33a051160b1.jpg'),
('Lawyer653cfe168b5eb', '03432838300', 'Zabist', 'LLB', '2000', 'D-55 block b Shahrah e Faisal', 'Islamabad', '24577', '1-5 years', 'Civil matter,Contract law,Construction law,Information Technology,Family Law,Investment Matter,Property Law,', 'Religious Law', '20231028142702_2.jpg'),
('Lawyer653cfe756930c', '03349944400', 'IQRA', 'LLB', '2005', 'HOUSE# f-83 BLOCK 10  KARACHI,PAKISTAN', 'Karachi', '75933', '16-20 years', 'Criminal matter,Civil matter,Writ Jurisdiction,Company law,Contract law,Commercial matter,Construction law,Information Technology,Family Law,Religious Matter,Investment Matter,Labour Law,Property Law,Taxation Matter,Others,', 'Investment Law', '20231028142837_1.jpg'),
('Lawyer653cfeda53bac', '03434484400', 'Ziauddin', 'LLM', '2014', 'HOUSE# u-1 BLOCK 1 MULTAN,PAKISTAN', ' ', '34343', 'Most Senior', 'Criminal matter,Civil matter,Writ Jurisdiction,Company law,Contract law,Commercial matter,Construction law,Information Technology,Family Law,Religious Matter,Investment Matter,Labour Law,Property Law,Taxation Matter,Others,', 'Family Law', '20231028143018_3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_id` varchar(20) NOT NULL,
  `first_Name` varchar(100) NOT NULL,
  `last_Name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_id`, `first_Name`, `last_Name`, `email`, `password`, `status`, `role`) VALUES
('Admin', 'admin', 'admin', 'admin@gmail.com', 'admin', 'Active', 'Admin'),
('Client653bfb87d2f36', 'Hasan', 'Ali', 'hasanali@gmail.com ', 'hasanali', 'Active', 'User'),
('Client653d02654e94e', 'Shahid', 'Jamil', 'shahid@gmail.com ', 'shahid ', 'Active', 'User'),
('Client653d02aa352b5', 'Fouz', 'Azeem', 'fouz@gmail.com ', 'fouz ', 'Active', 'User'),
('Lawyer653bfa85ea652', 'Aln', 'Quhi', 'aliyan@gmail.com ', 'ali4ren ', 'Active', 'Lawyer'),
('Lawyer653bfaeb0ba24', 'Mub', 'Qshi', 'aliya@gmail.com ', 'm899b ', 'Active', 'Lawyer'),
('Lawyer653cfe168b5eb', 'Basit', 'Khan', 'basit@gmail.com ', 'basit ', 'Active', 'Lawyer'),
('Lawyer653cfe756930c', 'Ahmed', 'Maklai', 'ahmed@gmail.com ', 'ahmed ', 'Active', 'Lawyer'),
('Lawyer653cfeda53bac', 'Aqsa', 'Jamil', 'aqsa@gmail.com ', 'aqsa123', 'Active', 'Lawyer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`administrator_id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `lawyer`
--
ALTER TABLE `lawyer`
  ADD PRIMARY KEY (`lawyer_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
