-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2020 at 02:59 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `SYSTEM`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-05-13 18:18:49'),
(2, 'mohannad', '123', '2020-02-12 08:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('5e42da758e9fc', '5e42da759e410'),
('5e42dee05de10', '5e42dee08a7ee'),
('5e42dee1285cf', '5e42dee143c95'),
('5e42dee1a2b1c', '5e42dee1ad7a0'),
('5e42dee1e642f', '5e42dee1eedf0'),
('5e42deffd9baa', '5e42df0000213'),
('5e42df006c78b', '5e42df0075913'),
('5e44175f100bc', '5e44175f43b90'),
('5e44175f847f5', '5e44175f8cc33'),
('5e44175fd32f0', '5e44175ff4143'),
('5e44176048d9c', '5e44176053da9'),
('5e44180cb6d44', '5e44180cdfb1c'),
('5e441885a257e', '5e441885c0827'),
('5e4480efc1ba8', '5e4480efe5228'),
('5e4480f070b75', '5e4480f078b42'),
('5e448332ac5ee', '5e448332ce369'),
('5e44833347b49', '5e448333551ff');

-- --------------------------------------------------------

--
-- Table structure for table `exame`
--

CREATE TABLE `exame` (
  `eid` text NOT NULL,
  `sid` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exame`
--

INSERT INTO `exame` (`eid`, `sid`, `title`, `sahi`, `wrong`, `total`, `time`, `intro`, `date`) VALUES
('5e4483051b325', 1, 'q1', 1, 1, 2, 12, 'klsdfl', '2020-02-12 22:58:13');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `Rollid` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`Rollid`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('123', '5e4483051b325', -2, 2, 0, 2, '2020-02-13 05:43:06');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('5e441885a257e', '1', '5e441885c0815'),
('5e441885a257e', '1', '5e441885c0822'),
('5e441885a257e', '1', '5e441885c0827'),
('5e441885a257e', '1', '5e441885c082a'),
('5e4480efc1ba8', 'a', '5e4480efe5228'),
('5e4480efc1ba8', 'b', '5e4480efe522e'),
('5e4480efc1ba8', 'c', '5e4480efe522f'),
('5e4480efc1ba8', 'd', '5e4480efe5230'),
('5e4480f070b75', '12', '5e4480f078b3c'),
('5e4480f070b75', '11', '5e4480f078b42'),
('5e4480f070b75', '1', '5e4480f078b43'),
('5e4480f070b75', '44', '5e4480f078b45'),
('5e448332ac5ee', 'Ø³', '5e448332ce369'),
('5e448332ac5ee', 'ÙŠ', '5e448332ce375'),
('5e448332ac5ee', 'Ø¨Ù„', '5e448332ce379'),
('5e448332ac5ee', 'Ù„', '5e448332ce37d'),
('5e44833347b49', 'Ø´Ø³ÙŠ', '5e448333551f3'),
('5e44833347b49', 'Ø³ÙŠØ¨', '5e448333551ff'),
('5e44833347b49', 'Ù†Ù…', '5e44833355204'),
('5e44833347b49', 'Ù†Ù…', '5e44833355211');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('5e42cd96b15ab', '5e42d9f86df53', '', 4, 1),
('5e42cd96b15ab', '5e42da02083ee', 'kldkfld', 4, 1),
('5e42cd96b15ab', '5e42da758e9fc', 'kldkfld', 4, 1),
('5e42deadb721d', '5e42dee05de10', 'mosdfl', 4, 1),
('5e42deadb721d', '5e42dee1285cf', 'sjkkjsd', 4, 2),
('5e42deadb721d', '5e42dee17ee03', 'lksdfklksdf lksdfl ', 4, 3),
('5e42deadb721d', '5e42dee1a2b1c', 'mosdfl', 4, 1),
('5e42deadb721d', '5e42dee1e642f', 'sjkkjsd', 4, 2),
('5e42deadb721d', '5e42dee22e463', 'lksdfklksdf lksdfl ', 4, 3),
('5e42deadb721d', '5e42deffd9baa', 'mosdfl', 4, 1),
('5e42deadb721d', '5e42df006c78b', 'sjkkjsd', 4, 2),
('5e42deadb721d', '5e42df00bb29e', 'lksdfklksdf lksdfl ', 4, 3),
('5e44170172757', '5e44175f100bc', 'dfsd', 4, 1),
('5e44170172757', '5e44175f847f5', 'kkk', 4, 2),
('5e44170172757', '5e44175fd32f0', 'kkk', 4, 3),
('5e44170172757', '5e44176048d9c', 'klldkdfs', 4, 4),
('5e4417f2dcdc2', '5e44180cb6d44', '1', 4, 1),
('5e441878b9a4e', '5e441885a257e', '1', 4, 1),
('5e4480c610574', '5e4480efc1ba8', 'q 1', 4, 1),
('5e4480c610574', '5e4480f070b75', 'mohannad', 4, 2),
('5e4483051b325', '5e448332ac5ee', 'Ø§Ù„Ø³ÙˆØ§Ù„ Ø§Ù„Ø§Ø©Ù„ ', 4, 1),
('5e4483051b325', '5e44833347b49', 'Ù†Ù…Ø³ÙŠØ¨ÙŠ', 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tblclasses`
--

CREATE TABLE `tblclasses` (
  `id` int(11) NOT NULL,
  `ClassName` varchar(80) DEFAULT NULL,
  `ClassNameNumeric` int(4) DEFAULT NULL,
  `Section` varchar(5) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclasses`
--

INSERT INTO `tblclasses` (`id`, `ClassName`, `ClassNameNumeric`, `Section`, `CreationDate`, `UpdationDate`) VALUES
(9, 'Frist', 1, 'Softw', '2020-02-09 14:04:00', NULL),
(10, 'Frist', 1, 'B', '2020-02-09 14:04:37', NULL),
(11, 'Frist', 1, 'Softw', '2020-02-15 15:41:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblresult`
--

CREATE TABLE `tblresult` (
  `id` int(11) NOT NULL,
  `StudentId` int(11) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `StudentId` int(11) NOT NULL,
  `StudentName` varchar(100) DEFAULT NULL,
  `RollId` varchar(100) DEFAULT NULL,
  `StudentEmail` varchar(100) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `DOB` varchar(100) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`StudentId`, `StudentName`, `RollId`, `StudentEmail`, `Gender`, `DOB`, `ClassId`, `RegDate`, `UpdationDate`, `Status`) VALUES
(1, 'mohannad', '123', 'omhannad@gmailc.om', 'Male', '2020-02-21', 9, '2020-02-11 13:38:15', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjectcombination`
--

CREATE TABLE `tblsubjectcombination` (
  `id` int(11) NOT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Updationdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjectcombination`
--

INSERT INTO `tblsubjectcombination` (`id`, `ClassId`, `SubjectId`, `status`, `CreationDate`, `Updationdate`) VALUES
(1, 9, 1, 1, '2020-02-11 13:39:42', '2020-02-19 13:37:35');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjects`
--

CREATE TABLE `tblsubjects` (
  `id` int(11) NOT NULL,
  `SubjectName` varchar(100) NOT NULL,
  `houres` int(2) NOT NULL DEFAULT '2',
  `SubjectCode` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjects`
--

INSERT INTO `tblsubjects` (`id`, `SubjectName`, `houres`, `SubjectCode`, `Creationdate`, `UpdationDate`) VALUES
(1, 'sdf', 2, '123', '2020-02-11 13:39:24', NULL),
(2, 'DATA', 2, 'CS00', '2020-02-15 15:43:52', NULL),
(3, 'mddsd', 3, '2222', '2020-02-19 13:26:43', NULL),
(4, 'new subject ', 22, 'www', '2020-02-19 13:31:09', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblclasses`
--
ALTER TABLE `tblclasses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblresult`
--
ALTER TABLE `tblresult`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`StudentId`);

--
-- Indexes for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblclasses`
--
ALTER TABLE `tblclasses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblresult`
--
ALTER TABLE `tblresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `StudentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
