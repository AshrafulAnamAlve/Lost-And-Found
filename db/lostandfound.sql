-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2024 at 07:52 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lostandfound`
--

-- --------------------------------------------------------

--
-- Table structure for table `appuser`
--

CREATE TABLE `appuser` (
  `appuser_pk` int(11) NOT NULL,
  `userRole` varchar(50) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `mobileNumber` varchar(50) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appuser`
--

INSERT INTO `appuser` (`appuser_pk`, `userRole`, `name`, `mobileNumber`, `email`, `password`, `address`, `status`) VALUES
(1, 'SuperAdmin', 'Super Admin', '12345', 'superadmin@gmail.com', 'admin', 'Bangladesh', 'Active'),
(11, 'Admin', 'Ashraful', '01876935462', 'aaaaa@gmail.com', '1234', 'aSasdsfsdf', 'Active'),
(14, 'Admin', 'Alve', '01403666284', 'alve@gmail.com', '1234', 'abcd', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_pk` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_pk`, `name`) VALUES
(3, 'test catagorys'),
(5, 'Bag');

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `owner_pk` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `mobileNumber` varchar(50) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`owner_pk`, `name`, `mobileNumber`, `email`) VALUES
(1, 'Ashraful Anam Alve', '01876935462', 'alve@gmail.com'),
(4, 'Sakib', '01403666384', 'sakib@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_pk` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `category_fk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_pk`, `name`, `quantity`, `price`, `description`, `category_fk`) VALUES
(1, 'test product', 1212, 1200, 'asasjdahjdhjhsd', 2),
(3, 'phone', 1, 1500090, 'asasasasas', 3),
(5, 'Money Bag', 1, 2000, 'test Desc', 5),
(6, 'Iphone', 1, 70000, 'the big brown fox jumps over the lazy dog', 3);

-- --------------------------------------------------------

--
-- Table structure for table `productownerdetails`
--

CREATE TABLE `productownerdetails` (
  `productOwner_pk` int(11) NOT NULL,
  `lostId` varchar(200) DEFAULT NULL,
  `owner_fk` int(11) DEFAULT NULL,
  `submitDate` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `productownerdetails`
--

INSERT INTO `productownerdetails` (`productOwner_pk`, `lostId`, `owner_fk`, `submitDate`) VALUES
(1, 'Bill-2199750869833100', 1, '21-11-2024'),
(2, 'Bill-2199788806115200', 1, '21-11-2024'),
(3, 'Bill-2199939974452000', 1, '21-11-2024'),
(4, 'Bill-2200038374566000', 1, '21-11-2024'),
(5, 'Bill-2200292693598800', 1, '21-11-2024'),
(6, 'Bill-2241990949762200', 4, '21-11-2024'),
(7, 'Bill-2242361109393900', 4, '21-11-2024'),
(8, 'Bill-2242554869130500', 4, '21-11-2024'),
(9, 'Bill-2242658533524600', 1, '21-11-2024'),
(10, ' Bill- 2243087749224200', 4, '21-11-2024'),
(11, ' Bill- 2243280532863500', 4, '21-11-2024'),
(12, ' Bill- 2418159426898500', 4, '23-11-2024'),
(13, ' Bill- 3234527030900', 1, '25-11-2024');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appuser`
--
ALTER TABLE `appuser`
  ADD PRIMARY KEY (`appuser_pk`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_pk`);

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`owner_pk`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_pk`);

--
-- Indexes for table `productownerdetails`
--
ALTER TABLE `productownerdetails`
  ADD PRIMARY KEY (`productOwner_pk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appuser`
--
ALTER TABLE `appuser`
  MODIFY `appuser_pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `owner`
--
ALTER TABLE `owner`
  MODIFY `owner_pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `productownerdetails`
--
ALTER TABLE `productownerdetails`
  MODIFY `productOwner_pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
