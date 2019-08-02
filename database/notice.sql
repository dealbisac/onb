-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2019 at 07:24 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `notice`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `user`, `pass`) VALUES
(1, 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `notice_id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `Description` text NOT NULL,
  `Date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`notice_id`, `user`, `subject`, `Description`, `Date`) VALUES
(4, 'niki@gmail.com', 'Hello', 'user how areyou.....', '2016-06-29 12:07:19'),
(6, 'niki@gmail.com', 'adfdfdfdfd', 'bbbbbbbb', '2016-07-31 15:38:35'),
(7, 'ravi@gmail.com', 'adfdfdfdfd', 'aaaaaaaaaaaaaa', '2016-07-31 15:38:35'),
(8, 'niki@gmail.com', 'Welcome', 'Welcome to my place.', '2019-08-02 08:25:41'),
(9, 'ravi@gmail.com', 'Welcome', 'Welcome to my place.', '2019-08-02 08:25:41'),
(10, 'dip@gmail.com', 'Regarding Fees', 'You have currently Rs. 50000/- dues.', '2019-08-02 10:51:25');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` char(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `pass` varchar(40) NOT NULL,
  `mobile` bigint(11) NOT NULL,
  `gender` varchar(40) NOT NULL,
  `hobbies` varchar(40) NOT NULL,
  `image` varchar(50) NOT NULL,
  `dob` datetime NOT NULL,
  `regid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `pass`, `mobile`, `gender`, `hobbies`, `image`, `dob`, `regid`) VALUES
(8, 'Ravi Poudel', 'ravi@gmail.com', '63dd3e154ca6d948fc380fa576343ba6', 9845511651, 'm', 'BIM', 'Lighthouse.jpg', '1966-09-15 00:00:00', 2147483647),
(11, 'Nischal', 'abhi@gmail.com', 'd76f3d05cc9ac98f1f9160274a39fe33', 9015501897, 'm', 'BCA', 'Lighthouse.jpg', '1965-10-17 00:00:00', 2147483647),
(12, 'Dipendra', 'dip@gmail.com', 'ffad3509caa0d87832f811f0f8d211f8', 9843681599, 'm', 'BSc. CSIT', 'profile.jpg', '1993-06-01 00:00:00', 2147483647);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`notice_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);
ALTER TABLE `user` ADD FULLTEXT KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `notice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
