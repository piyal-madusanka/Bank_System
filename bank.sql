-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2020 at 08:58 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `acc_number` varchar(250) NOT NULL,
  `member_id` varchar(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `telephone` bigint(20) NOT NULL,
  `deposit` double NOT NULL,
  `social_fund` int(11) NOT NULL,
  `dob` varchar(250) NOT NULL,
  `nic` varchar(250) NOT NULL,
  `gender` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `acc_number`, `member_id`, `name`, `address`, `telephone`, `deposit`, `social_fund`, `dob`, `nic`, `gender`) VALUES
(5, 'A0001', 'M0001', 'w.wasantha', 'obadagahadeniya,katuwana', 774038850, 8650, 0, '05-16-1994', '59234562v', 'male');

-- --------------------------------------------------------

--
-- Table structure for table `family_member`
--

CREATE TABLE `family_member` (
  `id` int(11) NOT NULL,
  `family_member_id` varchar(250) NOT NULL,
  `member_id` varchar(250) NOT NULL,
  `name` varchar(150) NOT NULL,
  `address` varchar(150) NOT NULL,
  `nic` varchar(150) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `income` float NOT NULL,
  `telephone` int(11) NOT NULL,
  `gender` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `family_member`
--

INSERT INTO `family_member` (`id`, `family_member_id`, `member_id`, `name`, `address`, `nic`, `dob`, `income`, `telephone`, `gender`) VALUES
(8, 'FM0001', 'M0001', 'w.Athilini', 'katuwana', '948603560v', '09-11-2005', 10000, 4038829, 'female'),
(9, 'FM0002', 'M0002', 'chathiri', 'wathukanda', '98765434v', '02-05-2020', 10000, 989887766, 'male');

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE `loan` (
  `id` int(11) NOT NULL,
  `acc_no` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `nic` varchar(100) NOT NULL,
  `loan_type` varchar(100) NOT NULL,
  `rate` varchar(100) NOT NULL,
  `amount_of_loan` varchar(100) NOT NULL,
  `monthly_payment` varchar(100) NOT NULL,
  `total_payment` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `loan_balance` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loan`
--

INSERT INTO `loan` (`id`, `acc_no`, `name`, `nic`, `loan_type`, `rate`, `amount_of_loan`, `monthly_payment`, `total_payment`, `date`, `loan_balance`) VALUES
(5, 'A0001', 'w.wasantha', '59234562v', 'dftg', '8', '300000', '9000.0', '324000.0', '', 315000);

-- --------------------------------------------------------

--
-- Table structure for table `lottery`
--

CREATE TABLE `lottery` (
  `id` int(11) NOT NULL,
  `acc_number` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `value` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lottery`
--

INSERT INTO `lottery` (`id`, `acc_number`, `date`, `name`, `value`) VALUES
(6, 'A0001', '', 'w.wasantha', '50');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `member_id` varchar(250) NOT NULL,
  `name` varchar(150) NOT NULL,
  `address` varchar(200) NOT NULL,
  `nic` varchar(100) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `monthly_income` double NOT NULL,
  `telephone` int(11) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `fund` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `member_id`, `name`, `address`, `nic`, `dob`, `monthly_income`, `telephone`, `gender`, `fund`) VALUES
(10, 'M0001', 'w.wasantha', 'obadagahadeniya,katuwana', '59234562v', '05-16-1994', 10000, 774038829, 'male', 3500),
(11, 'M0002', 'w.siriyawathi', 'wathukanda', '54789932v', '02-09-2005', 10000, 41235674, 'female', 1500);

-- --------------------------------------------------------

--
-- Table structure for table `scholedetail`
--

CREATE TABLE `scholedetail` (
  `id` int(11) NOT NULL,
  `member_id` varchar(100) NOT NULL,
  `family_member_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mother_name` varchar(100) NOT NULL,
  `farther_name` varchar(100) NOT NULL,
  `school_name` varchar(100) NOT NULL,
  `maths` varchar(10) NOT NULL,
  `english` varchar(10) NOT NULL,
  `science` varchar(10) NOT NULL,
  `history` varchar(10) NOT NULL,
  `buddhist` varchar(10) NOT NULL,
  `sinhala` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scholedetail`
--

INSERT INTO `scholedetail` (`id`, `member_id`, `family_member_id`, `name`, `mother_name`, `farther_name`, `school_name`, `maths`, `english`, `science`, `history`, `buddhist`, `sinhala`) VALUES
(3, 'M0001', 'FM0001', 'w.Athilini', 'dsd', 'dsd', 'dsd', 'A', 'A', 'A', 'A', 'A', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `scholership`
--

CREATE TABLE `scholership` (
  `id` int(11) NOT NULL,
  `member_id` varchar(100) NOT NULL,
  `family_member_id` varchar(100) NOT NULL,
  `acc_number` varchar(100) NOT NULL,
  `adddress` varchar(100) NOT NULL,
  `telephone` int(11) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `nic` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `deposit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scholership`
--

INSERT INTO `scholership` (`id`, `member_id`, `family_member_id`, `acc_number`, `adddress`, `telephone`, `dob`, `nic`, `gender`, `deposit`) VALUES
(3, 'M0002', 'FM0002', 'SA001', 'wathukanda', 989887740, '02-05-2020', '98765434v', 'male', 500);

-- --------------------------------------------------------

--
-- Table structure for table `shocial_fund_detail`
--

CREATE TABLE `shocial_fund_detail` (
  `id` int(11) NOT NULL,
  `acc_number` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `nic` varchar(100) NOT NULL,
  `reason` varchar(100) NOT NULL,
  `release_money` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shocial_fund_detail`
--

INSERT INTO `shocial_fund_detail` (`id`, `acc_number`, `name`, `nic`, `reason`, `release_money`) VALUES
(1, 'A0001', 'w.wasantha', '59234562v', 'fff', '0');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `acc_number` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `compulsary` int(11) NOT NULL,
  `social_security` int(11) NOT NULL,
  `housing_lottery` int(11) NOT NULL,
  `withdrawl` int(11) NOT NULL,
  `balance` int(11) NOT NULL,
  `deposit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `acc_number`, `date`, `compulsary`, `social_security`, `housing_lottery`, `withdrawl`, `balance`, `deposit`) VALUES
(14, 'A0001', '0', 0, 0, 0, 0, 500, 500),
(15, 'A0001', '', 300, 100, 50, 0, 3550, 3500),
(16, 'A0001', '', 0, 0, 0, 3000, 550, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'thilini', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `family_member`
--
ALTER TABLE `family_member`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lottery`
--
ALTER TABLE `lottery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `scholedetail`
--
ALTER TABLE `scholedetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scholership`
--
ALTER TABLE `scholership`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shocial_fund_detail`
--
ALTER TABLE `shocial_fund_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `family_member`
--
ALTER TABLE `family_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `loan`
--
ALTER TABLE `loan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `lottery`
--
ALTER TABLE `lottery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `scholedetail`
--
ALTER TABLE `scholedetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `scholership`
--
ALTER TABLE `scholership`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `shocial_fund_detail`
--
ALTER TABLE `shocial_fund_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `family_member`
--
ALTER TABLE `family_member`
  ADD CONSTRAINT `family_member` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
