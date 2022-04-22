-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Apr 16, 2022 at 04:02 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `waterplant`
--

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(82);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `shipping_address` varchar(255) DEFAULT NULL,
  `shipping_date` timestamp NULL DEFAULT current_timestamp(),
  `total` double NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `product_id`, `quantity`, `shipping_address`, `shipping_date`, `total`, `user_id`, `user_user_id`) VALUES
(59, 11, 2, 'pune', '2022-04-15 09:58:00', 40, 13, NULL),
(60, 11, 1, 'pune', '2022-04-15 10:01:00', 20, 13, NULL),
(61, 11, 3, 'pune', '2022-04-15 10:07:00', 60, 1, NULL),
(62, 11, 2, 'pune', '2022-04-15 10:39:00', 40, 13, NULL),
(63, 11, 2, 'pune', '2022-04-15 10:44:00', 40, 13, NULL),
(64, 11, 2, 'pune', '2022-04-15 10:48:00', 40, 13, NULL),
(66, 11, 2, 'pune', '2022-04-15 11:00:00', 40, 13, NULL),
(68, 11, 2, 'Beed', '2022-04-15 11:35:00', 40, 13, NULL),
(69, 11, 2, 'pune', '2022-04-15 12:18:00', 40, 13, NULL),
(73, 14, 9, 'pune', '2022-04-15 15:07:00', 180, 17, NULL),
(74, 15, 5, 'pune', '2022-04-15 16:31:00', 100, 17, NULL),
(79, 14, 5, 'yavatmal', '2022-04-15 17:46:00', 100, 13, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` bigint(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `qty_in_ltr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `description`, `price`, `product_name`, `qty_in_ltr`) VALUES
(65, '1 ltr bottle', 40, '1 Ltr Bottle', 2),
(67, '5 ltr bottle', 100, '5 Ltr Bottle', 5),
(70, 'kyu', 40, '5 Ltr Bottle', 2),
(71, '20 Ltr Bottle', 60, '20 Ltr Bottle', 20),
(72, '1 ltr bottle', 0, '1 Ltr Bottle', 2),
(75, '1 ltr bottle', 40, '1 Ltr Bottle', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `enable` bit(1) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `address`, `email`, `enable`, `mobile`, `password`, `role`, `user_name`) VALUES
(13, 'Yavatmal', 'govind@gmail.com', b'1', '7709397597', '$2a$10$.8h1v0dJjHlcRcH8o6E5Nen8mws.5mS/wz1AJCAwJVnVKG8kTDIGO', 'ROLE_USER', 'Govind Dudhewar'),
(20, 'pune', 'tejas@gmail.com', b'1', '9146893189', '$2a$10$WfSnG0nuaj9OHwqkYAbEKOMF/jdtzh72Yzxl7K.KdYSEqIjiWKLzC', 'ROLE_USER', 'Tejas Gungewar'),
(21, 'pune', 'deepak@gmail.com', b'1', '9762747894', '$2a$10$qVY4V9i7ZZQMDNQC6q3uCO3Ybiopq/yeRiebHS2Q71Lz92CCOWSVa', 'ROLE_USER', 'Deepak Bhagat'),
(22, 'pune', 'payal@gmail.com', b'1', '8806318136', '$2a$10$Oy6AuEo0q8SVBMv30RHuTeo5MtxFy3KHrw/c8nInYAZVvi7rAeUVa', 'ROLE_USER', 'payal magare'),
(28, 'pune', 'deepak1@gmail.com', b'1', '9762747894', '$2a$10$dD8TNz5Wh8dr86X8pMoe4OXvQCX.yUzxw7nGDAs.tjrOfBj3I/PpC', 'ROLE_USER', 'Deepak Bhaagat'),
(48, 'pune', 'diptisarwade199@gmail.com', b'1', '7709397597', '$2a$10$9sYNfNgUY3Mm3FvpXGmYdOeVeddi/GXW6c.O1LHhSdDP2A2xdq1Bm', 'ROLE_ADMIN', 'DiptiSarwade'),
(80, 'jaipur', 'nishant@gmail.com', b'1', '7709397598', '$2a$10$CW1W3h0dJ7J/MGy2yyY/4.INvCHAWDy9x05Gg4PE9ccc4CdJQJ9jy', 'ROLE_USER', 'nishant ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `FKcooejujh32cpgw33d02snbufy` (`user_user_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `UK_ob8kqyqqgmefl0aco34akdtpe` (`email`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FKcooejujh32cpgw33d02snbufy` FOREIGN KEY (`user_user_id`) REFERENCES `user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
