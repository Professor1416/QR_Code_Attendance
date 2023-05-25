-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2023 at 08:27 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qr_attendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `aid` int(11) NOT NULL,
  `ausername` varchar(255) NOT NULL,
  `apassword` varchar(255) NOT NULL,
  `adt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aid`, `ausername`, `apassword`, `adt`) VALUES
(1, 'the', '$2y$10$rL2mULhECTcaC80Z5yiEjuC/1f7hw5JuXAPy.JbcLqbEzKQVtSYM2', '2023-05-25 13:14:51');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` enum('Present','Absent') DEFAULT 'Absent'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `class_name`) VALUES
(1, 'FYBCS'),
(2, 'SYBCS'),
(3, 'TYBCS');

-- --------------------------------------------------------

--
-- Table structure for table `fystudent`
--

CREATE TABLE `fystudent` (
  `srollno` int(11) NOT NULL,
  `sfirstname` varchar(255) NOT NULL,
  `smiddlename` varchar(255) NOT NULL,
  `slastname` varchar(255) NOT NULL,
  `sgender` varchar(255) NOT NULL,
  `scrn` int(11) NOT NULL,
  `sclass` varchar(255) NOT NULL,
  `susername` varchar(255) NOT NULL,
  `spassword` varchar(255) NOT NULL,
  `sdateCreated` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `semesters`
--

CREATE TABLE `semesters` (
  `semester_id` int(11) NOT NULL,
  `semester_name` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `subject_id` int(11) NOT NULL,
  `subject_name` varchar(255) NOT NULL,
  `tid` int(11) DEFAULT NULL,
  `semester_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`subject_id`, `subject_name`, `tid`, `semester_id`, `class_id`) VALUES
(111, 'C programming', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `systudent`
--

CREATE TABLE `systudent` (
  `srollno` int(11) NOT NULL,
  `sfirstname` varchar(255) NOT NULL,
  `smiddlename` varchar(255) NOT NULL,
  `slastname` varchar(255) NOT NULL,
  `sgender` varchar(255) NOT NULL,
  `scrn` int(11) NOT NULL,
  `sclass` varchar(255) NOT NULL,
  `susername` varchar(255) NOT NULL,
  `spassword` varchar(255) NOT NULL,
  `sdateCreated` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `systudent`
--

INSERT INTO `systudent` (`srollno`, `sfirstname`, `smiddlename`, `slastname`, `sgender`, `scrn`, `sclass`, `susername`, `spassword`, `sdateCreated`) VALUES
(4, 'Harshal', 'Roshangir', 'Bawa', 'Male', 313234, 'SYBSc(Computer Science)', '', '', '2023-05-25');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `tid` int(11) NOT NULL,
  `tfirstName` varchar(255) NOT NULL,
  `tmiddleName` varchar(255) NOT NULL,
  `tlastName` varchar(255) NOT NULL,
  `tgender` varchar(255) NOT NULL,
  `tdateCreated` datetime NOT NULL,
  `tpassword` varchar(255) DEFAULT NULL,
  `tusername` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`tid`, `tfirstName`, `tmiddleName`, `tlastName`, `tgender`, `tdateCreated`, `tpassword`, `tusername`) VALUES
(1, 'Seema', 'S', 'Bonde', 'Female', '2023-05-25 15:30:29', '$2y$10$K0Wr8A2VOAnyRFv2slXGeeeOOzUY2xI05b5aZDHuUq6NLONr3DGOu', 'seema123');

-- --------------------------------------------------------

--
-- Table structure for table `tystudent`
--

CREATE TABLE `tystudent` (
  `srollno` int(11) NOT NULL,
  `sfirstname` varchar(255) NOT NULL,
  `smiddlename` varchar(255) NOT NULL,
  `slastname` varchar(255) NOT NULL,
  `sgender` varchar(255) NOT NULL,
  `scrn` int(11) NOT NULL,
  `sclass` varchar(255) NOT NULL,
  `susername` varchar(255) NOT NULL,
  `spassword` varchar(255) DEFAULT NULL,
  `sdateCreated` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tystudent`
--

INSERT INTO `tystudent` (`srollno`, `sfirstname`, `smiddlename`, `slastname`, `sgender`, `scrn`, `sclass`, `susername`, `spassword`, `sdateCreated`) VALUES
(2, 'Prashant', 'Ghevarchand', 'Dasnur', 'Male', 1, 'TYBSc(Computer Science)', '', '', '2023-05-25'),
(1, 'Ganesh', 'Manohar', 'Zankar', 'Male', 313233, 'SYBSc(Computer Science)', '', NULL, '2023-05-25'),
(7, 'Akash', 'Sudam', 'Gore', 'Male', 414243, 'TYBSc(Computer Science)', 'akash28', '$2y$10$F3nGVoNCSeb5DURS8IE3GOCm.HejhtXtl4ePzb9oxSgqWX/GV7nbS', '2023-05-25'),
(3, 'khushal', 'Sopan', 'Dusane', 'Male', 414244, 'TYBSc(Computer Science)', '', NULL, '2023-05-25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `fystudent`
--
ALTER TABLE `fystudent`
  ADD PRIMARY KEY (`scrn`);

--
-- Indexes for table `semesters`
--
ALTER TABLE `semesters`
  ADD PRIMARY KEY (`semester_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subject_id`),
  ADD KEY `tid` (`tid`),
  ADD KEY `semester_id` (`semester_id`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `systudent`
--
ALTER TABLE `systudent`
  ADD PRIMARY KEY (`scrn`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `tystudent`
--
ALTER TABLE `tystudent`
  ADD PRIMARY KEY (`scrn`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`subject_id`);

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_ibfk_1` FOREIGN KEY (`tid`) REFERENCES `teacher` (`tid`),
  ADD CONSTRAINT `subjects_ibfk_2` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`semester_id`),
  ADD CONSTRAINT `subjects_ibfk_3` FOREIGN KEY (`class_id`) REFERENCES `class` (`class_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
