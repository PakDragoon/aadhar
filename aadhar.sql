-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2023 at 06:22 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aadhar`
--

-- --------------------------------------------------------

--
-- Table structure for table `aadhar_info`
--

CREATE TABLE `aadhar_info` (
  `Name` varchar(255) NOT NULL,
  `Aadharno` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Phoneno` varchar(255) NOT NULL,
  `Gender` varchar(255) NOT NULL,
  `Dob` date NOT NULL,
  `Is_registered` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `aadhar_info`
--

INSERT INTO `aadhar_info` (`Name`, `Aadharno`, `Email`, `Phoneno`, `Gender`, `Dob`, `Is_registered`) VALUES
('zahra', '77339494', 'zahrazaidi005@gmail.com', '32045454', 'female', '1998-05-14', 'YES'),
('zahra', '77339494', 'zahrazaidi005@gmail.com', '32045454', 'female', '1998-05-14', 'YES'),
('zahra', '75957575765967479', 'zahrazaidi005@gmail.com', '03657854988', 'female', '1998-05-14', 'YES'),
('zahra', '75957575765967479', 'zahrazaidi005@gmail.com', '03657854988', 'female', '1998-05-14', 'YES'),
('Iram', '75957575765967479', 'zahrazaidi005@gmail.com', '970978699860', 'female', '1998-05-01', 'yes'),
('Iram', '75957575765967479', 'zahrazaidi005@gmail.com', '970978699860', 'female', '1998-05-01', 'yes'),
('Dua', '7763496345792', 'zahrazaidi005@gmail.com', '7697657447', 'female', '1995-05-02', 'YES'),
('Dua', '7763496345792', 'zahrazaidi005@gmail.com', '7697657447', 'female', '1995-05-02', 'YES'),
('amar', '78708630373647', 'amar890@gmail.com', '87267644557', 'male', '1998-05-14', 'YES'),
('amar', '78708630373647', 'amar890@gmail.com', '87267644557', 'male', '1998-05-14', 'YES');

-- --------------------------------------------------------

--
-- Table structure for table `registered_users`
--

CREATE TABLE `registered_users` (
  `Aadharno` varchar(255) DEFAULT NULL,
  `Account_address` varchar(255) NOT NULL,
  `Is_registered` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registered_users`
--

INSERT INTO `registered_users` (`Aadharno`, `Account_address`, `Is_registered`) VALUES
(NULL, '0xfe0FC74B94b1B4bdfBA9528baD8674556DB0aa80', 'Y'),
('2147483647', '0x0Aee906342b60fd019ad6a9602E5C72eb826E27E', 'Y'),
('2147483647', '0x0Aee906342b60fd019ad6a9602E5C72eb826E27E', 'Y'),
('75957575765967479', '0x5015A31e38a735c549DaDEAd9e631dceDEF732c0', 'Y'),
('75957575765967479', '0x5015A31e38a735c549DaDEAd9e631dceDEF732c0', 'Y'),
(NULL, '0x5015A31e38a735c549DaDEAd9e631dceDEF732c0', 'Y'),
(NULL, '0xe521B7eCe7Bbdf91E1dFDEBa139175d2979869Eb', 'Y'),
('04685787666768708', '0x82364be04385C21631327d8c70b636753A90D796', ''),
('04685787666768708', '0x82364be04385C21631327d8c70b636753A90D796', ''),
(NULL, '0xa43F3B642fF78adEf7213C49FbEBB9EDf784137f', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `confirm_password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `first_name`, `last_name`, `email_address`, `gender`, `password`, `confirm_password`) VALUES
(1, 'zahra', NULL, 'zahrazaidi005@gmail.com', NULL, 'papag12345678910', 'papag12345678910'),
(2, 'zahra', NULL, 'zahrazaidi005@gmail.com', NULL, 'papag12345678910', 'papag12345678910'),
(3, 'Usman', NULL, 'usman890@gmail.com', NULL, 'usman890', 'usman890'),
(4, 'umar', NULL, 'umar890@gmail.com', NULL, 'umar890', 'umar890'),
(5, 'umair', NULL, 'umair890@gmail.com', NULL, 'umair890', 'umair890'),
(6, 'umair', NULL, 'umair890@gmail.com', NULL, 'umair890', 'umair890'),
(7, 'amar', NULL, 'amar890@gmail.com', NULL, 'amar890', 'amar890');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
