-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2022 at 11:47 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `davaiplus`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart_table`
--

CREATE TABLE `cart_table` (
  `CART_ID` int(11) NOT NULL,
  `LOGIN_ID` int(11) DEFAULT NULL,
  `MEDICINE_ID` int(11) DEFAULT NULL,
  `INSTRUMENT_ID` int(11) DEFAULT NULL,
  `QUANTITY` int(5) DEFAULT NULL,
  `ORDER_ID` int(11) DEFAULT NULL,
  `STATUS` int(5) DEFAULT NULL COMMENT '0 - in cart not ordered, 1 - order done, 2 - order cancel by Admin'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart_table`
--

INSERT INTO `cart_table` (`CART_ID`, `LOGIN_ID`, `MEDICINE_ID`, `INSTRUMENT_ID`, `QUANTITY`, `ORDER_ID`, `STATUS`) VALUES
(1, 2, 3, NULL, 2, 1, 1),
(2, 2, NULL, 2, 1, 1, 1),
(3, 2, 4, NULL, 1, 2, 1),
(4, 2, NULL, 2, 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `CONTACT_ID` int(11) NOT NULL,
  `NAME` varchar(25) NOT NULL,
  `EMAIL` varchar(25) NOT NULL,
  `MESSAGE` varchar(350) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`CONTACT_ID`, `NAME`, `EMAIL`, `MESSAGE`) VALUES
(1, 'qwe', 'qwe@gmail.com', 'hello'),
(3, 'hijk', 'hijk@gmail.com', 'thank you');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `FEED_ID` int(11) NOT NULL,
  `USER_LOGIN_ID` int(15) NOT NULL,
  `DATE` date NOT NULL,
  `DESCRIPTION` varchar(350) NOT NULL,
  `CITY` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`FEED_ID`, `USER_LOGIN_ID`, `DATE`, `DESCRIPTION`, `CITY`) VALUES
(1, 1, '2021-12-22', 'Here we found the bestest way to ship out our medicines. Not only medicines but instruments too so this kinda comfortness is available here', 'Ahmedabad - Gujarat'),
(3, 2, '2022-03-04', 'This website is quit easy to use compare to others as here we find out all the medical store easily. And this is apparently feasible to visit each part of website ', 'Mumbai - Maharashtra'),
(4, 3, '2021-07-05', 'This is the opportunity to expand our business. And additionally website is also useful for needy people as they can get their order at their place  ', 'Kolkata'),
(5, 4, '2022-01-07', 'After enrolling in this site we found that the Annual margin of our store is increasing ... So Thank You DavaiPlus for supporting us', 'Ahmedabad - Gujarat');

-- --------------------------------------------------------

--
-- Table structure for table `instruments`
--

