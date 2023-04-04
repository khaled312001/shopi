-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2023 at 07:18 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`, `email`) VALUES
(1, 'admin', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2', 'admin@gmail.com'),
(2, 'admin2', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(2, 1, 2, 'laptop', 20000, 1, 'How-to-Choose-a-Laptop-Gear-GettyImages-1235728903.webp'),
(3, 1, 5, 'Mouse', 500, 1, '51dsuumz6HL.__AC_SX300_SY300_QL70_FMwebp_.webp'),
(4, 1, 8, 'Watch', 1000, 1, '71aMzOwg39L._AC_UL320_.jpg'),
(6, 2, 3, 'TV', 7000, 1, '915Xj2rO8WL._AC_SX425_.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(1, 1, 'Ahmed', 'ahmed@gmail.com', '0120000000', 'Hello,\r\nGood website \r\n');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(1, 1, 'Ahmed', '0120000000', 'ahmed@gmail.com', 'cash on delivery', 'flat no. cairo, 1 , nasr street, cairo, giza, egypt - 12345', 'orange (10 x 1) - ', 10, '2023-03-05', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(10) NOT NULL,
  `image_01` varchar(100) NOT NULL,
  `image_02` varchar(100) NOT NULL,
  `image_03` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image_01`, `image_02`, `image_03`) VALUES
(2, 'laptop', 'Apple MacBook Pro 15-inch w/ Touch Bar (Mid 2018), 220ppi Retina Display, 6-Core Intel Core i7, 512GB PCIe SSD, 16GB RAM, macOS 10.13, Silver', 20000, 'How-to-Choose-a-Laptop-Gear-GettyImages-1235728903.webp', 'lenovo-laptops-thinkbook-16-gen-4-intel-hero.webp', '02lcg0Rt9G3gSqCpWhFG0o1-2..v1656623239.jpg'),
(3, 'TV', 'SAMSUNG 40-inch Class LED Smart FHD TV 1080P', 7000, '915Xj2rO8WL._AC_SX425_.jpg', '41qqZLZlfEL._AC_UF480,480_SR480,480_.jpg', '412t4ceeccL._AC_UF480,480_SR480,480_.jpg'),
(4, 'Camera', 'kimire Video Camera Camcorder Digital Camera Recorder Full HD 1080P 15FPS 24MP 3.0 Inch 270 Degree Rotation LCD 16X Digital Zoom Camcorder Camera with 2 Batteries(Black)', 2000, '917LEZ+it3L._AC_UY218_.jpg', '51J5uTUlp5L._AC_UF480,480_SR480,480_.jpg', '51WRlhoxmYL._AC_UF480,480_SR480,480_.jpg'),
(5, 'Mouse', 'VssoPlor Wireless Mouse, 2.4G Slim Portable Computer Mice with Nano Receiver for Notebook, PC, Laptop, Computer (Black and Gold)', 500, '51dsuumz6HL.__AC_SX300_SY300_QL70_FMwebp_.webp', '31zfbbjO3XL._AC_UF480,480_SR480,480_.jpg', '31g30WSRsQL._AC_UF480,480_SR480,480_.jpg'),
(6, 'Fridge', 'RCA RFR741-BLACK Apartment Size-Top Freezer-2 Door Fridge-Adjustable Thermostat Control-Black-7.5 Cubic Feet', 10000, '31ypu5fe4cL._AC_.jpg', 'upright-freezer.png', 'chest-freezer.png'),
(7, 'smartphone', 'SAMSUNG Galaxy S23 Ultra Cell Phone, Factory Unlocked Android Smartphone, 256GB Storage, 200MP Camera, Night Mode, Long Battery Life, S Pen, US Version, 2023, Phantom Black', 8000, '71Sa3dqTqzL._AC_UY218_.jpg', '612yrAXpo-L._AC_UL320_.jpg', '41wKBxAos4L._AC_UY218_.jpg'),
(8, 'Watch', 'Smart Watch (Answer/Make Call), 1.7&#34; Smartwatch with Text and Call for Android iOS Phones, IP68 Waterproof Fitness Tracker with Sleep Monitor, Pedometer, Blood Oxygen, Fitness Watch for Women and Men', 1000, '71aMzOwg39L._AC_UL320_.jpg', '61YTkLYdvGL._AC_UL320_.jpg', '51fXC+0rFgL._AC_UL320_.jpg'),
(9, 'washing', 'Portable Laundry Washing Machine by BLACK+DECKER, Compact Pulsator Washer for Clothes.9 Cubic ft. Tub, White, BPWM09W & BLACK+DECKER BCED26 Portable Dryer, Small, 4 Modes, White', 15000, '41xMr40hgdL._AC_SX679_.jpg', '41eLy4EAhoL._AC_SS250_.jpg', '31Z1+cngAHL._AC_UF480,480_SR480,480_.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'Ahmed', 'ahmed@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(2, 'mohamed', 'mohamed@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `pid`, `name`, `price`, `image`) VALUES
(1, 1, 3, 'TV', 7000, '915Xj2rO8WL._AC_SX425_.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
