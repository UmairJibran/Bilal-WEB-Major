-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 21, 2020 at 10:45 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `auction_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `auction_bids`
--

CREATE TABLE `auction_bids` (
  `item_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_bid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auction_bids`
--

INSERT INTO `auction_bids` (`item_id`, `user_id`, `user_name`, `user_bid`) VALUES
(63, 15, 'Muhammad Bilal', 5000),
(64, 15, 'Muhammad Bilal', 5000),
(65, 16, 'Bilal Khan', 25000),
(65, 17, 'Umair Jibran', 25500),
(65, 18, 'Muhib Noor', 25600);

-- --------------------------------------------------------

--
-- Table structure for table `auction_item`
--

CREATE TABLE `auction_item` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `init_bid` int(11) NOT NULL,
  `current_bid` int(11) NOT NULL,
  `due_date` date NOT NULL,
  `post_date` date NOT NULL,
  `category` varchar(50) NOT NULL,
  `item_condition` varchar(3) NOT NULL,
  `location` varchar(30) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `image` varchar(200) NOT NULL,
  `item_poster` int(11) NOT NULL,
  `highest_bidder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auction_item`
--

INSERT INTO `auction_item` (`item_id`, `item_name`, `init_bid`, `current_bid`, `due_date`, `post_date`, `category`, `item_condition`, `location`, `description`, `image`, `item_poster`, `highest_bidder`) VALUES
(65, 'iPhone 6S', 25000, 25600, '2020-08-25', '2020-08-20', 'mobile', 'new', 'Peshawar', 'I want to sell this iphone, very good ', 'uploads/5f3e9a3bd90c26.66953377.jpg', 16, 18);

-- --------------------------------------------------------

--
-- Table structure for table `auction_user`
--

CREATE TABLE `auction_user` (
  `user_id` int(11) NOT NULL,
  `user_first_name` varchar(50) NOT NULL,
  `user_last_name` varchar(50) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_contact` varchar(14) NOT NULL,
  `user_password` varchar(50) NOT NULL,
  `payment` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auction_user`
--

INSERT INTO `auction_user` (`user_id`, `user_first_name`, `user_last_name`, `user_email`, `user_contact`, `user_password`, `payment`) VALUES
(15, 'Muhammad', 'Bilal', 'bilal@gmail.com', '03184844484', '12345', 'esp'),
(16, 'Bilal', 'Khan', 'bilalkhan@gmail.com', '0312845498', '123456', 'esp'),
(17, 'Umair', 'Jibran', 'umairjibran@gmail.com', '03120919647', '123456', 'esp'),
(18, 'Muhib', 'Noor', 'muhib@gmiail.com', '3254234523523', '123456', 'esp');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auction_bids`
--
ALTER TABLE `auction_bids`
  ADD PRIMARY KEY (`item_id`,`user_id`);

--
-- Indexes for table `auction_item`
--
ALTER TABLE `auction_item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `auction_user`
--
ALTER TABLE `auction_user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`user_email`),
  ADD UNIQUE KEY `number` (`user_contact`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auction_item`
--
ALTER TABLE `auction_item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `auction_user`
--
ALTER TABLE `auction_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
