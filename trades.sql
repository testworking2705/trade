-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2020 at 05:27 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trades`
--

-- --------------------------------------------------------

--
-- Table structure for table `access`
--

CREATE TABLE `access` (
  `id` int(11) NOT NULL,
  `access_name` varchar(255) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '1',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `access`
--

INSERT INTO `access` (`id`, `access_name`, `status`, `create_at`, `update_at`) VALUES
(1, 'Dashboard', 1, '2020-03-17 08:00:27', '2020-03-17 08:00:27'),
(2, 'Company', 1, '2020-03-17 08:00:27', '2020-03-17 08:00:27'),
(3, 'Client', 1, '2020-03-17 08:00:27', '2020-03-17 08:00:27'),
(4, 'Contract', 1, '2020-03-17 08:00:27', '2020-03-17 08:00:42'),
(5, 'User', 1, '2020-03-17 08:05:57', '2020-03-17 08:05:57'),
(6, 'Calculation', 1, '2020-03-17 08:05:57', '2020-03-17 08:05:57'),
(7, 'Holdings', 1, '2020-03-17 08:05:57', '2020-03-17 08:05:57'),
(8, 'ManualTradeInput', 1, '2020-03-17 08:05:57', '2020-03-17 08:05:57');

-- --------------------------------------------------------

--
-- Table structure for table `client_mst`
--

CREATE TABLE `client_mst` (
  `id` int(11) NOT NULL,
  `client_id` varchar(255) DEFAULT NULL,
  `balance` decimal(10,2) NOT NULL DEFAULT '0.00',
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `company_associated_with` varchar(255) DEFAULT NULL,
  `cid` bigint(20) NOT NULL,
  `subscription` int(11) NOT NULL COMMENT 'fixed',
  `market_data` int(11) NOT NULL COMMENT 'fixed',
  `admin_fee` int(11) NOT NULL COMMENT 'fixed',
  `others1` int(11) NOT NULL COMMENT 'fixed',
  `nfa` decimal(10,4) NOT NULL COMMENT 'per trade costs',
  `exchange_fee` decimal(10,4) NOT NULL,
  `clearing_fee` decimal(10,4) NOT NULL,
  `commission` decimal(10,4) NOT NULL,
  `tradetinal` decimal(10,4) NOT NULL,
  `others2` decimal(10,4) NOT NULL,
  `ending_balance` decimal(10,2) NOT NULL DEFAULT '0.00',
  `net_equity` decimal(10,2) NOT NULL DEFAULT '0.00',
  `margin_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `address` varchar(255) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client_mst`
--

INSERT INTO `client_mst` (`id`, `client_id`, `balance`, `first_name`, `last_name`, `company_associated_with`, `cid`, `subscription`, `market_data`, `admin_fee`, `others1`, `nfa`, `exchange_fee`, `clearing_fee`, `commission`, `tradetinal`, `others2`, `ending_balance`, `net_equity`, `margin_amount`, `address`, `email`, `mobile`, `create_at`, `update_at`, `status`) VALUES
(1, 'ACT01', '1731.48', 'Sinia Global / Krati Seth', 'Krati Seth', 'PSAG-AR', 9810112345, 40, 110, 100, 0, '0.0200', '1.3400', '0.6900', '0.9900', '0.0000', '0.0000', '1731.48', '1731.48', '0.00', 'mumbai', '', '', '0000-00-00 00:00:00', '2020-03-06 06:00:28', 1);

-- --------------------------------------------------------

--
-- Table structure for table `closing_price`
--

CREATE TABLE `closing_price` (
  `id` int(11) NOT NULL,
  `contract` varchar(255) DEFAULT NULL,
  `price` decimal(10,6) NOT NULL,
  `currency` varchar(100) DEFAULT NULL,
  `close_date` varchar(20) DEFAULT NULL,
  `contract_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `closing_price`
--

INSERT INTO `closing_price` (`id`, `contract`, `price`, `currency`, `close_date`, `contract_id`, `user_id`, `create_at`, `update_at`) VALUES
(1, 'F.US.GLEM20', '111.750000', 'USD', '2020-02-04', 0, 1, '2020-03-05 07:54:43', '2020-03-05 08:54:05'),
(2, 'F.US.GLEQ20', '109.750000', 'USD', '2020-02-04', 0, 1, '2020-03-05 07:54:43', '2020-03-05 08:54:08'),
(3, 'F.US.GLEV20', '112.975000', 'USD', '2020-02-04', 0, 1, '2020-03-05 07:54:43', '2020-03-05 08:54:09'),
(4, 'F.US.GLEM20', '110.825000', 'USD', '2020-02-05', 0, 1, '2020-03-05 07:54:43', '2020-03-05 08:54:15'),
(5, 'F.US.GLEV20', '112.450000', 'USD', '2020-02-05', 0, 1, '2020-03-05 07:54:43', '2020-03-05 08:54:17'),
(6, 'F.US.GLEV20', '113.100000', 'USD', '2020-02-07', 0, 1, '2020-03-05 07:54:43', '2020-03-06 09:08:36'),
(7, 'F.US.GLEM20', '111.275000', 'USD', '2020-02-07', 0, 1, '2020-03-05 07:54:43', '2020-03-05 08:54:24'),
(8, 'F.US.GFU20', '149.475000', 'USD', '2020-02-07', 0, 1, '2020-03-05 07:54:43', '2020-03-05 08:54:27'),
(9, 'F.US.GFQ20', '147.875000', 'USD', '2020-02-07', 0, 1, '2020-03-05 07:54:43', '2020-03-06 09:08:55'),
(10, 'F.US.GFU20', '148.350000', 'USD', '2020-02-10', 0, 1, '2020-03-05 07:54:43', '2020-03-05 08:54:33'),
(11, 'F.US.GFQ20', '146.775000', 'USD', '2020-02-10', 0, 1, '2020-03-05 07:54:43', '2020-03-05 08:54:42'),
(12, 'F.US.GFU20', '148.350000', 'USD', '2020-02-10', 0, 1, '2020-03-05 07:54:43', '2020-03-05 08:54:44'),
(13, 'F.US.HEQ20', '146.775000', 'USD', '2020-02-10', 0, 1, '2020-03-05 07:54:43', '2020-03-05 08:54:47');

-- --------------------------------------------------------

--
-- Table structure for table `company_mst`
--

