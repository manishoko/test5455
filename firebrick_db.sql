-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2018 at 12:56 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `firebrick_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `fb_block_contant_table`
--

CREATE TABLE `fb_block_contant_table` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(500) NOT NULL,
  `master_tag_id` varchar(11) NOT NULL,
  `meta_tag_id` varchar(50) NOT NULL,
  `task_deadline_date` date NOT NULL,
  `task_deadline_time` time NOT NULL,
  `due_date_status` int(11) NOT NULL DEFAULT '0',
  `task_assign_user` varchar(20) NOT NULL,
  `active_status` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `bucket_id` int(11) NOT NULL,
  `task_status` int(11) NOT NULL,
  `BoardId` varchar(50) NOT NULL,
  `notify` int(11) NOT NULL DEFAULT '1',
  `sort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fb_block_contant_table`
--

INSERT INTO `fb_block_contant_table` (`id`, `title`, `description`, `master_tag_id`, `meta_tag_id`, `task_deadline_date`, `task_deadline_time`, `due_date_status`, `task_assign_user`, `active_status`, `status`, `create_date`, `update_date`, `user_id`, `bucket_id`, `task_status`, `BoardId`, `notify`, `sort`) VALUES
(1, 'Three js', 'cZXczxcxzc', '5', '1,2,4', '2018-06-28', '11:32:00', 1, '3,4,2,5', 1, 1, '2018-06-05 08:04:25', '2018-07-03 12:37:41', 1, 4, 0, '1@admin.Firebrick', 1, 0),
(3, 'Node js', 'zxczxczx', '2', '3,1,4', '2018-06-30', '11:35:00', 1, '2,4,3', 0, 1, '2018-06-05 08:08:20', '2018-07-03 12:37:40', 1, 2, 0, '5@admin.Firebrick', 1, 0),
(4, 'html css task', 'cxzczxcz', '4', '3,6,1', '2018-06-27', '11:35:00', 0, '3,2', 0, 1, '2018-06-05 08:08:58', '2018-07-03 11:59:48', 1, 5, 0, '6@admin.Firebrick', 0, 0),
(5, 'Union js', '', '', '', '2018-07-04', '12:31:00', 0, '', 0, 1, '2018-07-03 09:02:27', '2018-07-03 12:37:42', 1, 2, 1, '5@admin.Firebrick', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `fb_block_files`
--

CREATE TABLE `fb_block_files` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `block_id` int(11) NOT NULL,
  `bucket_id` int(11) NOT NULL,
  `board_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fb_block_files`
--

INSERT INTO `fb_block_files` (`id`, `name`, `block_id`, `bucket_id`, `board_id`, `create_date`, `update_date`, `user_id`) VALUES
(1, 'Koala.jpg', 8, 3, 2, '2018-06-06 03:03:28', '0000-00-00 00:00:00', 1),
(2, '31_top.png', 2, 2, 2, '2018-06-06 03:04:20', '0000-00-00 00:00:00', 1),
(3, 'Hydrangeas.jpg', 8, 3, 3, '2018-06-19 08:34:30', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fb_main_board_bucket`
--

CREATE TABLE `fb_main_board_bucket` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Status` int(11) NOT NULL,
  `Create_date` datetime NOT NULL,
  `Update_date` datetime NOT NULL,
  `User_id` int(11) NOT NULL,
  `lock_status` int(11) NOT NULL DEFAULT '0',
  `is_hide` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fb_main_board_bucket`
--

