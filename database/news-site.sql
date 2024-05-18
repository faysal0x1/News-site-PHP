-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: May 18, 2024 at 06:08 PM
-- Server version: 8.0.30
-- PHP Version: 8.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news-site`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `post` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `post`) VALUES
(30, 'HTML', 2);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `message`) VALUES
(1, 'dfdf', 'faysalk461@gmail.com', 'dfdfdf'),
(2, 'fgf', 'faysalk461@gmail.com', 'dftgfgfg'),
(3, 'Faysal', 'faysalk461@gmail.com', 'sgfsdg');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(100) NOT NULL,
  `post_date` varchar(50) NOT NULL,
  `author` int NOT NULL,
  `post_img` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `title`, `description`, `category`, `post_date`, `author`, `post_img`) VALUES
(36, 'Test', 'Test Helo Worlld', '30', '18 May, 2024', 24, 'image-8685.jpg'),
(37, 'Hello World', 'Test Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo WorlTest Helllo Worl', '30', '18 May, 2024', 24, 'image-8685.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int UNSIGNED NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `role` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `username`, `password`, `role`) VALUES
(24, 'Ahmed', 'Faysal', 'faysal', '123', 1),
(26, 'Daryl Willis', 'Madaline Schroeder', 'Sunt cum alias temp', '5f4dcc3b5aa765d61d8327deb882cf99', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD UNIQUE KEY `post_id` (`post_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
