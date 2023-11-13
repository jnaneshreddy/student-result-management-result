-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2023 at 09:44 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"srms\",\"table\":\"tblstudents\"},{\"db\":\"srms\",\"table\":\"tblnotice\"},{\"db\":\"srms\",\"table\":\"tblresult\"},{\"db\":\"srms\",\"table\":\"tblclasses\"},{\"db\":\"srms\",\"table\":\"admin\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-08-19 06:10:19', '{\"collation_connection\":\"utf8mb4_unicode_ci\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Database: `srms`
--
CREATE DATABASE IF NOT EXISTS `srms` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `srms`;

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
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2022-01-01 10:30:57');

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
(1, 'BCA 1st Year', 1, '-', '2022-01-01 10:30:57', '2022-01-01 10:30:57'),
(2, 'BCA 2nd Year', 2, '-', '2022-01-01 10:30:57', '2022-01-01 10:30:57'),
(4, 'BCA 3rd Year', 3, '-', '2022-01-01 10:30:57', '2022-01-01 10:30:57'),
(5, 'BSC 1st year', 4, '-', '2022-01-01 10:30:57', '2022-01-01 10:30:57'),
(6, 'BSC 2nd Year', 5, '-', '2022-01-01 10:30:57', '2022-01-01 10:30:57'),
(7, 'BSC 3rd Year', 6, '-', '2022-01-01 10:30:57', '2022-01-01 10:30:57'),
(8, 'BCOM 1st Year', 7, '-', '2022-01-01 10:30:57', '2022-01-01 10:30:57'),
(9, 'BCOM 2nd Year', 8, '-', '2022-01-01 15:17:32', NULL),
(10, 'BCOM 3rd Year', 9, '-', '2023-07-03 09:12:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblnotice`
--

CREATE TABLE `tblnotice` (
  `id` int(11) NOT NULL,
  `noticeTitle` varchar(255) DEFAULT NULL,
  `noticeDetails` mediumtext,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblnotice`
--

INSERT INTO `tblnotice` (`id`, `noticeTitle`, `noticeDetails`, `postingDate`) VALUES
(5, 'Testing Notice Module', 'This is the testing text to check the notice board module ', '2023-07-10 14:31:00');

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

--
-- Dumping data for table `tblresult`
--

INSERT INTO `tblresult` (`id`, `StudentId`, `ClassId`, `SubjectId`, `marks`, `PostingDate`, `UpdationDate`) VALUES
(2, 1, 1, 2, 100, '2022-01-01 10:30:57', NULL),
(3, 1, 1, 1, 80, '2022-01-01 10:30:57', NULL),
(4, 1, 1, 5, 78, '2022-01-01 10:30:57', NULL),
(5, 1, 1, 4, 60, '2022-01-01 10:30:57', NULL),
(6, 2, 4, 2, 90, '2022-01-01 10:30:57', NULL),
(7, 2, 4, 1, 75, '2022-01-01 10:30:57', NULL),
(8, 2, 4, 5, 56, '2022-01-01 10:30:57', NULL),
(9, 2, 4, 4, 80, '2022-01-01 10:30:57', NULL),
(10, 4, 7, 2, 54, '2022-01-01 10:30:57', NULL),
(11, 4, 7, 1, 85, '2022-01-01 10:30:57', NULL),
(12, 4, 7, 5, 55, '2022-01-01 10:30:57', NULL),
(13, 4, 7, 7, 65, '2022-01-01 10:30:57', NULL),
(14, 5, 8, 2, 75, '2022-01-01 10:30:57', NULL),
(15, 5, 8, 1, 56, '2022-01-01 10:30:57', NULL),
(16, 5, 8, 5, 52, '2022-01-01 10:30:57', NULL),
(17, 5, 8, 4, 80, '2022-01-01 10:30:57', NULL),
(18, 6, 9, 8, 80, '2022-01-01 15:20:18', NULL),
(19, 6, 9, 8, 70, '2022-01-01 15:20:18', NULL),
(20, 6, 9, 2, 90, '2022-01-01 15:20:18', NULL),
(21, 6, 9, 1, 60, '2022-01-01 15:20:18', NULL),
(22, 8, 1, 11, 90, '2023-07-10 14:27:37', NULL),
(23, 8, 1, 12, 100, '2023-07-10 14:27:37', NULL),
(24, 8, 1, 13, 88, '2023-07-10 14:27:37', NULL),
(25, 8, 1, 2, 98, '2023-07-10 14:27:37', NULL),
(26, 8, 1, 1, 98, '2023-07-10 14:27:37', NULL),
(27, 19, 7, 22, 100, '2023-07-10 14:36:35', NULL),
(28, 19, 7, 2, 100, '2023-07-10 14:36:35', NULL),
(29, 19, 7, 1, 100, '2023-07-10 14:36:35', NULL),
(30, 19, 7, 28, 8, '2023-07-10 14:36:35', NULL),
(31, 19, 7, 25, 100, '2023-07-10 14:36:35', NULL);

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
(7, 'Bhuvan reddy', 'R0002', 'Bhuvanreddy@gmail.com', 'Male', '2023-07-10', 1, '2023-07-10 14:10:55', NULL, 1),
(8, 'Azeem Basha', 'R0003', 'Azeemmessi@gmail.com', 'Male', '2001-06-12', 1, '2023-07-10 14:12:21', NULL, 1),
(9, 'Charran', 'T0001', 'Charran@gmail.com', 'Male', '1995-10-24', 2, '2023-07-10 14:13:14', NULL, 1),
(10, 'Bhargav Reddy', 'T0002', 'Bhargavreddy@gmail.com', 'Male', '1999-06-23', 2, '2023-07-10 14:14:04', NULL, 1),
(11, 'Sheshank reddy', 'T0003', 'Shashankreddy@gmail.com', 'Male', '1995-10-18', 2, '2023-07-10 14:14:51', NULL, 1),
(12, 'Abhishek reddy', 'Y0001', 'Abhi@gmail.com', 'Male', '2021-06-25', 4, '2023-07-10 14:15:36', NULL, 1),
(13, 'Vinoth Kumar', 'Y0002', 'Kumarvinoth@gmail.com', 'Male', '2002-02-13', 4, '2023-07-10 14:16:27', NULL, 1),
(14, 'Kushal', 'R0004', 'Kushal@gmail.com', 'Male', '2005-10-18', 8, '2023-07-10 14:20:22', NULL, 1),
(15, 'Rehan', 'T0004', 'Reh@gmail.com', 'Male', '2023-07-10', 9, '2023-07-10 14:21:09', NULL, 1),
(16, 'Visahl Anand Reddy', 'T0003', 'VAreddy@gmail.com', 'Male', '2001-05-23', 10, '2023-07-10 14:21:58', NULL, 1),
(17, 'Rajesh reddy', 'R0005', 'Rajesh@gmail.com', 'Male', '2002-10-17', 5, '2023-07-10 14:22:44', NULL, 1),
(18, 'Nithin Reddy', 'T0005', 'Reddynithi@gmail.com', 'Male', '2023-07-10', 6, '2023-07-10 14:23:30', NULL, 1),
(19, 'Vedesh Reddy', 'Y0004', 'vedesh@gmail.com', 'Male', '1995-06-27', 7, '2023-07-10 14:24:17', NULL, 1),
(20, 'jnanesh reddy', 'R0001', 'jnaneshreddyv730@gmail.com', 'Male', '2002-02-12', 1, '2023-07-10 14:26:57', NULL, 1);

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
(3, 2, 5, 1, '2022-01-01 10:30:57', NULL),
(32, 1, 1, 1, '2023-07-10 13:55:49', NULL),
(33, 1, 2, 1, '2023-07-10 13:55:55', NULL),
(34, 1, 11, 1, '2023-07-10 13:56:03', NULL),
(35, 1, 12, 1, '2023-07-10 13:56:15', NULL),
(36, 1, 13, 1, '2023-07-10 13:56:24', NULL),
(37, 2, 1, 1, '2023-07-10 13:59:05', '2023-07-10 14:00:53'),
(38, 2, 2, 1, '2023-07-10 13:59:11', NULL),
(39, 2, 14, 1, '2023-07-10 13:59:24', NULL),
(40, 2, 15, 1, '2023-07-10 13:59:31', NULL),
(41, 2, 16, 1, '2023-07-10 13:59:39', NULL),
(42, 4, 2, 1, '2023-07-10 13:59:56', NULL),
(43, 4, 2, 1, '2023-07-10 14:00:01', NULL),
(44, 4, 17, 1, '2023-07-10 14:00:08', NULL),
(45, 4, 19, 1, '2023-07-10 14:00:16', NULL),
(46, 4, 18, 1, '2023-07-10 14:00:22', NULL),
(47, 5, 1, 1, '2023-07-10 14:01:30', NULL),
(48, 5, 2, 1, '2023-07-10 14:01:38', NULL),
(49, 5, 20, 1, '2023-07-10 14:01:47', NULL),
(50, 5, 23, 1, '2023-07-10 14:01:53', NULL),
(51, 5, 26, 1, '2023-07-10 14:02:09', NULL),
(52, 6, 1, 1, '2023-07-10 14:02:18', NULL),
(53, 6, 2, 1, '2023-07-10 14:02:25', NULL),
(54, 6, 21, 1, '2023-07-10 14:02:32', NULL),
(55, 6, 24, 1, '2023-07-10 14:02:39', NULL),
(56, 9, 27, 1, '2023-07-10 14:02:51', NULL),
(57, 7, 1, 1, '2023-07-10 14:03:23', NULL),
(58, 7, 2, 1, '2023-07-10 14:03:30', NULL),
(59, 7, 22, 1, '2023-07-10 14:03:39', NULL),
(60, 7, 25, 1, '2023-07-10 14:03:46', NULL),
(61, 7, 28, 1, '2023-07-10 14:03:55', NULL),
(62, 8, 1, 1, '2023-07-10 14:04:41', NULL),
(63, 8, 2, 1, '2023-07-10 14:04:46', NULL),
(64, 8, 29, 1, '2023-07-10 14:04:59', NULL),
(65, 8, 30, 1, '2023-07-10 14:05:06', NULL),
(66, 8, 31, 1, '2023-07-10 14:05:12', NULL),
(67, 9, 1, 1, '2023-07-10 14:05:36', NULL),
(68, 9, 2, 1, '2023-07-10 14:05:42', NULL),
(69, 9, 32, 1, '2023-07-10 14:05:52', NULL),
(70, 9, 33, 1, '2023-07-10 14:06:00', NULL),
(71, 9, 34, 1, '2023-07-10 14:06:07', NULL),
(72, 10, 1, 1, '2023-07-10 14:06:12', NULL),
(73, 10, 2, 1, '2023-07-10 14:06:19', NULL),
(74, 10, 35, 1, '2023-07-10 14:06:29', NULL),
(75, 10, 36, 1, '2023-07-10 14:06:35', NULL),
(76, 10, 37, 1, '2023-07-10 14:06:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjects`
--

CREATE TABLE `tblsubjects` (
  `id` int(11) NOT NULL,
  `SubjectName` varchar(100) NOT NULL,
  `SubjectCode` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjects`
--

INSERT INTO `tblsubjects` (`id`, `SubjectName`, `SubjectCode`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Kannada', 'MTH01', '2022-01-01 10:30:57', NULL),
(2, 'English', 'ENG11', '2022-01-01 10:30:57', NULL),
(11, 'C Language ', 'C01', '2023-07-10 13:34:22', NULL),
(12, 'Data Structures', 'DS01', '2023-07-10 13:36:23', NULL),
(13, 'Discrete Mathematics', 'DM01', '2023-07-10 13:37:29', NULL),
(14, 'CPP', 'CPP01', '2023-07-10 13:39:12', NULL),
(15, 'Java', 'JA01', '2023-07-10 13:39:29', NULL),
(16, 'Analytical and Statistical Mathematics', 'ASM01', '2023-07-10 13:40:24', NULL),
(17, 'Python', 'PY01', '2023-07-10 13:41:36', NULL),
(18, 'Web Devlopment', 'WD01', '2023-07-10 13:41:56', NULL),
(19, 'Analysis and Design of Algorithms', 'ADA01', '2023-07-10 13:42:46', NULL),
(20, 'Chemistry-1', 'CM01', '2023-07-10 13:43:42', NULL),
(21, 'Chemistry - 2', 'CM02', '2023-07-10 13:44:03', NULL),
(22, 'Chemistry - 3', 'CM03', '2023-07-10 13:44:15', NULL),
(23, 'Physics - 1', 'PH01', '2023-07-10 13:45:57', NULL),
(24, 'Physics - 2', 'PH02', '2023-07-10 13:46:47', NULL),
(25, 'Physics - 3', 'PH03', '2023-07-10 13:47:02', NULL),
(26, 'Mathematics - 1', 'MAT01', '2023-07-10 13:47:37', NULL),
(27, 'Mathematics - 2', 'MAT02', '2023-07-10 13:47:47', NULL),
(28, 'Mathematics - 3', 'MAT03', '2023-07-10 13:47:56', NULL),
(29, ' Financial Accounting', 'FA01', '2023-07-10 13:48:58', NULL),
(30, 'Business Organisation And Management ', 'BOM01', '2023-07-10 13:49:26', NULL),
(31, 'Environmental Studies', 'EVS01', '2023-07-10 13:50:00', NULL),
(32, 'Company Law', 'CL01', '2023-07-10 13:50:20', NULL),
(33, 'Income Tax Law and Practice', 'ITLP01', '2023-07-10 13:51:27', NULL),
(34, 'Cyber Crimes and Law', 'CCL01', '2023-07-10 13:51:51', NULL),
(35, 'Human Resource Management ', 'HRM01', '2023-07-10 13:52:15', NULL),
(36, 'Auditing And Corporate Governace ', 'ACG01', '2023-07-10 13:52:43', NULL),
(37, 'Document Management System ', 'DMS01', '2023-07-10 13:53:07', NULL);

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
-- Indexes for table `tblnotice`
--
ALTER TABLE `tblnotice`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblclasses`
--
ALTER TABLE `tblclasses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tblnotice`
--
ALTER TABLE `tblnotice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tblresult`
--
ALTER TABLE `tblresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `StudentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;--
-- Database: `supermarket`
--
CREATE DATABASE IF NOT EXISTS `supermarket` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `supermarket`;

-- --------------------------------------------------------

--
-- Table structure for table `buy`
--

CREATE TABLE `buy` (
  `purchase_id` int(11) NOT NULL,
  `purchase_date` date NOT NULL,
  `pids` text NOT NULL,
  `total_amount` int(11) NOT NULL,
  `profit` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buy`
--

INSERT INTO `buy` (`purchase_id`, `purchase_date`, `pids`, `total_amount`, `profit`, `cid`) VALUES
(1, '2012-11-02', '2,5,11', 6250, 850, 0),
(2, '2012-11-02', '2,5,11,8', 7250, 950, 0),
(3, '2012-11-02', '8,5,1', 46120, 5120, 0),
(4, '2012-11-02', '8,1', 2200, 300, 0),
(5, '2012-11-02', '1', 1200, 200, 0),
(6, '2012-11-02', '1,10,5', 123700, 12700, 0),
(7, '2012-11-02', '1,1', 12000, 2000, 0),
(8, '2012-11-02', '14', 1575, 175, 0),
(9, '2012-11-03', '14,13', 350, 38, 1),
(10, '2012-11-03', '13', 125, 13, 1),
(11, '2012-11-03', '18', 22, 6, 1),
(12, '2012-11-03', '13,19', 1275, 135, 0),
(13, '2012-11-03', '14,21', 2205, 35, 0),
(14, '2012-11-03', '41', 629, 90, 1),
(15, '2012-11-03', '39,21,25', 467, 114, 1),
(16, '2012-11-03', '19', 10, 2, 0),
(17, '2012-11-03', '17,25', 620, 100, 0),
(18, '2012-11-03', '23,16', 999, 209, 0),
(19, '2012-11-03', '26,16', 2300, 550, 1),
(20, '2012-11-03', '16,29', 33169, 2346, 1),
(21, '2012-11-03', '19', 50, 10, 0),
(22, '2012-11-03', '16', 355, 130, 0),
(23, '2012-11-10', '15,22', 520, 140, 0),
(24, '2012-11-10', '16', 128, 38, 0),
(25, '2012-11-10', '15', 420, 120, 3),
(26, '2012-11-10', '23', 200, 30, 3),
(27, '2012-11-12', '21', 180, 10, 0),
(28, '2012-11-12', '22,29', 32939, 2261, 3),
(29, '2012-11-14', '16,19', 684, 194, 3),
(30, '2013-02-11', '15,22', 604, 164, 0),
(31, '2013-03-01', '24', 100, 20, 2),
(32, '2013-04-13', '15', 42, 12, 0),
(33, '2013-04-13', '13', 375, -81, 0),
(34, '2013-04-22', '34', 2198, 444, 55),
(35, '2021-03-31', '51', 2000, -6200, 0),
(36, '2021-03-31', '13', 250, 22, 0),
(37, '2021-03-31', '51,52,47,35', 158648, -69990, 1),
(38, '2021-03-31', '52', 120350, -140650, 0),
(39, '2021-03-31', '25', 1350, 189, 1),
(40, '2021-03-31', '47', 10235000, -979000, 1),
(41, '2021-03-31', '51,52,39', 7948, -13852, 0);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cid` int(11) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `cjoin_date` date NOT NULL,
  `cmoney_spent` int(11) NOT NULL,
  `caddress` varchar(50) NOT NULL,
  `cmoney_spent_reset` int(5) NOT NULL,
  `cphone` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cid`, `first_name`, `last_name`, `cjoin_date`, `cmoney_spent`, `caddress`, `cmoney_spent_reset`, `cphone`) VALUES
(1, 'James', 'Doe', '2016-03-04', 10431585, '1995  Carriage Lane', 0, 145554780),
(2, 'Gregory', 'Lamont', '2017-06-01', 100, '1204  Cabell Avenue', 0, 974544520),
(3, 'Ian', 'McKenzie', '2013-07-11', 34243, '2346  Peck Court', 0, 124577780);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `manager_id` int(11) NOT NULL,
  `dept_id` int(5) NOT NULL,
  `dept_name` varchar(40) NOT NULL,
  `manager_start_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`manager_id`, `dept_id`, `dept_name`, `manager_start_date`) VALUES
(1, 1, 'Books', '2013-03-09'),
(1, 2, 'Electronics', '2012-10-31'),
(1, 3, 'Clothes', '2012-10-31'),
(0, 4, 'Household', '2012-10-31'),
(1, 5, 'Furniture', '2012-10-31'),
(1, 6, 'Handicraft', '2012-11-03'),
(1, 7, 'Toys', '2012-11-12'),
(1, 8, 'Food', '2012-10-31'),
(19, 9, 'Demo Department', '2021-03-31');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `id` int(11) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `salary` int(8) NOT NULL,
  `phone_number` int(12) NOT NULL,
  `address` varchar(60) NOT NULL,
  `uid` int(11) NOT NULL,
  `join_date` date NOT NULL,
  `dob` date NOT NULL,
  `end_date` date NOT NULL DEFAULT '0000-00-00',
  `perks` int(11) NOT NULL DEFAULT '0',
  `admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`first_name`, `last_name`, `id`, `dept_id`, `salary`, `phone_number`, `address`, `uid`, `join_date`, `dob`, `end_date`, `perks`, `admin`) VALUES
('Owner', 'Own', 1, 0, 50000, 99999999, 'H.no12, Example Nagar', 78945, '2012-10-31', '1992-10-01', '0000-00-00', 0, 2),
('Hayward', 'Strm', 2, 1, 50000, 99994444, 'L-502', 11, '2012-10-31', '1992-12-11', '0000-00-00', 0, 1),
('Deborah', 'James', 11, 4, 25000, 44889922, 'House #39, Gandhi Nagar, Hyderabad', 22889, '2012-11-03', '1992-04-02', '0000-00-00', 0, 1),
('Harry', 'Denn', 19, 0, 35000, 984545441, 'Blecker St', 69, '2021-03-31', '1992-10-15', '0000-00-00', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `id` int(11) NOT NULL,
  `admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`, `id`, `admin`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 1, 2),
('pramodh', '1952a01898073d1e561b9b4f2e42cbd7', 2, 1),
('christine', '5f4dcc3b5aa765d61d8327deb882cf99', 4, 1),
('sam', '5f4dcc3b5aa765d61d8327deb882cf99', 7, 0),
('steeve', '5f4dcc3b5aa765d61d8327deb882cf99', 8, 1),
('bruno', '5f4dcc3b5aa765d61d8327deb882cf99', 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders_from`
--

CREATE TABLE `orders_from` (
  `status` tinyint(2) NOT NULL,
  `order_id` int(11) NOT NULL,
  `department_id` int(5) NOT NULL,
  `pid` int(11) NOT NULL,
  `sid` int(5) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `cost_price` int(7) NOT NULL,
  `supplier_id` int(6) NOT NULL,
  `product_name` varchar(20) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `product_type` int(11) NOT NULL,
  `market_price` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `cost_price`, `supplier_id`, `product_name`, `quantity`, `product_type`, `market_price`) VALUES
(13, 125, 5, 'Dexter', 398, 4, 114),
(16, 71, 15, 'Pride and Prejudice', 48, 4, 45),
(21, 20, 15, 'Five Point Someone', 79, 1, 17),
(23, 20, 15, 'Gulliver\'s Travels', 20, 1, 17),
(25, 50, 5, 'Game of Thrones', 1, 1, 43),
(31, 450, 13, 'GuBurn Toaster TT390', 7, 2, 377),
(33, 399, 13, 'Kunchua Electric Iro', 30, 2, 279),
(34, 1099, 13, 'LG Rice Cooker  RC48', 8, 2, 877),
(35, 6500, 16, 'Nike Jacket JK3390R', 14, 3, 12000),
(37, 599, 16, 'Levis Jeans RF390F34', 4, 3, 430),
(39, 399, 16, 'Reebok Track RT101B3', 1, 3, 250),
(40, 659, 16, 'Levis Jeans SF30B34', 7, 3, 499),
(47, 115000, 13, 'Apple iphone X', 10, 2, 126000),
(48, 450, 5, 'Harry Potter', 100, 1, 500),
(51, 1000, 17, 'Long Hoodie', 40, 3, 4100),
(52, 4150, 17, 'DemoProduct', 29, 6, 9000);

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE `promotion` (
  `discount` int(3) NOT NULL,
  `valid_upto` date NOT NULL,
  `promo_code` int(11) NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `promotion`
--

INSERT INTO `promotion` (`discount`, `valid_upto`, `promo_code`, `count`) VALUES
(25, '2021-01-14', 2, 1),
(10, '2022-04-01', 3, 9);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `sdealer` varchar(20) NOT NULL,
  `semail` varchar(40) NOT NULL,
  `sid` int(11) NOT NULL,
  `saddress` varchar(50) NOT NULL,
  `sname` varchar(20) NOT NULL,
  `sphone` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`sdealer`, `semail`, `sid`, `saddress`, `sname`, `sphone`) VALUES
('Gordon Food Service', 'gorderlf00ds@gmail.com', 5, 'Wyoming, MI', 'John Smith', 145557850),
('Siysco Corp', 'macvoy@sisyco.com', 11, 'Houston, TX', 'Jame Macvoy', 786969696),
('Keyheey Distributors', 'moorestep@fail.com', 13, 'Naperville, IL', 'Stephen Moore', 2147483647),
('Reynhert Services', 'clancy69@gmail.com', 15, 'Chicago, IL', 'Tommy Clancy', 1796969690),
('MC Factory Outlet', 'mcfact@gmail.com', 16, 'Rosemont, IL', 'Thomas Eddie', 258785452),
('Bowerr Suppliers', 'martin@supp.com', 17, 'Hope Street', 'Martin Bowerr', 2267);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `p_name` varchar(40) NOT NULL,
  `pid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1',
  `price` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buy`
--
ALTER TABLE `buy`
  ADD PRIMARY KEY (`purchase_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cid`),
  ADD UNIQUE KEY `cphone` (`cphone`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uid` (`uid`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_from`
--
ALTER TABLE `orders_from`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`promo_code`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `sphone` (`sphone`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buy`
--
ALTER TABLE `buy`
  MODIFY `purchase_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `dept_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `orders_from`
--
ALTER TABLE `orders_from`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `promotion`
--
ALTER TABLE `promotion`
  MODIFY `promo_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