INSERT INTO `fb_main_board_bucket` (`Id`, `Name`, `Status`, `Create_date`, `Update_date`, `User_id`, `lock_status`, `is_hide`) VALUES
(1, 'New Bucket', 1, '2018-05-31 08:11:37', '2018-06-26 12:57:29', 1, 0, 0),
(2, 'IceBox', 1, '2018-05-31 08:11:42', '2018-06-26 13:31:04', 1, 0, 0),
(4, 'Doing', 1, '2018-05-31 08:11:50', '2018-07-03 08:46:31', 1, 0, 0),
(5, 'Done', 1, '2018-06-01 07:48:20', '2018-06-27 15:07:31', 1, 0, 0),
(6, 'Testing', 1, '2018-06-01 13:36:50', '2018-06-26 12:10:53', 2, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `fb_metatag_bucket`
--

CREATE TABLE `fb_metatag_bucket` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Status` int(11) NOT NULL,
  `Create_date` datetime NOT NULL,
  `Update_date` datetime NOT NULL,
  `User_id` int(11) NOT NULL,
  `color` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fb_metatag_bucket`
--

INSERT INTO `fb_metatag_bucket` (`Id`, `Name`, `Status`, `Create_date`, `Update_date`, `User_id`, `color`) VALUES
(1, 'urgent', 1, '2018-06-05 07:48:09', '0000-00-00 00:00:00', 1, '#F7F9F9'),
(2, 'call', 1, '2018-06-05 07:48:09', '0000-00-00 00:00:00', 1, '#ABB2B9'),
(3, 'invioce', 1, '2018-06-05 07:54:50', '0000-00-00 00:00:00', 1, '#EDBB99'),
(4, 'demo', 1, '2018-06-05 07:56:53', '0000-00-00 00:00:00', 1, '#E5E7E9'),
(5, 'xczxczx', 1, '2018-06-05 07:59:00', '0000-00-00 00:00:00', 1, '#A3E4D7'),
(6, 'czczxczxc', 1, '2018-06-05 07:59:41', '0000-00-00 00:00:00', 1, '#F5CBA7'),
(7, 'demo1', 1, '2018-06-05 11:14:33', '0000-00-00 00:00:00', 1, '#A9CCE3'),
(8, 'test', 1, '2018-06-05 11:14:33', '0000-00-00 00:00:00', 1, '#EDBB99'),
(9, 'sa', 1, '2018-06-06 12:56:05', '0000-00-00 00:00:00', 1, '#EDBB99'),
(10, 'dummy', 1, '2018-06-12 10:42:03', '0000-00-00 00:00:00', 1, '#AED6F1');

-- --------------------------------------------------------

--
-- Table structure for table `fb_person_bucket`
--

CREATE TABLE `fb_person_bucket` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Status` int(11) NOT NULL,
  `Create_date` datetime NOT NULL,
  `Update_date` datetime NOT NULL,
  `User_id` int(11) NOT NULL,
  `color` varchar(10) NOT NULL,
  `special_id` int(11) NOT NULL DEFAULT '0',
  `lock_status` int(11) NOT NULL DEFAULT '0',
  `is_hide` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fb_person_bucket`
--

INSERT INTO `fb_person_bucket` (`Id`, `Name`, `Status`, `Create_date`, `Update_date`, `User_id`, `color`, `special_id`, `lock_status`, `is_hide`) VALUES
(2, 'Designer', 1, '2018-05-31 08:06:25', '2018-06-18 13:01:48', 1, '', 0, 0, 0),
(3, 'Developer', 1, '2018-05-31 08:07:47', '2018-06-26 13:32:00', 1, '', 0, 0, 0),
(4, 'Imported contacts', 1, '2018-06-01 09:40:14', '0000-00-00 00:00:00', 1, 'tag1', 1, 0, 0),
(5, 'Internal Stackholder', 1, '2018-06-01 09:40:31', '0000-00-00 00:00:00', 1, 'tag2', 1, 0, 0),
(6, 'External Stackholder', 1, '2018-06-01 09:40:52', '0000-00-00 00:00:00', 1, 'tag3', 1, 0, 0),
(7, 'Tester', 1, '2018-06-01 09:51:49', '0000-00-00 00:00:00', 1, '', 0, 0, 0),
(8, 'Sale team', 1, '2018-06-01 10:09:14', '0000-00-00 00:00:00', 2, '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `fb_per_block_data`
--

CREATE TABLE `fb_per_block_data` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(500) NOT NULL,
  `master_tag_id` varchar(11) NOT NULL,
  `meta_tag_id` varchar(11) NOT NULL,
  `task_deadline_date` date NOT NULL,
  `task_deadline_time` time NOT NULL,
  `task_assign_user` varchar(20) NOT NULL,
  `active_status` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `bucket_id` int(11) NOT NULL,
  `task_status` int(11) NOT NULL,
  `notify` int(11) NOT NULL DEFAULT '1',
  `perId` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fb_per_block_data`
--

INSERT INTO `fb_per_block_data` (`id`, `title`, `description`, `master_tag_id`, `meta_tag_id`, `task_deadline_date`, `task_deadline_time`, `task_assign_user`, `active_status`, `status`, `create_date`, `update_date`, `user_id`, `bucket_id`, `task_status`, `notify`, `perId`, `sort`) VALUES
(2, 'Arjun', 'xcvxcvxcvxcvxcvxvxcv', '2', '1,2', '2018-06-27', '11:30:00', '1', 1, 1, '2018-06-05 07:55:56', '2018-07-03 08:34:25', 1, 2, 1, 0, '', 0),
(3, 'Ankit', 'nvbnvbnvbnvbnvbn', '2', '1,3,4', '2018-06-22', '11:30:00', '1,2', 1, 1, '2018-06-05 07:56:53', '2018-07-03 08:34:25', 1, 2, 0, 0, '', 1),
(4, 'Raghav', 'vcxvxcvcxvxcvcxvxcvxc', '2', '1,2,4', '2018-06-23', '11:30:00', '1,3', 1, 1, '2018-06-05 07:57:38', '2018-07-03 08:34:25', 1, 3, 0, 0, '', 0),
(5, 'pradeep', 'nmnbmnbmnbmnbmb', '3', '3,5', '2018-06-28', '11:30:00', '2,4', 1, 1, '2018-06-05 08:01:33', '2018-07-03 08:34:25', 1, 7, 0, 1, '', 0),
(6, 'chetan', 'cvxcvcxv', '6', '1,3', '2018-06-20', '11:45:00', '5,3', 1, 1, '2018-06-05 08:02:17', '2018-07-03 08:34:26', 1, 8, 0, 1, '', 0),
(7, 'varun', 'cvxcvxcvxcvvcvxc', '7', '5,3,2', '2018-06-28', '11:45:00', '2,6,4', 1, 1, '2018-06-05 08:02:57', '2018-07-03 08:34:25', 1, 3, 0, 0, '', 1),
(8, 'vivek', 'cvxcvxcvxcvvcvxc', '6', '5,3,2', '2018-06-19', '11:45:00', '2,6,4,3', 0, 1, '2018-06-05 08:03:21', '2018-07-03 08:34:25', 1, 3, 0, 0, '', 2),
(9, 'Suresh', 'cvxcvxcvxcvvcvxc', '2', '5,3,2,4', '2018-06-19', '11:45:00', '2,6,4', 1, 1, '2018-06-05 08:03:40', '2018-07-03 08:34:25', 1, 2, 0, 1, '', 2),
(13, 'Manish', 'test', '2', '1,4,5', '2018-06-20', '01:30:00', '', 0, 1, '2018-06-06 09:56:13', '2018-07-03 08:34:26', 1, 8, 0, 0, '13@admin.Firebrick', 1),
(14, 'Aman', '', '', '3', '2018-06-19', '07:00:00', '', 0, 1, '2018-06-18 03:22:54', '2018-07-03 08:34:25', 1, 7, 0, 0, '14@admin.Firebrick', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fb_tag_block_data`
--

CREATE TABLE `fb_tag_block_data` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(500) NOT NULL,
  `master_tag_id` varchar(20) NOT NULL DEFAULT '0',
  `meta_tag_id` varchar(50) NOT NULL,
  `task_deadline_date` date NOT NULL,
  `task_deadline_time` time NOT NULL,
  `due_date_status` int(11) NOT NULL DEFAULT '0',
  `task_assign_user` varchar(20) NOT NULL,
  `active_status` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `bucket_id` int(11) NOT NULL,
  `task_status` int(11) NOT NULL,
  `TagId` varchar(100) NOT NULL,
  `notify` int(11) NOT NULL DEFAULT '1',
  `color` varchar(10) NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fb_tag_block_data`
--

INSERT INTO `fb_tag_block_data` (`id`, `title`, `description`, `master_tag_id`, `meta_tag_id`, `task_deadline_date`, `task_deadline_time`, `due_date_status`, `task_assign_user`, `active_status`, `status`, `create_date`, `update_date`, `user_id`, `bucket_id`, `task_status`, `TagId`, `notify`, `color`, `sort`) VALUES
(1, 'story1', 'nvbnvbnvbn', '3', '1', '2018-06-07', '03:45:00', 0, '1', 0, 1, '2018-06-05 07:53:00', '2018-07-03 08:34:18', 1, 5, 1, '1@admin.Firebrick', 1, '#4D5656', 0),
(2, 'Story 2', 'bnvbnvb\r\n', '1', '1,3', '2018-06-07', '05:30:00', 0, '1', 0, 1, '2018-06-05 07:54:50', '2018-07-03 08:34:18', 1, 5, 1, '2@admin.Firebrick', 1, '#7B7D7D', 1),
(3, 'Angular1', 'dsfdsfdsfsdfs', '2', '1,3', '2018-06-06', '11:30:00', 0, '1,3,4,5', 0, 1, '2018-06-05 07:58:34', '2018-07-03 08:34:17', 1, 2, 1, '3@admin.Firebrick', 0, '#186A3B', 0),
(4, 'Angular 2', 'zxczxczxczx \r\n\r\n', '3', '2,4,5', '2018-06-07', '05:30:00', 0, '1,4,2', 0, 1, '2018-06-05 07:59:00', '2018-07-03 08:34:17', 1, 2, 0, '4@admin.Firebrick', 0, '#4A235A', 1),
(5, 'client 1', 'xcxzczxczxc', '3', '3,5,6', '2018-06-27', '06:15:00', 0, '4,2', 0, 1, '2018-06-05 07:59:41', '2018-07-03 08:34:17', 1, 3, 0, '5@admin.Firebrick', 0, '#784212', 0),
(6, 'client2', 'bnvbnvb', '5', '1,4', '2018-06-26', '11:30:00', 0, '3,4', 0, 1, '2018-06-05 08:00:13', '2018-07-03 08:34:18', 1, 4, 1, '6@admin.Firebrick', 0, '#1B4F72', 0),
(7, 'Wordpress 1', 'vbnvbnvnvnvbn', '3', '5,3,2', '2018-06-07', '05:30:00', 0, '4,2', 0, 1, '2018-06-05 08:00:54', '2018-07-03 08:34:18', 1, 4, 1, '7@admin.Firebrick', 0, '#0E6251', 1),
(8, 'client 3', 'ghfghfghfghfghfghfg', '1', '3,7,8', '2018-06-20', '12:15:00', 0, '7,5', 0, 1, '2018-06-05 11:14:33', '2018-07-03 08:34:18', 1, 3, 0, '8@admin.Firebrick', 0, '#7D6608', 1),
(9, 'Story 3', 'dfg', '1', '2', '2018-06-14', '03:15:00', 0, '1', 1, 1, '2018-06-06 12:13:16', '2018-07-03 08:34:18', 1, 5, 1, '9@admin.Firebrick', 1, '#7E5109', 2),
(11, 'Angular 3', 'cfxvcx', '1', '2', '2018-06-07', '05:30:00', 0, '2', 0, 1, '2018-06-06 12:53:26', '2018-07-03 08:34:18', 1, 4, 0, '11@admin.Firebrick', 0, '#0E6251', 2);

-- --------------------------------------------------------

--
-- Table structure for table `fb_tag_bucket`
--

CREATE TABLE `fb_tag_bucket` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Status` int(11) NOT NULL,
  `Create_date` datetime NOT NULL,
  `Update_date` datetime NOT NULL,
  `User_id` int(11) NOT NULL,
  `color` varchar(10) NOT NULL,
  `tagId` varchar(100) NOT NULL,
  `lock_status` int(11) NOT NULL DEFAULT '0',
  `is_hide` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fb_tag_bucket`
--

INSERT INTO `fb_tag_bucket` (`Id`, `Name`, `Status`, `Create_date`, `Update_date`, `User_id`, `color`, `tagId`, `lock_status`, `is_hide`) VALUES
(1, 'New Bucket', 1, '2018-05-31 07:47:49', '0000-00-00 00:00:00', 1, '#186A3B', '1@admin.Firebrick', 0, 0),
(2, 'Angular', 1, '2018-05-31 07:47:51', '2018-06-26 14:33:01', 1, '#7B7D7D', '2@admin.Firebrick', 0, 0),
(3, 'Client', 1, '2018-06-01 12:29:25', '2018-06-19 07:52:15', 1, '#4D5656', '3@admin.Firebrick', 0, 0),
(4, 'Wordpress', 1, '2018-06-01 12:29:46', '2018-06-18 13:38:12', 1, '#7E5109', '4@admin.Firebrick', 0, 0),
(5, 'Story', 1, '2018-06-01 12:30:04', '0000-00-00 00:00:00', 1, '#154360', '5@admin.Firebrick', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `fb_user`
--

CREATE TABLE `fb_user` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `telephone` int(11) NOT NULL,
  `country` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `state` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `user_role` int(11) NOT NULL DEFAULT '0',
  `profile_img` varchar(255) NOT NULL DEFAULT 'Penguins.jpg '
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fb_user`
--

INSERT INTO `fb_user` (`id`, `firstname`, `lastname`, `email`, `title`, `telephone`, `country`, `city`, `password`, `username`, `state`, `dob`, `create_date`, `update_date`, `status`, `user_role`, `profile_img`) VALUES
(1, 'Ankiesh', 'Demo', 'anikesh.linuxbean@gmail.com', 'Testing', 2147483647, 'India', 'indore', 'e6e061838856bf47e1de730719fb2609', 'admin', 'Lakshadweep', '2018-06-18', '2018-06-01 09:57:45', '0000-00-00 00:00:00', 1, 1, 'img.jpg '),
(2, 'Raghav', 'Demo', 'raghav.linuxbean@gmail.com', 'Testing', 2147483647, 'India', 'indore', 'b12332d2e6ae412b27d567ecb092eb64', 'raghav', 'Lakshadweep', '2018-06-18', '2018-06-01 09:59:56', '0000-00-00 00:00:00', 1, 1, 'image2.png '),
(3, 'gfjl', 'ldfkgjdlsgjkl', 'dfljs@ljgfsjklds.dgfsjg', 'ldfsgjdfklsj', 2147483647, 'Afghanistan', 'd', 'e6e061838856bf47e1de730719fb2609', 'admin1', 'Badakhshan', '2018-06-21', '2018-06-21 08:14:05', '0000-00-00 00:00:00', 1, 1, ' ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fb_block_contant_table`
--
ALTER TABLE `fb_block_contant_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fb_block_files`
--
ALTER TABLE `fb_block_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fb_main_board_bucket`
--
ALTER TABLE `fb_main_board_bucket`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `fb_metatag_bucket`
--
ALTER TABLE `fb_metatag_bucket`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `fb_person_bucket`
--
ALTER TABLE `fb_person_bucket`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `fb_per_block_data`
--
ALTER TABLE `fb_per_block_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fb_tag_block_data`
--
ALTER TABLE `fb_tag_block_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fb_tag_bucket`
--
ALTER TABLE `fb_tag_bucket`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `fb_user`
--
ALTER TABLE `fb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fb_block_contant_table`
--
ALTER TABLE `fb_block_contant_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `fb_block_files`
--
ALTER TABLE `fb_block_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fb_main_board_bucket`
--
ALTER TABLE `fb_main_board_bucket`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `fb_metatag_bucket`
--
ALTER TABLE `fb_metatag_bucket`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `fb_person_bucket`
--
ALTER TABLE `fb_person_bucket`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `fb_per_block_data`
--
ALTER TABLE `fb_per_block_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `fb_tag_block_data`
--
ALTER TABLE `fb_tag_block_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `fb_tag_bucket`
--
ALTER TABLE `fb_tag_bucket`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `fb_user`
--
ALTER TABLE `fb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
