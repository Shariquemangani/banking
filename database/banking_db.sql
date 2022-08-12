-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2022 at 11:19 AM
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
-- Database: `banking_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(30) NOT NULL,
  `account_number` varchar(50) NOT NULL,
  `pin` text NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `middlename` varchar(250) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `generated_password` text NOT NULL,
  `balance` float NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `account_number`, `pin`, `firstname`, `lastname`, `middlename`, `email`, `password`, `generated_password`, `balance`, `date_created`, `date_updated`) VALUES
(4, '20193753758', '737448', 'Lucifer', 'Morningstar', '   ', 'lucifer65@gmail.com', '', 'lucifer123', 90000, '2022-06-29 13:49:43', '2022-06-29 14:43:11'),
(5, '20197635734', '434667', 'Chloe', 'Decker', '  ', 'decker87@gmail.com', '', 'decker123', 50000, '2022-06-29 13:51:29', '2022-06-29 14:41:26'),
(6, '20022757863', '565887', 'Ella ', 'Lopez', '   ', 'lopez65@gmail.com', '', 'lopez123', 35000, '2022-06-29 13:53:52', '2022-06-29 14:36:53'),
(7, '20217667672', '434667', 'Charlotte ', 'Wheeler', '  ', 'charlotte12@gmail.com', '', 'charlotte1234', 25000, '2022-06-29 13:56:37', '2022-06-29 14:36:12'),
(8, '20193753757', '737448', 'Jamie', 'Adrienne', ' Lee', 'jamielee15@gmail.com', '', 'jamie123', 70000, '2022-06-29 14:02:09', '2022-06-29 14:42:30'),
(9, '20193753754', '565887', 'Daniel ', 'Espinoza', '  ', 'dan65@gmail.com', '', 'Daniel123', 47000, '2022-06-29 14:04:03', '2022-06-29 14:40:08'),
(10, '20217667677', '434667', 'Lesley', 'Brandt', '-Ann', 'Lesley34@gmail.com', '', 'lesley123', 63000, '2022-06-29 14:10:30', '2022-06-29 14:39:41'),
(11, '20217667678', '565887', 'Inbar ', 'Lavi', '  ', 'inber17@gmail.com', '', 'inber123', 44000, '2022-06-29 14:12:26', '2022-06-29 14:38:10'),
(12, '20217667679', '565887', 'Dr. Linda', 'Martin', '  ', 'linda43@gmail.com', '', 'linda123', 101000, '2022-06-29 14:14:48', '2022-06-29 14:32:00'),
(13, '20193753753', '737448', 'Joe', 'Hanson', '  ', 'joe76@gmail.com', '', 'hanson123', 107500, '2022-06-29 14:20:05', '2022-06-29 14:40:52');

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` int(30) NOT NULL,
  `title` text NOT NULL,
  `announcement` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `title`, `announcement`, `date_created`, `date_updated`) VALUES
(1, 'Sample 101', '&lt;p&gt;This is a sample Announcement only.&lt;/p&gt;', '2021-07-14 14:10:09', '2021-07-14 14:11:30'),
(3, 'Sample', '&lt;hr style=&quot;margin: 0px; padding: 0px; clear: both; border-top: 0px; height: 1px; background-image: linear-gradient(to right, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.75), rgba(0, 0, 0, 0)); color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: center;&quot;&gt;&lt;div id=&quot;Content&quot; style=&quot;margin: 0px; padding: 0px; position: relative; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px; text-align: center;&quot;&gt;&lt;div id=&quot;bannerL&quot; style=&quot;margin: 0px 0px 0px -160px; padding: 0px; position: sticky; top: 20px; width: 160px; height: 10px; float: left; text-align: right;&quot;&gt;&lt;/div&gt;&lt;div id=&quot;bannerR&quot; style=&quot;margin: 0px -160px 0px 0px; padding: 0px; position: sticky; top: 20px; width: 160px; height: 10px; float: right; text-align: left;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;boxed&quot; style=&quot;margin: 10px 28.7969px; padding: 0px; clear: both;&quot;&gt;&lt;div id=&quot;lipsum&quot; style=&quot;margin: 0px; padding: 0px; text-align: justify;&quot;&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam et tempus leo. Nulla id sagittis libero. Cras est nisi, consequat ut vulputate eget, mattis non ante. Phasellus a lorem at nunc venenatis commodo. Donec vitae cursus augue. Donec eleifend molestie laoreet. Praesent dictum arcu ac congue molestie. Etiam nisl risus, blandit vel scelerisque eu, ultricies at mauris. Suspendisse non bibendum magna. Vestibulum porttitor enim a elit feugiat bibendum eu malesuada eros. Etiam eu est at neque dictum efficitur. Integer fermentum porttitor scelerisque.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;Nunc a leo rutrum, congue ex sit amet, laoreet tortor. Nunc at bibendum sapien. Cras libero nunc, varius quis ultricies non, finibus in quam. Aenean quis justo vitae purus ultrices luctus. Curabitur viverra non lacus vehicula malesuada. Phasellus convallis mattis libero eget accumsan. Ut sollicitudin mattis enim, bibendum eleifend felis euismod et. Etiam ut libero purus. Aenean vel sceleris&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;', '2021-07-14 14:33:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Online Banking System'),
(6, 'short_name', 'OBS'),
(11, 'logo', 'uploads/1655985240_1654606740_Bank1.jpg'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/1655985240_1654607280_header-img.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(30) NOT NULL,
  `account_id` int(30) NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT '1=Cash in, 2= Withdraw, 3=transfer',
  `amount` float NOT NULL,
  `remarks` text DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `account_id`, `type`, `amount`, `remarks`, `date_created`) VALUES
