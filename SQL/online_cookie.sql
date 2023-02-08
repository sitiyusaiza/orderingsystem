-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.33 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table online_cookie.admin
CREATE TABLE IF NOT EXISTS `admin` (
  `adm_id` int(222) NOT NULL AUTO_INCREMENT,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`adm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table online_cookie.admin: ~2 rows (approximately)
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
	(6, 'admin', '81dc9bdb52d04dc20036dbd8313ed055', 'admin@gmail.com', '', '2018-04-09 15:36:18');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;

-- Dumping structure for table online_cookie.branch
CREATE TABLE IF NOT EXISTS `branch` (
  `rs_id` int(222) NOT NULL AUTO_INCREMENT,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`rs_id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;

-- Dumping data for table online_cookie.branch: ~4 rows (approximately)
/*!40000 ALTER TABLE `branch` DISABLE KEYS */;
INSERT INTO `branch` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
	(59, 5, 'KELANTAN', 'cookiemonsterkelantan@gmail.com', '03-26872600', 'cookiemonsterkelantan.com', '8am', '5pm', '24hr-x7', 'Jalan Raja Perempuan Zainab Ii, Kubang Kerian, 16150\r\nKota Bharu, Kelantan, 16150', '61efe697d6f07.jpg', '2022-01-25 20:01:27'),
	(60, 5, 'PERAK', 'perakcookiemonster@gmail.com', '03-26872600', 'cookiemonsterperak.com', '9am', '6pm', 'mon-thu', ' Laluan Sri Ampang 6, Kampung Sri Ampang, 31350\r\nIpoh, Perak, 31350 ', '61f0ea801a826.jpg', '2022-01-26 14:30:24'),
	(61, 5, 'JOHOR', 'cookiemonsterjohor@gmail.com', '06986-6348', 'cookiemonsterjohor.com', '9am', '8pm', '24hr-x7', '11 Jln Permai Taman Sedili 81910 Kota Tinggi Kota Tinggi Johor 81910 Malaysia Kota Tinggi Johor 8191', '61f0ea63a61aa.jpg', '2022-01-26 14:29:55'),
	(62, 5, 'SELANGOR', 'cookiemonsterselangor@gmail.com', '(603) 55483427', 'cookiemonsterselangor.com', '10am', '6pm', '24hr-x7', 'Lot 2 Jalan Kecapi 33/2 Elite Industrial Park Off Jalan Bukit Kemuning Shah Alam 40000 Shah Alam 400', '61f0eb90d67ba.jpg', '2022-01-26 14:34:56');
/*!40000 ALTER TABLE `branch` ENABLE KEYS */;

-- Dumping structure for table online_cookie.branch_category
CREATE TABLE IF NOT EXISTS `branch_category` (
  `c_id` int(222) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table online_cookie.branch_category: ~3 rows (approximately)
/*!40000 ALTER TABLE `branch_category` DISABLE KEYS */;
INSERT INTO `branch_category` (`c_id`, `c_name`, `date`) VALUES
	(5, 'pick up only ', '2022-01-25 16:59:48');
/*!40000 ALTER TABLE `branch_category` ENABLE KEYS */;

-- Dumping structure for table online_cookie.cookie
CREATE TABLE IF NOT EXISTS `cookie` (
  `d_id` int(222) NOT NULL AUTO_INCREMENT,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- Dumping data for table online_cookie.cookie: ~11 rows (approximately)
/*!40000 ALTER TABLE `cookie` DISABLE KEYS */;
INSERT INTO `cookie` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
	(1, 62, 'Vampires Cookies', 'red velvet', 12.00, '61f0fa7df2723.jpg'),
	(2, 62, 'Spitemouth Cookies', 'regular', 12.00, '61f0fab152de0.jpg'),
	(3, 62, ' Grumpy Critter Cookies', 'chocolate', 12.00, '61f0fada859f5.jpg'),
	(4, 61, 'Grumpy Critter Cookies', 'chocolate', 12.00, '61f0fc2576f71.jpg'),
	(5, 61, 'Spitemouth Cookies', 'regular', 12.00, '61f0fc39c8b7a.jpg'),
	(6, 61, 'Vampires Cookies', 'red velvet', 12.00, '61f0fcb324e9f.jpg'),
	(7, 60, 'Grumpy Critter Cookies', 'chocolate', 12.00, '61f0fd086f60f.jpg'),
	(8, 60, 'Spitemouth Cookies', 'regular', 12.00, '61f0fd26df82f.jpg'),
	(9, 60, 'Vampires Cookies', 'red velvet', 12.00, '61f0fd6757260.jpg'),
	(10, 59, 'Grumpy Critter Cookies', 'chocolate', 12.00, '61f0fd8d9d505.jpg'),
	(11, 59, 'Spitemouth Cookies', 'regular', 12.00, '61f0fd9f3535c.jpg');
/*!40000 ALTER TABLE `cookie` ENABLE KEYS */;

-- Dumping structure for table online_cookie.remark
CREATE TABLE IF NOT EXISTS `remark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=latin1;

-- Dumping data for table online_cookie.remark: ~0 rows (approximately)
/*!40000 ALTER TABLE `remark` DISABLE KEYS */;
INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
	(80, 61, 'closed', 'done\r\n', '2022-01-26 21:01:14');
/*!40000 ALTER TABLE `remark` ENABLE KEYS */;

-- Dumping structure for table online_cookie.users
CREATE TABLE IF NOT EXISTS `users` (
  `u_id` int(222) NOT NULL AUTO_INCREMENT,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(222) NOT NULL DEFAULT '1',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

-- Dumping data for table online_cookie.users: ~11 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
	(39, 'wawa', 'wawa', 'zainal', 'wawazainal@gmail.com', '+0128765332', '52c69e3a57331081823331c4e69d3f2e', 'G Tan & Tan Jln Tun Razak 50400 Wilayah Persekutuan 50400 Malaysia 50400 Malaysia\r\nKuala Lumpur, selangor 50400', 1, '2022-01-26 16:16:58'),
	(40, 'sarah', 'sarah', 'reza', 'sarahreza@gmail.com', '+60 (0)4 732-9467', 'e10adc3949ba59abbe56e057f20f883e', 'Jalan Sepat 1, Rumah Kedai Mergong, 05150\r\njohor baru,johor , 05150', 1, '2022-01-26 16:00:55'),
	(41, 'intan', 'maisarah', 'akmal', 'instanmaisarah@gmail.com', '(607) 2355977', 'e10adc3949ba59abbe56e057f20f883e', '17 Jalan Selasih 11 Taman Kemas Tampoi 81200 Johor Malaysia\r\nJohor Bahru, Johor, 81200', 1, '2022-01-25 19:58:34'),
	(42, 'akmal123', 'akmal', 'arifin', 'akmal99@gmail.com', '+60 (0)9 774-1911', '14e1b600b1fd579f47433b88e8d85291', 'Pauh Panji, Jalan Raja Perempuan Zainab 2, 16100\r\nKota Bharu, Kelantan, 16100', 1, '2022-01-26 20:33:37'),
	(43, 'Hajjahshahida', 'Hajjah', 'Shahida', 'hajjahshahida@gmail.com', '+6015-254 8151', 'e10adc3949ba59abbe56e057f20f883e', 'No. 961, Jalan Bellamy 9, USJ 61F, 33020 Malim Nawar, Perak Darul Ridzuan ', 1, '2022-01-26 13:41:09'),
	(44, 'Samani', 'Mohammed Samani', 'Samani', 'Samani@gmail.com', '+6015-201 6741', 'e10adc3949ba59abbe56e057f20f883e', 'K-41-97, Jln 9/9, Bandar Baru Dato Harun, 62868 Precinct 5, Selangor\r\n', 1, '2022-01-26 16:00:05'),
	(45, 'haizeem', 'haizeem', 'yukri', 'haizeem33@gmail.com', '+609-494 9997', '670b14728ad9902aecba32e22fa4f6bd', '40-40A Jalan Tmbikai Taman Mutiara\r\nBukit Mertajam, selangor 14000', 1, '2022-01-26 15:59:53'),
	(46, 'reina', 'reina', 'zaki', 'reina22@hotmail.com', '+6015-659 6093', 'e10adc3949ba59abbe56e057f20f883e', 'Kampung Kemayang, Tawang, 16020\r\nKota Bharu, Kelantan, 16020', 1, '2022-01-26 13:47:23'),
	(47, 'GuanChuo ', 'Guan Chuo', 'Sia', 'Guan55@gmail.com', '+6010-280 6335', 'e10adc3949ba59abbe56e057f20f883e', 'No. 23, Jln Dato Abdul Rahman 39A, USJ 4, 49519 Pekan, Kelantan\r\n', 1, '2022-01-26 15:59:35'),
	(48, 'Fang', 'Fang', 'Chio', 'Fang9@gmail.com', '+604-707 8206', 'e10adc3949ba59abbe56e057f20f883e', 'No. 7O-11, Jln 9/2, Bandar Sri Mulia, 71094 Pajam, Selangor', 1, '2022-01-26 15:59:06'),
	(49, 'sitiyusaiza', 'siti', 'aiza', 'sitiyusaiza@hotmail.com', '+0128765332', 'e10adc3949ba59abbe56e057f20f883e', 'no 13 jalan teluk intan, 18090 kuala krai kelantan', 1, '2022-01-26 17:08:11'),
	(51, 'syaz', 'syaz', 'zul', 'syaz33@gmail.com', '0125476889', 'e10adc3949ba59abbe56e057f20f883e', 'no 17, jalan Mutiara, 18000 johor bahru , johor', 1, '2022-01-26 20:01:39');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table online_cookie.users_orders
CREATE TABLE IF NOT EXISTS `users_orders` (
  `o_id` int(222) NOT NULL AUTO_INCREMENT,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`o_id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;

-- Dumping data for table online_cookie.users_orders: ~14 rows (approximately)
/*!40000 ALTER TABLE `users_orders` DISABLE KEYS */;
INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
	(52, 48, 'Vampires Cookies', 2, 12.00, 'in process', '2022-01-26 16:04:46'),
	(55, 47, 'Grumpy Critter Cookies', 1, 12.00, NULL, '2022-01-26 16:19:20'),
	(56, 46, 'Spitemouth Cookies', 1, 12.00, NULL, '2022-01-26 16:20:54'),
	(58, 45, 'Vampires Cookies', 1, 12.00, NULL, '2022-01-26 16:22:06'),
	(59, 44, 'Spitemouth Cookies', 2, 12.00, NULL, '2022-01-26 16:23:23'),
	(60, 43, 'Grumpy Critter Cookies', 4, 12.00, NULL, '2022-01-26 16:24:00'),
	(61, 42, 'Spitemouth Cookies', 3, 12.00, 'closed', '2022-01-26 21:01:14'),
	(62, 41, 'Grumpy Critter Cookies', 5, 12.00, NULL, '2022-01-26 16:26:10'),
	(63, 41, 'Spitemouth Cookies', 3, 12.00, NULL, '2022-01-26 16:26:10'),
	(64, 41, 'Vampires Cookies', 2, 12.00, NULL, '2022-01-26 16:26:10'),
	(65, 40, 'Grumpy Critter Cookies', 1, 12.00, NULL, '2022-01-26 16:26:55'),
	(66, 39, 'Grumpy Critter Cookies', 1, 12.00, NULL, '2022-01-26 17:57:24'),
	(67, 50, 'Grumpy Critter Cookies', 2, 12.00, NULL, '2022-01-26 19:42:54');
/*!40000 ALTER TABLE `users_orders` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
