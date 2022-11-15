-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2022 at 08:53 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assignment`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Employee_id` int(100) NOT NULL,
  `First_name` varchar(100) DEFAULT NULL,
  `Last_name` varchar(100) DEFAULT NULL,
  `Salary` int(100) DEFAULT NULL,
  `Joining_date` date DEFAULT NULL,
  `Department` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `RollNo` int(100) DEFAULT NULL,
  `S_code` varchar(100) DEFAULT NULL,
  `Marks` varchar(100) DEFAULT NULL,
  `P_code` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`RollNo`, `S_code`, `Marks`, `P_code`) VALUES
(1, 'CS11', '50', 'CS'),
(1, 'CS12', '60', 'CS'),
(2, 'EC101', '66', 'EC'),
(2, 'EC102', '70', 'EC'),
(3, 'EC101', '45', 'EC'),
(3, 'EC102', '50', 'EC');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `RollNo` int(100) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Branch` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`RollNo`, `Name`, `Branch`) VALUES
(1, 'Jay', 'Computer Science'),
(2, 'Suhani', 'Electronic and Com'),
(3, 'Kriti', 'Electronic and Com');

-- --------------------------------------------------------

--
-- Table structure for table `task1user`
--

CREATE TABLE `task1user` (
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `age` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `task1user`
--

INSERT INTO `task1user` (`firstname`, `lastname`, `address`, `city`, `age`) VALUES
('Micky', 'Mouse', '123 Fantasy Way', 'Anaheim', 73),
('Bat', 'Man', '321 cavern Ave', 'Gotham', 54),
('Wonder', 'Women', '987 Truth way', 'paradise', 39),
('Donald', 'Duck', '555 Quack Street', 'Mallard', 65),
('Bugs', 'Bunny', '567 carrot street', 'Rascal', 58),
('Wiley', 'coyote', '999 acme way', 'canyon', 61),
('Cat', 'Women', '234 purrfect Street', 'hairball', 32),
('Tweety', 'Bird', '543', 'itotltaw', 28);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Employee_id`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD KEY `RollNo` (`RollNo`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`RollNo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `Employee_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `RollNo` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `exam`
--
ALTER TABLE `exam`
  ADD CONSTRAINT `exam_ibfk_1` FOREIGN KEY (`RollNo`) REFERENCES `student` (`RollNo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