CREATE TABLE `company_mst` (
  `id` int(11) NOT NULL,
  `client_id` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `company_associated_with` varchar(255) DEFAULT NULL,
  `cid` bigint(20) NOT NULL DEFAULT '0',
  `subscription` int(11) NOT NULL DEFAULT '0' COMMENT 'fixed',
  `market_data` int(11) NOT NULL DEFAULT '0' COMMENT 'fixed',
  `admin_fee` int(11) NOT NULL DEFAULT '0' COMMENT 'fixed',
  `others1` int(11) NOT NULL DEFAULT '0' COMMENT 'fixed',
  `nfa` decimal(10,4) NOT NULL DEFAULT '0.0000' COMMENT 'per trade costs',
  `exchange_fee` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `clearing_fee` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `commission` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `tradetinal` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `others2` decimal(10,4) NOT NULL DEFAULT '0.0000',
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company_mst`
--

INSERT INTO `company_mst` (`id`, `client_id`, `first_name`, `last_name`, `company_associated_with`, `cid`, `subscription`, `market_data`, `admin_fee`, `others1`, `nfa`, `exchange_fee`, `clearing_fee`, `commission`, `tradetinal`, `others2`, `address`, `email`, `mobile`, `create_at`, `update_at`, `status`) VALUES
(1, 'PSAG-AR', 'Papaya Suisse', 'Mehta', NULL, 1502212345, 585, 1101, 1715, 0, '0.0210', '1.3400', '0.6900', '0.6900', '0.0000', '0.0000', 'mumbai', '', '', '2020-02-20 07:55:53', '2020-03-17 07:05:58', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contract_mst`
--

CREATE TABLE `contract_mst` (
  `id` int(11) NOT NULL,
  `contract_name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `tick_size` decimal(10,3) NOT NULL,
  `tick_value` decimal(10,2) NOT NULL,
  `contract_margin` decimal(10,2) NOT NULL DEFAULT '0.00',
  `contract_cycle` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `first_notice` varchar(255) DEFAULT NULL,
  `expiry` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contract_mst`
--

INSERT INTO `contract_mst` (`id`, `contract_name`, `code`, `tick_size`, `tick_value`, `contract_margin`, `contract_cycle`, `currency`, `first_notice`, `expiry`, `status`, `create_at`, `update_at`) VALUES
(1, 'F.US.GFQ20', 'GF', '0.025', '12.50', '0.00', 'Q,U', 'USD', NULL, '', 1, '2020-02-19 12:00:50', '2020-03-03 05:54:27'),
(2, 'F.US.GLEQ20', 'GLE', '0.025', '10.00', '0.00', 'Q,U', 'USD', NULL, 'days', 1, '2020-02-19 12:02:30', '2020-03-05 04:54:42'),
(3, 'F.US.HEQ20', 'HE', '0.025', '10.00', '0.00', 'Q,U', 'USD', NULL, '', 1, '2020-02-19 12:04:57', '2020-03-05 04:54:48');

-- --------------------------------------------------------

--
-- Table structure for table `contract_wise_dete_report`
--

CREATE TABLE `contract_wise_dete_report` (
  `id` int(11) NOT NULL,
  `client_id` varchar(255) NOT NULL,
  `contract_name` varchar(255) NOT NULL,
  `total_contract` int(11) NOT NULL,
  `close_contract` int(11) NOT NULL,
  `total_comm` decimal(10,2) NOT NULL,
  `total_clear` decimal(10,2) NOT NULL,
  `total_exe` decimal(10,2) NOT NULL,
  `total_txn` decimal(10,2) NOT NULL,
  `total_nfa` decimal(10,2) NOT NULL,
  `total_fee` decimal(10,2) NOT NULL,
  `total_gpl` decimal(10,2) NOT NULL,
  `total_npl` decimal(10,2) NOT NULL,
  `trade_date` varchar(20) DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contract_wise_dete_report`
--

INSERT INTO `contract_wise_dete_report` (`id`, `client_id`, `contract_name`, `total_contract`, `close_contract`, `total_comm`, `total_clear`, `total_exe`, `total_txn`, `total_nfa`, `total_fee`, `total_gpl`, `total_npl`, `trade_date`, `create_at`) VALUES
(1, 'Sinia Global / Krati Seth', 'F.US.GLEV20', 18, 7, '17.82', '12.42', '24.12', '0.00', '0.36', '36.90', '-370.00', '-406.90', '2020-02-04', '2020-03-20 16:05:07'),
(2, 'Sinia Global / Krati Seth', 'F.US.GLEQ20', 34, 14, '33.66', '23.46', '45.56', '0.00', '0.68', '69.70', '500.00', '430.30', '2020-02-04', '2020-03-20 16:05:07'),
(3, 'Sinia Global / Krati Seth', 'F.US.GLEM20', 18, 8, '17.82', '12.42', '24.12', '0.00', '0.36', '36.90', '-30.00', '-66.90', '2020-02-04', '2020-03-20 16:05:08'),
(4, 'Sinia Global / Krati Seth', 'F.US.GLEV20', 4, 3, '3.96', '2.76', '5.36', '0.00', '0.08', '8.20', '-140.00', '-148.20', '2020-02-05', '2020-03-20 16:05:08'),
(5, 'Sinia Global / Krati Seth', 'F.US.GLEQ20', 6, 6, '5.94', '4.14', '8.04', '0.00', '0.12', '12.30', '-1520.00', '-1532.30', '2020-02-05', '2020-03-20 16:05:09'),
(6, 'Sinia Global / Krati Seth', 'F.US.GLEM20', 4, 2, '3.96', '2.76', '5.36', '0.00', '0.08', '8.20', '1200.00', '1191.80', '2020-02-05', '2020-03-20 16:05:09'),
(7, 'Sinia Global / Krati Seth', 'F.US.HEQ20', 4, 2, '3.96', '2.76', '5.36', '0.00', '0.08', '8.20', '380.00', '371.80', '2020-02-07', '2020-03-20 16:05:09'),
(8, 'Sinia Global / Krati Seth', 'F.US.HEM20', 4, 2, '3.96', '2.76', '5.36', '0.00', '0.08', '8.20', '-430.00', '-438.20', '2020-02-07', '2020-03-20 16:05:09'),
(9, 'Sinia Global / Krati Seth', 'F.US.GFU20', 1, 0, '0.99', '0.69', '1.34', '0.00', '0.02', '2.05', '0.00', '-2.05', '2020-02-07', '2020-03-20 16:05:09'),
(10, 'Sinia Global / Krati Seth', 'F.US.GFQ20', 1, 0, '0.99', '0.69', '1.34', '0.00', '0.02', '2.05', '0.00', '-2.05', '2020-02-07', '2020-03-20 16:05:10'),
(11, 'Sinia Global / Krati Seth', 'F.US.GFK20', 2, 1, '1.98', '1.38', '2.68', '0.00', '0.04', '4.10', '-37.50', '-41.60', '2020-02-07', '2020-03-20 16:05:10'),
(12, 'Sinia Global / Krati Seth', 'F.US.GFH20', 2, 1, '1.98', '1.38', '2.68', '0.00', '0.04', '4.10', '50.00', '45.90', '2020-02-07', '2020-03-20 16:05:10'),
(13, 'Sinia Global / Krati Seth', 'F.US.GLEV20', 2, 2, '1.98', '1.38', '2.68', '0.00', '0.04', '4.10', '1100.00', '1095.90', '2020-02-10', '2020-03-20 16:05:10'),
(14, 'Sinia Global / Krati Seth', 'F.US.GLEM20', 2, 2, '1.98', '1.38', '2.68', '0.00', '0.04', '4.10', '-1390.00', '-1394.10', '2020-02-10', '2020-03-20 16:05:10'),
(15, 'Sinia Global / Krati Seth', 'F.US.GFU20', 3, 1, '2.97', '2.07', '4.02', '0.00', '0.06', '6.15', '-350.00', '-356.15', '2020-02-10', '2020-03-20 16:05:10'),
(16, 'Sinia Global / Krati Seth', 'F.US.GFQ20', 3, 1, '2.97', '2.07', '4.02', '0.00', '0.06', '6.15', '387.50', '381.35', '2020-02-10', '2020-03-20 16:05:11');

-- --------------------------------------------------------

--
-- Table structure for table `currency_mst`
--

CREATE TABLE `currency_mst` (
  `id` int(11) NOT NULL,
  `currency_name` varchar(100) NOT NULL,
  `currency_code` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currency_mst`
--

INSERT INTO `currency_mst` (`id`, `currency_name`, `currency_code`, `status`, `create_at`, `update_at`) VALUES
(1, 'US Dollar', 'USD', 1, '2020-02-19 10:42:08', '2020-02-19 10:42:08'),
(2, 'US Dollar', 'CME', 1, '2020-02-19 10:42:08', '2020-02-19 10:42:08');

-- --------------------------------------------------------

--
-- Table structure for table `daily_client_wise_trxn`
--

CREATE TABLE `daily_client_wise_trxn` (
  `id` int(11) NOT NULL,
  `client_id` varchar(255) DEFAULT NULL,
  `opening_balance` decimal(10,2) NOT NULL,
  `commission` decimal(10,2) NOT NULL DEFAULT '0.00',
  `clearing_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `exchange_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `nfa_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `transactional_fee` decimal(10,2) NOT NULL,
  `total_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `gpl` decimal(10,2) NOT NULL DEFAULT '0.00',
  `npl` decimal(10,2) NOT NULL DEFAULT '0.00',
  `ending_balance` decimal(10,2) NOT NULL DEFAULT '0.00',
  `open_trade_equity` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_equity` decimal(10,2) NOT NULL DEFAULT '0.00',
  `net_liquidating_value` decimal(10,2) NOT NULL DEFAULT '0.00',
  `change_from_previous_net_liq` decimal(10,2) NOT NULL DEFAULT '0.00',
  `inital_margin_req` decimal(10,2) NOT NULL DEFAULT '0.00',
  `maintenance_margin_req` decimal(10,2) NOT NULL DEFAULT '0.00',
  `margin_deficit` decimal(10,0) NOT NULL DEFAULT '0',
  `mtd_comm` decimal(10,2) NOT NULL DEFAULT '0.00',
  `trade_date` varchar(20) DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daily_client_wise_trxn`
--

INSERT INTO `daily_client_wise_trxn` (`id`, `client_id`, `opening_balance`, `commission`, `clearing_fee`, `exchange_fee`, `nfa_fee`, `transactional_fee`, `total_fee`, `gpl`, `npl`, `ending_balance`, `open_trade_equity`, `total_equity`, `net_liquidating_value`, `change_from_previous_net_liq`, `inital_margin_req`, `maintenance_margin_req`, `margin_deficit`, `mtd_comm`, `trade_date`, `create_at`, `update_at`) VALUES
(1, 'Sinia Global / Krati Seth', '1731.48', '69.30', '48.30', '93.80', '1.40', '0.00', '212.80', '100.00', '-112.80', '1618.68', '-170.00', '1448.68', '1448.68', '282.80', '0.00', '0.00', '0', '0.00', '2020-02-04', '2020-03-20 16:05:08', '2020-03-20 16:05:08'),
(2, 'Sinia Global / Krati Seth', '1618.68', '13.86', '9.66', '18.76', '0.28', '0.00', '42.56', '-460.00', '-502.56', '1116.12', '80.00', '1196.12', '1196.12', '252.56', '0.00', '0.00', '0', '0.00', '2020-02-05', '2020-03-20 16:05:09', '2020-03-20 16:05:09'),
(3, 'Sinia Global / Krati Seth', '1618.68', '13.86', '9.66', '18.76', '0.28', '0.00', '42.56', '-37.50', '-80.06', '1538.62', '50.00', '1588.62', '1588.62', '-139.94', '0.00', '0.00', '0', '0.00', '2020-02-07', '2020-03-20 16:05:10', '2020-03-20 16:05:10'),
(4, 'Sinia Global / Krati Seth', '1618.68', '9.90', '6.90', '13.40', '0.20', '0.00', '30.40', '-252.50', '-282.90', '1335.78', '62.50', '1398.28', '1398.28', '50.40', '0.00', '0.00', '0', '0.00', '2020-02-10', '2020-03-20 16:05:11', '2020-03-20 16:05:11');

-- --------------------------------------------------------

--
-- Table structure for table `data_table`
--

CREATE TABLE `data_table` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `contract` varchar(200) DEFAULT NULL,
  `currency` varchar(200) DEFAULT NULL,
  `price` decimal(10,6) DEFAULT NULL,
  `long_short` varchar(200) DEFAULT NULL,
  `qunatity` varchar(200) DEFAULT NULL,
  `datetime` date NOT NULL,
  `fcm` varchar(200) DEFAULT NULL,
  `trade_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `work_status` tinyint(1) NOT NULL DEFAULT '1',
  `hold_unhold` tinyint(1) NOT NULL DEFAULT '1',
  `today_Status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 => active, 0 => inactive ',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_table`
--

INSERT INTO `data_table` (`id`, `name`, `contract`, `currency`, `price`, `long_short`, `qunatity`, `datetime`, `fcm`, `trade_id`, `client_id`, `user_id`, `work_status`, `hold_unhold`, `today_Status`, `create_at`, `update_at`) VALUES
(1, 'Sinia Global / Krati Seth', 'F.US.GLEV20', 'USD', '113.325000', 'B', '1', '2020-02-03', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-03-20 12:34:42', '2020-03-20 16:03:19'),
(2, 'Sinia Global / Krati Seth', 'F.US.GLEV20', 'USD', '113.400000', 'S', '1', '2020-02-03', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-03-20 12:34:42', '2020-03-20 16:03:19'),
(3, 'Sinia Global / Krati Seth', 'F.US.GLEQ20', 'USD', '110.075000', 'S', '1', '2020-02-03', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-03-20 12:34:42', '2020-03-20 16:03:19'),
(4, 'Sinia Global / Krati Seth', 'F.US.GLEQ20', 'USD', '110.100000', 'S', '1', '2020-02-03', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-03-20 12:34:42', '2020-03-20 16:03:19'),
(5, 'Sinia Global / Krati Seth', 'F.US.GLEQ20', 'USD', '110.075000', 'B', '2', '2020-02-03', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-03-20 12:34:42', '2020-03-20 16:03:19'),
(6, 'Sinia Global / Krati Seth', 'F.US.GLEM20', 'USD', '111.900000', 'B', '1', '2020-02-03', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-03-20 12:34:42', '2020-03-20 16:03:19'),
(7, 'Sinia Global / Krati Seth', 'F.US.GLEM20', 'USD', '111.925000', 'S', '1', '2020-02-03', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-03-20 12:34:42', '2020-03-20 16:03:19'),
(8, 'Sinia Global / Krati Seth', 'F.US.GFQ20', 'USD', '147.425000', 'B', '1', '2020-02-03', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-03-20 12:34:42', '2020-03-20 16:03:19'),
(9, 'Sinia Global / Krati Seth', 'F.US.GFQ20', 'USD', '147.475000', 'S', '1', '2020-02-03', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-03-20 12:34:42', '2020-03-20 16:03:19'),
(10, 'Sinia Global / Krati Seth', 'F.US.GFQ20', 'USD', '146.925000', 'B', '1', '2020-02-03', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-03-20 12:34:42', '2020-03-20 16:03:19'),
(11, 'Sinia Global / Krati Seth', 'F.US.GFQ20', 'USD', '146.850000', 'B', '1', '2020-02-03', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-03-20 12:34:42', '2020-03-20 16:03:19'),
(12, 'Sinia Global / Krati Seth', 'F.US.GFK20', 'USD', '139.375000', 'S', '2', '2020-02-03', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-03-20 12:34:42', '2020-03-20 16:03:19'),
(13, 'Sinia Global / Krati Seth', 'F.US.GFK20', 'USD', '139.350000', 'S', '2', '2020-02-03', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-03-20 12:34:42', '2020-03-20 16:03:19'),
(14, 'Sinia Global / Krati Seth', 'F.US.GFJ20', 'USD', '137.625000', 'S', '1', '2020-02-03', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-03-20 12:34:42', '2020-03-20 16:03:19'),
(15, 'Sinia Global / Krati Seth', 'F.US.GFJ20', 'USD', '137.875000', 'B', '1', '2020-02-03', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-03-20 12:34:42', '2020-03-20 16:03:19'),
(16, 'Sinia Global / Krati Seth', 'F.US.GFJ20', 'USD', '136.925000', 'B', '1', '2020-02-03', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-03-20 12:34:42', '2020-03-20 16:03:19'),
(17, 'Sinia Global / Krati Seth', 'F.US.GFJ20', 'USD', '136.950000', 'B', '1', '2020-02-03', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-03-20 12:34:42', '2020-03-20 16:03:19'),
(18, 'Sinia Global / Krati Seth', 'F.US.GLEV20', 'USD', '113.850000', 'S', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:07'),
(19, 'Sinia Global / Krati Seth', 'F.US.GLEV20', 'USD', '112.800000', 'S', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:07'),
(20, 'Sinia Global / Krati Seth', 'F.US.GLEV20', 'USD', '113.100000', 'B', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:07'),
(21, 'Sinia Global / Krati Seth', 'F.US.GLEV20', 'USD', '113.100000', 'B', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:07'),
(22, 'Sinia Global / Krati Seth', 'F.US.GLEV20', 'USD', '113.100000', 'B', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:07'),
(23, 'Sinia Global / Krati Seth', 'F.US.GLEV20', 'USD', '113.600000', 'S', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:07'),
(24, 'Sinia Global / Krati Seth', 'F.US.GLEV20', 'USD', '113.900000', 'S', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:07'),
(25, 'Sinia Global / Krati Seth', 'F.US.GLEV20', 'USD', '113.100000', 'B', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:07'),
(26, 'Sinia Global / Krati Seth', 'F.US.GLEV20', 'USD', '113.100000', 'S', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:07'),
(27, 'Sinia Global / Krati Seth', 'F.US.GLEV20', 'USD', '112.800000', 'S', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:07'),
(28, 'Sinia Global / Krati Seth', 'F.US.GLEV20', 'USD', '113.100000', 'S', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:07'),
(29, 'Sinia Global / Krati Seth', 'F.US.GLEV20', 'USD', '113.400000', 'S', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:07'),
(30, 'Sinia Global / Krati Seth', 'F.US.GLEV20', 'USD', '113.575000', 'S', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:07'),
(31, 'Sinia Global / Krati Seth', 'F.US.GLEV20', 'USD', '112.900000', 'S', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:07'),
(32, 'Sinia Global / Krati Seth', 'F.US.GLEV20', 'USD', '112.900000', 'S', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:07'),
(33, 'Sinia Global / Krati Seth', 'F.US.GLEV20', 'USD', '113.175000', 'B', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:07'),
(34, 'Sinia Global / Krati Seth', 'F.US.GLEV20', 'USD', '113.175000', 'B', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:07'),
(35, 'Sinia Global / Krati Seth', 'F.US.GLEV20', 'USD', '113.175000', 'B', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:07'),
(36, 'Sinia Global / Krati Seth', 'F.US.GLEQ20', 'USD', '110.800000', 'B', '2', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:07'),
(37, 'Sinia Global / Krati Seth', 'F.US.GLEQ20', 'USD', '109.675000', 'B', '2', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:07'),
(38, 'Sinia Global / Krati Seth', 'F.US.GLEQ20', 'USD', '110.000000', 'S', '2', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:07'),
(39, 'Sinia Global / Krati Seth', 'F.US.GLEQ20', 'USD', '110.000000', 'S', '2', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:07'),
(40, 'Sinia Global / Krati Seth', 'F.US.GLEQ20', 'USD', '110.000000', 'S', '2', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:07'),
(41, 'Sinia Global / Krati Seth', 'F.US.GLEQ20', 'USD', '110.475000', 'B', '2', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:07'),
(42, 'Sinia Global / Krati Seth', 'F.US.GLEQ20', 'USD', '110.850000', 'B', '2', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:07'),
(43, 'Sinia Global / Krati Seth', 'F.US.GLEQ20', 'USD', '110.000000', 'S', '2', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:07'),
(44, 'Sinia Global / Krati Seth', 'F.US.GLEQ20', 'USD', '110.000000', 'B', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:07'),
(45, 'Sinia Global / Krati Seth', 'F.US.GLEQ20', 'USD', '110.025000', 'B', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:07'),
(46, 'Sinia Global / Krati Seth', 'F.US.GLEQ20', 'USD', '109.675000', 'B', '2', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:07'),
(47, 'Sinia Global / Krati Seth', 'F.US.GLEQ20', 'USD', '110.000000', 'B', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:07'),
(48, 'Sinia Global / Krati Seth', 'F.US.GLEQ20', 'USD', '110.025000', 'B', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:07'),
(49, 'Sinia Global / Krati Seth', 'F.US.GLEQ20', 'USD', '110.450000', 'B', '2', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:07'),
(50, 'Sinia Global / Krati Seth', 'F.US.GLEQ20', 'USD', '109.725000', 'B', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:07'),
(51, 'Sinia Global / Krati Seth', 'F.US.GLEQ20', 'USD', '109.750000', 'B', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:07'),
(52, 'Sinia Global / Krati Seth', 'F.US.GLEQ20', 'USD', '109.725000', 'B', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:07'),
(53, 'Sinia Global / Krati Seth', 'F.US.GLEQ20', 'USD', '109.750000', 'B', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:07'),
(54, 'Sinia Global / Krati Seth', 'F.US.GLEQ20', 'USD', '109.975000', 'S', '2', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:07'),
(55, 'Sinia Global / Krati Seth', 'F.US.GLEQ20', 'USD', '109.975000', 'S', '2', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:07'),
(56, 'Sinia Global / Krati Seth', 'F.US.GLEQ20', 'USD', '109.975000', 'S', '2', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:07'),
(57, 'Sinia Global / Krati Seth', 'F.US.GLEM20', 'USD', '112.875000', 'S', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:08'),
(58, 'Sinia Global / Krati Seth', 'F.US.GLEM20', 'USD', '111.700000', 'S', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:08'),
(59, 'Sinia Global / Krati Seth', 'F.US.GLEM20', 'USD', '111.900000', 'B', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:08'),
(60, 'Sinia Global / Krati Seth', 'F.US.GLEM20', 'USD', '111.925000', 'B', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:08'),
(61, 'Sinia Global / Krati Seth', 'F.US.GLEM20', 'USD', '111.900000', 'B', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:08'),
(62, 'Sinia Global / Krati Seth', 'F.US.GLEM20', 'USD', '112.500000', 'S', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:08'),
(63, 'Sinia Global / Krati Seth', 'F.US.GLEM20', 'USD', '112.925000', 'S', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:08'),
(64, 'Sinia Global / Krati Seth', 'F.US.GLEM20', 'USD', '111.925000', 'B', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:08'),
(65, 'Sinia Global / Krati Seth', 'F.US.GLEM20', 'USD', '112.050000', 'S', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:08'),
(66, 'Sinia Global / Krati Seth', 'F.US.GLEM20', 'USD', '111.700000', 'S', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:08'),
(67, 'Sinia Global / Krati Seth', 'F.US.GLEM20', 'USD', '112.050000', 'S', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:08'),
(68, 'Sinia Global / Krati Seth', 'F.US.GLEM20', 'USD', '112.325000', 'B', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:08'),
(69, 'Sinia Global / Krati Seth', 'F.US.GLEM20', 'USD', '112.475000', 'S', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:08'),
(70, 'Sinia Global / Krati Seth', 'F.US.GLEM20', 'USD', '111.750000', 'S', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:08'),
(71, 'Sinia Global / Krati Seth', 'F.US.GLEM20', 'USD', '111.750000', 'S', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:08'),
(72, 'Sinia Global / Krati Seth', 'F.US.GLEM20', 'USD', '112.025000', 'B', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:08'),
(73, 'Sinia Global / Krati Seth', 'F.US.GLEM20', 'USD', '112.025000', 'B', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:08'),
(74, 'Sinia Global / Krati Seth', 'F.US.GLEM20', 'USD', '112.025000', 'B', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:08'),
(75, 'Sinia Global / Krati Seth', 'F.US.GLEV20', 'USD', '113.250000', 'B', '1', '2020-02-05', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:08'),
(76, 'Sinia Global / Krati Seth', 'F.US.GLEV20', 'USD', '112.225000', 'S', '1', '2020-02-05', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:08'),
(77, 'Sinia Global / Krati Seth', 'F.US.GLEV20', 'USD', '113.250000', 'B', '1', '2020-02-05', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:08'),
(78, 'Sinia Global / Krati Seth', 'F.US.GLEV20', 'USD', '113.250000', 'B', '1', '2020-02-05', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:08'),
(79, 'Sinia Global / Krati Seth', 'F.US.GLEQ20', 'USD', '110.075000', 'S', '2', '2020-02-05', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:09'),
(80, 'Sinia Global / Krati Seth', 'F.US.GLEQ20', 'USD', '110.075000', 'S', '2', '2020-02-05', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:09'),
(81, 'Sinia Global / Krati Seth', 'F.US.GLEQ20', 'USD', '110.075000', 'S', '2', '2020-02-05', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:09'),
(82, 'Sinia Global / Krati Seth', 'F.US.GLEM20', 'USD', '112.150000', 'B', '1', '2020-02-05', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:09'),
(83, 'Sinia Global / Krati Seth', 'F.US.GLEM20', 'USD', '110.650000', 'B', '1', '2020-02-05', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:09'),
(84, 'Sinia Global / Krati Seth', 'F.US.GLEM20', 'USD', '112.150000', 'B', '1', '2020-02-05', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:09'),
(85, 'Sinia Global / Krati Seth', 'F.US.GLEM20', 'USD', '112.150000', 'B', '1', '2020-02-05', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:09'),
(86, 'Sinia Global / Krati Seth', 'F.US.HEQ20', 'USD', '81.750000', 'S', '1', '2020-02-07', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:09'),
(87, 'Sinia Global / Krati Seth', 'F.US.HEQ20', 'USD', '80.925000', 'B', '1', '2020-02-07', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:09'),
(88, 'Sinia Global / Krati Seth', 'F.US.HEQ20', 'USD', '81.900000', 'S', '1', '2020-02-07', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:09'),
(89, 'Sinia Global / Krati Seth', 'F.US.HEQ20', 'USD', '81.775000', 'B', '1', '2020-02-07', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:09'),
(90, 'Sinia Global / Krati Seth', 'F.US.HEM20', 'USD', '81.750000', 'B', '1', '2020-02-07', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:09'),
(91, 'Sinia Global / Krati Seth', 'F.US.HEM20', 'USD', '80.850000', 'S', '1', '2020-02-07', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:09'),
(92, 'Sinia Global / Krati Seth', 'F.US.HEM20', 'USD', '82.000000', 'B', '1', '2020-02-07', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:09'),
(93, 'Sinia Global / Krati Seth', 'F.US.HEM20', 'USD', '81.825000', 'S', '1', '2020-02-07', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:09'),
(94, 'Sinia Global / Krati Seth', 'F.US.GFU20', 'USD', '149.750000', 'S', '1', '2020-02-07', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:09'),
(95, 'Sinia Global / Krati Seth', 'F.US.GFQ20', 'USD', '148.050000', 'B', '1', '2020-02-07', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:10'),
(96, 'Sinia Global / Krati Seth', 'F.US.GFK20', 'USD', '139.450000', 'S', '1', '2020-02-07', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:10'),
(97, 'Sinia Global / Krati Seth', 'F.US.GFK20', 'USD', '139.525000', 'B', '1', '2020-02-07', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:10'),
(98, 'Sinia Global / Krati Seth', 'F.US.GFH20', 'USD', '135.675000', 'B', '1', '2020-02-07', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:10'),
(99, 'Sinia Global / Krati Seth', 'F.US.GFH20', 'USD', '135.775000', 'S', '1', '2020-02-07', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:10'),
(100, 'Sinia Global / Krati Seth', 'F.US.GLEV20', 'USD', '112.500000', 'B', '1', '2020-02-10', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:10'),
(101, 'Sinia Global / Krati Seth', 'F.US.GLEV20', 'USD', '112.500000', 'B', '1', '2020-02-10', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:10'),
(102, 'Sinia Global / Krati Seth', 'F.US.GLEM20', 'USD', '110.425000', 'S', '1', '2020-02-10', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:10'),
(103, 'Sinia Global / Krati Seth', 'F.US.GLEM20', 'USD', '110.400000', 'S', '1', '2020-02-10', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:10'),
(104, 'Sinia Global / Krati Seth', 'F.US.GFU20', 'USD', '148.475000', 'S', '1', '2020-02-10', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:10'),
(105, 'Sinia Global / Krati Seth', 'F.US.GFU20', 'USD', '148.250000', 'S', '1', '2020-02-10', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:10'),
(106, 'Sinia Global / Krati Seth', 'F.US.GFU20', 'USD', '148.950000', 'B', '1', '2020-02-10', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:10'),
(107, 'Sinia Global / Krati Seth', 'F.US.GFQ20', 'USD', '146.900000', 'B', '1', '2020-02-10', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:10'),
(108, 'Sinia Global / Krati Seth', 'F.US.GFQ20', 'USD', '146.675000', 'B', '1', '2020-02-10', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:10'),
(109, 'Sinia Global / Krati Seth', 'F.US.GFQ20', 'USD', '147.450000', 'S', '1', '2020-02-10', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-03-20 12:34:42', '2020-03-20 16:05:10'),
(110, 'Sinia Global / Krati Seth', 'F.US.GFU20', 'USD', '147.875000', 'S', '1', '2020-02-11', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-03-20 12:34:42', '2020-03-20 16:04:50'),
(111, 'Sinia Global / Krati Seth', 'F.US.GFU20', 'USD', '148.300000', 'B', '1', '2020-02-11', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-03-20 12:34:42', '2020-03-20 16:04:50'),
(112, 'Sinia Global / Krati Seth', 'F.US.GFQ20', 'USD', '146.425000', 'B', '1', '2020-02-11', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-03-20 12:34:42', '2020-03-20 16:03:19'),
(113, 'Sinia Global / Krati Seth', 'F.US.GFQ20', 'USD', '146.850000', 'S', '1', '2020-02-11', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-03-20 12:34:42', '2020-03-20 16:03:19'),
(114, 'Sinia Global / Krati Seth', 'F.US.GFU20', 'USD', '147.150000', 'S', '1', '2020-02-12', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-03-20 12:34:42', '2020-03-20 16:03:19'),
(115, 'Sinia Global / Krati Seth', 'F.US.GFU20', 'USD', '148.250000', 'B', '1', '2020-02-12', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-03-20 12:34:42', '2020-03-20 16:03:19'),
(116, 'Sinia Global / Krati Seth', 'F.US.GFQ20', 'USD', '145.700000', 'B', '1', '2020-02-12', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-03-20 12:34:42', '2020-03-20 16:03:19'),
(117, 'Sinia Global / Krati Seth', 'F.US.GFQ20', 'USD', '146.950000', 'S', '1', '2020-02-12', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-03-20 12:34:42', '2020-03-20 16:03:19'),
(118, 'Sinia Global / Krati Seth', 'F.US.GFK20', 'USD', '140.725000', 'B', '1', '2020-02-13', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-03-20 12:34:42', '2020-03-20 16:03:19'),
(119, 'Sinia Global / Krati Seth', 'F.US.GFK20', 'USD', '140.650000', 'S', '1', '2020-02-13', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-03-20 12:34:42', '2020-03-20 16:03:19'),
(120, 'Sinia Global / Krati Seth', 'F.US.GFK20', 'USD', '141.050000', 'B', '1', '2020-02-13', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-03-20 12:34:42', '2020-03-20 16:03:19'),
(121, 'Sinia Global / Krati Seth', 'F.US.GFK20', 'USD', '141.100000', 'S', '1', '2020-02-13', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-03-20 12:34:42', '2020-03-20 16:03:19'),
(122, 'Sinia Global / Krati Seth', 'F.US.GFH20', 'USD', '136.275000', 'S', '1', '2020-02-13', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-03-20 12:34:42', '2020-03-20 16:03:19'),
(123, 'Sinia Global / Krati Seth', 'F.US.GFH20', 'USD', '135.950000', 'B', '1', '2020-02-13', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-03-20 12:34:42', '2020-03-20 16:03:19'),
(124, 'Sinia Global / Krati Seth', 'F.US.GFH20', 'USD', '136.600000', 'S', '1', '2020-02-13', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-03-20 12:34:42', '2020-03-20 16:03:19'),
(125, 'Sinia Global / Krati Seth', 'F.US.GFH20', 'USD', '136.500000', 'B', '1', '2020-02-13', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-03-20 12:34:42', '2020-03-20 16:03:19'),
(126, 'Sinia Global / Krati Seth', 'F.US.GFU20', 'USD', '150.050000', 'B', '1', '2020-02-14', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-03-20 12:34:42', '2020-03-20 16:03:19'),
(127, 'Sinia Global / Krati Seth', 'F.US.GFU20', 'USD', '150.200000', 'B', '1', '2020-02-14', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-03-20 12:34:42', '2020-03-20 16:03:19'),
(128, 'Sinia Global / Krati Seth', 'F.US.GFQ20', 'USD', '148.825000', 'S', '1', '2020-02-14', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-03-20 12:34:42', '2020-03-20 16:03:19'),
(129, 'Sinia Global / Krati Seth', 'F.US.GFQ20', 'USD', '149.025000', 'S', '1', '2020-02-14', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-03-20 12:34:42', '2020-03-20 16:03:19'),
(130, 'Sinia Global / Krati Seth', 'F.US.GLEZ20', 'USD', '118.225000', 'B', '1', '2020-02-18', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-03-20 12:34:42', '2020-03-20 16:03:19'),
(131, 'Sinia Global / Krati Seth', 'F.US.GLEZ20', 'USD', '118.225000', 'B', '1', '2020-02-18', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-03-20 12:34:42', '2020-03-20 16:03:19'),
(132, 'Sinia Global / Krati Seth', 'F.US.GLEJ21', 'USD', '121.950000', 'S', '1', '2020-02-18', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-03-20 12:34:42', '2020-03-20 16:03:19'),
(133, 'Sinia Global / Krati Seth', 'F.US.GLEJ21', 'USD', '121.950000', 'S', '1', '2020-02-18', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-03-20 12:34:42', '2020-03-20 16:03:19'),
(134, 'Sinia Global / Krati Seth', 'F.US.GLEG21', 'USD', '121.000000', 'S', '1', '2020-02-18', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-03-20 12:34:42', '2020-03-20 16:03:19'),
(135, 'Sinia Global / Krati Seth', 'F.US.GLEG21', 'USD', '120.775000', 'B', '1', '2020-02-18', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-03-20 12:34:42', '2020-03-20 16:03:19'),
(136, 'Sinia Global / Krati Seth', 'F.US.GLEG21', 'USD', '120.775000', 'B', '1', '2020-02-18', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-03-20 12:34:42', '2020-03-20 16:03:19'),
(137, 'Sinia Global / Krati Seth', 'F.US.GLEG21', 'USD', '121.000000', 'S', '1', '2020-02-18', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-03-20 12:34:42', '2020-03-20 16:03:19'),
(138, 'Sinia Global / Krati Seth', 'F.US.GFU20', 'USD', '152.375000', 'S', '1', '2020-02-18', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-03-20 12:34:42', '2020-03-20 16:03:19'),
(139, 'Sinia Global / Krati Seth', 'F.US.GFU20', 'USD', '152.375000', 'S', '1', '2020-02-18', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-03-20 12:34:42', '2020-03-20 16:03:19'),
(140, 'Sinia Global / Krati Seth', 'F.US.GFQ20', 'USD', '151.100000', 'B', '1', '2020-02-18', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-03-20 12:34:42', '2020-03-20 16:03:19'),
(141, 'Sinia Global / Krati Seth', 'F.US.GFQ20', 'USD', '151.100000', 'B', '1', '2020-02-18', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-03-20 12:34:42', '2020-03-20 16:03:19');

-- --------------------------------------------------------

--
-- Table structure for table `data_table2`
--

CREATE TABLE `data_table2` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `contract` varchar(200) DEFAULT NULL,
  `currency` varchar(200) DEFAULT NULL,
  `price` decimal(10,6) DEFAULT NULL,
  `long_short` varchar(200) DEFAULT NULL,
  `qunatity` varchar(200) DEFAULT NULL,
  `datetime` varchar(200) DEFAULT NULL,
  `fcm` varchar(200) DEFAULT NULL,
  `trade_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `work_status` tinyint(1) NOT NULL DEFAULT '1',
  `hold_unhold` tinyint(1) NOT NULL DEFAULT '1',
  `today_Status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 => active, 0 => inactive ',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_table2`
--

INSERT INTO `data_table2` (`id`, `name`, `contract`, `currency`, `price`, `long_short`, `qunatity`, `datetime`, `fcm`, `trade_id`, `client_id`, `user_id`, `work_status`, `hold_unhold`, `today_Status`, `create_at`, `update_at`) VALUES
(1, 'Sinia Global / Krati Seth', 'F.US.GFQ20', 'USD', '151.100000', 'B', '1', '02-18-20', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-02-20 07:28:29', '2020-03-04 06:48:21'),
(2, 'Sinia Global / Krati Seth', 'F.US.GFQ20', 'USD', '151.100000', 'B', '1', '02-18-20', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-02-20 07:28:29', '2020-03-04 06:48:21'),
(3, 'Sinia Global / Krati Seth', 'F.US.GFU20', 'USD', '152.375000', 'S', '1', '02-18-20', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-02-20 07:28:29', '2020-03-04 06:48:21'),
(4, 'Sinia Global / Krati Seth', 'F.US.GFU20', 'USD', '152.375000', 'S', '1', '02-18-20', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-02-20 07:28:29', '2020-03-04 06:48:21'),
(5, 'Sinia Global / Krati Seth', 'F.US.GLEG21', 'USD', '121.000000', 'S', '1', '02-18-20', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-02-20 07:28:29', '2020-03-04 06:48:21'),
(6, 'Sinia Global / Krati Seth', 'F.US.GLEG21', 'USD', '120.775000', 'B', '1', '02-18-20', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-02-20 07:28:29', '2020-03-04 06:48:21'),
(7, 'Sinia Global / Krati Seth', 'F.US.GLEG21', 'USD', '120.775000', 'B', '1', '02-18-20', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-02-20 07:28:29', '2020-03-04 06:48:21'),
(8, 'Sinia Global / Krati Seth', 'F.US.GLEG21', 'USD', '121.000000', 'S', '1', '02-18-20', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-02-20 07:28:29', '2020-03-04 06:48:21'),
(9, 'Sinia Global / Krati Seth', 'F.US.GLEJ21', 'USD', '121.950000', 'S', '1', '02-18-20', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-02-20 07:28:29', '2020-03-04 06:48:21'),
(10, 'Sinia Global / Krati Seth', 'F.US.GLEJ21', 'USD', '121.950000', 'S', '1', '02-18-20', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-02-20 07:28:29', '2020-03-04 06:48:21'),
(11, 'Sinia Global / Krati Seth', 'F.US.GLEZ20', 'USD', '118.225000', 'B', '1', '02-18-20', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-02-20 07:28:29', '2020-03-04 06:48:21'),
(12, 'Sinia Global / Krati Seth', 'F.US.GLEZ20', 'USD', '118.225000', 'B', '1', '02-18-20', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-02-20 07:28:29', '2020-03-04 06:48:21'),
(13, 'Sinia Global / Krati Seth', 'F.US.GFQ20', 'USD', '149.025000', 'S', '1', '2020-02-14', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-02-20 07:28:29', '2020-03-05 08:33:36'),
(14, 'Sinia Global / Krati Seth', 'F.US.GFQ20', 'USD', '148.825000', 'S', '1', '2020-02-14', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-02-20 07:28:29', '2020-03-05 08:33:36'),
(15, 'Sinia Global / Krati Seth', 'F.US.GFU20', 'USD', '150.200000', 'B', '1', '2020-02-14', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-02-20 07:28:29', '2020-03-05 08:33:36'),
(16, 'Sinia Global / Krati Seth', 'F.US.GFU20', 'USD', '150.050000', 'B', '1', '2020-02-14', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-02-20 07:28:29', '2020-03-05 08:33:36'),
(17, 'Sinia Global / Krati Seth', 'F.US.GFH20', 'USD', '136.500000', 'B', '1', '2020-02-13', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-02-20 07:28:29', '2020-03-05 08:33:36'),
(18, 'Sinia Global / Krati Seth', 'F.US.GFH20', 'USD', '136.600000', 'S', '1', '2020-02-13', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-02-20 07:28:29', '2020-03-05 08:33:36'),
(19, 'Sinia Global / Krati Seth', 'F.US.GFH20', 'USD', '135.950000', 'B', '1', '2020-02-13', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-02-20 07:28:29', '2020-03-05 08:33:36'),
(20, 'Sinia Global / Krati Seth', 'F.US.GFH20', 'USD', '136.275000', 'S', '1', '2020-02-13', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-02-20 07:28:29', '2020-03-05 08:33:36'),
(21, 'Sinia Global / Krati Seth', 'F.US.GFK20', 'USD', '141.100000', 'S', '1', '2020-02-13', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-02-20 07:28:29', '2020-03-05 08:33:36'),
(22, 'Sinia Global / Krati Seth', 'F.US.GFK20', 'USD', '141.050000', 'B', '1', '2020-02-13', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-02-20 07:28:29', '2020-03-05 08:33:36'),
(23, 'Sinia Global / Krati Seth', 'F.US.GFK20', 'USD', '140.650000', 'S', '1', '2020-02-13', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-02-20 07:28:29', '2020-03-05 08:33:36'),
(24, 'Sinia Global / Krati Seth', 'F.US.GFK20', 'USD', '140.725000', 'B', '1', '2020-02-13', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-02-20 07:28:29', '2020-03-05 08:33:36'),
(25, 'Sinia Global / Krati Seth', 'F.US.GFQ20', 'USD', '146.950000', 'S', '1', '2020-02-12', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-02-20 07:28:29', '2020-03-05 08:33:36'),
(26, 'Sinia Global / Krati Seth', 'F.US.GFQ20', 'USD', '145.700000', 'B', '1', '2020-02-12', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-02-20 07:28:29', '2020-03-05 08:33:36'),
(27, 'Sinia Global / Krati Seth', 'F.US.GFU20', 'USD', '148.250000', 'B', '1', '2020-02-12', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-02-20 07:28:29', '2020-03-05 08:33:36'),
(28, 'Sinia Global / Krati Seth', 'F.US.GFU20', 'USD', '147.150000', 'S', '1', '2020-02-12', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-02-20 07:28:29', '2020-03-05 08:33:36'),
(29, 'Sinia Global / Krati Seth', 'F.US.GFQ20', 'USD', '146.850000', 'S', '1', '2020-02-11', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-02-20 07:28:29', '2020-03-05 08:33:36'),
(30, 'Sinia Global / Krati Seth', 'F.US.GFQ20', 'USD', '146.425000', 'B', '1', '2020-02-11', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-02-20 07:28:29', '2020-03-05 08:33:36'),
(31, 'Sinia Global / Krati Seth', 'F.US.GFU20', 'USD', '148.300000', 'B', '1', '2020-02-11', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-02-20 07:28:29', '2020-03-05 08:33:36'),
(32, 'Sinia Global / Krati Seth', 'F.US.GFU20', 'USD', '147.875000', 'S', '1', '2020-02-11', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-02-20 07:28:29', '2020-03-05 08:33:36'),
(33, 'Sinia Global / Krati Seth', 'F.US.GFQ20', 'USD', '147.450000', 'S', '1', '2020-02-10', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:53'),
(34, 'Sinia Global / Krati Seth', 'F.US.GFQ20', 'USD', '146.675000', 'B', '1', '2020-02-10', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:53'),
(35, 'Sinia Global / Krati Seth', 'F.US.GFQ20', 'USD', '146.900000', 'B', '1', '2020-02-10', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:53'),
(36, 'Sinia Global / Krati Seth', 'F.US.GFU20', 'USD', '148.950000', 'B', '1', '2020-02-10', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:53'),
(37, 'Sinia Global / Krati Seth', 'F.US.GFU20', 'USD', '148.250000', 'S', '1', '2020-02-10', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:53'),
(38, 'Sinia Global / Krati Seth', 'F.US.GFU20', 'USD', '148.475000', 'S', '1', '2020-02-10', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:53'),
(39, 'Sinia Global / Krati Seth', 'F.US.GLEM20', 'USD', '110.400000', 'S', '1', '2020-02-10', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:53'),
(40, 'Sinia Global / Krati Seth', 'F.US.GLEM20', 'USD', '110.425000', 'S', '1', '2020-02-10', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:53'),
(41, 'Sinia Global / Krati Seth', 'F.US.GLEV20', 'USD', '112.500000', 'B', '1', '2020-02-10', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:53'),
(42, 'Sinia Global / Krati Seth', 'F.US.GLEV20', 'USD', '112.500000', 'B', '1', '2020-02-10', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:53'),
(43, 'Sinia Global / Krati Seth', 'F.US.GFH20', 'USD', '135.775000', 'S', '1', '2020-02-07', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:52'),
(44, 'Sinia Global / Krati Seth', 'F.US.GFH20', 'USD', '135.675000', 'B', '1', '2020-02-07', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:52'),
(45, 'Sinia Global / Krati Seth', 'F.US.GFK20', 'USD', '139.525000', 'B', '1', '2020-02-07', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:52'),
(46, 'Sinia Global / Krati Seth', 'F.US.GFK20', 'USD', '139.450000', 'S', '1', '2020-02-07', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:52'),
(47, 'Sinia Global / Krati Seth', 'F.US.GFQ20', 'USD', '148.050000', 'B', '1', '2020-02-07', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:52'),
(48, 'Sinia Global / Krati Seth', 'F.US.GFU20', 'USD', '149.750000', 'S', '1', '2020-02-07', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:52'),
(49, 'Sinia Global / Krati Seth', 'F.US.HEM20', 'USD', '81.825000', 'S', '1', '2020-02-07', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:52'),
(50, 'Sinia Global / Krati Seth', 'F.US.HEM20', 'USD', '82.000000', 'B', '1', '2020-02-07', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:52'),
(51, 'Sinia Global / Krati Seth', 'F.US.HEM20', 'USD', '80.850000', 'S', '1', '2020-02-07', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:52'),
(52, 'Sinia Global / Krati Seth', 'F.US.HEM20', 'USD', '81.750000', 'B', '1', '2020-02-07', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:52'),
(53, 'Sinia Global / Krati Seth', 'F.US.HEQ20', 'USD', '81.775000', 'B', '1', '2020-02-07', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:53'),
(54, 'Sinia Global / Krati Seth', 'F.US.HEQ20', 'USD', '81.900000', 'S', '1', '2020-02-07', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:53'),
(55, 'Sinia Global / Krati Seth', 'F.US.HEQ20', 'USD', '80.925000', 'B', '1', '2020-02-07', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:53'),
(56, 'Sinia Global / Krati Seth', 'F.US.HEQ20', 'USD', '81.750000', 'S', '1', '2020-02-07', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:53'),
(57, 'Sinia Global / Krati Seth', 'F.US.GLEM20', 'USD', '112.150000', 'B', '1', '2020-02-05', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:51'),
(58, 'Sinia Global / Krati Seth', 'F.US.GLEM20', 'USD', '112.150000', 'B', '1', '2020-02-05', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:51'),
(59, 'Sinia Global / Krati Seth', 'F.US.GLEM20', 'USD', '110.650000', 'B', '1', '2020-02-05', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:51'),
(60, 'Sinia Global / Krati Seth', 'F.US.GLEM20', 'USD', '112.150000', 'B', '1', '2020-02-05', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:51'),
(61, 'Sinia Global / Krati Seth', 'F.US.GLEQ20', 'USD', '110.075000', 'S', '2', '2020-02-05', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:51'),
(62, 'Sinia Global / Krati Seth', 'F.US.GLEQ20', 'USD', '110.075000', 'S', '2', '2020-02-05', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:51'),
(63, 'Sinia Global / Krati Seth', 'F.US.GLEQ20', 'USD', '110.075000', 'S', '2', '2020-02-05', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:51'),
(64, 'Sinia Global / Krati Seth', 'F.US.GLEV20', 'USD', '113.250000', 'B', '1', '2020-02-05', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:51'),
(65, 'Sinia Global / Krati Seth', 'F.US.GLEV20', 'USD', '113.250000', 'B', '1', '2020-02-05', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:51'),
(66, 'Sinia Global / Krati Seth', 'F.US.GLEV20', 'USD', '112.225000', 'S', '1', '2020-02-05', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:51'),
(67, 'Sinia Global / Krati Seth', 'F.US.GLEV20', 'USD', '113.250000', 'B', '1', '2020-02-05', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:51'),
(68, 'Sinia Global / Krati Seth', 'F.US.GLEM20', 'USD', '112.025000', 'B', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:49'),
(69, 'Sinia Global / Krati Seth', 'F.US.GLEM20', 'USD', '112.025000', 'B', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:49'),
(70, 'Sinia Global / Krati Seth', 'F.US.GLEM20', 'USD', '112.025000', 'B', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:49'),
(71, 'Sinia Global / Krati Seth', 'F.US.GLEM20', 'USD', '111.750000', 'S', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:49'),
(72, 'Sinia Global / Krati Seth', 'F.US.GLEM20', 'USD', '111.750000', 'S', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:49'),
(73, 'Sinia Global / Krati Seth', 'F.US.GLEM20', 'USD', '112.475000', 'S', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:49'),
(74, 'Sinia Global / Krati Seth', 'F.US.GLEM20', 'USD', '112.325000', 'B', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:49'),
(75, 'Sinia Global / Krati Seth', 'F.US.GLEM20', 'USD', '112.050000', 'S', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:49'),
(76, 'Sinia Global / Krati Seth', 'F.US.GLEM20', 'USD', '111.700000', 'S', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:49'),
(77, 'Sinia Global / Krati Seth', 'F.US.GLEM20', 'USD', '112.050000', 'S', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:49'),
(78, 'Sinia Global / Krati Seth', 'F.US.GLEM20', 'USD', '111.925000', 'B', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:49'),
(79, 'Sinia Global / Krati Seth', 'F.US.GLEM20', 'USD', '112.925000', 'S', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:49'),
(80, 'Sinia Global / Krati Seth', 'F.US.GLEM20', 'USD', '112.500000', 'S', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:49'),
(81, 'Sinia Global / Krati Seth', 'F.US.GLEM20', 'USD', '111.900000', 'B', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:49'),
(82, 'Sinia Global / Krati Seth', 'F.US.GLEM20', 'USD', '111.925000', 'B', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:49'),
(83, 'Sinia Global / Krati Seth', 'F.US.GLEM20', 'USD', '111.900000', 'B', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:49'),
(84, 'Sinia Global / Krati Seth', 'F.US.GLEM20', 'USD', '111.700000', 'S', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:49'),
(85, 'Sinia Global / Krati Seth', 'F.US.GLEM20', 'USD', '112.875000', 'S', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:49'),
(86, 'Sinia Global / Krati Seth', 'F.US.GLEQ20', 'USD', '109.975000', 'S', '2', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:50'),
(87, 'Sinia Global / Krati Seth', 'F.US.GLEQ20', 'USD', '109.975000', 'S', '2', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:50'),
(88, 'Sinia Global / Krati Seth', 'F.US.GLEQ20', 'USD', '109.975000', 'S', '2', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:50'),
(89, 'Sinia Global / Krati Seth', 'F.US.GLEQ20', 'USD', '109.750000', 'B', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:50'),
(90, 'Sinia Global / Krati Seth', 'F.US.GLEQ20', 'USD', '109.725000', 'B', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:50'),
(91, 'Sinia Global / Krati Seth', 'F.US.GLEQ20', 'USD', '109.750000', 'B', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:50'),
(92, 'Sinia Global / Krati Seth', 'F.US.GLEQ20', 'USD', '109.725000', 'B', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:50'),
(93, 'Sinia Global / Krati Seth', 'F.US.GLEQ20', 'USD', '110.450000', 'B', '2', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:50'),
(94, 'Sinia Global / Krati Seth', 'F.US.GLEQ20', 'USD', '110.025000', 'B', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:50'),
(95, 'Sinia Global / Krati Seth', 'F.US.GLEQ20', 'USD', '110.000000', 'B', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:50'),
(96, 'Sinia Global / Krati Seth', 'F.US.GLEQ20', 'USD', '109.675000', 'B', '2', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:50'),
(97, 'Sinia Global / Krati Seth', 'F.US.GLEQ20', 'USD', '110.025000', 'B', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:50'),
(98, 'Sinia Global / Krati Seth', 'F.US.GLEQ20', 'USD', '110.000000', 'B', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:50'),
(99, 'Sinia Global / Krati Seth', 'F.US.GLEQ20', 'USD', '110.000000', 'S', '2', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:50'),
(100, 'Sinia Global / Krati Seth', 'F.US.GLEQ20', 'USD', '110.850000', 'B', '2', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:50'),
(101, 'Sinia Global / Krati Seth', 'F.US.GLEQ20', 'USD', '110.475000', 'B', '2', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:50'),
(102, 'Sinia Global / Krati Seth', 'F.US.GLEQ20', 'USD', '110.000000', 'S', '2', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:50'),
(103, 'Sinia Global / Krati Seth', 'F.US.GLEQ20', 'USD', '110.000000', 'S', '2', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:50'),
(104, 'Sinia Global / Krati Seth', 'F.US.GLEQ20', 'USD', '110.000000', 'S', '2', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:50'),
(105, 'Sinia Global / Krati Seth', 'F.US.GLEQ20', 'USD', '109.675000', 'B', '2', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:50'),
(106, 'Sinia Global / Krati Seth', 'F.US.GLEQ20', 'USD', '110.800000', 'B', '2', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:50'),
(107, 'Sinia Global / Krati Seth', 'F.US.GLEV20', 'USD', '113.175000', 'B', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:50'),
(108, 'Sinia Global / Krati Seth', 'F.US.GLEV20', 'USD', '113.175000', 'B', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:50'),
(109, 'Sinia Global / Krati Seth', 'F.US.GLEV20', 'USD', '113.175000', 'B', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:50'),
(110, 'Sinia Global / Krati Seth', 'F.US.GLEV20', 'USD', '112.900000', 'S', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:50'),
(111, 'Sinia Global / Krati Seth', 'F.US.GLEV20', 'USD', '112.900000', 'S', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:50'),
(112, 'Sinia Global / Krati Seth', 'F.US.GLEV20', 'USD', '113.575000', 'S', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:50'),
(113, 'Sinia Global / Krati Seth', 'F.US.GLEV20', 'USD', '113.400000', 'S', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:50'),
(114, 'Sinia Global / Krati Seth', 'F.US.GLEV20', 'USD', '113.100000', 'S', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:50'),
(115, 'Sinia Global / Krati Seth', 'F.US.GLEV20', 'USD', '112.800000', 'S', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:50'),
(116, 'Sinia Global / Krati Seth', 'F.US.GLEV20', 'USD', '113.100000', 'S', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:50'),
(117, 'Sinia Global / Krati Seth', 'F.US.GLEV20', 'USD', '113.100000', 'B', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:50'),
(118, 'Sinia Global / Krati Seth', 'F.US.GLEV20', 'USD', '113.900000', 'S', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:50'),
(119, 'Sinia Global / Krati Seth', 'F.US.GLEV20', 'USD', '113.600000', 'S', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:50'),
(120, 'Sinia Global / Krati Seth', 'F.US.GLEV20', 'USD', '113.100000', 'B', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:50'),
(121, 'Sinia Global / Krati Seth', 'F.US.GLEV20', 'USD', '113.100000', 'B', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:50'),
(122, 'Sinia Global / Krati Seth', 'F.US.GLEV20', 'USD', '113.100000', 'B', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:50'),
(123, 'Sinia Global / Krati Seth', 'F.US.GLEV20', 'USD', '112.800000', 'S', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:50'),
(124, 'Sinia Global / Krati Seth', 'F.US.GLEV20', 'USD', '113.850000', 'S', '1', '2020-02-04', 'Advantage', 2, 1, 1, 1, 1, 0, '2020-02-20 07:28:29', '2020-03-06 09:47:50'),
(125, 'Sinia Global / Krati Seth', 'F.US.GFJ20', 'USD', '136.950000', 'B', '1', '2020-02-03', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-02-20 07:28:29', '2020-03-05 08:27:03'),
(126, 'Sinia Global / Krati Seth', 'F.US.GFJ20', 'USD', '136.925000', 'B', '1', '2020-02-03', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-02-20 07:28:29', '2020-03-05 08:27:03'),
(127, 'Sinia Global / Krati Seth', 'F.US.GFJ20', 'USD', '137.875000', 'B', '1', '2020-02-03', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-02-20 07:28:29', '2020-03-05 08:27:03'),
(128, 'Sinia Global / Krati Seth', 'F.US.GFJ20', 'USD', '137.625000', 'S', '1', '2020-02-03', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-02-20 07:28:29', '2020-03-05 08:27:03'),
(129, 'Sinia Global / Krati Seth', 'F.US.GFK20', 'USD', '139.350000', 'S', '2', '2020-02-03', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-02-20 07:28:29', '2020-03-05 08:27:03'),
(130, 'Sinia Global / Krati Seth', 'F.US.GFK20', 'USD', '139.375000', 'S', '2', '2020-02-03', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-02-20 07:28:29', '2020-03-05 08:27:03'),
(131, 'Sinia Global / Krati Seth', 'F.US.GFQ20', 'USD', '146.850000', 'B', '1', '2020-02-03', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-02-20 07:28:29', '2020-03-05 08:27:03'),
(132, 'Sinia Global / Krati Seth', 'F.US.GFQ20', 'USD', '146.925000', 'B', '1', '2020-02-03', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-02-20 07:28:29', '2020-03-05 08:27:03'),
(133, 'Sinia Global / Krati Seth', 'F.US.GFQ20', 'USD', '147.475000', 'S', '1', '2020-02-03', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-02-20 07:28:29', '2020-03-05 08:27:03'),
(134, 'Sinia Global / Krati Seth', 'F.US.GFQ20', 'USD', '147.425000', 'B', '1', '2020-02-03', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-02-20 07:28:29', '2020-03-05 08:27:03'),
(135, 'Sinia Global / Krati Seth', 'F.US.GLEM20', 'USD', '111.925000', 'S', '1', '2020-02-03', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-02-20 07:28:29', '2020-03-05 08:27:03'),
(136, 'Sinia Global / Krati Seth', 'F.US.GLEM20', 'USD', '111.900000', 'B', '1', '2020-02-03', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-02-20 07:28:29', '2020-03-05 08:27:03'),
(137, 'Sinia Global / Krati Seth', 'F.US.GLEQ20', 'USD', '110.075000', 'B', '2', '2020-02-03', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-02-20 07:28:29', '2020-03-05 08:27:03'),
(138, 'Sinia Global / Krati Seth', 'F.US.GLEQ20', 'USD', '110.100000', 'S', '1', '2020-02-03', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-02-20 07:28:29', '2020-03-05 08:27:03'),
(139, 'Sinia Global / Krati Seth', 'F.US.GLEQ20', 'USD', '110.075000', 'S', '1', '2020-02-03', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-02-20 07:28:29', '2020-03-05 08:27:03'),
(140, 'Sinia Global / Krati Seth', 'F.US.GLEV20', 'USD', '113.400000', 'S', '1', '2020-02-03', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-02-20 07:28:29', '2020-03-05 08:27:03'),
(141, 'Sinia Global / Krati Seth', 'F.US.GLEV20', 'USD', '113.325000', 'B', '1', '2020-02-03', 'Advantage', 2, 1, 1, 1, 1, 1, '2020-02-20 07:28:29', '2020-03-05 08:27:03');

-- --------------------------------------------------------

--
-- Table structure for table `data_table_column_master`
--

CREATE TABLE `data_table_column_master` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hold_contract`
--

CREATE TABLE `hold_contract` (
  `id` int(11) NOT NULL,
  `client_id` varchar(255) DEFAULT NULL,
  `contarct_id` int(11) NOT NULL DEFAULT '0',
  `price` decimal(10,6) NOT NULL DEFAULT '0.000000',
  `close_price` decimal(10,6) NOT NULL DEFAULT '0.000000',
  `price_diff` decimal(10,6) NOT NULL DEFAULT '0.000000',
  `quantity` int(11) NOT NULL,
  `fcm` varchar(100) DEFAULT NULL,
  `contract` varchar(255) DEFAULT NULL,
  `long_short` varchar(5) NOT NULL,
  `profit_loss` decimal(10,2) NOT NULL DEFAULT '0.00',
  `debit_credit` char(2) DEFAULT NULL,
  `datetime` varchar(20) DEFAULT NULL,
  `work_status` tinyint(4) NOT NULL DEFAULT '1',
  `hold_status` tinyint(4) NOT NULL DEFAULT '1',
  `trade_date` varchar(20) DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hold_contract`
--

INSERT INTO `hold_contract` (`id`, `client_id`, `contarct_id`, `price`, `close_price`, `price_diff`, `quantity`, `fcm`, `contract`, `long_short`, `profit_loss`, `debit_credit`, `datetime`, `work_status`, `hold_status`, `trade_date`, `create_at`, `update_at`) VALUES
(1, 'Sinia Global / Krati Seth', 30, '113.575000', '112.975000', '0.600000', 1, 'Advantage', 'F.US.GLEV20', 'S', '240.00', 'CR', '2020-02-04', 1, 0, '2020-02-04', '2020-03-20 16:05:07', '2020-03-20 16:05:08'),
(2, 'Sinia Global / Krati Seth', 23, '113.600000', '112.975000', '0.625000', 1, 'Advantage', 'F.US.GLEV20', 'S', '250.00', 'CR', '2020-02-04', 1, 0, '2020-02-04', '2020-03-20 16:05:07', '2020-03-20 16:05:08'),
(3, 'Sinia Global / Krati Seth', 18, '113.850000', '112.975000', '0.875000', 1, 'Advantage', 'F.US.GLEV20', 'S', '350.00', 'CR', '2020-02-04', 1, 0, '2020-02-04', '2020-03-20 16:05:07', '2020-03-20 16:05:08'),
(4, 'Sinia Global / Krati Seth', 24, '113.900000', '112.975000', '0.925000', 1, 'Advantage', 'F.US.GLEV20', 'S', '370.00', 'CR', '2020-02-04', 1, 0, '2020-02-04', '2020-03-20 16:05:07', '2020-03-20 16:05:08'),
(5, 'Sinia Global / Krati Seth', 41, '110.475000', '109.750000', '0.725000', 2, 'Advantage', 'F.US.GLEQ20', 'B', '580.00', 'DR', '2020-02-04', 1, 0, '2020-02-04', '2020-03-20 16:05:08', '2020-03-20 16:05:09'),
(6, 'Sinia Global / Krati Seth', 36, '110.800000', '109.750000', '1.050000', 2, 'Advantage', 'F.US.GLEQ20', 'B', '840.00', 'DR', '2020-02-04', 1, 0, '2020-02-04', '2020-03-20 16:05:08', '2020-03-20 16:05:09'),
(7, 'Sinia Global / Krati Seth', 42, '110.850000', '109.750000', '1.100000', 2, 'Advantage', 'F.US.GLEQ20', 'B', '880.00', 'DR', '2020-02-04', 1, 0, '2020-02-04', '2020-03-20 16:05:08', '2020-03-20 16:05:09'),
(8, 'Sinia Global / Krati Seth', 57, '112.875000', '111.750000', '1.125000', 1, 'Advantage', 'F.US.GLEM20', 'S', '450.00', 'CR', '2020-02-04', 1, 0, '2020-02-04', '2020-03-20 16:05:08', '2020-03-20 16:05:09'),
(9, 'Sinia Global / Krati Seth', 63, '112.925000', '111.750000', '1.175000', 1, 'Advantage', 'F.US.GLEM20', 'S', '470.00', 'CR', '2020-02-04', 1, 0, '2020-02-04', '2020-03-20 16:05:08', '2020-03-20 16:05:09'),
(10, 'Sinia Global / Krati Seth', 3, '113.850000', '112.450000', '1.400000', 1, 'Advantage', 'F.US.GLEV20', 'S', '560.00', 'CR', '2020-02-04', 1, 0, '2020-02-04', '2020-03-20 16:05:09', '2020-03-20 16:05:10'),
(11, 'Sinia Global / Krati Seth', 4, '113.900000', '112.450000', '1.450000', 1, 'Advantage', 'F.US.GLEV20', 'S', '580.00', 'CR', '2020-02-04', 1, 0, '2020-02-04', '2020-03-20 16:05:09', '2020-03-20 16:05:10'),
(12, 'Sinia Global / Krati Seth', 84, '112.150000', '110.825000', '1.325000', 1, 'Advantage', 'F.US.GLEM20', 'B', '530.00', 'DR', '2020-02-05', 1, 0, '2020-02-05', '2020-03-20 16:05:09', '2020-03-20 16:05:10'),
(13, 'Sinia Global / Krati Seth', 85, '112.150000', '110.825000', '1.325000', 1, 'Advantage', 'F.US.GLEM20', 'B', '530.00', 'DR', '2020-02-05', 1, 0, '2020-02-05', '2020-03-20 16:05:09', '2020-03-20 16:05:10'),
(14, 'Sinia Global / Krati Seth', 94, '149.750000', '149.475000', '0.275000', 1, 'Advantage', 'F.US.GFU20', 'S', '137.50', 'CR', '2020-02-07', 1, 0, '2020-02-07', '2020-03-20 16:05:10', '2020-03-20 16:05:10'),
(15, 'Sinia Global / Krati Seth', 95, '148.050000', '147.875000', '0.175000', 1, 'Advantage', 'F.US.GFQ20', 'B', '87.50', 'DR', '2020-02-07', 1, 0, '2020-02-07', '2020-03-20 16:05:10', '2020-03-20 16:05:10'),
(16, 'Sinia Global / Krati Seth', 104, '148.475000', '148.350000', '0.125000', 1, 'Advantage', 'F.US.GFU20', 'S', '62.50', 'CR', '2020-02-10', 1, 1, '2020-02-10', '2020-03-20 16:05:10', '2020-03-20 16:05:10'),
(17, 'Sinia Global / Krati Seth', 14, '149.750000', '148.350000', '1.400000', 1, 'Advantage', 'F.US.GFU20', 'S', '700.00', 'CR', '2020-02-07', 1, 1, '2020-02-07', '2020-03-20 16:05:10', '2020-03-20 16:05:10'),
(18, 'Sinia Global / Krati Seth', 107, '146.900000', '146.775000', '0.125000', 1, 'Advantage', 'F.US.GFQ20', 'B', '62.50', 'DR', '2020-02-10', 1, 1, '2020-02-10', '2020-03-20 16:05:11', '2020-03-20 16:05:11'),
(19, 'Sinia Global / Krati Seth', 15, '148.050000', '146.775000', '1.275000', 1, 'Advantage', 'F.US.GFQ20', 'B', '637.50', 'DR', '2020-02-07', 1, 1, '2020-02-07', '2020-03-20 16:05:11', '2020-03-20 16:05:11');

-- --------------------------------------------------------

--
-- Table structure for table `ic_trade`
--

CREATE TABLE `ic_trade` (
  `id` int(11) NOT NULL,
  `Trades_AccountName` varchar(200) DEFAULT NULL,
  `Trades_AllocationName` varchar(200) DEFAULT NULL,
  `Trades_AllocationType` varchar(200) DEFAULT NULL,
  `Trades_ContractName` varchar(200) DEFAULT NULL,
  `Trades_Currency` varchar(200) DEFAULT NULL,
  `Trades_ExecutionBroker` varchar(200) DEFAULT NULL,
  `Trades_FCMAccountID` varchar(200) DEFAULT NULL,
  `Trades_FCMName` varchar(200) DEFAULT NULL,
  `Trades_GWAccountID` varchar(200) DEFAULT NULL,
  `Trades_ManualFill` varchar(200) DEFAULT NULL,
  `Trades_Price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `Trades_Side` varchar(200) DEFAULT NULL,
  `Trades_Size` varchar(200) DEFAULT NULL,
  `Trades_StatementDate` varchar(200) DEFAULT NULL,
  `Trades_TradeDate` varchar(200) DEFAULT NULL,
  `Trades_CQGID` varchar(200) DEFAULT NULL,
  `Trades_GMTFillTime` varchar(200) DEFAULT NULL,
  `Trades_GWOrderID` varchar(200) DEFAULT NULL,
  `Trades_GWTradeID` varchar(200) DEFAULT NULL,
  `Trades_OrderType` varchar(200) DEFAULT NULL,
  `Trades_TraderName` varchar(200) DEFAULT NULL,
  `Trades_UEName` varchar(200) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `today_Status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 => active, 0 => inactive ',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `manual_trade`
--

CREATE TABLE `manual_trade` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `contract` varchar(200) DEFAULT NULL,
  `currency` varchar(200) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `long_short` varchar(200) DEFAULT NULL,
  `qunatity` varchar(200) DEFAULT NULL,
  `datetime` varchar(200) DEFAULT NULL,
  `fcm` varchar(200) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `today_Status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 => active, 0 => inactive ',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `output_data`
--

CREATE TABLE `output_data` (
  `id` int(11) NOT NULL,
  `client_id` varchar(255) DEFAULT NULL,
  `contarct_id` int(11) NOT NULL DEFAULT '0',
  `close_id` int(11) NOT NULL,
  `buy_price` decimal(10,6) NOT NULL DEFAULT '0.000000',
  `sale_price` decimal(10,6) NOT NULL DEFAULT '0.000000',
  `buy_count` int(11) NOT NULL,
  `sale_count` int(11) NOT NULL,
  `final_qty` int(11) NOT NULL DEFAULT '0',
  `buy_sale_diff` decimal(10,6) NOT NULL DEFAULT '0.000000',
  `fcm` varchar(100) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `tick_data` varchar(25) DEFAULT NULL,
  `client_date_wise_id` int(11) NOT NULL DEFAULT '0',
  `trade_type` varchar(10) DEFAULT NULL,
  `trade_date` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `output_data`
--

INSERT INTO `output_data` (`id`, `client_id`, `contarct_id`, `close_id`, `buy_price`, `sale_price`, `buy_count`, `sale_count`, `final_qty`, `buy_sale_diff`, `fcm`, `product_name`, `tick_data`, `client_date_wise_id`, `trade_type`, `trade_date`) VALUES
(1, 'Sinia Global / Krati Seth', 19, 20, '113.100000', '112.800000', 1, 1, 1, '-0.300000', 'Advantage', 'F.US.GLEV20_S|F.US.GLEV20_B', '0', 1, 'close', '2020-02-04'),
(2, 'Sinia Global / Krati Seth', 27, 21, '113.100000', '112.800000', 1, 1, 1, '-0.300000', 'Advantage', 'F.US.GLEV20_S|F.US.GLEV20_B', '0', 1, 'close', '2020-02-04'),
(3, 'Sinia Global / Krati Seth', 31, 22, '113.100000', '112.900000', 1, 1, 1, '-0.200000', 'Advantage', 'F.US.GLEV20_S|F.US.GLEV20_B', '0', 1, 'close', '2020-02-04'),
(4, 'Sinia Global / Krati Seth', 32, 25, '113.100000', '112.900000', 1, 1, 1, '-0.200000', 'Advantage', 'F.US.GLEV20_S|F.US.GLEV20_B', '0', 1, 'close', '2020-02-04'),
(5, 'Sinia Global / Krati Seth', 26, 33, '113.175000', '113.100000', 1, 1, 1, '-0.075000', 'Advantage', 'F.US.GLEV20_S|F.US.GLEV20_B', '0', 1, 'close', '2020-02-04'),
(6, 'Sinia Global / Krati Seth', 28, 34, '113.175000', '113.100000', 1, 1, 1, '-0.075000', 'Advantage', 'F.US.GLEV20_S|F.US.GLEV20_B', '0', 1, 'close', '2020-02-04'),
(7, 'Sinia Global / Krati Seth', 29, 35, '113.175000', '113.400000', 1, 1, 1, '0.225000', 'Advantage', 'F.US.GLEV20_S|F.US.GLEV20_B', '0', 1, 'close', '2020-02-04'),
(8, 'Sinia Global / Krati Seth', 30, 0, '0.000000', '113.575000', 0, 1, 1, '0.000000', 'Advantage', 'F.US.GLEV20_S|F.US.GLEV20_H', '0', 1, 'hold', '2020-02-04'),
(9, 'Sinia Global / Krati Seth', 23, 0, '0.000000', '113.600000', 0, 1, 1, '0.000000', 'Advantage', 'F.US.GLEV20_S|F.US.GLEV20_H', '0', 1, 'hold', '2020-02-04'),
(10, 'Sinia Global / Krati Seth', 18, 0, '0.000000', '113.850000', 0, 1, 1, '0.000000', 'Advantage', 'F.US.GLEV20_S|F.US.GLEV20_H', '0', 1, 'hold', '2020-02-04'),
(11, 'Sinia Global / Krati Seth', 24, 0, '0.000000', '113.900000', 0, 1, 1, '0.000000', 'Advantage', 'F.US.GLEV20_S|F.US.GLEV20_H', '0', 1, 'hold', '2020-02-04'),
(12, 'Sinia Global / Krati Seth', 37, 54, '109.675000', '109.975000', 0, 2, 2, '0.300000', 'Advantage', 'F.US.GLEQ20_S', '0', 2, 'close', '2020-02-04'),
(13, 'Sinia Global / Krati Seth', 46, 55, '109.675000', '109.975000', 0, 2, 2, '0.300000', 'Advantage', 'F.US.GLEQ20_S', '0', 2, 'close', '2020-02-04'),
(14, 'Sinia Global / Krati Seth', 50, 56, '109.725000', '109.975000', 0, 2, 1, '0.250000', 'Advantage', 'F.US.GLEQ20_S', '0', 2, 'close', '2020-02-04'),
(15, 'Sinia Global / Krati Seth', 52, 56, '109.725000', '109.975000', 0, 2, 1, '0.250000', 'Advantage', 'F.US.GLEQ20_S', '0', 2, 'close', '2020-02-04'),
(16, 'Sinia Global / Krati Seth', 51, 38, '109.750000', '110.000000', 0, 2, 1, '0.250000', 'Advantage', 'F.US.GLEQ20_S', '0', 2, 'close', '2020-02-04'),
(17, 'Sinia Global / Krati Seth', 53, 38, '109.750000', '110.000000', 0, 2, 1, '0.250000', 'Advantage', 'F.US.GLEQ20_S', '0', 2, 'close', '2020-02-04'),
(18, 'Sinia Global / Krati Seth', 44, 39, '110.000000', '110.000000', 0, 2, 1, '0.000000', 'Advantage', 'F.US.GLEQ20_S', '0', 2, 'close', '2020-02-04'),
(19, 'Sinia Global / Krati Seth', 47, 39, '110.000000', '110.000000', 0, 2, 1, '0.000000', 'Advantage', 'F.US.GLEQ20_S', '0', 2, 'close', '2020-02-04'),
(20, 'Sinia Global / Krati Seth', 45, 40, '110.025000', '110.000000', 0, 2, 1, '-0.025000', 'Advantage', 'F.US.GLEQ20_S', '0', 2, 'close', '2020-02-04'),
(21, 'Sinia Global / Krati Seth', 48, 40, '110.025000', '110.000000', 0, 2, 1, '-0.025000', 'Advantage', 'F.US.GLEQ20_S', '0', 2, 'close', '2020-02-04'),
(22, 'Sinia Global / Krati Seth', 49, 43, '110.450000', '110.000000', 0, 2, 2, '-0.450000', 'Advantage', 'F.US.GLEQ20_S', '0', 2, 'close', '2020-02-04'),
(23, 'Sinia Global / Krati Seth', 41, 0, '110.475000', '0.000000', 2, 0, 2, '0.000000', 'Advantage', 'F.US.GLEQ20_H', '0', 2, 'hold', '2020-02-04'),
(24, 'Sinia Global / Krati Seth', 36, 0, '110.800000', '0.000000', 2, 0, 2, '0.000000', 'Advantage', 'F.US.GLEQ20_H', '0', 2, 'hold', '2020-02-04'),
(25, 'Sinia Global / Krati Seth', 42, 0, '110.850000', '0.000000', 2, 0, 2, '0.000000', 'Advantage', 'F.US.GLEQ20_H', '0', 2, 'hold', '2020-02-04'),
(26, 'Sinia Global / Krati Seth', 58, 59, '111.900000', '111.700000', 1, 1, 1, '-0.200000', 'Advantage', 'F.US.GLEM20_S|F.US.GLEM20_B', '0', 3, 'close', '2020-02-04'),
(27, 'Sinia Global / Krati Seth', 66, 61, '111.900000', '111.700000', 1, 1, 1, '-0.200000', 'Advantage', 'F.US.GLEM20_S|F.US.GLEM20_B', '0', 3, 'close', '2020-02-04'),
(28, 'Sinia Global / Krati Seth', 70, 60, '111.925000', '111.750000', 1, 1, 1, '-0.175000', 'Advantage', 'F.US.GLEM20_S|F.US.GLEM20_B', '0', 3, 'close', '2020-02-04'),
(29, 'Sinia Global / Krati Seth', 71, 64, '111.925000', '111.750000', 1, 1, 1, '-0.175000', 'Advantage', 'F.US.GLEM20_S|F.US.GLEM20_B', '0', 3, 'close', '2020-02-04'),
(30, 'Sinia Global / Krati Seth', 65, 72, '112.025000', '112.050000', 1, 1, 1, '0.025000', 'Advantage', 'F.US.GLEM20_S|F.US.GLEM20_B', '0', 3, 'close', '2020-02-04'),
(31, 'Sinia Global / Krati Seth', 67, 73, '112.025000', '112.050000', 1, 1, 1, '0.025000', 'Advantage', 'F.US.GLEM20_S|F.US.GLEM20_B', '0', 3, 'close', '2020-02-04'),
(32, 'Sinia Global / Krati Seth', 69, 74, '112.025000', '112.475000', 1, 1, 1, '0.450000', 'Advantage', 'F.US.GLEM20_S|F.US.GLEM20_B', '0', 3, 'close', '2020-02-04'),
(33, 'Sinia Global / Krati Seth', 62, 68, '112.325000', '112.500000', 1, 1, 1, '0.175000', 'Advantage', 'F.US.GLEM20_S|F.US.GLEM20_B', '0', 3, 'close', '2020-02-04'),
(34, 'Sinia Global / Krati Seth', 57, 0, '0.000000', '112.875000', 0, 1, 1, '0.000000', 'Advantage', 'F.US.GLEM20_S|F.US.GLEM20_H', '0', 3, 'hold', '2020-02-04'),
(35, 'Sinia Global / Krati Seth', 63, 0, '0.000000', '112.925000', 0, 1, 1, '0.000000', 'Advantage', 'F.US.GLEM20_S|F.US.GLEM20_H', '0', 3, 'hold', '2020-02-04'),
(36, 'Sinia Global / Krati Seth', 76, 75, '113.250000', '112.225000', 1, 1, 1, '-1.025000', 'Advantage', 'F.US.GLEV20_S|F.US.GLEV20_B', '0', 4, 'close', '2020-02-05'),
(37, 'Sinia Global / Krati Seth', 1, 77, '113.250000', '113.575000', 1, 1, 1, '0.325000', 'Advantage', 'F.US.GLEV20_S|F.US.GLEV20_B', '0', 4, 'close', '2020-02-05'),
(38, 'Sinia Global / Krati Seth', 2, 78, '113.250000', '113.600000', 1, 1, 1, '0.350000', 'Advantage', 'F.US.GLEV20_S|F.US.GLEV20_B', '0', 4, 'close', '2020-02-05'),
(39, 'Sinia Global / Krati Seth', 3, 0, '0.000000', '113.850000', 0, 1, 1, '0.000000', 'Advantage', 'F.US.GLEV20_S|F.US.GLEV20_H', '0', 4, 'hold', '2020-02-05'),
(40, 'Sinia Global / Krati Seth', 4, 0, '0.000000', '113.900000', 0, 1, 1, '0.000000', 'Advantage', 'F.US.GLEV20_S|F.US.GLEV20_H', '0', 4, 'hold', '2020-02-05'),
(41, 'Sinia Global / Krati Seth', 79, 5, '110.475000', '110.075000', 2, 2, 2, '-0.400000', 'Advantage', 'F.US.GLEQ20_S|F.US.GLEQ20_B', '0', 5, 'close', '2020-02-05'),
(42, 'Sinia Global / Krati Seth', 80, 6, '110.800000', '110.075000', 2, 2, 2, '-0.725000', 'Advantage', 'F.US.GLEQ20_S|F.US.GLEQ20_B', '0', 5, 'close', '2020-02-05'),
(43, 'Sinia Global / Krati Seth', 81, 7, '110.850000', '110.075000', 2, 2, 2, '-0.775000', 'Advantage', 'F.US.GLEQ20_S|F.US.GLEQ20_B', '0', 5, 'close', '2020-02-05'),
(44, 'Sinia Global / Krati Seth', 83, 8, '110.650000', '112.875000', 0, 1, 1, '2.225000', 'Advantage', 'F.US.GLEM20_S', '0', 6, 'close', '2020-02-05'),
(45, 'Sinia Global / Krati Seth', 82, 9, '112.150000', '112.925000', 0, 1, 1, '0.775000', 'Advantage', 'F.US.GLEM20_S', '0', 6, 'close', '2020-02-05'),
(46, 'Sinia Global / Krati Seth', 84, 0, '112.150000', '0.000000', 1, 0, 1, '0.000000', 'Advantage', 'F.US.GLEM20_H', '0', 6, 'hold', '2020-02-05'),
(47, 'Sinia Global / Krati Seth', 85, 0, '112.150000', '0.000000', 1, 0, 1, '0.000000', 'Advantage', 'F.US.GLEM20_H', '0', 6, 'hold', '2020-02-05'),
(48, 'Sinia Global / Krati Seth', 86, 87, '80.925000', '81.750000', 1, 1, 1, '0.825000', 'Advantage', 'F.US.HEQ20_S|F.US.HEQ20_B', '0', 7, 'close', '2020-02-07'),
(49, 'Sinia Global / Krati Seth', 88, 89, '81.775000', '81.900000', 1, 1, 1, '0.125000', 'Advantage', 'F.US.HEQ20_S|F.US.HEQ20_B', '0', 7, 'close', '2020-02-07'),
(50, 'Sinia Global / Krati Seth', 91, 90, '81.750000', '80.850000', 1, 1, 1, '-0.900000', 'Advantage', 'F.US.HEM20_S|F.US.HEM20_B', '0', 8, 'close', '2020-02-07'),
(51, 'Sinia Global / Krati Seth', 93, 92, '82.000000', '81.825000', 1, 1, 1, '-0.175000', 'Advantage', 'F.US.HEM20_S|F.US.HEM20_B', '0', 8, 'close', '2020-02-07'),
(52, 'Sinia Global / Krati Seth', 94, 0, '0.000000', '149.750000', 0, 1, 1, '0.000000', 'Advantage', 'F.US.GFU20_S|F.US.GFU20_H', '0', 9, 'hold', '2020-02-07'),
(53, 'Sinia Global / Krati Seth', 95, 0, '148.050000', '0.000000', 1, 0, 1, '0.000000', 'Advantage', 'F.US.GFQ20_H', '0', 10, 'hold', '2020-02-07'),
(54, 'Sinia Global / Krati Seth', 96, 97, '139.525000', '139.450000', 1, 1, 1, '-0.075000', 'Advantage', 'F.US.GFK20_S|F.US.GFK20_B', '0', 11, 'close', '2020-02-07'),
(55, 'Sinia Global / Krati Seth', 99, 98, '135.675000', '135.775000', 1, 1, 1, '0.100000', 'Advantage', 'F.US.GFH20_S|F.US.GFH20_B', '0', 12, 'close', '2020-02-07'),
(56, 'Sinia Global / Krati Seth', 10, 100, '112.500000', '113.850000', 1, 1, 1, '1.350000', 'Advantage', 'F.US.GLEV20_S|F.US.GLEV20_B', '0', 13, 'close', '2020-02-10'),
(57, 'Sinia Global / Krati Seth', 11, 101, '112.500000', '113.900000', 1, 1, 1, '1.400000', 'Advantage', 'F.US.GLEV20_S|F.US.GLEV20_B', '0', 13, 'close', '2020-02-10'),
(58, 'Sinia Global / Krati Seth', 103, 12, '112.150000', '110.400000', 1, 1, 1, '-1.750000', 'Advantage', 'F.US.GLEM20_S|F.US.GLEM20_B', '0', 14, 'close', '2020-02-10'),
(59, 'Sinia Global / Krati Seth', 102, 13, '112.150000', '110.425000', 1, 1, 1, '-1.725000', 'Advantage', 'F.US.GLEM20_S|F.US.GLEM20_B', '0', 14, 'close', '2020-02-10'),
(60, 'Sinia Global / Krati Seth', 105, 106, '148.950000', '148.250000', 1, 1, 1, '-0.700000', 'Advantage', 'F.US.GFU20_S|F.US.GFU20_B', '0', 15, 'close', '2020-02-10'),
(61, 'Sinia Global / Krati Seth', 104, 0, '0.000000', '148.475000', 0, 1, 1, '0.000000', 'Advantage', 'F.US.GFU20_S|F.US.GFU20_H', '0', 15, 'hold', '2020-02-10'),
(62, 'Sinia Global / Krati Seth', 14, 0, '0.000000', '149.750000', 0, 1, 1, '0.000000', 'Advantage', 'F.US.GFU20_S|F.US.GFU20_H', '0', 15, 'hold', '2020-02-10'),
(63, 'Sinia Global / Krati Seth', 108, 109, '146.675000', '147.450000', 0, 1, 1, '0.775000', 'Advantage', 'F.US.GFQ20_S', '0', 16, 'close', '2020-02-10'),
(64, 'Sinia Global / Krati Seth', 107, 0, '146.900000', '0.000000', 1, 0, 1, '0.000000', 'Advantage', 'F.US.GFQ20_H', '0', 16, 'hold', '2020-02-10'),
(65, 'Sinia Global / Krati Seth', 15, 0, '148.050000', '0.000000', 1, 0, 1, '0.000000', 'Advantage', 'F.US.GFQ20_H', '0', 16, 'hold', '2020-02-10');

-- --------------------------------------------------------

--
-- Table structure for table `qt_trade`
--

CREATE TABLE `qt_trade` (
  `id` int(11) NOT NULL,
  `Trades_AccountName` varchar(200) DEFAULT NULL,
  `Trades_AllocationName` varchar(200) DEFAULT NULL,
  `Trades_AllocationType` varchar(200) DEFAULT NULL,
  `Trades_ContractName` varchar(200) DEFAULT NULL,
  `Trades_Currency` varchar(200) DEFAULT NULL,
  `Trades_ExecutionBroker` varchar(200) DEFAULT NULL,
  `Trades_FCMAccountID` varchar(200) DEFAULT NULL,
  `Trades_FCMName` varchar(200) DEFAULT NULL,
  `Trades_GWAccountID` varchar(200) DEFAULT NULL,
  `Trades_ManualFill` varchar(200) DEFAULT NULL,
  `Trades_OrderNumber` varchar(200) DEFAULT NULL,
  `Trades_Price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `Trades_Side` varchar(200) DEFAULT NULL,
  `Trades_Size` varchar(200) DEFAULT NULL,
  `Trades_StatementDate` varchar(200) DEFAULT NULL,
  `Trades_TradeDate` varchar(200) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `today_Status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 => active, 0 => inactive ',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role_name`, `role_id`, `create_at`) VALUES
(1, 'ADMIN', 0, '2020-02-03 18:30:00'),
(2, 'USER', 1, '2020-02-03 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `create_at`) VALUES
(1, 'site_title', 'Trade', '2020-02-18 08:22:44'),
(2, 'site_name', 'TRD', '2020-02-18 08:22:44'),
(3, 'site_shot_name', 'TRD', '2020-02-18 08:22:44');

-- --------------------------------------------------------

--
-- Table structure for table `set_access`
--

CREATE TABLE `set_access` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `access_id` varchar(255) DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `set_access`
--

INSERT INTO `set_access` (`id`, `user_id`, `role_id`, `access_id`, `create_at`, `update_at`) VALUES
(4, 3, 0, '3,4,1', '2020-03-18 05:35:37', '2020-03-18 05:39:46');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_info`
--

CREATE TABLE `tbl_info` (
  `id` int(1) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `trades_columns_master`
--

CREATE TABLE `trades_columns_master` (
  `id` int(11) NOT NULL,
  `column_name` varchar(255) DEFAULT NULL,
  `names` varchar(20) NOT NULL,
  `trade_id` tinyint(2) NOT NULL DEFAULT '0',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trades_columns_master`
--

INSERT INTO `trades_columns_master` (`id`, `column_name`, `names`, `trade_id`, `create_at`, `update_at`) VALUES
(1, 'Trades_AccountName', '', 1, '2020-02-17 12:04:39', '2020-02-17 12:04:39'),
(2, 'Trades_AllocationName', '', 1, '2020-02-17 12:04:39', '2020-02-17 12:04:39'),
(3, 'Trades_AllocationType', '', 1, '2020-02-17 12:04:39', '2020-02-17 12:04:39'),
(4, 'Trades_ContractName', '', 1, '2020-02-17 12:04:39', '2020-02-17 12:04:39'),
(5, 'Trades_Currency', '', 1, '2020-02-17 12:04:39', '2020-02-17 12:04:39'),
(6, 'Trades_ExecutionBroker', '', 1, '2020-02-17 12:04:39', '2020-02-17 12:04:39'),
(7, 'Trades_FCMAccountID', '', 1, '2020-02-17 12:04:39', '2020-02-17 12:04:39'),
(8, 'Trades_FCMName', '', 1, '2020-02-17 12:04:39', '2020-02-17 12:04:39'),
(9, 'Trades_GWAccountID', '', 1, '2020-02-17 12:04:39', '2020-02-17 12:04:39'),
(10, 'Trades_ManualFill', '', 1, '2020-02-17 12:04:39', '2020-02-17 12:04:39'),
(11, 'Trades_Price', '', 1, '2020-02-17 12:04:39', '2020-02-17 12:04:39'),
(12, 'Trades_Side', '', 1, '2020-02-17 12:04:39', '2020-02-17 12:04:39'),
(13, 'Trades_Size', '', 1, '2020-02-17 12:04:39', '2020-02-17 12:04:39'),
(14, 'Trades_StatementDate', '', 1, '2020-02-17 12:04:39', '2020-02-17 12:04:39'),
(15, 'Trades_TradeDate', '', 1, '2020-02-17 12:04:39', '2020-02-17 12:04:39'),
(16, 'Trades_CQGID', '', 1, '2020-02-17 12:04:39', '2020-02-17 12:04:39'),
(17, 'Trades_GMTFillTime', '', 1, '2020-02-17 12:04:39', '2020-02-17 12:04:39'),
(18, 'Trades_GWOrderID', '', 1, '2020-02-17 12:04:39', '2020-02-17 12:04:39'),
(19, 'Trades_GWTradeID', '', 1, '2020-02-17 12:04:40', '2020-02-17 12:04:40'),
(20, 'Trades_OrderType', '', 1, '2020-02-17 12:04:40', '2020-02-17 12:04:40'),
(21, 'Trades_TraderName', '', 1, '2020-02-17 12:04:40', '2020-02-17 12:04:40'),
(22, 'Trades_UEName', '', 1, '2020-02-17 12:04:40', '2020-02-17 12:04:40'),
(23, 'Trades_AccountName', 'name', 2, '2020-03-18 11:19:00', '2020-03-18 11:42:20'),
(24, 'Trades_ContractName', 'contract', 2, '2020-03-18 11:19:00', '2020-03-18 11:42:28'),
(25, 'Trades_Currency', 'currency', 2, '2020-03-18 11:19:00', '2020-03-18 11:42:37'),
(26, 'Trades_FCMAccountID', 'fid', 2, '2020-03-18 11:19:00', '2020-03-18 11:43:08'),
(27, 'Trades_FCMName', 'fcm', 2, '2020-03-18 11:19:00', '2020-03-18 11:42:44'),
(28, 'Trades_Price', 'price', 2, '2020-03-18 11:19:00', '2020-03-18 11:42:49'),
(29, 'Trades_Side', 'ls', 2, '2020-03-18 11:19:00', '2020-03-18 11:42:54'),
(30, 'Trades_Size', 'qty', 2, '2020-03-18 11:19:00', '2020-03-18 11:42:58'),
(31, 'Trades_TradeDate', 'date', 2, '2020-03-18 11:19:00', '2020-03-18 11:43:01');

-- --------------------------------------------------------

--
-- Table structure for table `trades_mst`
--

CREATE TABLE `trades_mst` (
  `id` int(11) NOT NULL,
  `trade_name` varchar(100) NOT NULL,
  `name` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trades_mst`
--

INSERT INTO `trades_mst` (`id`, `trade_name`, `name`, `status`, `create_at`, `update_at`) VALUES
(1, 'ic_trade', 'IC', 1, '2020-02-04 05:28:33', '2020-02-07 10:01:19'),
(2, 'qt_trade', 'QT', 1, '2020-02-04 05:28:33', '2020-02-07 10:01:25'),
(3, 'tt_trade', 'TT', 1, '2020-02-04 05:28:33', '2020-02-07 10:01:29'),
(4, 'manual_trade', 'MN', 1, '2020-02-04 05:28:33', '2020-02-07 10:01:35');

-- --------------------------------------------------------

--
-- Table structure for table `tt_trade`
--

CREATE TABLE `tt_trade` (
  `id` int(11) NOT NULL,
  `Date` varchar(200) DEFAULT NULL,
  `Time` varchar(200) DEFAULT NULL,
  `Exchange` varchar(200) DEFAULT NULL,
  `Contract` varchar(200) DEFAULT NULL,
  `Product` varchar(200) DEFAULT NULL,
  `Prod_Type` varchar(200) DEFAULT NULL,
  `Fill_Type` varchar(200) DEFAULT NULL,
  `B_S` varchar(200) DEFAULT NULL,
  `FillQty` varchar(200) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `ExeQty` varchar(200) DEFAULT NULL,
  `WorkQty` varchar(200) DEFAULT NULL,
  `P_F` varchar(200) DEFAULT NULL,
  `Type` varchar(200) DEFAULT NULL,
  `Modifier` varchar(200) DEFAULT NULL,
  `Route` varchar(200) DEFAULT NULL,
  `O_C` varchar(200) DEFAULT NULL,
  `Broker` varchar(200) DEFAULT NULL,
  `Account` varchar(200) DEFAULT NULL,
  `AcctType` varchar(200) DEFAULT NULL,
  `GiveUp` varchar(200) DEFAULT NULL,
  `TextA` varchar(200) DEFAULT NULL,
  `TextB` varchar(200) DEFAULT NULL,
  `TextC` varchar(200) DEFAULT NULL,
  `TextTT` varchar(200) DEFAULT NULL,
  `Originator` varchar(200) DEFAULT NULL,
  `CurrentUser` varchar(200) DEFAULT NULL,
  `P_A` varchar(200) DEFAULT NULL,
  `TTOrderID` varchar(200) DEFAULT NULL,
  `ClOrderID` varchar(200) DEFAULT NULL,
  `ParentID` varchar(200) DEFAULT NULL,
  `OMAOrderID` varchar(200) DEFAULT NULL,
  `ExchOrderID` varchar(200) DEFAULT NULL,
  `ExchTransID` varchar(200) DEFAULT NULL,
  `ExchAcct` varchar(200) DEFAULT NULL,
  `ExchDate` varchar(200) DEFAULT NULL,
  `ExchTime` varchar(200) DEFAULT NULL,
  `ManualFill` varchar(200) DEFAULT NULL,
  `ConnectionID` varchar(200) DEFAULT NULL,
  `P_C` varchar(200) DEFAULT NULL,
  `Strike` varchar(200) DEFAULT NULL,
  `DEA` varchar(200) DEFAULT NULL,
  `TrdgCap` varchar(200) DEFAULT NULL,
  `LiqProv` varchar(200) DEFAULT NULL,
  `CDI` varchar(200) DEFAULT NULL,
  `InvestDec` varchar(200) DEFAULT NULL,
  `ExecDec` varchar(200) DEFAULT NULL,
  `Client` varchar(200) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `today_Status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 => active, 0 => inactive ',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `role_id` int(11) NOT NULL DEFAULT '0',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_login` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `mobile`, `password`, `role_id`, `create_at`, `update_at`, `last_login`) VALUES
(1, 'vijay', 'vijay@gmail.com', '9654430156', '12345678', 0, '2020-02-06 05:20:16', '2020-03-18 07:04:06', NULL),
(2, 'sadasdsadasda dsadsa', 'user@gmail.com', '7869031599', '123', 1, '2020-03-11 06:14:56', '2020-03-18 07:04:10', NULL),
(3, 'vijay kumar', 'kumar@gmail.com', '9658471235', '12345678', 1, '2020-03-17 07:19:19', '2020-03-18 07:04:14', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access`
--
ALTER TABLE `access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_mst`
--
ALTER TABLE `client_mst`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `closing_price`
--
ALTER TABLE `closing_price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_mst`
--
ALTER TABLE `company_mst`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contract_mst`
--
ALTER TABLE `contract_mst`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contract_wise_dete_report`
--
ALTER TABLE `contract_wise_dete_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency_mst`
--
ALTER TABLE `currency_mst`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daily_client_wise_trxn`
--
ALTER TABLE `daily_client_wise_trxn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_table`
--
ALTER TABLE `data_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_table2`
--
ALTER TABLE `data_table2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_table_column_master`
--
ALTER TABLE `data_table_column_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hold_contract`
--
ALTER TABLE `hold_contract`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ic_trade`
--
ALTER TABLE `ic_trade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manual_trade`
--
ALTER TABLE `manual_trade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `output_data`
--
ALTER TABLE `output_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qt_trade`
--
ALTER TABLE `qt_trade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `set_access`
--
ALTER TABLE `set_access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_info`
--
ALTER TABLE `tbl_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trades_columns_master`
--
ALTER TABLE `trades_columns_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trades_mst`
--
ALTER TABLE `trades_mst`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tt_trade`
--
ALTER TABLE `tt_trade`
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
-- AUTO_INCREMENT for table `access`
--
ALTER TABLE `access`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `client_mst`
--
ALTER TABLE `client_mst`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `closing_price`
--
ALTER TABLE `closing_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `company_mst`
--
ALTER TABLE `company_mst`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contract_mst`
--
ALTER TABLE `contract_mst`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contract_wise_dete_report`
--
ALTER TABLE `contract_wise_dete_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `currency_mst`
--
ALTER TABLE `currency_mst`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `daily_client_wise_trxn`
--
ALTER TABLE `daily_client_wise_trxn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `data_table`
--
ALTER TABLE `data_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `data_table2`
--
ALTER TABLE `data_table2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `data_table_column_master`
--
ALTER TABLE `data_table_column_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hold_contract`
--
ALTER TABLE `hold_contract`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `ic_trade`
--
ALTER TABLE `ic_trade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `manual_trade`
--
ALTER TABLE `manual_trade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `output_data`
--
ALTER TABLE `output_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `qt_trade`
--
ALTER TABLE `qt_trade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `set_access`
--
ALTER TABLE `set_access`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_info`
--
ALTER TABLE `tbl_info`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trades_columns_master`
--
ALTER TABLE `trades_columns_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `trades_mst`
--
ALTER TABLE `trades_mst`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tt_trade`
--
ALTER TABLE `tt_trade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
