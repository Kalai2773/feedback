-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2022 at 04:46 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `feedback_system`
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
(1, 'vidhya', 'admin'),
(2, 'lekha', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `message` text NOT NULL,
  `Date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `mobile`, `message`, `Date`) VALUES
(5, 'steve', 'steve123@gmail.com', 9875632190, 'Good Working', '2022-09-27 17:53:28'),
(6, 'justin', 'justin123@gmail.com', 9345658300, 'Nice Design Good Application', '2022-09-28 13:53:28');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(11) NOT NULL,
  `user_alias` varchar(30) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `programme` varchar(50) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(75) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `date` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `user_alias`, `Name`, `designation`, `programme`, `semester`, `email`, `password`, `mobile`, `date`, `status`) VALUES
(7, 'ravi5454', 'ravi shankar', 'Associate Professor', 'B.Sc', 'ii', 'ravi@gmail.com', 'ravi123', 9015501897, '2016-07-13 14:30:53', 0),
(8, 'antony9015', 'antony mathan', 'Professor', 'BCA', 'ii', 'antony@gmail.com', 'antony123', 9015501890, '2016-07-13 14:37:35', 0),
(10, 'john5464', 'john', 'Associate Professior', 'MCA', 'ii', 'john12@gmail.com', 'john123', 9016081897, '2016-07-13 14:30:53', 0),
(11, 'david9015', 'David', 'Professor', 'M.Sc', 'i', 'david@gmail.com', 'david123', 9015501890, '2016-07-13 14:40:35', 1);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `faculty_id` varchar(50) NOT NULL,
  `ques1` enum('5','4','3','2','1') NOT NULL,
  `ques2` enum('5','4','3','2','1') NOT NULL,
  `ques3` enum('5','4','3','2','1') NOT NULL,
  `ques4` enum('5','4','3','2','1') NOT NULL,
  `ques5` enum('5','4','3','2','1') NOT NULL,
  `ques6` enum('5','4','3','2','1') NOT NULL,
  `ques7` enum('5','4','3','2','1') NOT NULL,
  `ques8` enum('5','4','3','2','1') NOT NULL,
  `ques9` enum('5','4','3','2','1') NOT NULL,
  `ques10` enum('5','4','3','2','1') NOT NULL,
  `ques11` enum('5','4','3','2','1') NOT NULL,
  `ques12` enum('5','4','3','2','1') NOT NULL,
  `ques13` text NOT NULL,
  `ques14` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `student_id`, `faculty_id`, `ques1`, `ques2`, `ques3`, `ques4`, `ques5`, `ques6`, `ques7`, `ques8`, `ques9`, `ques10`, `ques11`, `ques12`, `ques13`, `ques14`, `date`) VALUES
(16, 'kavi@gmail.com', 'kavi@gmail.com', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '\r\nddddddddddddd', 'aa', '2016-07-15'),
(17, 'sanjeevtech2@gmail.com', 'rav@gmail.com', '5', '3', '1', '5', '5', '3', '3', '3', '3', '5', '5', '5', '\r\n', '\r\n', '2016-07-15'),
(18, 'warda@yahoo.com', 'rav@gmail.com', '5', '5', '5', '2', '1', '5', '5', '4', '5', '5', '5', '5', '\r\ndfdfdfdfdfd', '\r\n', '2016-07-17'),
(19, 'test@gmail.com', 'david@gmail.com', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'Nice\r\n', 'Not Nice\r\n', '2022-10-04'),
(20, 'vinoth@gmail.com', 'david@gmail.com', '3', '4', '3', '5', '4', '3', '2', '1', '3', '5', '2', '4', '\r\nNot nice', 'Not Bad', '2022-10-04');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `notice_id` int(11) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `Description` text NOT NULL,
  `Date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`notice_id`, `attachment`, `subject`, `Description`, `Date`) VALUES
(8, 'AteekCV_java (1).docx', 'aaaaa', 'dfdfdfd', '2016-07-03 12:39:35');

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
  `programme` varchar(20) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `gender` varchar(40) NOT NULL,
  `hobbies` varchar(40) NOT NULL,
  `image` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `regid` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `pass`, `mobile`, `programme`, `semester`, `gender`, `hobbies`, `image`, `dob`, `regid`) VALUES
(10, 'sanjeev kumar', 'sanjeevtech2@gmail.com', '98d34c1758b15b5a359b69c2b08c5767', 9015501897, 'B.Sc', 'iii', 'm', 'reading,playing', 'Jellyfish.jpg', '1961-09-15', '2147483647'),
(12, 'kavi', 'kavi@gmail.com', '63dd3e154ca6d948fc380fa576343ba6', 9015501897, 'M.Sc', 'ii', 'm', 'reading', 'Desert.jpg', '1965-10-15', '2016-07-13 15:52:01'),
(13, 'warda', 'warda@yahoo.com', '827ccb0eea8a706c4c34a16891f84e7b', 32457895212, 'BCA', 'ii', 'f', 'reading', 'Koala - Copy.jpg', '1965-10-06', '2016-07-17 15:39:08'),
(14, 'test', 'test@gmail.com', '098f6bcd4621d373cade4e832627b4f6', 989898989, 'MCA', 'i', 'm', 'reading,singing', 'Chrysanthemum.jpg', '1963-08-12', '2017-02-10 16:04:10'),
(15, 'vinoth', 'vinoth@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 7869375834, 'M.Sc', 'i', 'm', 'playing', 'IMG_20210726_12723.jpg', '1998-02-17', '2022-10-04 08:14:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
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
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `notice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