CREATE TABLE `instruments` (
  `INSTRUMENT_ID` int(11) NOT NULL,
  `NAME` varchar(25) NOT NULL,
  `DESCRIPTION` varchar(150) NOT NULL,
  `PRICE` int(10) NOT NULL,
  `PHOTO` varchar(50) NOT NULL,
  `STATUS` smallint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `instruments`
--

INSERT INTO `instruments` (`INSTRUMENT_ID`, `NAME`, `DESCRIPTION`, `PRICE`, `PHOTO`, `STATUS`) VALUES
(1, 'Blood Pressure Monitor', 'Used to monitor your BP in digital way', 1399, '20220220101546.jpeg', 0),
(2, 'Diabetes Monitor', 'Used to monitor out your diabetes status ', 1649, '20220220101741.jpg', 0),
(3, 'Oximeter', 'Check out your oxygen count in a digital way', 999, '20220220101858.jpg', 0),
(4, 'Steam Machine', 'Used to intake vapour', 299, '20220220102043.jpg', 0),
(5, 'Stethoscope', 'Used for Heartbeats count', 2999, '20220220102356.jpg', 0),
(6, 'Microscope', 'Used for scientific lab ', 2449, '20220220102548.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `LOGIN_ID` int(11) NOT NULL,
  `NAME` varchar(25) NOT NULL,
  `EMAIL` varchar(40) NOT NULL,
  `PASSWORD` varchar(10) NOT NULL,
  `CONFIRM_PASSWORD` varchar(10) NOT NULL,
  `CONTACT_NO` bigint(10) NOT NULL,
  `ADDRESS` varchar(200) NOT NULL,
  `ROLE` smallint(2) NOT NULL,
  `STATUS` smallint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`LOGIN_ID`, `NAME`, `EMAIL`, `PASSWORD`, `CONFIRM_PASSWORD`, `CONTACT_NO`, `ADDRESS`, `ROLE`, `STATUS`) VALUES
(1, 'Rushil Khatri', 'r@k.com', 'rk123', 'rk123', 9483020065, 'Ahmedabad,Gujarat', 1, 1),
(2, 'Samiksha Dhawan', 's@d.com', 'sd123', 'sd123', 9898776880, 'Mumbai,Maharashtra', 1, 1),
(3, 'Vismay Jariwal', 'v@j.com', 'vj234', 'vj234', 9898254232, 'Surat', 1, 0),
(4, 'Fazil Shaikh', 'f@s.com', 'fs123', 'fs123', 7065431276, 'Ahmedabad, Gujarat', 1, 0),
(5, 'abc', 'a@b.com', 'abc123', '', 9099602680, 'testing', 0, 0),
(10, 'myAdmin', 'admin@gmail.com', 'admin234', 'admin234', 9099602680, 'dummy data', 0, 0),
(11, 'Honey', 'honey@gmail.com', 'honey123', 'honey123', 9099602680, 'ahmedabad', 0, 0),
(12, 'xyz', 'xyz@gmail.com', 'xyz123', 'xyz123', 6574839909, 'bopal,ahmedabad', 0, 0),
(13, 'xyz', 'xyz@gmail.com', 'xyz345', 'xyz345', 6574839069, 'ahmedabad', 0, 0),
(16, 'twinkle', 'twi@gmail.com', '123456', '123456', 8694627890, 'ghvfhdgbdkjghdfj', 0, 0),
(17, 'twinkle', 'twinkle@gmail.com', '1234', '1234', 8349389300, 'ewdewde', 0, 0),
(18, 'hena', 'hena@gmail.com', '1234', '1234', 893489233, 'jmdsjks', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

CREATE TABLE `medicines` (
  `MEDICINE_ID` int(11) NOT NULL,
  `NAME` varchar(25) NOT NULL,
  `CONTENT` varchar(150) NOT NULL,
  `PRICE` int(10) NOT NULL,
  `PHOTO` varchar(50) NOT NULL,
  `LOCATION` varchar(100) DEFAULT NULL,
  `STATUS` smallint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medicines`
--

INSERT INTO `medicines` (`MEDICINE_ID`, `NAME`, `CONTENT`, `PRICE`, `PHOTO`, `LOCATION`, `STATUS`) VALUES
(3, 'Ecosprin Strip Of 14 Tabl', 'Dummy Description', 78, '20220404202109.png', 'Navrangpura', 0),
(4, 'Evion 400mg Strip Of 10 C', 'Evion 400 capsule is a vitamin supplement. Evion 400 capsule contains vitamin E', 34, '20220404203045.png', 'Maninagar', 0),
(5, 'Dolo 650', 'Paracetamol Tablets IP Dolo-650', 26, '20220503151132.jpeg', 'Usmanpura', 0);

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `PRESCRIPTION_ID` int(11) NOT NULL,
  `LOGIN_ID` int(15) NOT NULL,
  `DESCRIPTION` varchar(150) NOT NULL,
  `TIME_1` datetime NOT NULL,
  `TIME_2` datetime NOT NULL,
  `TIME_3` datetime NOT NULL,
  `TIME_4` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product_order`
--

CREATE TABLE `product_order` (
  `ORDER_ID` int(11) NOT NULL,
  `LOGIN_ID` int(11) DEFAULT NULL,
  `TOTAL_AMOUNT` varchar(20) DEFAULT NULL,
  `ADDRESS` varchar(200) DEFAULT NULL,
  `TIMESTAMP` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ORDER_STATUS` int(5) DEFAULT NULL COMMENT '1-Order Placed Successfully'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_order`
--

INSERT INTO `product_order` (`ORDER_ID`, `LOGIN_ID`, `TOTAL_AMOUNT`, `ADDRESS`, `TIMESTAMP`, `ORDER_STATUS`) VALUES
(1, 2, '1727', 'Navrangpura, Ahmedabad', '2022-05-03 00:55:49', 1),
(2, 2, '1683', 'ABC Hospital, Navrangpura, Ahmedabad.', '2022-05-03 14:27:50', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart_table`
--
ALTER TABLE `cart_table`
  ADD PRIMARY KEY (`CART_ID`),
  ADD KEY `LOGIN_ID` (`LOGIN_ID`),
  ADD KEY `MEDICINE_ID` (`MEDICINE_ID`),
  ADD KEY `INSTRUMENT_ID` (`INSTRUMENT_ID`),
  ADD KEY `ORDER_ID` (`ORDER_ID`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`CONTACT_ID`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`FEED_ID`),
  ADD KEY `LOGIN_ID` (`USER_LOGIN_ID`);

--
-- Indexes for table `instruments`
--
ALTER TABLE `instruments`
  ADD PRIMARY KEY (`INSTRUMENT_ID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`LOGIN_ID`);

--
-- Indexes for table `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`MEDICINE_ID`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`PRESCRIPTION_ID`),
  ADD KEY `LOGIN_ID` (`LOGIN_ID`);

--
-- Indexes for table `product_order`
--
ALTER TABLE `product_order`
  ADD PRIMARY KEY (`ORDER_ID`),
  ADD KEY `LOGIN_ID` (`LOGIN_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart_table`
--
ALTER TABLE `cart_table`
  MODIFY `CART_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `CONTACT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `FEED_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `instruments`
--
ALTER TABLE `instruments`
  MODIFY `INSTRUMENT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `LOGIN_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `medicines`
--
ALTER TABLE `medicines`
  MODIFY `MEDICINE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `PRESCRIPTION_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product_order`
--
ALTER TABLE `product_order`
  MODIFY `ORDER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart_table`
--
ALTER TABLE `cart_table`
  ADD CONSTRAINT `cart_table_ibfk_1` FOREIGN KEY (`LOGIN_ID`) REFERENCES `login` (`LOGIN_ID`),
  ADD CONSTRAINT `cart_table_ibfk_2` FOREIGN KEY (`MEDICINE_ID`) REFERENCES `medicines` (`MEDICINE_ID`),
  ADD CONSTRAINT `cart_table_ibfk_3` FOREIGN KEY (`INSTRUMENT_ID`) REFERENCES `instruments` (`INSTRUMENT_ID`),
  ADD CONSTRAINT `cart_table_ibfk_4` FOREIGN KEY (`ORDER_ID`) REFERENCES `product_order` (`ORDER_ID`);

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`USER_LOGIN_ID`) REFERENCES `login` (`LOGIN_ID`);

--
-- Constraints for table `prescription`
--
ALTER TABLE `prescription`
  ADD CONSTRAINT `prescription_ibfk_1` FOREIGN KEY (`LOGIN_ID`) REFERENCES `login` (`LOGIN_ID`);

--
-- Constraints for table `product_order`
--
ALTER TABLE `product_order`
  ADD CONSTRAINT `product_order_ibfk_1` FOREIGN KEY (`LOGIN_ID`) REFERENCES `login` (`LOGIN_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
