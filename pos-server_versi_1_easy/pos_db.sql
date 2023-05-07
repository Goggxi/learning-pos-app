-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2023 at 04:06 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `img_product` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `stock`, `img_product`) VALUES
(1, 'Sepatu', 80000, 54, 'https://images.tokopedia.net/img/cache/500-square/VqbcmM/2022/1/19/af3922ec-44ac-4b56-a8c9-5f71a06d6a65.jpg?ect=4g'),
(2, 'Sepatu Baru', 80000, 81, 'https://images.tokopedia.net/img/cache/500-square/VqbcmM/2022/1/19/af3922ec-44ac-4b56-a8c9-5f71a06d6a65.jpg?ect=4g'),
(3, 'alalal', 22222, 3333, ''),
(4, 'alalal', 22222, 3333, ''),
(5, 'ala3lal', 22222, 3333, ''),
(6, 'ala3lal', 22222, 3333, ''),
(7, 'ala3lal', 22222, 3333, ''),
(8, 'ala3lal', 22222, 3333, ''),
(9, 'ala3lal', 22222, 3333, ''),
(10, 'ala3leal', 22222, 3333, ''),
(11, 'ala3leal', 22222, 3333, '');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `no_order` varchar(4) NOT NULL,
  `total_price` int(11) NOT NULL,
  `paid_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `no_order`, `total_price`, `paid_amount`) VALUES
(29, 'T467', 40000, 50000),
(30, 'T797', 40000, 50000),
(31, 'T499', 40000, 50000),
(32, 'T24', 5000, 6000),
(33, 'T10', 5000, 6000);

-- --------------------------------------------------------

--
-- Table structure for table `transaction_detail`
--

CREATE TABLE `transaction_detail` (
  `id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `no_order` varchar(4) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction_detail`
--

INSERT INTO `transaction_detail` (`id`, `id_product`, `no_order`, `quantity`) VALUES
(55, 1, 'T467', 3),
(56, 2, 'T467', 3),
(57, 1, 'T797', 3),
(58, 2, 'T797', 3),
(59, 1, 'T499', 3),
(60, 1, 'T24', 2),
(61, 2, 'T24', 1),
(62, 1, 'T10', 2),
(63, 2, 'T10', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_detail`
--
ALTER TABLE `transaction_detail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `transaction_detail`
--
ALTER TABLE `transaction_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