(1, 4, 1, 70000, 'Beginning balance', '2022-06-29 13:49:43'),
(2, 5, 1, 40000, 'Beginning balance', '2022-06-29 13:51:29'),
(3, 6, 1, 30000, 'Beginning balance', '2022-06-29 13:53:52'),
(4, 7, 1, 40000, 'Beginning balance', '2022-06-29 13:56:37'),
(5, 8, 1, 45000, 'Beginning balance', '2022-06-29 14:02:09'),
(6, 9, 1, 35000, 'Beginning balance', '2022-06-29 14:04:03'),
(7, 10, 1, 45000, 'Beginning balance', '2022-06-29 14:10:30'),
(8, 11, 1, 34000, 'Beginning balance', '2022-06-29 14:12:26'),
(9, 12, 1, 54000, 'Beginning balance', '2022-06-29 14:14:48'),
(10, 13, 1, 45500, 'Beginning balance', '2022-06-29 14:20:05'),
(27, 7, 1, 22000, 'Deposits', '2022-06-29 14:30:30'),
(28, 7, 3, 35000, 'Transferred to 20217667679', '2022-06-29 14:31:27'),
(29, 12, 3, 35000, 'Transferred from 20217667672', '2022-06-29 14:31:27'),
(30, 6, 3, 12000, 'Transferred to 20217667679', '2022-06-29 14:32:00'),
(31, 12, 3, 12000, 'Transferred from 20022757863', '2022-06-29 14:32:00'),
(32, 4, 3, 20000, 'Transferred to 20217667672', '2022-06-29 14:32:40'),
(33, 7, 3, 20000, 'Transferred from 20193753758', '2022-06-29 14:32:40'),
(34, 7, 3, 22000, 'Transferred to 20022757863', '2022-06-29 14:36:12'),
(35, 6, 3, 22000, 'Transferred from 20217667672', '2022-06-29 14:36:12'),
(36, 6, 1, 13000, 'Deposits', '2022-06-29 14:36:21'),
(37, 6, 1, 5000, 'Withdraw', '2022-06-29 14:36:33'),
(38, 6, 3, 13000, 'Transferred to 20193753753', '2022-06-29 14:36:53'),
(39, 13, 3, 13000, 'Transferred from 20022757863', '2022-06-29 14:36:53'),
(40, 13, 1, 45000, 'Deposits', '2022-06-29 14:37:04'),
(41, 10, 3, 10000, 'Transferred to 20217667678', '2022-06-29 14:38:10'),
(42, 11, 3, 10000, 'Transferred from 20217667677', '2022-06-29 14:38:10'),
(43, 10, 1, 40000, 'Deposits', '2022-06-29 14:38:42'),
(44, 10, 1, 35000, 'Withdraw', '2022-06-29 14:38:52'),
(45, 10, 1, 45000, 'Deposits', '2022-06-29 14:39:08'),
(46, 10, 3, 22000, 'Transferred to 20193753754', '2022-06-29 14:39:41'),
(47, 9, 3, 22000, 'Transferred from 20217667677', '2022-06-29 14:39:41'),
(48, 9, 1, 15000, 'Withdraw', '2022-06-29 14:39:53'),
(49, 9, 1, 5000, 'Deposits', '2022-06-29 14:40:08'),
(50, 5, 3, 4000, 'Transferred to 20193753753', '2022-06-29 14:40:52'),
(51, 13, 3, 4000, 'Transferred from 20197635734', '2022-06-29 14:40:52'),
(52, 5, 1, 20000, 'Deposits', '2022-06-29 14:41:15'),
(53, 5, 1, 6000, 'Withdraw', '2022-06-29 14:41:26'),
(54, 4, 3, 25000, 'Transferred to 20193753757', '2022-06-29 14:42:30'),
(55, 8, 3, 25000, 'Transferred from 20193753758', '2022-06-29 14:42:30'),
(56, 4, 1, 40000, 'Deposits', '2022-06-29 14:42:40'),
(57, 4, 1, 15000, 'Withdraw', '2022-06-29 14:42:58'),
(58, 4, 1, 40000, 'Deposits', '2022-06-29 14:43:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Shahajan', 'Mujawar', 'Shahajan Mujawar', '2a3a07f57c7b52fd8e924a0c57531bc6', 'uploads/1655985600_1654761360_D7lhQ-6WwAU90ZX.jpg', NULL, 1, '2021-01-20 14:02:37', '2022-06-29 14:27:57'),
(2, 'sharique', 'mangani', 'sharique_mangani', '81e7bda2f4164bf12e202ff450f8f92b', 'uploads/1655985600_1654761360_D7lhQ-6WwAU90ZX.jpg', NULL, 1, '2021-01-20 14:02:37', '2022-06-29 14:28:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
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
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
