-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 17, 2019 at 02:00 PM
-- Server version: 5.7.17-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
--

-- --------------------------------------------------------

--
-- Table structure for table `all_filesvpn`
--

CREATE TABLE `all_filesvpn` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `file_sim` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `file_pro` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `file_ovpn` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `file_ehi` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `all_filesvpn`
--

INSERT INTO `all_filesvpn` (`id`, `file_name`, `file_sim`, `file_pro`, `file_ovpn`, `file_ehi`) VALUES
(1, 'https://m.mediafire.com/welcome', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `all_program`
--

CREATE TABLE `all_program` (
  `id` int(11) NOT NULL,
  `pritunl` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `pcvpn` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `appvpn` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `apphttp` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `all_program`
--

INSERT INTO `all_program` (`id`, `pritunl`, `pcvpn`, `appvpn`, `apphttp`) VALUES
(1, 'https://m.mediafire.com/welcome', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `asset`
--

CREATE TABLE `asset` (
  `id` int(11) NOT NULL,
  `promox` int(1) NOT NULL DEFAULT '1',
  `rekening` varchar(999) CHARACTER SET utf8 DEFAULT NULL,
  `bank` varchar(999) CHARACTER SET utf8 DEFAULT NULL,
  `pemilik` varchar(999) CHARACTER SET utf8 DEFAULT NULL,
  `nohp` varchar(999) CHARACTER SET utf8 DEFAULT NULL,
  `provider` varchar(999) CHARACTER SET utf8 DEFAULT NULL,
  `webname` varchar(999) CHARACTER SET utf8 DEFAULT NULL,
  `fbchat` varchar(999) CHARACTER SET utf8 DEFAULT NULL,
  `fbface` varchar(999) CHARACTER SET utf8 DEFAULT NULL,
  `fbgroup` varchar(999) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asset`
--

INSERT INTO `asset` (`id`, `promox`, `rekening`, `bank`, `pemilik`, `nohp`, `provider`, `webname`, `fbchat`, `fbface`, `fbgroup`) VALUES
(1, 1, NULL, NULL, 'ชื่อwallet', 'เบอร์wallet', 'เครือข่ายมือถือ', NULL, NULL, NULL, NULL),
(2, 1, 'โบนัสการเติมเงิน', 'ยังไม่มี ช่วงนี้จน...', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 1, NULL, NULL, NULL, NULL, NULL, 'ชื่อเว็บไซต์', 'ติดต่อแอดมิน', 'หน้าเฟสแอดมิน', 'กลุ่มเว็บไซต์');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) CHARACTER SET utf8 NOT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8 NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `continent`
--

CREATE TABLE `continent` (
  `Id` int(11) NOT NULL,
  `Name` varchar(20) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `continent`
--

INSERT INTO `continent` (`Id`, `Name`) VALUES
(1, 'Asia'),
(2, 'North America'),
(3, 'Europe'),
(4, 'South America'),
(5, 'Africa'),
(6, 'Oceania');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `Id` int(11) NOT NULL,
  `Name` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `Country` varchar(20) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`Id`, `Name`, `Country`) VALUES
(1, 'Asia', 'Singapore'),
(2, 'Asia', 'Thailand'),
(3, 'Asia', 'Japan'),
(4, 'Asia', 'Hongkong'),
(5, 'Europe', 'Netherlands'),
(6, 'Europe', 'Germani'),
(7, 'Europe', 'France'),
(8, 'Europe', 'Luxembourg'),
(9, 'North-America', 'NY-USA'),
(10, 'North-America', 'Canada'),
(11, 'North-America', 'LA-USA'),
(12, 'South-America', 'NY-USA'),
(14, 'Africa', 'Johanesburg'),
(15, 'Oceania', 'Australia'),
(16, 'North-America', 'Austria');

-- --------------------------------------------------------

--
-- Table structure for table `deposit`
--

CREATE TABLE `deposit` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `pesan` text CHARACTER SET utf8 NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `jumlah` int(11) DEFAULT NULL,
  `created_at` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `histrory`
--

CREATE TABLE `histrory` (
  `NumberWallet` varchar(14) NOT NULL,
  `money` float NOT NULL,
  `username` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `NumberPhone` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `new_news`
--

CREATE TABLE `new_news` (
  `id` int(11) NOT NULL,
  `news_title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `news_new` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `news_data` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `new_news`
--

INSERT INTO `new_news` (`id`, `news_title`, `news_new`, `news_data`) VALUES
(1, 'NULL', 'NULL', 'NULL');

-- --------------------------------------------------------

--
-- Table structure for table `pro_ais`
--

CREATE TABLE `pro_ais` (
  `id` int(11) NOT NULL,
  `a_descrip` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `a_phone` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `a_link` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `a_button` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pro_dtac`
--

CREATE TABLE `pro_dtac` (
  `id` int(11) NOT NULL,
  `d_descrip` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `d_phone` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `d_link` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `d_button` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pro_true`
--

CREATE TABLE `pro_true` (
  `id` int(11) NOT NULL,
  `t_descrip` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `t_phone` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `t_link` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `t_button` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `server`
--

CREATE TABLE `server` (
  `Id` int(11) NOT NULL,
  `HostName` varchar(23) DEFAULT NULL,
  `RootPasswd` varchar(25) NOT NULL,
  `MaxUser` int(11) NOT NULL DEFAULT '50',
  `Expired` int(11) NOT NULL DEFAULT '7',
  `ServerName` varchar(20) DEFAULT NULL,
  `Location` varchar(20) DEFAULT NULL,
  `OpenSSH` varchar(20) NOT NULL DEFAULT '22',
  `Dropbear` varchar(20) NOT NULL DEFAULT '443',
  `Price` int(10) DEFAULT '10',
  `Status` int(11) NOT NULL DEFAULT '1',
  `limitssh` varchar(20) NOT NULL DEFAULT '2',
  `limitvpn` varchar(20) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=tis620;

-- --------------------------------------------------------

--
-- Table structure for table `sshuser`
--

CREATE TABLE `sshuser` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `hostname` varchar(20) NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `created_at` date NOT NULL,
  `expired_at` int(11) NOT NULL DEFAULT '30',
  `serverid` int(11) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `exp` varchar(55) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_roles`
--

CREATE TABLE `tbl_roles` (
  `roleId` tinyint(4) NOT NULL COMMENT 'role id',
  `role` varchar(50) NOT NULL COMMENT 'role text'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_roles`
--

INSERT INTO `tbl_roles` (`roleId`, `role`) VALUES
(1, 'Admin'),
(2, 'Yönetici'),
(3, 'Çalışan');

-- --------------------------------------------------------

--
-- Table structure for table `terms_use`
--

CREATE TABLE `terms_use` (
  `id` int(11) NOT NULL,
  `terms_agree` varchar(999) CHARACTER SET utf8 DEFAULT NULL,
  `terms_note` varchar(999) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `terms_use`
--

INSERT INTO `terms_use` (`id`, `terms_agree`, `terms_note`) VALUES
(1, 'การใช้งาน ความเร็วอินเตอร์เน็ต ขึ้นอยู่หลายปัจจัย หากเน็ตช้าหรือมีปัญหา กรุณาตรวจสอบปัญหาให้แน่ชัดก่อน ว่าเกิดจากอะไร เเล้วค่อยเเจ้งปัญหามา หากปัญหาเกิดจาก เครื่องหรือพื้นที่ใช้งาน ทางผู้ดูเเลจะไม่สามารถเเก้ไขปัญหาให้ได้ ผู้ดูเเลสามารถแก้ได้เฉพาะปัญหา ที่เกิดจากเซิฟเวอร์เท่านั้น', 'กรณีโฮสดับ โดนอุด ต้องรอจนกว่าจะหาโฮสใหม่ได้ จะไม่มีการคืนเงินทุกกรณี');

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

CREATE TABLE `token` (
  `id` int(11) NOT NULL,
  `login` varchar(50) DEFAULT NULL,
  `wallet` varchar(50) DEFAULT NULL,
  `add_vpn` varchar(50) DEFAULT NULL,
  `nohp` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `token`
--

INSERT INTO `token` (`id`, `login`, `wallet`, `add_vpn`, `nohp`) VALUES
(1, 'ล็อกอินเข้าสู่ระบบ', 'ตรวจสอบการเติมเงิน', 'ตรวจสอบการเช่าเซิร์ฟ', 'NULL');

-- --------------------------------------------------------

--
-- Table structure for table `truemoney`
--

CREATE TABLE `truemoney` (
  `id` bigint(20) NOT NULL,
  `card` varchar(14) NOT NULL,
  `uid` varchar(50) NOT NULL,
  `uip` varchar(16) NOT NULL,
  `amount` int(4) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tw_transactions`
--

CREATE TABLE `tw_transactions` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `txn_id` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `userlimit`
--

CREATE TABLE `userlimit` (
  `Id` int(11) NOT NULL,
  `Hostname` varchar(23) CHARACTER SET utf8 DEFAULT NULL,
  `Counter` int(11) DEFAULT NULL,
  `Date` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `avatar` varchar(255) DEFAULT 'default.jpg',
  `saldo` float NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `is_admin` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `is_confirmed` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `active` int(1) NOT NULL DEFAULT '1',
  `online` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT 'offline',
  `online_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `script_vpns` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vpn_script`
--

CREATE TABLE `vpn_script` (
  `id` int(11) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `buy` varchar(255) NOT NULL,
  `exp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vpn_script`
--

INSERT INTO `vpn_script` (`id`, `ip`, `name`, `buy`, `exp`) VALUES
(1, '127.0.0.1', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

CREATE TABLE `wallet` (
  `id` int(11) NOT NULL,
  `passwd` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `nohp` varchar(50) DEFAULT NULL,
  `persen` int(2) NOT NULL DEFAULT '0',
  `x2` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wallet`
--

INSERT INTO `wallet` (`id`, `passwd`, `phone`, `email`, `nohp`, `persen`, `x2`) VALUES
(1, 'รหัสผ่านwallet', 'ใส่เบอร์', 'อีเมล์wallet', NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `website`
--

CREATE TABLE `website` (
  `id` int(11) NOT NULL,
  `brand` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT 'lnw-service',
  `author` varchar(20) CHARACTER SET utf8 NOT NULL,
  `title` text CHARACTER SET utf8,
  `description` text CHARACTER SET utf8 NOT NULL,
  `keyword` text CHARACTER SET utf8 NOT NULL,
  `theme_servers` int(1) NOT NULL,
  `theme_create` int(1) NOT NULL DEFAULT '2',
  `api_truewallet` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `website`
--

INSERT INTO `website` (`id`, `brand`, `author`, `title`, `description`, `keyword`, `theme_servers`, `theme_create`, `api_truewallet`) VALUES
(1, 'lnw-service', '', NULL, '', '', 4, 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `all_filesvpn`
--
ALTER TABLE `all_filesvpn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `all_program`
--
ALTER TABLE `all_program`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asset`
--
ALTER TABLE `asset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `continent`
--
ALTER TABLE `continent`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `deposit`
--
ALTER TABLE `deposit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `histrory`
--
ALTER TABLE `histrory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_news`
--
ALTER TABLE `new_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pro_ais`
--
ALTER TABLE `pro_ais`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pro_dtac`
--
ALTER TABLE `pro_dtac`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pro_true`
--
ALTER TABLE `pro_true`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `server`
--
ALTER TABLE `server`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `sshuser`
--
ALTER TABLE `sshuser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  ADD PRIMARY KEY (`roleId`);

--
-- Indexes for table `terms_use`
--
ALTER TABLE `terms_use`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `truemoney`
--
ALTER TABLE `truemoney`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tw_transactions`
--
ALTER TABLE `tw_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlimit`
--
ALTER TABLE `userlimit`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vpn_script`
--
ALTER TABLE `vpn_script`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet`
--
ALTER TABLE `wallet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `website`
--
ALTER TABLE `website`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `all_filesvpn`
--
ALTER TABLE `all_filesvpn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `all_program`
--
ALTER TABLE `all_program`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `asset`
--
ALTER TABLE `asset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `continent`
--
ALTER TABLE `continent`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `deposit`
--
ALTER TABLE `deposit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `histrory`
--
ALTER TABLE `histrory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `new_news`
--
ALTER TABLE `new_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pro_ais`
--
ALTER TABLE `pro_ais`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pro_dtac`
--
ALTER TABLE `pro_dtac`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pro_true`
--
ALTER TABLE `pro_true`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `server`
--
ALTER TABLE `server`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sshuser`
--
ALTER TABLE `sshuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  MODIFY `roleId` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT 'role id', AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `terms_use`
--
ALTER TABLE `terms_use`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `token`
--
ALTER TABLE `token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `truemoney`
--
ALTER TABLE `truemoney`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tw_transactions`
--
ALTER TABLE `tw_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `userlimit`
--
ALTER TABLE `userlimit`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vpn_script`
--
ALTER TABLE `vpn_script`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wallet`
--
ALTER TABLE `wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `website`
--
ALTER TABLE `website`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
