-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: mysql5015.site4now.net
-- Generation Time: Dec 23, 2019 at 11:28 PM
-- Server version: 5.6.26-log
-- PHP Version: 5.6.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_a50947_cdc`
--

-- --------------------------------------------------------

--
-- Table structure for table `asm`
--

CREATE TABLE `asm` (
  `asm_id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `phone` varchar(120) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL,
  `reg_id` int(11) NOT NULL,
  `login_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asm`
--

INSERT INTO `asm` (`asm_id`, `name`, `phone`, `email`, `reg_id`, `login_id`) VALUES
(1, 'EDGER NAZARENO MSASA', NULL, NULL, 1, 5),
(2, 'JOHN MATHEW MNOZYA', NULL, NULL, 2, 6),
(3, 'DANSTAN MUGANYIZI', NULL, NULL, 3, 7);

-- --------------------------------------------------------

--
-- Table structure for table `audit`
--

CREATE TABLE `audit` (
  `audit_id` int(11) NOT NULL,
  `cooler` int(11) NOT NULL,
  `activation` int(11) NOT NULL,
  `total_score` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `audit_availability`
--

CREATE TABLE `audit_availability` (
  `aud_av_id` int(11) NOT NULL,
  `audit_id` int(11) NOT NULL,
  `product_name` varchar(120) NOT NULL,
  `quantity` int(11) NOT NULL,
  `score` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(120) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(1, 'BRONZE'),
(2, 'SILVER'),
(3, 'GOLD');

-- --------------------------------------------------------

--
-- Table structure for table `channel`
--

CREATE TABLE `channel` (
  `channel_id` int(11) NOT NULL,
  `channel_name` varchar(120) NOT NULL,
  `group_chan_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `channel`
--

INSERT INTO `channel` (`channel_id`, `channel_name`, `group_chan_id`) VALUES
(1, 'AT WORK', 1),
(2, 'SHOP', 1),
(3, 'BAR', 2),
(4, 'BAKERY', 1);

-- --------------------------------------------------------

--
-- Table structure for table `coolers`
--

CREATE TABLE `coolers` (
  `cooler_sn` varchar(23) NOT NULL,
  `cooler_tag` varchar(45) DEFAULT NULL,
  `cooler_asset_number` varchar(45) DEFAULT NULL,
  `cooler_type` varchar(200) NOT NULL,
  `cooler_description` text NOT NULL,
  `is_rented` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coolers`
--

INSERT INTO `coolers` (`cooler_sn`, `cooler_tag`, `cooler_asset_number`, `cooler_type`, `cooler_description`, `is_rented`) VALUES
('12xe54', NULL, NULL, 'FV650', 'doubledoortwicecapacity', 0),
('13xe15', 'cc567', '6756fg', 'FV651', '', 0),
('14xe15', NULL, NULL, 'FV650', 'singledoor', 0),
('15xe21', '112weqfg', '45232', 'FV652', 'testing', 0),
('16xe21', '45544', '448554', 'FV650', 'testing', 0),
('17xe21', 'twtyw', 'ywruh', 'FV653', 'testing', 0),
('16xe22', 's3434d', 'qwqqwqa', 'FV650', 'testing', 0),
('18xe21', 'ggg1', '131qwd1', 'FV654', 'testing', 0),
('16xe24', '3dtf23', 'q4aef', 'FV650', 'testing', 0),
('15xe31', 'yeue', 'shtjj', 'FV655', 'testing', 0),
('10xe91', '34dq', '14r5', 'FV650', 'testing', 0),
('26xe01', 'CVSb', 'FAgG', 'FV656', 'testing', 0),
('36xe02', 'd234ds', '3sd', 'FV650', 'testing', 0),
('19xe21', '35ef', '43efv', 'FV657', 'testing continue', 0),
('15xe27', '345fdr', 'ra54', 'FV650', 'testing', 0),
('18xe27', '24rf', 'ew4ds', 'FV658', 'testing', 0),
('15xe29', 'rws', 'eers', 'FV650', 'testing', 0),
('19xe29', '434sd', 'e34ds', 'FV659', 'testing', 0),
('19xe49', '23D4', '34D', 'FV650', 'testing', 0),
('15xe47', '23D3', '32DD', 'FV660', 'testing', 0),
('15xe57', '23SD3', '4R34X', 'FV650', 'testing', 0),
('21xe57', '34dfwae', 'er35cv', 'FV661', 'testing', 0),
('22xe5r4', 'fdfdf', 'fss', 'FV650', 'testing', 0),
('32xe4r4', 'rgbta', 'rssfrt', 'FV662', 'testing', 0),
('33xe44', 'ryry', '4tw4y', 'FV650', 'testing', 0),
('27xe27', '44444', '544154152455244', 'FV650', 'testing', 1),
('67xe17', '33333', '33333', 'FV650', 'testing', 1),
('57xe17', 'test01', 'test01', 'FV650', 'testing', 1),
('17xe37', 'test02', 'test02', 'FV650', 'testing', 1),
('87xe37', NULL, NULL, 'FV650', 'testing', 0),
('81xe39', NULL, NULL, 'FV650', 'testing', 0);

-- --------------------------------------------------------

--
-- Stand-in structure for view `coolerview`
-- (See below for the actual view)
--
CREATE TABLE `coolerview` (
);

-- --------------------------------------------------------

--
-- Table structure for table `cooler_maintenance`
--

CREATE TABLE `cooler_maintenance` (
  `cooler_main_id` int(11) NOT NULL,
  `sales_rep_id` int(11) NOT NULL,
  `outlet_name` text NOT NULL,
  `outlet_no` int(11) NOT NULL,
  `street` text NOT NULL,
  `near_to` text NOT NULL,
  `cooler_type` text NOT NULL,
  `serial_no` int(120) NOT NULL,
  `deflect` text NOT NULL,
  `tag_no` varchar(45) NOT NULL,
  `request_date` datetime NOT NULL,
  `date_of_repair` datetime DEFAULT NULL,
  `r_status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cooler_maintenance`
--

INSERT INTO `cooler_maintenance` (`cooler_main_id`, `sales_rep_id`, `outlet_name`, `outlet_no`, `street`, `near_to`, `cooler_type`, `serial_no`, `deflect`, `tag_no`, `request_date`, `date_of_repair`, `r_status`) VALUES
(1, 2, 'RAMASHOP', 10001, 'MBAGALA', 'MBAGALA', 'FV650,GDM 1DR,580L', 0, 'door not closing', '99999', '2019-12-19 01:12:27', NULL, 1),
(2, 2, 'JOVINSHOP', 10002, 'MBEZI', 'MBEZI', 'INOVA650HC,GDM,1DR,601L', 1, 'lights not working', '1111110', '2019-12-19 01:15:46', NULL, 0),
(3, 2, 'EDWINSHOP', 10005, 'KIMARA', 'KIMARA', 'FV1200 ICM,2DR,1206L', 2, 'not freez', '111112', '2019-12-19 01:17:54', NULL, 0),
(4, 1, 'JACKSHOP', 20003, 'MBEZI BEACH', 'MBEZI BEACH', 'FV1000,GDM 2DR,757L', 3, 'no door', '11119', '2019-12-19 01:20:55', NULL, 0),
(5, 1, 'HAILATSHOP', 20004, 'KINONDONI', 'KINONDONI', 'FV280,GDM 1DR,255L', 4, 'not freez', '1116', '2019-12-19 01:22:13', NULL, 1),
(6, 1, 'EDWIN SHOP', 58548, 'KAWE', 'RIVER', 'FV650,GDM 1DR,580L', 6454, 'COOLING SYSTEM', '5464545', '2019-12-19 09:05:29', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `cooler_types`
--

CREATE TABLE `cooler_types` (
  `coolertype_id` int(11) NOT NULL,
  `coolertype_desc` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cooler_types`
--

INSERT INTO `cooler_types` (`coolertype_id`, `coolertype_desc`) VALUES
(1, 'doubledoor,twicecapacity'),
(2, 'singledoor16capacity'),
(3, 'singledoor18capacity');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_info`
--

CREATE TABLE `delivery_info` (
  `delivery_id` int(11) NOT NULL,
  `loan_cooler_id` int(11) NOT NULL,
  `delivert_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `customer_sign` text NOT NULL,
  `salesrep_sign` text,
  `deliver_man_name` text NOT NULL,
  `deliver_sign` text,
  `weo_sign` text NOT NULL,
  `contract_no` text,
  `contract_img` text,
  `outlet_no` text,
  `outlet_img` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery_info`
--

INSERT INTO `delivery_info` (`delivery_id`, `loan_cooler_id`, `delivert_date`, `customer_sign`, `salesrep_sign`, `deliver_man_name`, `deliver_sign`, `weo_sign`, `contract_no`, `contract_img`, `outlet_no`, `outlet_img`) VALUES
(10, 7, '2019-11-25 12:32:51', '/Applications/XAMPP/xamppfiles/htdocs/projects/my_store/signature/cust_time().jpg', '/Applications/XAMPP/xamppfiles/htdocs/projects/my_store/signature/srep_time().jpg', '', '/Applications/XAMPP/xamppfiles/htdocs/projects/my_store/signature/las_time().jpg', '/Applications/XAMPP/xamppfiles/htdocs/projects/my_store/signature/del_time().jpg', NULL, NULL, NULL, NULL),
(9, 7, '2019-11-25 12:29:23', '/Applications/XAMPP/xamppfiles/htdocs/projects/my_store/signature/cust_time().jpg', '/Applications/XAMPP/xamppfiles/htdocs/projects/my_store/signature/srep_time().jpg', '', '/Applications/XAMPP/xamppfiles/htdocs/projects/my_store/signature/las_time().jpg', '/Applications/XAMPP/xamppfiles/htdocs/projects/my_store/signature/del_time().jpg', NULL, NULL, NULL, NULL),
(11, 7, '2019-11-25 12:34:44', '/Applications/XAMPP/xamppfiles/htdocs/projects/my_store/signature/cust_time().jpg', NULL, '', '/Applications/XAMPP/xamppfiles/htdocs/projects/my_store/signature/del_time().jpg', '/Applications/XAMPP/xamppfiles/htdocs/projects/my_store/signature/las_time().jpg', NULL, NULL, NULL, NULL),
(12, 7, '2019-11-25 12:34:44', '/Applications/XAMPP/xamppfiles/htdocs/projects/my_store/signature/cust_time().jpg', '/Applications/XAMPP/xamppfiles/htdocs/projects/my_store/signature/srep_time().jpg', '', '/Applications/XAMPP/xamppfiles/htdocs/projects/my_store/signature/las_time().jpg', '/Applications/XAMPP/xamppfiles/htdocs/projects/my_store/signature/del_time().jpg', NULL, NULL, NULL, NULL),
(13, 7, '2019-11-25 12:44:29', 'signature/cust_time().jpg', 'signature/srep_time().jpg', '', 'signature/del_time().jpg', 'signature/las_time().jpg', NULL, NULL, NULL, NULL),
(14, 7, '2019-11-25 12:47:52', 'signature/cust_time().jpg', 'signature/srep_time().jpg', '', 'signature/del_time().jpg', 'signature/las_time().jpg', NULL, NULL, NULL, NULL),
(15, 7, '2019-11-25 12:50:27', 'signature/cust_1574675427.jpg', 'signature/srep_1574675427.jpg', '', 'signature/del_1574675427.jpg', 'signature/las_1574675427.jpg', NULL, NULL, NULL, NULL),
(16, 7, '2019-11-25 15:18:57', 'signature/cust_1574684337.jpg', 'signature/srep_1574684337.jpg', 'Testet', 'signature/del_1574684337.jpg', 'signature/las_1574684337.jpg', NULL, NULL, NULL, NULL),
(17, 7, '2019-11-27 11:52:05', 'signature/cust_1574844725.jpg', 'signature/srep_1574844725.jpg', '3443', 'signature/del_1574844725.jpg', 'signature/las_1574844725.jpg', NULL, NULL, NULL, NULL),
(18, 7, '2019-11-27 22:26:37', 'signature/cust_1574882797.jpg', 'signature/srep_1574882797.jpg', '', 'signature/del_1574882797.jpg', 'signature/las_1574882797.jpg', '', '', '', ''),
(19, 7, '2019-11-27 23:17:16', 'signature/cust_1574885836.jpg', 'signature/srep_1574885836.jpg', '', 'signature/del_1574885836.jpg', 'signature/las_1574885836.jpg', '', '', '', ''),
(20, 7, '2019-11-27 23:18:36', 'signature/cust_1574885916.jpg', 'signature/srep_1574885916.jpg', '', 'signature/del_1574885916.jpg', 'signature/las_1574885916.jpg', NULL, NULL, NULL, NULL),
(21, 7, '2019-11-27 23:26:55', 'signature/cust_1574886415.jpg', 'signature/srep_1574886415.jpg', 'test', 'signature/del_1574886415.jpg', 'signature/las_1574886415.jpg', '1007', 'photo/contr_1574886415.jpg', '50569114', 'photo/outlet_1574886415.jpg'),
(22, 7, '2019-11-27 23:34:21', 'signature/cust_1574886861.jpg', 'signature/srep_1574886861.jpg', 'Ramadan Ntila', 'signature/del_1574886861.jpg', 'signature/las_1574886861.jpg', '1007', 'photo/contr_1574886861.jpg', '50569114', 'photo/outlet_1574886861.jpg'),
(23, 7, '2019-11-28 09:31:35', 'signature/cust_1574922695.jpg', 'signature/srep_1574922695.jpg', 'RAMADAN NTILA', 'signature/del_1574922695.jpg', 'signature/las_1574922695.jpg', '1007', 'photo/contr_1574922695.jpg', '50569114', 'photo/outlet_1574922695.jpg'),
(24, 7, '2019-11-28 10:00:59', 'signature/cust_1574924459.jpg', 'signature/srep_1574924459.jpg', 'GASTONE', 'signature/del_1574924459.jpg', 'signature/las_1574924459.jpg', '1007', 'photo/contr_1574924459.jpg', '50569114', 'photo/outlet_1574924459.jpg'),
(25, 7, '2019-11-30 11:20:45', 'signature/cust_1575102045.jpg', 'signature/srep_1575102045.jpg', 'EDWIN', 'signature/del_1575102045.jpg', 'signature/las_1575102045.jpg', '1007', 'photo/contr_1575102045.jpg', '50569114', 'photo/outlet_1575102045.jpg'),
(26, 7, '2019-11-30 12:40:35', 'signature/cust_1575106835.jpg', 'signature/srep_1575106835.jpg', 'GASTONE DERICKM', 'signature/del_1575106835.jpg', 'signature/las_1575106835.jpg', '1007', 'photo/contr_1575106835.jpg', '50569114', 'photo/outlet_1575106835.jpg'),
(27, 7, '2019-11-30 13:25:53', 'signature/cust_1575109553.jpg', 'signature/srep_1575109553.jpg', 'EDWIN EDWARDS', 'signature/del_1575109553.jpg', 'signature/las_1575109553.jpg', '1007', 'photo/contr_1575109553.jpg', '50569114', 'photo/outlet_1575109553.jpg'),
(46, 127, '2019-12-14 11:58:15', 'signature/cust_1576313895.jpg', 'signature/srep_1576313895.jpg', 'FGHCJJJG', 'signature/del_1576313895.jpg', 'signature/las_1576313895.jpg', '1007', 'photo/contr_1576313895.jpg', '50569114', 'photo/outlet_1576313895.jpg'),
(40, 131, '2019-12-10 22:28:21', 'signature/cust_1576006101.jpg', 'signature/srep_1576006101.jpg', 'test', 'signature/del_1576006101.jpg', 'signature/las_1576006101.jpg', '2345', 'photo/contr_1576006101.jpg', '2345', 'photo/outlet_1576006101.jpg'),
(41, 159, '2019-12-10 22:33:43', 'signature/cust_1576006423.jpg', 'signature/srep_1576006423.jpg', 'TEST', 'signature/del_1576006423.jpg', 'signature/las_1576006423.jpg', '123', 'photo/contr_1576006423.jpg', '123', 'photo/outlet_1576006423.jpg'),
(42, 131, '2019-12-10 22:34:45', 'signature/cust_1576006485.jpg', 'signature/srep_1576006485.jpg', 'TEST 2', 'signature/del_1576006485.jpg', 'signature/las_1576006485.jpg', '1003', 'photo/contr_1576006485.jpg', '1234', 'photo/outlet_1576006485.jpg'),
(43, 170, '2019-12-13 13:13:53', 'signature/cust_1576232033.jpg', 'signature/srep_1576232033.jpg', 'EDWIN', 'signature/del_1576232033.jpg', 'signature/las_1576232033.jpg', '8558665', 'photo/contr_1576232033.jpg', '55665', 'photo/outlet_1576232033.jpg'),
(44, 149, '2019-12-13 14:44:44', 'signature/cust_1576237484.jpg', 'signature/srep_1576237484.jpg', 'SGXFGXGHC', 'signature/del_1576237484.jpg', 'signature/las_1576237484.jpg', '1015', 'photo/contr_1576237484.jpg', '968563', 'photo/outlet_1576237484.jpg'),
(45, 127, '2019-12-14 11:57:18', 'signature/cust_1576313838.jpg', 'signature/srep_1576313838.jpg', 'FGHCJJJG', 'signature/del_1576313838.jpg', 'signature/las_1576313838.jpg', '1007', 'photo/contr_1576313838.jpg', '50569114', 'photo/outlet_1576313838.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `distr_id` int(11) NOT NULL,
  `distr_name` varchar(120) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`distr_id`, `distr_name`) VALUES
(1, 'Dar es Salaam'),
(2, 'Mbeya'),
(3, 'Arusha');

-- --------------------------------------------------------

--
-- Table structure for table `fleet`
--

CREATE TABLE `fleet` (
  `fleet_id` int(11) NOT NULL,
  `fleet_name` text NOT NULL,
  `login_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fleet`
--

INSERT INTO `fleet` (`fleet_id`, `fleet_name`, `login_id`) VALUES
(1, 'fleet manager', 12);

-- --------------------------------------------------------

--
-- Table structure for table `group_channel`
--

CREATE TABLE `group_channel` (
  `chan_id` int(11) NOT NULL,
  `chan_name` varchar(120) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `group_channel`
--

INSERT INTO `group_channel` (`chan_id`, `chan_name`) VALUES
(1, 'GROCERY SHOPPING'),
(2, 'EATING & DRINKING'),
(3, 'HORECA');

-- --------------------------------------------------------

--
-- Stand-in structure for view `loancoolerview`
-- (See below for the actual view)
--
CREATE TABLE `loancoolerview` (
`ln_col_id` int(11)
,`next_to` text
,`route_id` int(11)
,`route` varchar(45)
,`empties` int(11)
,`order_no` int(45)
,`sales_rep_id` int(45)
,`cooler_type` varchar(45)
,`serial_no` varchar(45)
,`recomendations` text
,`request_date` datetime
,`doc_no` int(45)
,`contract_no` int(45)
,`outlet_no` varchar(150)
,`outlet_name` varchar(150)
,`outlet_owner` varchar(45)
,`location` varchar(150)
,`street` varchar(45)
,`outlet_tag` varchar(45)
,`passport` varchar(150)
,`user_identity` varchar(150)
,`asm_signature` varchar(150)
,`rsm_signature` varchar(150)
,`asm_attend_date` datetime(6)
,`rsm_attend_date` datetime(6)
,`approved_by_asm` int(11)
,`approved_by_rsm` int(11)
,`approved_by_contlr` int(11)
,`approve_by_fmanager` int(11)
,`fmanager_sign` varchar(150)
,`contract` int(2)
,`asm_id` int(11)
,`rsm_id` int(11)
,`cooler_status` varchar(8)
);

-- --------------------------------------------------------

--
-- Table structure for table `loan_coooler`
--

CREATE TABLE `loan_coooler` (
  `ln_col_id` int(11) NOT NULL,
  `next_to` text NOT NULL,
  `route_id` int(11) DEFAULT NULL,
  `route` varchar(45) NOT NULL,
  `empties` int(11) NOT NULL,
  `order_no` int(45) NOT NULL,
  `sales_rep_id` int(45) NOT NULL,
  `cooler_type` varchar(45) DEFAULT NULL,
  `serial_no` varchar(45) DEFAULT NULL,
  `recomendations` text NOT NULL,
  `request_date` datetime DEFAULT NULL,
  `doc_no` int(45) NOT NULL,
  `contract_no` int(45) NOT NULL,
  `outlet_no` varchar(150) DEFAULT NULL,
  `outlet_name` varchar(150) NOT NULL,
  `outlet_owner` varchar(45) NOT NULL,
  `location` varchar(150) NOT NULL,
  `street` varchar(45) NOT NULL,
  `outlet_tag` varchar(45) DEFAULT NULL,
  `passport` varchar(150) DEFAULT NULL,
  `user_identity` varchar(150) DEFAULT NULL,
  `asm_signature` varchar(150) DEFAULT NULL,
  `rsm_signature` varchar(150) DEFAULT NULL,
  `asm_attend_date` datetime(6) DEFAULT NULL,
  `rsm_attend_date` datetime(6) DEFAULT NULL,
  `approved_by_asm` int(11) NOT NULL,
  `approved_by_rsm` int(11) NOT NULL,
  `approved_by_contlr` int(11) DEFAULT NULL,
  `approve_by_fmanager` int(11) NOT NULL,
  `fmanager_sign` varchar(150) DEFAULT NULL,
  `contract` int(2) NOT NULL DEFAULT '0',
  `asm_id` int(11) NOT NULL,
  `rsm_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loan_coooler`
--

INSERT INTO `loan_coooler` (`ln_col_id`, `next_to`, `route_id`, `route`, `empties`, `order_no`, `sales_rep_id`, `cooler_type`, `serial_no`, `recomendations`, `request_date`, `doc_no`, `contract_no`, `outlet_no`, `outlet_name`, `outlet_owner`, `location`, `street`, `outlet_tag`, `passport`, `user_identity`, `asm_signature`, `rsm_signature`, `asm_attend_date`, `rsm_attend_date`, `approved_by_asm`, `approved_by_rsm`, `approved_by_contlr`, `approve_by_fmanager`, `fmanager_sign`, `contract`, `asm_id`, `rsm_id`) VALUES
(1, 'KIGOGO HOSP', NULL, 'KIGOGO ROAD', 12, 12, 3, 'INOVA650HC,GDM,1DR,601L', NULL, 'need for cold equipment', '2019-12-23 12:02:52', 3869289, 18596518, '56385263', 'MAKWEBWA SHOP', 'MAKWEBA', 'KIGOGO', 'KIGOGO ST', NULL, 'passport/pass_1577091772.jpg', 'identity/ident_1577091772.jpg', 'signature/sign_1577094821.jpg', NULL, '2019-12-23 12:53:41.000000', '2019-12-23 12:56:53.000000', 1, 2, 0, 0, NULL, 0, 3, 3),
(2, 'SHEKILANGO', NULL, 'SINZA KIJIWENI', 2100, 34, 2, '81xe39', 'FV650', 'business issues', '2019-12-23 12:05:36', 2858804, 4932170, '223344', 'IRENETAR RESTAURANT', 'IRENE MARTIN', 'SINZA LEGHO', 'SINZA LEGHO', 'sdfggh', 'passport/pass_1577091936.jpg', 'identity/ident_1577091936.jpg', 'signature/sign_1577094882.jpg', 'signature/rsm_sign_1577095036.jpg', '2019-12-23 12:54:42.000000', '2019-12-23 12:57:16.000000', 1, 1, 1, 0, NULL, 0, 2, 2),
(3, 'MAUMBI DHULE', NULL, 'MATUMBI ROAD', 15, 5, 3, '13xe15', 'FV651', 'cooling', '2019-12-23 12:08:28', 292465, 3603272, '56325', 'KIOSK', 'JOHN', 'TABATA MATUMBI', 'MATUMBI', 'kkkkk', 'passport/pass_1577092108.jpg', 'identity/ident_1577092108.jpg', 'signature/sign_1577094838.jpg', 'signature/rsm_sign_1577094995.jpg', '2019-12-23 12:53:58.000000', '2019-12-23 12:56:35.000000', 1, 1, 1, 0, NULL, 0, 3, 3),
(4, 'DAR LIVE', NULL, 'MBAGALA RANGI TATU', 125, 1256, 2, '81xe39', 'FV650', 'business issues', '2019-12-23 12:09:11', 9854420, 7283910, '1112233', 'PENDO SHOP', 'PENDO LEONARD', 'MBAGALA', 'ZAKHEM', 'mmmmmmmm', 'passport/pass_1577092151.jpg', 'identity/ident_1577092151.jpg', 'signature/sign_1577094906.jpg', 'signature/rsm_sign_1577095053.jpg', '2019-12-23 12:55:06.000000', '2019-12-23 12:57:33.000000', 1, 1, 1, 0, NULL, 0, 2, 2),
(5, 'KINGSTONE BAR', NULL, 'MAKABE', 26, 1, 3, '15xe21', 'FV652', 'customer demand', '2019-12-23 12:12:59', 457007, 12125269, '280', 'WINNIE SHOP', 'WINFRIDA SANGA', 'MAKABE', 'MEREMETA', 'bbbbbbb', 'passport/pass_1577092379.jpg', 'identity/ident_1577092379.jpg', 'signature/sign_1577094844.jpg', 'signature/rsm_sign_1577094987.jpg', '2019-12-23 12:54:04.000000', '2019-12-23 12:56:27.000000', 1, 1, 1, 0, NULL, 0, 3, 3),
(6, 'KIBAMBA SECONDARY', NULL, 'KIBAMBA SHULE', 36, 2, 3, 'FV1000 GDM 2DR 757L', NULL, 'customer demand', '2019-12-23 12:17:34', 9411221, 12917666, '80', 'PUMBA SHOP', 'PUMBA TIMOV', 'KIBAMBA', 'KISIWANI', NULL, 'passport/pass_1577092654.jpg', 'identity/ident_1577092654.jpg', NULL, NULL, '2019-12-23 12:54:50.000000', NULL, 2, 0, 0, 0, NULL, 0, 3, 3),
(7, 'UBUNGO BUS TERMINAL', NULL, 'UBUNGO MAJI', 26, 1, 1, 'INOVA650HC,GDM,1DR,601L', NULL, 'customer demand', '2019-12-23 12:23:40', 7572072, 11907096, '25', 'SHAYO SHOP', 'EMMANUEL SHAYO', 'UBUNGO', 'UBUNGO MAJI', NULL, 'passport/pass_1577093020.jpg', 'identity/ident_1577093020.jpg', 'signature/sign_1577095231.jpg', NULL, '2019-12-23 13:00:31.000000', NULL, 1, 0, 0, 0, NULL, 0, 1, 1),
(8, 'AMANA HOSPITAL', NULL, 'BUNGONI ROUTE', 258, 147, 2, 'FV400,GDM 1DR,368L', NULL, 'business stuffs', '2019-12-23 12:46:57', 6192162, 303731, '5280855', 'EDWIN FINE BARBECUE', 'EDWIN GULAYI', 'ILALA', 'BUNGONI', NULL, 'passport/pass_1577094417.jpg', 'identity/ident_1577094417.jpg', NULL, NULL, '2019-12-23 12:55:29.000000', NULL, 2, 0, 0, 0, NULL, 0, 2, 2),
(9, 'BAMBOO BAR', NULL, 'MAJI CHUMVI', 32, 3, 1, 'FV1000,GDM 2DR,757L', NULL, 'customer demand', '2019-12-23 12:50:20', 3713058, 13492319, '120', 'KAVISHE SHOP', 'JOSHUA KAVISHE', 'KIMANGA', 'MAJIMOTO', NULL, 'passport/pass_1577094620.jpg', 'identity/ident_1577094620.jpg', 'signature/sign_1577095246.jpg', NULL, '2019-12-23 13:00:46.000000', NULL, 1, 0, 0, 0, NULL, 0, 1, 1),
(10, 'ICHI HOSPITAL', NULL, 'MBEZI JUU', 26, 2, 1, 'INOVA650HC,GDM,1DR,601L', NULL, 'customer demand', '2019-12-23 12:56:46', 4448240, 7812577, '45', 'MASAWE SHOP', 'MUSSA MASAWE', 'MBEZI', 'KIBO', NULL, 'passport/pass_1577095006.jpg', 'identity/ident_1577095006.jpg', 'signature/sign_1577095256.jpg', NULL, '2019-12-23 13:00:56.000000', NULL, 1, 0, 0, 0, NULL, 0, 1, 1),
(11, 'RUTHERAN CHURCH', NULL, 'MCHICHANI', 36, 3, 1, 'FV1000 GDM 2DR 757L', NULL, 'customer demand', '2019-12-23 12:58:57', 2178067, 11804654, '26', 'KIGOMA SHOP', 'JUMA MSHOMVU', 'KIMARA', 'BARUTI', NULL, 'passport/pass_1577095137.jpg', 'identity/ident_1577095137.jpg', 'signature/sign_1577095294.jpg', NULL, '2019-12-23 13:01:34.000000', NULL, 1, 0, 0, 0, NULL, 0, 1, 1),
(12, 'MWENGE', NULL, 'MWENGE TO CCK ROUTE', 24, 58, 3, 'FV400,GDM 1DR,368L', NULL, 'HIGH VPO', '2019-12-23 13:06:59', 1576977, 17548733, '548728', 'EDWIN TEST SHOP', 'EDWIN EDWARDS', 'CCK', 'COKE ST.', NULL, 'passport/pass_1577095619.jpg', 'identity/ident_1577095619.jpg', 'signature/sign_1577095652.jpg', NULL, '2019-12-23 13:07:32.000000', NULL, 1, 0, 0, 0, NULL, 0, 3, 3),
(13, 'KIBAHA STAND', NULL, 'KIBAHA MKOANI', 26, 1, 1, 'INOVA650HC,GDM,1DR,601L', NULL, 'customer demand', '2019-12-23 13:07:12', 458949, 1037991, '23', 'MAMU SHOP', 'MAMU JUMA', 'KIBAHA', 'VISIGA', NULL, 'passport/pass_1577095632.jpg', 'identity/ident_1577095632.jpg', NULL, NULL, '2019-12-23 13:09:14.000000', NULL, 2, 0, 0, 0, NULL, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `login_roles`
--

CREATE TABLE `login_roles` (
  `log_role_id` int(11) NOT NULL,
  `role_desc` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_roles`
--

INSERT INTO `login_roles` (`log_role_id`, `role_desc`) VALUES
(1, 'System Admin'),
(2, 'RSM'),
(3, 'Asm'),
(4, 'Sales Rep'),
(5, 'VTrack'),
(6, 'FLEET'),
(7, 'MAINTENANCE'),
(8, 'Technician');

-- --------------------------------------------------------

--
-- Table structure for table `maintenance`
--

CREATE TABLE `maintenance` (
  `id` int(45) NOT NULL,
  `sales_rep` varchar(45) NOT NULL,
  `sales_id` int(45) NOT NULL,
  `sales_phone` varchar(45) NOT NULL,
  `route_name` varchar(45) NOT NULL,
  `asm_name` varchar(45) NOT NULL,
  `asm_id` int(45) NOT NULL,
  `no_cooler` int(45) NOT NULL,
  `customer` varchar(45) NOT NULL,
  `outlet_name` varchar(45) NOT NULL,
  `chanel` varchar(45) NOT NULL,
  `first_addr` varchar(45) NOT NULL,
  `second_addr` varchar(45) NOT NULL,
  `city_addr` varchar(45) NOT NULL,
  `pobox` varchar(45) NOT NULL,
  `city_box` varchar(45) NOT NULL,
  `customer_phone` varchar(45) NOT NULL,
  `surname` varchar(45) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `region` varchar(45) NOT NULL,
  `distributor` varchar(45) NOT NULL,
  `district` varchar(45) NOT NULL,
  `outlet_no` int(45) NOT NULL,
  `tag_loc` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `maintenance`
--

INSERT INTO `maintenance` (`id`, `sales_rep`, `sales_id`, `sales_phone`, `route_name`, `asm_name`, `asm_id`, `no_cooler`, `customer`, `outlet_name`, `chanel`, `first_addr`, `second_addr`, `city_addr`, `pobox`, `city_box`, `customer_phone`, `surname`, `firstname`, `region`, `distributor`, `district`, `outlet_no`, `tag_loc`) VALUES
(1, 'RAMADANI NTILA', 12345, '900000', 'MBAGALA', '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(2, 'RAMADAN NTILA', 12345, '800000', 'MBAGALA', 'EDWIN GULAYI', 54321, 9, 'ALLY SALEHE', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(3, 'RAMADAN NTILA', 12345, '800000', 'MBAGALA', 'EDWIN GULAYI', 54321, 9, 'ALLY SALEHE', 'ALISHOP', '2', 'MBEZI', 'MBEZI', '', '', '', '', '', '', '', '', '', 0, ''),
(4, 'RAMADAN NTILA', 12345, '800000', 'MBAGALA', 'EDWIN GULAYI', 54321, 9, 'ALLY SALEHE', 'ALISHOP', '2', 'MBEZI', 'MBEZI', 'DAR ES SALAAM', '49383', 'DAR ES SALAAM', '90000', '', '', '', '', '', 0, ''),
(5, 'RAMADAN NTILA', 12345, '800000', 'MBAGALA', 'EDWIN GULAYI', 54321, 9, 'ALLY SALEHE', 'ALISHOP', '2', 'MBEZI', 'MBEZI', 'DAR ES SALAAM', '49383', 'DAR ES SALAAM', '90000', 'MAYAYA', 'JUMA', 'LINDI', 'OCCD', 'NACHINGWEA', 0, ''),
(6, 'RAMADAN NTILA', 12345, '800000', 'MBAGALA', 'EDWIN GULAYI', 54321, 9, 'ALLY SALEHE', 'ALISHOP', '2', 'MBEZI', 'MBEZI', 'DAR ES SALAAM', '49383', 'DAR ES SALAAM', '90000', 'MAYAYA', 'JUMA', 'LINDI', 'OCCD', 'NACHINGWEA', 90, 'MBAGALA'),
(7, 'RAMADAN NTILA', 12345, '800000', 'MBAGALA', 'EDWIN GULAYI', 54321, 9, 'ALLY SALEHE', 'ALISHOP', '2', 'MBEZI', 'MBEZI', 'DAR ES SALAAM', '49383', 'DAR ES SALAAM', '90000', 'MAYAYA', 'JUMA', 'LINDI', 'OCCD', 'NACHINGWEA', 90, 'MBAGALA'),
(8, 'RAMADAN NTILA', 12345, '111111', 'MBAGALA', 'EDWIN GULAYI', 54321, 8, 'ALEX MICHAEL', 'ALEXSHOP', '4', 'MBAGALA', '', 'DAR ES SALAAM', '9089', '', '0000000', 'MAYAYA', 'JUMA', 'LINDI', 'KD', 'NACHINGWEA', 0, ''),
(9, 'RAMADAN NTILA', 12345, '888888', 'MBAGALA', 'EDWIN GULAYI', 54321, 5, 'ALLY SALEHE', 'ALISHOP', '3', 'MBAGALA', 'MBAGALA', 'DAR ES SALAAM', '300393', 'DAR ES SALAAM', '000000', 'MAYAYA', 'JUMA', 'LINDI', 'KD', 'NACHINGWEA', 9090, 'MBAGALA'),
(10, 'RAMADAN NTILA', 12345, 'DVSVD', 'MBAGALA', 'EDWIN', 54321, 3, 'JDHVKJD', 'VDSDVS', 'SVDSVS', 'VSDSVD', 'SVDDVS', 'DVSDSV', 'SVDDS', 'VSDDV', 'DVSDSD', 'SDVDVSD', 'VDDSDSV', 'VDVSDV', 'VVDSDV', 'DVSSDVDS', 0, 'VDSDV'),
(11, 'juma', 323, 'dvssdds', 'dds', 'dsvsd', 1231, 32, 'dsvsdd', 'dsdsvd', 'dsvsv', 'sdvs', 'sdvds', 'dsdvs', 'sdvdssdsd', 'sdvvsvds', 'svddssd', 'vddsds', 'vdss', 'vdsd', 'svddsd', 'vdssdv', 0, 'vdsdsd'),
(12, 'esfdfsd', 2333, 'dfssd', 'sdvsvd', 'vdsvdvds', 3223, 23, 'dsfsdf', 'dsfdsf', 'dsffddfd', 'dfsfd', 'sfsd', 'sfdsdd', 'sfdsfd', 'dfsfdsd', 'dfsfsfd', 'fdsfdd', 'dfssdf', 'fdsds', 'fssfdds', 'fsdsff', 0, 'sfsdsd'),
(13, 'esfdfsd', 2333, 'dfssd', 'sdvsvd', 'vdsvdvds', 3223, 23, 'dsfsdf', 'dsfdsf', 'dsffddfd', 'dfsfd', 'sfsd', 'sfdsdd', 'sfdsfd', 'dfsfdsd', 'dfsfsfd', 'fdsfdd', 'dfssdf', 'fdsds', 'fssfdds', 'fsdsff', 0, 'sfsdsd'),
(14, 'esfdfsd', 2333, 'dfssd', 'sdvsvd', 'vdsvdvds', 3223, 23, 'dsfsdf', 'dsfdsf', 'dsffddfd', 'dfsfd', 'sfsd', 'sfdsdd', 'sfdsfd', 'dfsfdsd', 'dfsfsfd', 'fdsfdd', 'dfssdf', 'fdsds', 'fssfdds', 'fsdsff', 0, 'sfsdsd'),
(15, 'vddsd', 233233, 'dfsdfd', 'vcxvcvvc', 'vddfvffv', 23323, 2323, 'dsfsds', 'sdfdfsdd', 'fdsdsd', 'dsfds', 'dfffdsd', 'dsfdfs', 'dsfdsds', 'fdsdd', 'fdsdd', 'sdfd', 'fdsd', 'dsdfd', 'dfsd', 'fsdsd', 0, 'fdsd'),
(16, 'sfsasadssd', 3232, 'fsdf', 'cczxcx', 'sdfdsdf', 3232, 322332, 'dsfdsffdf', 'fdsfs', 'fdsffds', 'fdfdsdf', 'sdfsdd', 'dfdsfddf', 'fdsdds', 'ffdfs', 'fdfdsds', 'dfssdds', 'vdds', 'vddds', 'dfsfdd', 'gfddff', 0, '3323'),
(17, 'sdfds', 32, '3233', 'vccccs', 'cdcsdsd', 43443, 233, 'sdfds', 'fsdfd', 'cdsc', 'cssd', 'cscsdcd', 'fsfd', 'dfdds', 'fddsfd', '3223', 'sdfdsdd', 'dfdsdf', 'sfdfdd', 'fdssdd', 'fdsdd', 2333, 'ccsd');

-- --------------------------------------------------------

--
-- Stand-in structure for view `maintenancecoolerview`
-- (See below for the actual view)
--
CREATE TABLE `maintenancecoolerview` (
`cooler_main_id` int(11)
,`sales_rep_id` int(11)
,`outlet_name` text
,`outlet_no` int(11)
,`street` text
,`near_to` text
,`cooler_type` text
,`serial_no` int(120)
,`deflect` text
,`tag_no` varchar(45)
,`request_date` datetime
,`date_of_repair` datetime
,`r_status` int(11)
,`cooler_status` varchar(8)
);

-- --------------------------------------------------------

--
-- Table structure for table `maintenance_dpt`
--

CREATE TABLE `maintenance_dpt` (
  `maint_id` int(11) NOT NULL,
  `maint_name` text NOT NULL,
  `login_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `maintenance_dpt`
--

INSERT INTO `maintenance_dpt` (`maint_id`, `maint_name`, `login_id`) VALUES
(1, 'maintenance manager', 13);

-- --------------------------------------------------------

--
-- Table structure for table `maintenance_task`
--

CREATE TABLE `maintenance_task` (
  `task_id` int(11) NOT NULL,
  `req_id` int(11) NOT NULL,
  `date_of_repair` date NOT NULL,
  `assigned_to` int(11) NOT NULL,
  `progres` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `occd`
--

CREATE TABLE `occd` (
  `occd_id` int(11) NOT NULL,
  `occd_name` varchar(120) NOT NULL,
  `reg_id` int(11) NOT NULL,
  `asm_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `occd`
--

INSERT INTO `occd` (`occd_id`, `occd_name`, `reg_id`, `asm_id`) VALUES
(1, 'MIFAT OCCD', 1, 1),
(2, 'NYAMATOLE FARMERS OCCD', 2, 2),
(3, 'WARDAH OCCD', 3, 3),
(4, 'JC DISTRIBUTORS OCCD', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `outlet`
--

CREATE TABLE `outlet` (
  `outlet_id` int(11) NOT NULL,
  `outlet_name` varchar(120) NOT NULL,
  `outlet_type` varchar(120) NOT NULL,
  `outlet_no` varchar(120) NOT NULL,
  `location` text NOT NULL,
  `occd_id` int(11) NOT NULL,
  `chan_id` int(11) NOT NULL,
  `route_id` int(11) NOT NULL,
  `reg_id` int(11) NOT NULL DEFAULT '0',
  `district_id` int(11) NOT NULL DEFAULT '0',
  `salesrep_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `outlet`
--

INSERT INTO `outlet` (`outlet_id`, `outlet_name`, `outlet_type`, `outlet_no`, `location`, `occd_id`, `chan_id`, `route_id`, `reg_id`, `district_id`, `salesrep_id`) VALUES
(1, 'FRENCE & LOVERS SALOON', '1', '5037269', 'TABATA ST MERRY ILALA DAR ES SALAAM', 1, 1, 1, 1, 1, 1),
(2, 'SIR RAMSON COMMUNICATION CENTRE', '1', '5055639', 'IKWIRIRI RUFIJI PWANI', 2, 1, 2, 1, 1, 2),
(3, 'HAWAA BOUTIQUE', '1', '5055335', 'MSAADA GARAGE MWANANYAMALA DAR ES SALAAM', 3, 1, 3, 2, 1, 1),
(4, 'PLUS OFFICE SUPPLY', '1', '5057251', 'UKONGA MADAFU DAR ES SALAAM', 4, 1, 4, 1, 1, 2),
(5, 'SILVIA SALOON', '1', '5022520', 'MWENGE KIJIJINI GARAGE KINONDONI DAR ES SALAAM', 0, 1, 0, 3, 1, 0),
(6, 'MAMI JEWELLER\'S SONARA', '1', '5041693', 'MWENGE KIJIJINI MWENGE DAR ES SALAAM', 0, 1, 0, 3, 1, 0),
(7, 'LULU SALOON', '1', '5056914', 'BUNJU A BUNJU SHULENI DAR ES SALAAM', 0, 1, 0, 3, 1, 0),
(8, 'SUNRISE NUSERY & PRIMARY SCHOOL 2', '1', '5047133', 'REGENT STREET MIKOCHENI KINONDONI DAR ES SALAAM', 0, 2, 0, 2, 1, 0),
(9, 'ZAHANATI 2', '1', '5032930', 'TEGETA MSICHOKE DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(10, 'NEXT DOOR INVESTMENT', '1', '5057968', 'TABATA SEGEREA CHAMA DAR ES SALAAM', 0, 1, 3, 1, 1, 1),
(11, 'NEXT DOOR INVESTMENT', '1', '5057968', 'TABATA SEGEREA CHAMA DAR ES SALAAM', 0, 1, 3, 1, 1, 1),
(12, 'J & J CAR WASH & SERVICE', '1', '5056911', 'KUNDUCHI MTONGANI DAR ES SALAAM', 0, 1, 0, 3, 1, 0),
(13, 'NEY 2', '1', '5039959', 'MWENGE KIJIJINI DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(14, 'MOSHA DENTA CLINIC', '1', '5098362', 'MAGOMENI IFUNDA DAR ES SALAAM', 0, 1, 0, 2, 1, 0),
(15, 'URASA 2', '1', '5019280', 'KIMARA STOP OVER STREET DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(16, 'VINGUNGUTI HOSPITAL', '1', '5022329', 'VINGUNGUTI MIEMBENI TEMEKE DAR ES SALAAM', 0, 1, 0, 1, 1, 0),
(17, 'ST BENEDICT HOSPITAL', '1', '5092797', 'KITUNDA POLICE DAR ES SALAAM', 0, 1, 0, 1, 1, 0),
(18, 'FREE PENTE COST CHURCH', '1', '5006438', 'KINONDONI SHAMBA DAR ES SALAAM', 0, 1, 0, 2, 1, 0),
(19, 'TARIMO 2', '1', '5032768', 'BOKO NAMANGA DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(20, 'PEACE CENTRE', '1', '5007794', 'UPANGA DAR ES SALAAM', 0, 1, 0, 2, 1, 0),
(21, 'PEACE CENTRE', '1', '5007794', 'UPANGA DAR ES SALAAM', 0, 1, 0, 2, 1, 0),
(22, 'MUSSARAT 2', '1', '5044015', 'UPANGA DAR ES SALAAM', 0, 2, 0, 2, 1, 0),
(23, 'QUINASS 4', '1', '5055924', 'KIGAMBONI MIZIMBINI DAR ES SALAAM', 0, 4, 0, 1, 1, 0),
(24, 'SISTERS 4', '1', '5044047', 'GOBA KINONDONI DAR ES SALAAM', 0, 4, 0, 3, 1, 0),
(25, 'SISTAZ 4', '1', '5040515', 'MAKONGO JUU KINONDONI DAR ES SALAAM', 0, 4, 0, 3, 1, 0),
(26, 'TESTY 4', '1', '5043705', 'MIKOCHENI A OLD BAGAMOYO ROAD DAR ES SALAAM', 0, 4, 0, 2, 1, 0),
(27, 'DINITA 4', '1', '5022255', 'WAZO BUCHA TEGETA DAR ES SALAAM', 0, 4, 0, 3, 1, 0),
(28, 'CNGH (REAL TASTE 4)', '1', '5048353', 'TABATA SEGEREA STAND DAR ES SALAAM', 0, 4, 0, 1, 1, 0),
(29, 'MASS 4', '1', '5057153', 'MAWENI KIGAMBONI DAR ES SALAAM', 0, 4, 0, 1, 1, 0),
(30, 'MASS 4', '1', '5055344', 'KILWA ROAD KEEP LEFT GEREZANI DAR ES SALAAM', 2, 4, 0, 2, 1, 0),
(31, 'AVENUE 4', '1', '5056659', 'SOKOINE DRIVE POSTA ILALA DAR ES SALAAM', 0, 4, 0, 2, 1, 0),
(32, 'GRACE 4', '1', '5007192', 'BOKO UNUNIO KINONDONI DAR ES SALAAM', 0, 4, 0, 3, 1, 0),
(33, 'MCB 4', '1', '5003386', 'CHANG\'OMBE ROAD DAR ES SALAAM', 0, 4, 0, 1, 1, 0),
(34, 'MAKONDE VILLA 3', '1', '5097821', 'TUNGI KIGAMBONI TEMEKE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(35, 'MARYS 3', '1', '5003370', 'MWINGIRA KIGAMBONI DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(36, 'KWA MAMA CAFÉ', '1', '5044838', 'TUNGI KIGAMBONI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(37, 'MCHUNDA 2', '1', '5001921', 'UNGINDONI KIGAMBONI DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(38, 'ALLY 2', '1', '5099833', 'UNGINDONI KIGAMBONI DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(39, 'MAMA P PUB', '1', '5003682', 'KISIWANI KIGAMBONI DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(40, 'BASHNET  3', '1', '5041594', 'MAWENI KIGAMBONI DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(41, 'NURU YA MADINA 2', '1', '5003720', 'MJI MWEMA FERRY KIGAMBONI DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(42, 'BWAWANI SWIMMING POOL ', '1', '5044914', 'DAR ZOO KIGAMBONI DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(43, 'PAULO 2', '1', '5099835', 'KIBAONI KIGAMBONI DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(44, 'SAVOIDOT COM', '1', '5055919', 'KIGAMBONI SHANGWE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(45, 'BELLA WHISPERS', '1', '5056005', 'KIBADA KIGAMBONI DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(46, 'FLAMINGO 3', '1', '5048209', 'MADALE MIVUMONI KINONDONI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(47, 'KILACK 3', '1', '5041452', 'MADALE KINONDONI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(48, 'SWEET POINT 3', '1', '5014190', 'TEGETA MADALE KISAUKE DAR', 0, 3, 0, 3, 1, 0),
(49, 'ALOVERA 3', '1', '5044174', 'MAKONGO MWISHO KINONDONI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(50, 'AIKA RUWA 3', '1', '5047974', 'MAKONGO JUU MWISHO KINONDONI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(51, 'MAKONGO GARDEN RESORT', '1', '5031832', 'MAKONGO JUU KINONDONI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(52, 'MAKONGO SOCIAL HALL', '1', '5034730', 'MAKONGO JESHINI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(53, 'MATRIX  PUB', '1', '5033419', 'MAGENGENI TABATA DAR ES SALAAM', 1, 3, 0, 1, 1, 0),
(54, 'METRO POINT 3', '1', '5041074', 'MAGENGENI STREET TABATA DAR ES SALAAM', 1, 3, 0, 1, 1, 0),
(55, 'NEEMA 3', '1', '5041057', 'TABATA CHANG\'OMBE DAR ES SALAAM', 1, 3, 0, 1, 1, 0),
(56, 'SAVOY GRAND 3', '1', '5003618', 'AROMA TABATA DAR ES SALAAM', 1, 3, 1, 1, 1, 0),
(57, 'MATUMBI 3', '1', '5003605', 'MATUMBI TABATA DAR ES SALAAM', 1, 3, 1, 1, 1, 0),
(58, 'MC 3', '1', '5099210', 'TABATA CHANGOMBE ILALA DAR ES SALAAM', 1, 3, 0, 1, 1, 0),
(59, 'CESY 3', '1', '5003743', 'UMOJA ROAD TABATA DAR ES SALAAM', 1, 3, 0, 1, 1, 0),
(60, 'CLUB AFRICA 3', '1', '5041059', 'TABATA BIMA STREET DAR ES SALAAM', 1, 3, 0, 1, 1, 0),
(61, 'NYANTARE 3', '1', '5003614', 'BIMA TABATA DAR ES SALAAM', 1, 3, 0, 1, 1, 0),
(62, 'VIVAPARK 3', '1', '5011191', 'TABATA BIMA DAR ES SALAAM', 1, 3, 0, 1, 1, 0),
(63, 'KIDIA 3', '1', '5017812', 'TABATA SHULE ILALA DAR ES SALAAM', 1, 3, 0, 1, 1, 0),
(64, 'HAI ANNEX 3', '1', '5041345', 'TABATA ST MERY DAR ES SALAAM', 1, 3, 1, 1, 1, 0),
(65, 'HAI ANNEX 3', '1', '5041345', 'RELINI TABATA DAR ES SALAAM', 1, 3, 1, 1, 1, 0),
(66, 'DAR WEST 3', '1', '5016431', 'TABATA AROMA DAR ES SALAAM', 1, 3, 1, 1, 1, 0),
(67, 'HAI ANNEX 3', '1', '5041345', 'RELINI TABATA DAR ES SALAAM', 1, 3, 1, 1, 1, 0),
(68, 'ISIDINGO 3', '1', '5099212', 'TABATA CHANGOMBE ILALA DAR ES SALAAM', 1, 3, 0, 1, 1, 0),
(69, 'TINAH 3', '1', '5041058', 'LIWITI STREET TABATA DAR ES SALAAM', 1, 3, 0, 1, 1, 0),
(70, 'COPACABANA 3', '1', '5011370', 'TABATA LIWITI DAR ES SALAAM', 1, 3, 0, 1, 1, 0),
(71, 'DESI CORNER 3', '1', '5097603', 'NHC MBURAHATI MAGOMENI DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(72, 'STOP POINT 2', '1', '5004112', 'KAWE BEACH KAWE DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(73, 'SEBENE PUB', '1', '5039817', 'MZIMUNI KAWE DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(74, 'MGOSI 2', '1', '5004063', 'MJI MPYA KAWE DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(75, 'SAMWELI 2', '1', '5016443', 'KAWE UKWAMANI STAND DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(76, 'MARY 2', '1', '5039851', 'UKWAMANI KAWE DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(77, 'JASMNI CAFÉ', '1', '5004652', 'KAWE KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(78, 'MELLA 2', '1', '5004012', 'MZIMUNI KAWE DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(79, 'ZE CLUB 2 PIPE 3', '1', '5003915', 'MZIMUNI GOLF KAWE DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(80, 'SMALL GARDEN INN', '1', '5004047', 'MZIMUNI KAWE DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(81, 'MASAE 3', '1', '5033411', 'KAWE MZIMUNI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(82, 'SEIF 2', '1', '5017831', 'MZIMUNI KAWE DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(83, 'NYEMO 2', '1', '5008854', 'KAWE UKWAMANI DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(84, 'AZIZA CAFÉ', '1', '5045954', 'KAWE UKWAMANI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(85, 'SHAULI PUB', '1', '5003907', 'UKWAMANI KAWE DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(86, 'EPRAIM 2', '1', '5006738', 'SURVEY DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(87, 'MAMA CHAMBO 3', '1', '5017922', 'MLALAKUWA KINONDONI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(88, 'MAMA DU', '1', '5030294', 'MPAKANI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(89, 'KIMYA KIMYA 3', '1', '5034956', 'MPAKANI MWENGE DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(90, 'HOSTEL CANTEEN', '1', '5012456', 'MLALAKUWA SURVEY DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(91, 'CAREEN 2', '1', '5036848', 'SURVEY MLALAKUWA DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(92, 'KILIMANJARO PARK', '1', '5044123', 'OLD MOROGORO ROAD MISUGUSUGU PWANI', 0, 3, 0, 3, 1, 0),
(93, 'SUPER NIGHT CLUB', '1', '5008761', 'MTONGANI MLANDIZI PWANI', 0, 3, 0, 3, 1, 0),
(94, 'RAFIKI 3', '1', '5043703', 'MLANDIZI KATI PWANI', 0, 3, 0, 3, 1, 0),
(95, 'G PARK 3', '1', '5037628', 'MISWE DUKA PWANI', 0, 3, 0, 3, 1, 0),
(96, 'KITENGO 3', '1', '5034276', 'ZOGOELE MADAFU MLANDIZI', 0, 3, 0, 3, 1, 0),
(97, 'MOKA 3', '1', '5033795', 'MISUGUSUGU MLANDIZI PWANI', 0, 3, 0, 3, 1, 0),
(98, 'SUPER NIGHT 3', '1', '5018331', 'KIBAHA MLANDIZI PWANI', 0, 3, 0, 3, 1, 0),
(99, 'ACADEMIC INTERNATIONAL SCHOOL', '1', '5097663', 'ILEJE MIKOCHENI B KINONDONI DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(100, 'SAFARI CARNIVAL 3', '1', '5007893', 'MWAI KIBAKI ROAD KAWE KINONDONI DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(101, 'ESCAPE 1 3', '1', '5034961', 'KAWE KINONDONI DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(102, 'SAVERIO 3', '1', '5042669', 'MIKOCHENI ALLY HASSAN MWINYI DAR', 0, 3, 0, 2, 1, 0),
(103, 'SAVERIO 3', '1', '5042669', 'MIKOCHENI ALLY HASSAN MWINYI DAR', 0, 3, 0, 2, 1, 0),
(104, 'KRUZ INN 3', '1', '5030197', 'MIKIOCHENI B DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(105, 'ERIEDO POINT VIEW 3', '1', '5031637', 'GONGO LA MBOTO MAJOHE ILALA DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(106, 'MAMA LAND 3', '1', '5002881', 'MZAM3AUNI GONGO LA MBOTO DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(107, 'MANGI 3', '1', '5049428', 'KITUO CHA MZAM3AUNI GONGO LA MBOTO ILALA DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(108, 'AISHA PARK PUB', '1', '5045816', 'MARKAZ STREET GONGO LA MBOTO DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(109, 'KINGS PUB', '1', '5002830', 'MARKAZ STREET GONGO LA MBOTO DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(110, 'VILLAGE LOUNGE ', '1', '5054928', 'MAKUMBUSHO KIJITONYAMA DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(111, 'SOWETO 3', '1', '5017039', 'MAKUMBUSHO KIJITONYAMA KINONDONI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(112, 'MDEBWEDO 3', '1', '5037201', 'MAKUMBUSHO KIJITONYAMA KINONDONI DAR', 0, 3, 0, 3, 1, 0),
(113, 'HQ SURGENT MESS', '1', '5052899', 'LUGALO DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(114, 'CLUB YA WAZEE 3', '1', '5002750', 'TABATA KISUKULU DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(115, 'SHAYO 2', '1', '5003057', 'KISUKULU KWA SWAI DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(116, 'ELIA CAFÉ', '1', '5096870', 'TABATA KISUKULU KWA SWAI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(117, 'CLUB PARADISE 3', '1', '5002576', 'KISUKULU KWA SWAI DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(118, 'MANDELA 3', '1', '5042699', 'MANDELA MANDELA JUU DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(119, 'LILIAN PUB ', '1', '5002847', 'KIMANGA STAND DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(120, 'FREELAND PARK', '1', '5042623', 'TABATA KIMANGA STAND DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(121, 'SUNSET  3', '1', '5001460', 'KIMANGA STAND DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(122, 'MAHAKAMA 3', '1', '5038453', 'KISUKULU TEMBOGWAZA DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(123, 'MAWENZI GARDEN ANNEX 3', '1', '5002904', 'TABATA KISUKULU MAWENZI DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(124, 'KIMYAKIMYA PUB', '1', '5030053', 'MIGOMBANI NGUZO YA UMEME DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(125, 'MIGOMBANI 3', '1', '5009322', 'KISUKULU MIGOMBANI TABATA DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(126, 'SAFARI CENTER 3', '1', '5014934', 'KISIKULU MIGOMBANI DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(127, 'MANDELA 3 BCC', '1', '5037353', 'BONYOKWA KISUKULU DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(128, 'SEMBETI 3', '1', '5048177', 'KISIWANI MWANANYAMALA KINONDONI DAR ES SALAAM', 3, 3, 0, 2, 1, 0),
(129, 'DUNI PUB', '1', '5007312', 'COBACABANA MWANANYAMALA KINONDONI', 3, 3, 0, 2, 1, 0),
(130, 'NEW INSTAGRAM RESTAURANT', '1', '5006484', 'KISIWANI MWANANYAMALA KINONDONI DAR ES SALAAM', 3, 3, 0, 2, 1, 0),
(131, 'SHAYO 2', '1', '5036112', 'KOPAKABANA MWANANYAMALA KINONDONI DAR ES SALAAM', 3, 2, 0, 2, 1, 0),
(132, 'MK 3', '1', '5037618', 'KASAKA MWANANYAMALA KINONDONI DAR ES SALAAM', 3, 3, 0, 2, 1, 0),
(133, 'OLELE 3', '1', '5013739', 'KINONDONI MAHAKAMANI DAR ES SALAAM', 3, 3, 0, 2, 1, 0),
(134, 'RECREATION CENTER 3', '1', '5041962', 'UKONGA MAGEREZA DAR ES SALAAM', 4, 3, 0, 1, 1, 0),
(135, 'RECREATION CENTER 3', '1', '5041962', 'UKONGA MAGEREZA DAR ES SALAAM', 4, 3, 0, 1, 1, 0),
(136, 'SOPHIA PUB', '1', '5024581', 'MADAFU UKONGA DAR ES SALAAM', 4, 3, 0, 1, 1, 0),
(137, 'ROMBO 3', '1', '5041639', 'MOMBASA UKONGA DAR ES SALAAM', 4, 3, 0, 1, 1, 0),
(138, 'MASAI PUB', '1', '5096941', 'MAZIZINI UKONGA DAR ES SALAAM', 4, 3, 0, 1, 1, 0),
(139, 'KILI 3', '1', '5040659', 'MAZIZINI UKONGA DAR ES SALAAM', 4, 3, 0, 1, 1, 0),
(140, 'J H PUB', '1', '5040677', 'MAZIZINI UKONGA DAR ES SALAAM', 4, 3, 0, 1, 1, 0),
(141, 'ARAWA 3', '1', '5019388', 'MOMBASA UKONGA DAR ES SALAAM', 4, 3, 0, 1, 1, 0),
(142, 'LENGUYANA PUB', '1', '5096939', 'MOMBASA UKONGA DAR ES SALAAM', 4, 3, 0, 1, 1, 0),
(143, 'CANTEEN 3', '1', '5097473', 'MADAFU UKONGA DAR ES SALAAM', 4, 0, 0, 1, 1, 0),
(144, 'MWANYA PUB', '1', '5040671', 'MAZIZINI UKONGA DAR ES SALAAM', 4, 3, 0, 1, 1, 0),
(145, 'MAMA NGURURU 2', '1', '5097810', 'MTONI KIJICHI MGENI NANI DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(146, 'WAZIRI   2', '1', '5006477', 'MTONI KIJICHI MGENI NANI DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(147, 'OPEN SQUARE PUB II', '1', '5016896', 'MTONI KIJICHI MGENI NANI DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(148, 'FEDEMA PUB', '1', '5042074', 'MTONI KIJICHI MGENI NANI', 0, 3, 0, 1, 1, 0),
(149, 'PRICERITE MINI SUPERMARKET', '1', '5014364', 'MTONI KIJICHI NASACO ROAD DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(150, 'MGOSI 2', '1', '5006473', 'MTONI KIJICHI CCM DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(151, 'MANGI 2', '1', '5098625', 'MTONI KIJICHI MBAGALA KUU DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(152, 'MAMA RUHAIDA CAFÉ', '1', '5006467', 'MTONI KIJICHI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(153, 'MIKUMI PUB', '1', '5034711', 'MTONI KIJICHI DARAJANI DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(154, 'KANYIGO MINI SUPERMARKET', '1', '5047310', 'MBAGALA KUU DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(155, 'NADI CAFÉ', '1', '5006481', 'MBAGALA KUU DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(156, 'SADARI 2', '1', '5016558', 'UYAONI KIBAHA COAST REGION', 0, 2, 0, 3, 1, 0),
(157, 'JACK 2', '1', '5047963', 'MAILI MOJA MACHINJION KIBAHA', 0, 2, 0, 3, 1, 0),
(158, 'MCHICHA 2', '1', '5021456', 'MAILI MOJA KIBAHA COAST REGION', 0, 2, 0, 3, 1, 0),
(159, 'BAMBOO 3', '1', '5099345', 'MAIL MOJA KIBAHA COAST REGION', 0, 3, 0, 3, 1, 0),
(160, 'BASHARI 2', '1', '5020870', 'MAILI MOJA STREET KIBAHA COAST REGION', 0, 2, 0, 3, 1, 0),
(161, 'NJUWENI HOTEL', '1', '5003615', 'MAILI MOJA KIBAHA COAST REGION', 0, 0, 0, 3, 1, 0),
(162, 'MPUKONI 3', '1', '5037651', 'MATHIAS KIBAHA COAST REGION', 0, 3, 0, 3, 1, 0),
(163, 'HAMIDA GROCERY', '1', '5099480', 'MWEMBE  TAYARI MATHIAS KIBAHA COAST REGION', 0, 3, 0, 3, 1, 0),
(164, 'ZICOM 3', '1', '5041417', 'MKONGONI MATHIAS STREET KIBAHA COAST REGION', 0, 3, 0, 3, 1, 0),
(165, 'TOTO ISENYE 2', '1', '5005346', 'PICHA YA NDEGE KIBAHA COAST REGION', 0, 2, 0, 3, 1, 0),
(166, 'OSHARA 3', '1', '5012611', 'PICHA YA NDEGE KIBAHA COAST REGION', 0, 3, 0, 3, 1, 0),
(167, 'MANKA CAFÉ', '1', '5046356', 'MWENGE STAND DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(168, 'UPENDO BUTCHER', '1', '5005540', 'MWENGE STAND DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(169, 'MISHI SALOON', '1', '5005448', 'MWENGE KIJIJINI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(170, 'NDIBALEMA   3', '1', '5047227', 'MWENGE NZASA DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(171, 'TARAKEA PUB', '1', '5005522', 'MWENGE TRA ROAD DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(172, 'TEASER CAFÉ', '1', '5047342', 'MWANANYAMALA KINONDONI', 3, 0, 0, 2, 1, 0),
(173, 'MPEMBA CAFÉ', '1', '5006455', 'MWANANYAMALA HOSPITAL DAR ES SALAAM', 3, 0, 0, 2, 1, 0),
(174, 'UBAA 3', '1', '5012593', 'MWANANYAMALA KWAKOPA CCM KINONDONI DAR ES SALAAM', 3, 3, 0, 2, 1, 0),
(175, 'SALEKO INN 3', '1', '5044129', 'MWANANYAMALA A STREET KINONDONI DAR ES SALAAM', 3, 3, 0, 2, 1, 0),
(176, 'KARIM 2', '1', '5022785', 'KINONDONI MSISIRI KINONDONI DAR ES SALAAM', 3, 2, 0, 2, 1, 0),
(177, 'EDDY BABA II CAFÉ', '1', '5047321', 'KINONDONI KANISANI DAR ES SALAAM', 3, 0, 0, 2, 1, 0),
(178, 'MASHATI 2', '1', '5042979', 'MWANANYAMALA HOSPITAL KINONDONI DAR ES SALAAM', 3, 2, 0, 2, 1, 0),
(179, 'MTENGA 3', '1', '5034291', 'MWANANYAMALA HOSPITAL STREET DAR ES SALAAM', 3, 3, 0, 2, 1, 0),
(180, 'ALEX 1 2', '1', '5047161', 'MWANANYAMALA B KINONDONI DAR ES SALAAM', 3, 2, 0, 2, 1, 0),
(181, 'BABU 2', '1', '5042863', 'KIBAMBA CCM KIBAMBA DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(182, 'MOSHA   2', '1', '5005278', 'KIBAMBA CCM KIBAMBA DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(183, 'CALVARINA 2', '1', '5001521', 'KIBAMBA KWA MANGI KIBAMBA DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(184, 'HAWAII 3', '1', '5001739', 'KIBAMBA HOSPITAL KIBAMBA DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(185, 'BRYAN STORE', '1', '5005280', 'KIBAMBA KWA MANGI KIBAMBA DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(186, 'SEBA 2', '1', '5005294', 'GOGONI KIBAMBA DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(187, 'KIKONYO B 2', '1', '5005301', 'KILUVYA KWA KOMBA KILUVYA DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(188, 'KILUVYA PUB', '1', '5013204', 'GOGONI KIBAMBA DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(189, 'KATWELE GROCERY', '1', '5041434', 'NJIAPANDA SHULE KIBAMBA DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(190, '4CHUS 2', '1', '5044746', 'NJIA PANDA SHULE KIBAMBA DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(191, 'RAHA LEO PUB', '1', '5001525', 'GOGONI KIBAMBA DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(192, 'VIGAE 3', '1', '5033010', 'BUNJU B BUNJU KINONDONI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(193, 'OSCAR GARDEN 3', '1', '5044185', 'BUNJU B BAGAMOYO DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(194, 'SATORI 3', '1', '5032289', 'BUNJU A SHULE KININDONI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(195, 'WOHO 3 AND RESTAURANT', '1', '5005214', 'BUNJU A KINONDONI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(196, 'SHABANI CAFÉ', '1', '5033043', 'BUNJU A STAND KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(197, 'TARIMO 2', '1', '5032318', 'BUNJU B STAND KINONDONI DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(198, 'SAIMONI 3', '1', '5044211', 'KIALAKA MSONGORA DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(199, '3AKA 2', '1', '5016388', 'BUNJU MATUMBI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(200, 'NDENGU 2', '1', '5007051', 'BUNJU B KINONDONI DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(201, 'ENDGRAIN CHECK POINT', '1', '5007076', 'MABWEPANDE MAZESE KINONDONI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(202, 'SWAI 2', '1', '5007071', 'BUNJU B MUNUO KINONDONI DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(203, 'JOEL 2', '1', '5014396', 'MABWEPANDE KANISANI DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(204, 'PINK 3', '1', '5014421', 'NJIAPANDA NDEGE BEACH DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(205, 'HAI 3', '1', '5023491', 'NJIAPANDA MBWENI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(206, 'JACKSON 2', '1', '5007019', 'NJIAPANDA MBWENI KINONDONI DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(207, 'TAUSI 3', '1', '5033041', 'BOKO MAGENGENI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(208, 'TWAHILA 2', '1', '5005012', 'MBWENI BUNJU KINONDONI DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(209, 'PALEPALE 3', '1', '5016434', 'BUNJU A FANAKA SHULE DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(210, 'POSTO BELLA RESORT', '1', '5006632', 'MIANZINI STAND KINONDONI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(211, 'VERONICA 2', '1', '5097291', 'GURUMAWE CHANGAMOTO DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(212, 'NEW PARKING 3', '1', '5042370', 'BUNJU A SHULE KINONDONI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(213, 'USEMAL 2', '1', '5039032', 'MBWENI UBUNGO DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(214, 'BELLANTO 3', '1', '5007055', 'MBWENI UBUNGO KINONDONI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(215, 'MNGONI 2', '1', '5014402', 'MBWENI MASAITI DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(216, 'SHONGOL 3', '1', '5041448', 'MBWENI MAPUTO KINONDONI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(217, 'C PARK 3', '1', '5041461', 'MAGENGENI NJIAPANDA MBWENI KINONDONI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(218, 'ENJOJO 3', '1', '5008012', 'SITAKI SHARI BANANA ILALA DAR ES SALAAM', 4, 3, 0, 1, 1, 0),
(219, 'BIG MOUNTAIN 3', '1', '5096927', 'BANANA ILALA DAR ES SALAAM', 4, 3, 0, 1, 1, 0),
(220, 'JECO 3', '1', '5019263', 'MAJUMBA SITA DAR ES SALAAM', 4, 3, 0, 1, 1, 0),
(221, 'AIRTEL 3', '1', '5097437', 'BANANA ILALA DAR ES SALAAM', 4, 3, 0, 1, 1, 0),
(222, 'SERENGETI 3', '1', '5030738', 'BANANA ILALA DAR ES SALAAM', 4, 3, 0, 1, 1, 0),
(223, 'MANDAO 3', '1', '5017747', 'SITAKISHARI UKONGA DAR ES SALAAM', 4, 3, 0, 1, 1, 0),
(224, 'FREEDOM 3', '1', '5007646', 'BANANA ILALA DAR ES SALAAM', 4, 3, 0, 1, 1, 0),
(225, 'WAY POINT 3', '1', '5042601', 'BANABANA BANABANA DAR ES SALAAM', 4, 3, 0, 1, 1, 0),
(226, 'GM EXECUTIVE 3', '1', '5042603', 'BANANA ILALA DAR ES SALAAM', 4, 3, 0, 1, 1, 0),
(227, 'SMART PARK 3', '1', '5032970', 'BANABANA BANABANA DAR ES SALAAM', 4, 3, 0, 1, 1, 0),
(228, 'JAVA 3', '1', '5012169', 'BANANA DAR ES SALAAM', 4, 3, 0, 1, 1, 0),
(229, 'NGEMO 3', '1', '5016946', 'BANANA ILALA DAR ES SALAAM', 4, 3, 0, 1, 1, 0),
(230, 'SUPER KARATU', '1', '5055709', 'BANANA UKONGA DAR ES SALAAM', 4, 3, 0, 1, 1, 0),
(231, 'TANZANITE 3', '1', '5098886', 'BANANA DAR ES SALAAM', 4, 3, 0, 1, 1, 0),
(232, 'RUKAI 3', '1', '5035037', 'BANANA ILALA DAR ES SALAAM', 4, 3, 0, 1, 1, 0),
(233, 'BLUE STAR 3', '1', '5030751', 'MAJUMBA SITA BANANA DAR ES SALAAM', 4, 3, 0, 1, 1, 0),
(234, 'FREE TIME 3', '1', '5021419', 'BANANA STREET DAR ES SALAAM', 4, 3, 0, 1, 1, 0),
(235, 'MWALONGO 3', '1', '5057272', 'UKONGA SITAKISHARI DAR ES SALAAM', 4, 3, 0, 1, 1, 0),
(236, 'MARANDU 2', '1', '5044791', 'MKUNGUNI STREET MIKOCHENI A KINONDONI', 0, 2, 0, 2, 1, 0),
(237, 'MWITONGO 3', '1', '5005937', 'KIBAKI ROAD KINONDONI DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(238, 'GIGI 2', '1', '5008837', 'MIKOCHENI A DARAJANI KINONDONI DAR ES SALAAM', 0, 2, 0, 2, 1, 0),
(239, 'HOZA 2', '1', '5001069', 'KAIRUKI ROAD MIKOCHENI A DAR ES SALAAM', 0, 2, 0, 2, 1, 0),
(240, 'MUSHI 2', '1', '5000150', 'KAIRUKI ROAD MIKOCHENI A KINONDONI', 0, 2, 0, 2, 1, 0),
(241, 'KAPONGO 3', '1', '5041156', 'TEGETA MKANADA KINONDONI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(242, 'BY NIGHT 3', '1', '5017516', 'TEGETA AZANIA KINONDONI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(243, 'WINWIN GARDEN 3', '1', '5005284', 'TEGETA AZANIA KINONDONI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(244, 'TONGORI 3', '1', '5040512', 'TEGETA MKANADA KINONDONI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(245, 'RAHA 3', '1', '5041270', 'TEGETA MSICHOKE KINONDONI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(246, 'MDENYI 3', '1', '5001843', 'TEGETA AZANIA KINONDONI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(247, 'MATANUZI 3', '1', '5001807', 'TEGETA MACHINJIONI KINONDONI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(248, 'BWAWANI 3', '1', '5001810', 'TEGETA BWAWANI KINONDONI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(249, 'KIMORI 3', '1', '5034459', 'TEGETA WAZO ROAD DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(250, 'TEGETA RESORT', '1', '5001845', 'TEGETA DARAJANI KINONDONI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(251, 'STAND KERYO 3', '1', '5001812', 'TEGETA DARAJANI KINONDONI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(252, 'NSANYA 3', '1', '5041286', 'TEGETA KWA NDEVU KINONDONI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(253, 'P.K 3', '1', '5001820', 'TEGETA KWA NDEVU KINONDONI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(254, 'KYARONI 3', '1', '5041285', 'TEGETA NMINAZINI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(255, 'BREEZE POINT 3', '1', '5004122', 'TEGETA KISANGA KINONDONI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(256, 'JULIO 1 3', '1', '5032716', 'WAZO BUCHA DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(257, 'NORTH 25 3 & GRILL', '1', '5022738', 'TEGETA TEGETA WAZO ROAD DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(258, 'LUXUS 3', '1', '5001849', 'TEGETA KITUO CHA POLISI KINONDONI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(259, 'FURAHA 3', '1', '5005263', 'TEGETA SHIJA KINONDONI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(260, 'CORNER 3', '1', '5045315', 'TEGETA MAGENGENI KWA NDEVU KINONDONI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(261, 'MIGOMBANI 3', '1', '5001837', 'TEGETA MSICHOKE KINONDONI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(262, 'MERU 3', '1', '5041265', 'TEGETA KITUO CHA POLISI KINONDONI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(263, 'MAPAMBANO 3', '1', '5001830', 'TEGETA SHULE KINONDONI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(264, 'KISOMBOKO 3', '1', '5005117', 'TEGETA MSICHOKE KINONDONI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(265, 'EMIRATES 3', '1', '5009149', 'TEGETA MSICHOKE POLISI KINONDONI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(266, 'FOREST 3', '1', '5001827', 'TEGETA WAZO ROAD KINONDONI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(267, 'HOME BOYS 3', '1', '5042795', 'TEGETA WAZO ROAD KINONDONI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(268, 'MARY 2', '1', '5001835', 'WAZO CONTAINER MIVUMONI DAR', 0, 2, 0, 3, 1, 0),
(269, 'TWIGA 3', '1', '5001840', 'TEGETA WAZO ROAD KINONDONI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(270, 'KIMARIO 2', '1', '5040163', 'SINZA MLIAMANI CITY STREET DAR ES SALAAM', 0, 2, 0, 2, 1, 0),
(271, 'MAMA NANCY 2', '1', '5043051', 'KUMEKUCHA SINZA KINONDONI DAR ES SALAAM', 0, 2, 0, 2, 1, 0),
(272, 'BLU NEI RESORT', '1', '5005138', 'MAWASILIANO SINZA KINONDONI DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(273, 'BABILOON 3', '1', '5099523', 'MWISHO KINYEREZI ILALA DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(274, 'KHEN GARDEN 3', '1', '5032699', 'KIFUNI KISUNGU KINYEREZI DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(275, 'AVIC CENTRE', '1', '5006553', 'KIFURU TABATA DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(276, 'NEXT DOOR PUB', '1', '5040729', 'TABATA SEGEREA DAR ES SALAAM', 0, 3, 3, 1, 1, 0),
(277, 'MAMA RAY  2', '1', '5047156', 'SHULE TABATA DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(278, 'RIQUE MIN SUPERMARKET', '1', '5014615', 'TABATA SANENE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(279, 'NDAMBWE 3', '1', '5032234', 'SEGEREA MWISHO TABATA DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(280, 'MAYONGA 2', '1', '5033689', 'SEGEREA MWISHO DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(281, 'ELDERS 3', '1', '5037344', 'SEGEREA MWISHO ILALA DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(282, 'FRENCE PUB', '1', '5009000', 'SEGEREA MWISHO DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(283, 'ROSEHILL 3', '1', '5030044', 'TABATA SEGEREA SHELL DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(284, 'BAMBOO 2', '1', '5011362', 'TABATA SEGEREA DAR ES SALAAM', 0, 2, 3, 1, 1, 0),
(285, 'NDELINGO 3', '1', '5008998', 'SANENE STREET TABATA DAR ES SALAAM', 0, 3, 3, 1, 1, 0),
(286, 'GBF DARDEN', '1', '5041349', '3ACUDA TABATA DAR ES SALAAM', 0, 3, 3, 1, 1, 0),
(287, 'THE GREAT PARK', '1', '5037302', 'TABATA 3ACUDA ILALA DAR ES SALAAM', 0, 3, 3, 1, 1, 0),
(288, 'THE GREAT PARK', '1', '5037302', 'TABATA 3ACUDA ILALA DAR ES SALAAM', 0, 3, 3, 1, 1, 0),
(289, 'UJIJI 2', '1', '5030883', 'TABATA 3AKUDA DAR ES SALAAM', 0, 2, 3, 1, 1, 0),
(290, 'CHAULA 2', '1', '5013682', 'TABATA BIMA STAND', 0, 2, 0, 1, 1, 0),
(291, 'KIBAKI 2', '1', '5098050', 'TABATA SEGEREA DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(292, 'SUMBIS 2', '1', '5010848', 'TABATA SEGEREA DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(293, 'FANTASY GARDEN', '1', '5092766', 'TABATA SEGEREA MWISHO DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(294, 'NYAMRUNDA TERMINAL 3', '1', '5092765', 'SEGEREA SEGEREA BUS STAND DAR ES SALAM', 0, 3, 0, 1, 1, 0),
(295, 'USHIWA 3', '1', '5099273', 'KIJITONYAMA KINONDONI ', 0, 3, 0, 2, 1, 0),
(296, 'AMINA CAFÉ', '1', '5010873', 'MAGHARIBI SHULE KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(297, 'MAPAZIA 3', '1', '5047084', 'CHALINZE BWILINGU BAGAMOYO', 0, 3, 0, 3, 1, 0),
(298, 'KISOTA 3', '1', '5037597', 'CHALINZE BWILINGU PWANI', 0, 3, 0, 3, 1, 0),
(299, 'KOBIL RESTAURANT', '1', '5045977', 'CHALINZE PERA BAGAMOYO', 0, 3, 0, 3, 1, 0),
(300, 'KOBIL RESTAURANT', '1', '5045976', 'CHALINZE PERA BAGAMOYO', 0, 3, 0, 3, 1, 0),
(301, 'NOGEZA 2', '1', '5007237', 'CHALINZE BWILINGU PWANI', 0, 2, 0, 3, 1, 0),
(302, 'SALHA RESTAURANT', '1', '5004610', 'CHALINZE BWILINGU BAGAMOYO', 0, 3, 0, 3, 1, 0),
(303, 'DANNY 2', '1', '5007241', 'CHALINZE LUGOBA BAGAMOYO', 0, 2, 0, 3, 1, 0),
(304, 'MAISHA PLUS 3', '1', '5036574', 'CHALINZE MSATA BAGAMOYO', 0, 3, 0, 3, 1, 0),
(305, 'NTWALE 3', '1', '5035310', 'CHALINZE MDAULA BAGAMOYO', 0, 3, 0, 3, 1, 0),
(306, 'SIKITU GROCERY', '1', '5007182', 'CHALINZE MDAULA BAGAMOYO', 0, 3, 0, 3, 1, 0),
(307, 'TARIMO 3', '1', '5044100', 'UBENA CHALINZE BAGAMOYO', 0, 3, 0, 3, 1, 0),
(308, 'MAMPO SOFT DRINKS', '1', '5054940', 'CHALINZE UBENA-ZOMOZI BAGAMOYO', 0, 3, 0, 3, 1, 0),
(309, 'BUSANGWA 3', '1', '5048907', 'CHALINZE BWAWANI BAGAMOYO', 0, 3, 0, 3, 1, 0),
(310, 'DELTA PARK 3', '1', '5032612', 'CHALINZE BAGAMOYO', 0, 3, 0, 3, 1, 0),
(311, 'KITANDU 3', '1', '5031752', 'CHALINZE UBENA PWANI', 0, 3, 0, 3, 1, 0),
(312, 'KITANDU 3 2', '1', '5057327', 'UBENA ZOMIZI PWANI', 0, 3, 0, 3, 1, 0),
(313, 'TUPENDANE 3', '1', '5057323', 'NGERENGERE MTAA WA KATI PWANI', 0, 3, 0, 3, 1, 0),
(314, 'MSAKUZI GARDEN', '1', '5057952', 'NGERENGERE SANGASANGA CHALINZE', 0, 3, 0, 3, 1, 0),
(315, 'MAMA HASSAN 2', '1', '5004926', 'KIMARA KONA KINONDONI DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(316, 'KWAIRO 3', '1', '5000170', 'KIMARA KING\'ONG\'O KINONDONI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(317, 'PEACE PARK', '1', '5097580', 'KIMARA MATANGINI DAR', 0, 3, 0, 3, 1, 0),
(318, 'PARFECT PUB', '1', '5007039', 'KIMARA MATANGI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(319, 'GERVAS 2', '1', '5006033', 'KIMARA MATANGINI DAR', 0, 2, 0, 3, 1, 0),
(320, 'BLUE GATE PUB', '1', '5028103', 'KIMARA SUKA DAR', 0, 3, 0, 3, 1, 0),
(321, 'SHIRIMA PUB', '1', '5007102', 'KIMARA MATOSA DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(322, 'GROLIA FAMILY 2', '1', '5015428', 'KIMARA KILUNGULE A DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(323, 'IRENE 2', '1', '5007052', 'KIMARA SUKA DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(324, 'NZERA 3', '1', '5006700', 'KIMARA KOROGWE KINONDONI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(325, 'EURO 96 3', '1', '5040860', 'MANZESE MNAZI MMOJA KINONDONI DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(326, 'KISALE A 3', '1', '5099407', 'MANZESE SISI KWA SISI KINONDONI DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(327, 'ROMBO 3', '1', '5099678', 'MANZESE BAKHRESA KINONDONI DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(328, 'DIKULA 2', '1', '5031203', 'MABIBO SOKONI MANZESE KINONDONI DAR ES SALAAM', 0, 2, 0, 2, 1, 0),
(329, 'MAKTABA 3', '1', '5041643', 'MANZESE MABIBO JITEGEMEE DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(330, 'MRINA 3', '1', '5099375', 'MANZESE MNAZI MMOJA KINONDONI DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(331, 'IBWE 2', '1', '5034641', 'MFUGA MBWA MANZESE KINONDONI DAR ES SALAAM', 0, 2, 0, 2, 1, 0),
(332, 'NEW SAVANNAH 3', '1', '5034911', 'MANZESE TIP TOP KINONDONI DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(333, 'LAMBO 3', '1', '5032785', 'MANZESE TOIPTOP KINONDONI', 0, 3, 0, 2, 1, 0),
(334, 'LUNCH TIME 3', '1', '5016932', 'MANZESE TIPTOP KINONDONI DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(335, 'SUSANA 2', '1', '5003067', 'MANZESE TIPTOP KINONDONI DAR ES SALAAM', 0, 2, 0, 2, 1, 0),
(336, 'NICE CAMP', '1', '5042538', 'KIGAMBONI KWA URASSA DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(337, 'DANNY 3', '1', '5099969', 'FERRY KIGAMBONI DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(338, 'MAMA DADY  PUB', '1', '5099195', 'TUA MOYO KIGAMBONI DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(339, 'MAMA K INN', '1', '5099544', 'MCHICHANI KIBANGU UBUNGO DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(340, 'KIBOSHO 3', '1', '5040986', 'TABATA AREA KINONDONI DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(341, 'ABC 3', '1', '5007486', 'TABATA AREA KINONDONI DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(342, 'MAMA TINA 2', '1', '5006500', 'SONGAS TANESCO KIBANGU UBUNGO DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(343, 'FRANK 3', '1', '5005897', 'MAKOKA UBUNGO DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(344, 'MWANDUTU 3', '1', '5003909', 'KWA MKUA MAKOKA UBUNGO DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(345, 'TIME OFF 3', '1', '5000135', 'MCHICHANI KIBANGU UBUNGO DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(346, 'SARAFINA 3', '1', '5098895', 'TABATA AREA KINONDONI DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(347, 'USESI 3', '1', '5040982', 'TABATA AREA KINONDONI DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(348, 'KIWIRA 3', '1', '5038737', 'TABATA AREA KINONDONI DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(349, 'MSHANA CAFÉ', '1', '5012858', 'TABATA AREA KINONDONI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(350, 'UHURU PEAK 3', '1', '5096850', 'KUBANGU UBUNGO DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(351, 'KICHUGUUNI GROCERY', '1', '5017310', 'MSIKITINI KUBANGU UBUNGO DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(352, 'RIVER SIDE 3', '1', '5017623', 'RIVERSIDE UBUNGO DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(353, 'RIVERSIDE 3', '1', '5042577', 'RIVERSIDE UBUNGO DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(354, 'LONDON 3', '1', '5034097', 'TABATA AREA KINONDONI DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(355, 'KILIMAHEWA 3', '1', '5022185', 'UBUNGO KIBANGU MAKOKA DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(356, 'FM 3', '1', '5021880', 'MAKOKA KIBANGU UBUNGO DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(357, 'LAST CENTRE 3', '1', '5007482', 'TABATA AREA KINONDONI DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(358, 'ZAWADI 3', '1', '5032964', 'MCHICHANI KIBANGU UBUNGO DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(359, 'ENGIGWANA 3', '1', '5040981', 'TABATA KINONDONI DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(360, 'NGEMO 3', '1', '5002940', 'KWA MPEMBA KIVULE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(361, 'AZTECA SPORT PUB', '1', '5002595', 'KWA MPEMBA KIVULE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(362, 'PHENIX PUB', '1', '5098949', 'BAMBUCHA KIVULE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(363, 'BOGAGA 3', '1', '5002612', 'MATEMBELE YA PILI KIVULE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(364, 'MSIMBAZI PUB', '1', '5097168', 'KWA MKOLEMBA UKONGA DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(365, 'MAKUTI 3', '1', '5097163', 'KWA MKOLEMBA UKONGA DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(366, 'JALUO 3', '1', '5025609', 'MOSHI 3 KWA DIWANI ILALAL DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(367, 'CHEERS CLASSIC PUB', '1', '5002748', 'MOSHI 3 RELINI UKONGA DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(368, 'RACHAEL PUB', '1', '5040665', 'MOSHI 3 UKONGA DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(369, 'CABELLA 3', '1', '5046606', 'BAHARI BEACH KUNDUCHI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(370, 'LALIGA 3', '1', '5040812', 'BAHARI BEACH KUNDUCHI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(371, 'KILIMAHEWA EXECUTIVE 3', '1', '5012617', 'KUNDUCHI SALASALA KILIMAHEWA DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(372, 'GREEN PALM RESORT', '1', '5047072', 'MTONGANI KUNDUCHI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(373, 'MAX 3', '1', '5037172', 'KUNDUCHI MTONGANI MAPUTO DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(374, 'V 2', '1', '5046360', 'MWENGE KIJIJINI DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(375, '2K HAIR SALOON', '1', '5012295', 'MWENGE KIJIJINI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(376, 'URASA  2', '1', '5029310', 'MWENGE KIJIJINI DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(377, 'MARY LAND 3', '1', '5097891', 'MWENGE ITV DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(378, 'MIDWAY PUB', '1', '5098007', 'MBAGALA CHARAMBE TEMEKE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(379, 'THE PENTAGON  3', '1', '5034114', 'MBAGALA CHARAMBE KWA MBIKU STREET DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(380, 'KINYE PUB', '1', '5002742', 'CHARAMBE KWA MBIKU MBAGALA DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(381, 'RAFIKA 3', '1', '5005669', 'CHARAMBE NJIA PANDA NZASA MBAGALA DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(382, 'SCOPION PUB', '1', '5008867', 'MBAGALA CHARAMBE KWA MBIKU DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(383, 'NAFUU 2', '1', '5047967', 'SINZA LION KINONDONI DAR ES SALAAM', 0, 2, 0, 2, 1, 0),
(384, 'FELIX 2', '1', '5098902', 'SINZA KINONDONI DAR ES SALAAM', 0, 2, 0, 2, 1, 0),
(385, 'MSAMARIA 2', '1', '5000988', 'SINZA KUMEKUCHA KINONDONI DAR ES SALAAM', 0, 2, 0, 2, 1, 0),
(386, 'SINZA HOT FAST FOOD', '1', '5044796', 'SINZA MAKABURINI KINONDONI DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(387, 'ROYAL GARDEN 3', '1', '5017079', 'MSASANI GOROFANI DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(388, 'MATUNDA 3', '1', '5031180', 'MSASANI DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(389, 'SAFARI BEACH 3', '1', '5012782', 'BAHARI STREET MSASANI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(390, 'MDENYA 3', '1', '5006105', 'MSASANI DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(391, 'DSM MARITIME INSTITUTE', '1', '5016114', 'POSTA GARDEN VIEW DAR ES SALAAM', 0, 3, 3, 2, 1, 0),
(392, 'DSM MARITIME INSTITUTE', '1', '5016114', 'POSTA GARDENVIEW DAR ES SALAAM', 0, 3, 3, 2, 1, 0),
(393, 'SEKO POINT 3', '1', '5022350', 'OHAYO CITY CENTRE DAR ES SALAAM', 0, 3, 3, 2, 1, 0),
(394, 'TOP LAND 3', '1', '5041189', 'MAGOMENI MAPIPA DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(395, 'BAFANA BAFANA 3', '1', '5001768', 'MAGOMENI KIONGA DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(396, 'LINGA 3', '1', '5005652', 'MAGOMENI MAPIPA KINONDONI DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(397, 'NEIGHBOUR 3', '1', '5041192', 'MAGOMENI MAPIPA TOSHEKA DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(398, 'FRANCIO 3', '1', '5098361', 'MAGOMENI RUAHA DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(399, 'WHITE HORSE 3', '1', '5098254', 'MAGOMENI USALAMA DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(400, 'PENDO 2', '1', '5005355', 'KIMARA STOP OVER DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(401, 'AISHA 2', '1', '5005357', 'KIMARA SUKA DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(402, 'CENTER 3', '1', '5002520', 'MBEZI LUIS KINONDONI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(403, 'LUBUMBASHI 3', '1', '5041630', 'MBEZI LUIS KIWANJANI KINONDONI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(404, 'TRAFALGAR SQUARE 3', '1', '5006042', 'MBEZI LUIS DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(405, 'MARORONI 2', '1', '5011955', 'MBEZI MAKABE KINONDONI DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(406, 'AMBAZ GROCERY', '1', '5012845', 'MBEZI LUIS DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(407, 'AUDIFACE 2', '1', '5007813', 'MBEZI LUIS KINONDONI DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(408, 'FOREST PARK', '1', '5042246', 'MBEZI KWA MSUGURI KINONDONI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(409, 'TABITA SALOON', '1', '5012835', 'MBEZI KIMARA B DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(410, 'NICEA 3', '1', '5092575', 'MBEZI LUIS STAND DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(411, 'KINGSTON PARK & RESORT', '1', '5092722', 'MAKABE MBEZI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(412, 'VALLEY VIEW 3', '1', '5092727', 'MAKABE MBEZI MAKABE STAND DAR', 0, 3, 0, 3, 1, 0),
(413, 'LUIS 3', '1', '5092728', 'KWA ROBERT MBEZI LUIS DAR', 0, 3, 0, 3, 1, 0),
(414, 'DELUXE 3', '1', '5011986', 'MAPIPA MAGOMENI DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(415, 'NIKUZE 3', '1', '5006270', 'KONDOA MAGOMENI KINONDONI DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(416, 'MIGOMIGO 3', '1', '5001097', 'KONDOA MAGOMENI KINONDONI DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(417, 'LYIMO 3', '1', '5006765', 'POPOBAWA MAGOMENI KINONDONI DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(418, 'PEACE & LOVE 3', '1', '5006295', 'LALAGO MAGOMENI KINONDONI DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(419, 'IKAMBE 3', '1', '5006296', 'MAKANYA MAGOMENI KINONDONI DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(420, 'KIVULINI 3', '1', '5011983', 'KIYUNGI MAGOMENI MAPIPA DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(421, 'KIZOTA 3', '1', '5019667', 'KISANGIRO MOROCCO KINONDONI DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(422, 'MKT 3', '1', '5006285', 'PONGWE MAGOMENI KINONDONI DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(423, 'TARIMO 3', '1', '5012817', 'KAGERA MAGOMENI DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(424, 'CAMP DAVID 3', '1', '5039542', 'MTONGANI KWA AZIZI ALLY DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(425, 'WHITE 3', '1', '5021948', 'MTONGANI KABUMA DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(426, 'GARDEN 3', '1', '5006613', 'DAMPO MTONI TEMEKE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(427, 'BASHNET 3', '1', '5042943', 'MTONGANI STAND YA SHAMBA DAR', 0, 3, 0, 1, 1, 0),
(428, 'MTONI JOGGING 3', '1', '5002922', 'MTONGANI TEMEKE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(429, 'LAHAZIZI 3', '1', '5097700', 'TEMEKE MADAFU DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(430, 'CLUB CADILAC 3', '1', '5039606', 'PILE TEMEKE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(431, 'KEEP LEFT 3', '1', '5005701', 'ROUND ABOUT KILWA ROAD GEREZANI DAR ES SALAAM', 2, 3, 0, 2, 1, 0),
(432, 'PORTY VIEW PUB', '1', '5098041', 'ROUND ABOUT KILWA ROAD GEREZANI DAR ES SALAAM', 2, 3, 0, 2, 1, 0),
(433, 'BIZE MAMA 3', '1', '5017056', 'M3UKU GEREZANI DAR ES SALAAM', 2, 3, 0, 2, 1, 0),
(434, 'MAKUTANO 3', '1', '5099529', 'GEREZANI KIUNGANI DAR', 2, 3, 0, 2, 1, 0),
(435, 'SUWATA 3', '1', '5018182', 'LINDI GEREZANI KARIAKOO DAR ES SALAAM', 2, 3, 0, 2, 1, 0),
(436, 'SKY LINE 3', '1', '5099831', 'LINDI GEREZANI KARIAKOO DAR ES SALAAM', 2, 3, 0, 2, 1, 0),
(437, 'WORLD CUP 3', '1', '5015261', 'SOMALI GEREZANI DAR ES SALAAM', 2, 3, 0, 2, 1, 0),
(438, 'LEASURE VENTURES LTD', '1', '5009187', 'LIVINGSTONE GEREZANI DAR ES SALAAM', 2, 3, 0, 2, 1, 0),
(439, 'MANGOVILLA 3', '1', '5097846', 'KIPATA GEREZANI DAR ES SALAAM', 2, 3, 0, 2, 1, 0),
(440, 'PPM 3', '1', '5019675', 'MIEMBENI VINGUNGUTI DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(441, 'MAPAMBANO 3', '1', '5026639', 'VINGUNGUTI MIEMBENI KIEMBE MBUZI TEMEKE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(442, 'DICK 3', '1', '5021092', 'VINGUNGUTI MORINGE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(443, 'DICKY 3', '1', '5021092', 'VINGUNGUTI MIEMBENI DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(444, 'M.S 3', '1', '5099640', 'KARAKATA MJIMPYA ILALA DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(445, 'MASHINA INN 3', '1', '5030842', 'VINGUNGUTI KOLONI DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(446, 'KAULETI INN 3', '1', '5039665', 'VINGUNGUTI KWASIMBA DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(447, 'WINOME 3', '1', '5031617', 'KOMBO VINGUNGUTI DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(448, 'RONGAI 3', '1', '5025504', 'KALAKATA UWANJA WA NDEGE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(449, 'KBV 3', '1', '5005593', 'KARAKATA UWANJA WA NDEGE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(450, 'JUMBO PUB', '1', '5019518', 'AIR PORT KARAKATA DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(451, 'EDDY PERRY 3', '1', '5099592', 'UWANJA WA NDEGE KARAKATA DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(452, 'MABUTU 3', '1', '5003409', 'UWANJA WA NDEGE KARAKATA RELINI DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(453, 'MASHUJAA PUB', '1', '5024455', 'MTAKUJA VINGUNGUTI DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(454, 'JOSEPHINE 2', '1', '5011468', 'KISIWANI NEW HOUSE STREET DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(455, 'MAWENZI 3', '1', '5099951', 'TABATA MAWENZI STAND DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(456, 'MMANDA GROCERY MCHONGOMANI PUB', '1', '5096868', 'TABATA KISIWANI DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(457, 'KIMARO 2', '1', '5027512', 'TABATA MASOKO MASOKO TANK LA MAJI DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(458, 'NEW KIBO GARDEN 3', '1', '5037342', 'TABATA SAVANNAR DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(459, 'GREEN LAND 3', '1', '5011633', 'TABATA MAWEZI STAND DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(460, 'TEGER PUB', '1', '5098269', 'CHAMA DARAJANI KWA MROSO DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(461, 'JUMA 2', '1', '5002824', 'TABATA KISIWANI DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(462, 'MAWENZI 3', '1', '5004668', 'MAWENZI STAND DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(463, 'NEW KIBO GARDEN 3', '1', '5099924', 'TABATA SAVANNAR DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(464, 'MROSO 2', '1', '5098875', 'TABATA MANDELA ROAD DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(465, 'MTAITA CENTER 3', '1', '5002254', 'TABATA KISIWANI DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(466, 'TANZANIA SCI LTD RESTAURANT', '1', '5044656', 'BIBITITI POSTA ILALA DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(467, 'NAMANGA GARDEN 3', '1', '5021647', 'MABIBO MAGOMENI DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(468, 'UBUNGO 3', '1', '5004882', 'MABIBO MAGOMENI KINONDONI DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(469, 'W 3', '1', '5007830', 'MABIBO MAGOMENI DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(470, 'GONGA ZOTE 3', '1', '5005605', 'MABIBO FARASI MAGOMENI KINONDONI DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(471, 'MULEBA 3', '1', '5046001', 'MABIBO MAGOMENI KINONDONI DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(472, 'JAMBO 3', '1', '5004886', 'MAGOMENI MABIBO KINONDONI DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(473, 'WAWAE 3 & GUEST HOUSE', '1', '5005675', 'MAGOMENI MABIBO KINONDONI DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(474, 'MAKARANGA PUB', '1', '5005678', 'MAGOMENI MABIBO KINONDONI DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(475, 'CHABRUMA 3', '1', '5044669', 'MAGOMENI KINDONI DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(476, 'MERY 2', '1', '5035896', 'MABIBO MWISHO MAGOMENI DAR', 0, 2, 0, 2, 1, 0),
(477, 'THE PROMISE 3', '1', '5022259', 'MABIBO MAGOMENI DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(478, 'MARES PUB', '1', '5019975', 'MABIBO FARASI MABIBO DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(479, 'KARUMUNA 3', '1', '5007838', 'MABIBO MAGOMENI DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(480, 'CARNIVAL CITY 3', '1', '5031306', 'MABIBO MAGOMENI KINONDONI DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(481, 'AMBAGA 3', '1', '5099413', 'MABIBO KINONDONI DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(482, 'JULIUS 3', '1', '5020809', 'MABIBO FARASI MAGOMENI KINONDONI DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(483, 'KISANGA LIQUER', '1', '5007829', 'MABIBO MAGOMENI DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(484, 'MAMNAMA 3 & GUEST HOUSE', '1', '5046009', 'MABIBO MAGOMENI DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(485, 'FULL DOSE 3', '1', '5003040', 'MABIBO MAGOMENI KINONDONI DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(486, 'ANTONY 2', '1', '5022022', 'MABIBO SAHARA MAGOMENI DAR ES SALAAM', 0, 2, 0, 2, 1, 0),
(487, 'OASIS 3', '1', '5019877', 'MAKUTANO MAGOMENI DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(488, 'KILIMANI 3', '1', '5008969', 'KITUNDA KIZUIANI DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(489, 'ARSENAL 3', '1', '5002593', 'SHULE KIVULE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(490, 'SONGAS 3', '1', '5042880', 'KITUNDA KIVULE CCM DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(491, '3CELONA 3', '1', '5002605', 'CCM KIVULE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(492, 'HANAM RESORT', '1', '5057771', 'KITUNDA KIVULE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(493, 'SOFAN 3', '1', '5004079', 'MAKUMBUSHO KIJITONYAMA KINONDONI DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(494, 'HONGERA 3', '1', '5046722', 'USTAWI WA JAMII KINONDONI DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(495, 'TAUSI 3', '1', '5042139', 'AIRTEL MOROCCO KINONDONI DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(496, 'KATUMBA 3', '1', '5016881', 'MKWAJUNI KINONDONI DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(497, 'BABUU 3', '1', '5041017', 'KINONDONI KAZIMA STREET DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(498, 'MATEMA 3', '1', '5097903', 'KINONDONI B DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(499, 'PANAMA 3', '1', '5001540', 'STUDIO KINONDONI DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(500, 'AIKA 3', '1', '5021727', 'TOGO KINONDONI DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(501, '3 MPYA ', '1', '5099245', 'BOKO BASIHAYA DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(502, 'BESTE STORE', '1', '5057029', 'BOKO MAGEREZANI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(503, 'BRASILI 3', '1', '5007705', 'BOKO KIBO KINONDONI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(504, 'NGANASHE 3', '1', '5015422', 'BOKO NAMANGA KINONDONI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(505, 'RAINER PARK 3', '1', '5007191', 'BOKO KINONDONI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(506, 'KISHARI PARK', '1', '5057036', 'TEGETA NYAISHOZI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(507, 'FAIR WAY 3', '1', '5099507', 'BOKO NYAISHOZI KINONDONI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(508, 'NYAMACHABES 3', '1', '5044164', 'BOKO NYAISHOZI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(509, 'FYATANGA 3', '1', '5099243', 'BOKO BASIHAYA KINONDONI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(510, 'SONGAMBELE 3', '1', '5007217', 'BOKO NYAKASANGWE DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(511, 'MAMA B 2', '1', '5005165', 'LEGHO UBUNGO KINONDONI DAR ES SALAAM', 0, 2, 0, 2, 1, 0),
(512, 'MANGI 2', '1', '5005164', 'SHEKILANGO UBUNGO KINONDONI DAR ES SALAAM', 0, 2, 0, 2, 1, 0),
(513, 'ASSENGA 2', '1', '5005171', 'UBUNGO MAZIWA KINONDONI DAR ES SALAAM', 0, 2, 0, 2, 1, 0),
(514, 'MAGRETH 2', '1', '5008011', 'LEGHO UBUNGO KINONDONI DAR ES SALAAM', 0, 2, 0, 2, 1, 0),
(515, 'TEXAS 3', '1', '5022326', 'TEMEKE BUZA NJIA PANDA KITUNDA DAR', 0, 3, 0, 1, 1, 0),
(516, 'APATOSHI 3', '1', '5005424', 'MCHALINGENI TEMEKE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(517, 'NTEBELA 3', '1', '5004064', 'UWAZI MAKANGARAWE TEMEKE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(518, 'ABIOLA 3', '1', '5011304', 'YOMBO KWA ABIOLA DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(519, 'DA SAFARI PARK 3', '1', '5004081', 'YOMBO BUZA TEMEKE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(520, 'KILIMANJARO PUB', '1', '5003827', 'BUZA KANISANI DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(521, 'ROCKY CITY GARDEN', '1', '5031587', 'TEMEKE BUZA KIDAGAA DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(522, 'FRIENDS 3', '1', '5032800', 'BUZA KWA MPALANGA TEMEKE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(523, 'KANYIGO 3', '1', '5011496', 'TEMEKE BUZA KWA LULENGE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(524, 'BUZA RESORT ', '1', '5004013', 'YOMBO BUZA TEMEKE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(525, 'MAKILO GARDEN 3', '1', '5022620', 'TEMEKE NYAMBWELA TEMEKE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(526, 'APATOM 3', '1', '5032894', 'YOMBO DOVYA TEMEKE', 0, 3, 0, 1, 1, 0),
(527, 'CHEKANAO 3', '1', '5022106', 'YOMBO MAKANGARAWE TEMEKE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(528, 'KV 3', '1', '5022476', 'TEMEKE YOMBO MAKANGARAWE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(529, 'CHINI YA MTI 3', '1', '5007938', 'YOMBO MACHIMBO TEMEKE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(530, 'JACK 3', '1', '5005410', 'MAKANGARAWE TEMEKE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(531, 'RENGAKI 2', '1', '5007522', 'NEW BAGAMOYO ROAD MBEZI BEACH DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(532, 'SEMBETH 3', '1', '5048904', 'NDUMWI MBEZI BEACH KINONDONI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(533, 'COOL MORE PUB', '1', '5006346', 'MAGURUWE STREET MBEZI BEACH KINONDONI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(534, 'KIMARIO 2', '1', '5046129', 'KIBAO CHA SHULE MBEZI BEACH KINONDONI DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(535, 'PARIS PUB', '1', '5002947', 'MIKWAMBE KONGOWE MBAGALA DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(536, 'MAGORI 3', '1', '5037374', 'KIBADA KONGOWE MBAGALA DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(537, 'NHENDES PUB', '1', '5098279', 'KIBADA KONGOWE MBAGALA DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(538, 'TANVILLE 3', '1', '5032959', 'KONGOWE MBAGALA CORNERSTONE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(539, 'MAGORO 3', '1', '5002856', 'KIBADA MBAGALA DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(540, 'TEGEMEO 2', '1', '5020714', 'MWANDEGE KONGOWE MBAGALA DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(541, 'ROSH 3', '1', '5002975', 'MWANDEGE KONGOWE MBAGALA DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(542, 'SELEMAN 2', '1', '5011449', 'KIBELEWELE KONGOWE DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(543, 'MZOZO 2', '1', '5002934', 'MZINGA KONGOWE MBAGALA DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(544, 'FUNCITY 3', '1', '5018602', 'KONGOWE MBAGALA DAR-ES SALAAM', 0, 3, 0, 1, 1, 0),
(545, 'BEKA 2', '1', '5098839', 'MZINGA KONGOWE DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(546, 'MLIMANI  CAFÉ', '1', '5044820', 'GOLOKA KONGOWE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(547, 'FUNCITY 3', '1', '5037376', 'KONGOWE MBAGALA DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(548, 'FUNCITY 3', '1', '5018745', 'KONGOWE MBAGALA DAR-ES SALAAM', 0, 3, 0, 1, 1, 0),
(549, 'TUMAINI CANTEEN', '1', '5006716', 'KONGOWE MBAGALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(550, 'FAMILY MINI-SUPERMARKET', '1', '5044819', 'KONGOWE MBAGALA DAR ES SALAAM', 0, 3, 0, 1, 1, 0);
INSERT INTO `outlet` (`outlet_id`, `outlet_name`, `outlet_type`, `outlet_no`, `location`, `occd_id`, `chan_id`, `route_id`, `reg_id`, `district_id`, `salesrep_id`) VALUES
(551, 'NEW SILENT 3', '1', '5044824', ' BAKWATA KONGOWE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(552, 'SADICK 2', '1', '5002976', 'MZINGA KONGOWE MBAGALA DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(553, 'ELIAS 2', '1', '5008691', 'MSIKITINI TOANGOMA DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(554, 'BROTHERHOOD 3', '1', '5002616', 'TOANGOMA KONGOWE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(555, 'REMARKS PUB ', '1', '5044798', 'TOANGOMA KONGOWE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(556, 'MAMA 3AKA 2', '1', '5011398', 'KONGOWE TOANGOMA DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(557, 'CHALLO PUB', '1', '5002747', 'GOLOKA KONGOWE MBAGALA DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(558, 'CORNER STONE', '1', '5056883', 'MIKWAMBE CORNER STONE DAR', 0, 3, 0, 1, 1, 0),
(559, 'PETER 2', '1', '5047242', 'KIMWANI CHANIKA DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(560, 'MPEMBENI 2', '1', '5014442', 'CHANIKA RUBAKAYA DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(561, 'SWAI 2', '1', '5006407', 'KWANGWALE CHANIKA ILALA DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(562, 'KAIJANANTE BUSSINES CENTRE 3', '1', '5006421', 'KINYAMWEZI MAPASSION ILALA DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(563, 'RJS CAFÉ', '1', '5006409', 'ILALA KWA ZOO DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(564, 'CHECK POINT 3', '1', '5054886', 'CHANIKA KIGOGO DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(565, 'TAIRO 3', '1', '5007899', 'UPANGA MUIMBILI DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(566, 'SABASABA 3', '1', '5039687', 'JANGWANI MKUNGUNI KARIAKOO DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(567, 'IDDI   2', '1', '5048851', 'KIBAMBAWE-K KOO ILALA DAR ES SALAAM', 0, 2, 0, 2, 1, 0),
(568, 'NYANKUMU 3', '1', '5006400', 'MKUNGUNI KARIAKOO ILALA DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(569, 'GOODLUCK 2', '1', '5009117', 'DONI POP02 PUB DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(570, 'KIMICHO 3', '1', '5001558', 'TANDIKA NANCIO TEMEKE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(571, 'MUSOMA 3', '1', '5016606', 'TANDIKA SOGA TEMEKE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(572, 'BAFANA BAFANA 3', '1', '5002602', 'TANDIKA BUBUBU TEMEKE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(573, 'DOUBLE L 3', '1', '5039764', 'TANDIKA SOWETO DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(574, 'SHAYO 3', '1', '5037055', 'TANDIKA BEREGE TEMEKE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(575, 'MAJARIBIO 3', '1', '5022175', 'TANDIKA MAJARIBIO TEMEKE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(576, 'NGEKEWA 3', '1', '5041922', 'TANDIKA MANGO TEMEKE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(577, 'SERENGETI 3', '1', '5002318', 'TANDIKA SOWETO DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(578, 'SUNDIEGO 3', '1', '5003393', 'TANDIKA MAPIPA TEMEKE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(579, 'MINDU 3 ', '1', '5016255', 'TANDIKA BUBUBU TEMEKE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(580, 'RASHID PUB', '1', '5002969', 'TANDIKA BUBUBU TEMEKE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(581, 'NEW LIFE 3', '1', '5033104', 'UGWENO TANDIKA DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(582, 'MPO AFRICA 3', '1', '5099744', 'TANDIKA DAVIS CORNER TEMEKE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(583, 'ANZA 2', '1', '5098924', 'KIWALANI BOMBOM DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(584, 'KIDEVU PUB', '1', '5003470', 'KIWALANI MIGOMBANI DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(585, 'MANKIA 3', '1', '5033339', 'YOMBO KIWALANI ROMAN CHURCH DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(586, 'SOCIAL PUB', '1', '5003468', 'KIWALANI CHUO CHA WALEMAVU DAR EAS SALAAM', 0, 3, 0, 1, 1, 0),
(587, 'CLASSIC PUB', '1', '5040645', 'KIWALANI KIJIWE SAMLI', 0, 3, 0, 1, 1, 0),
(588, 'MALOLO  PUB', '1', '5028796', 'YOMBO KWA LIMBOA DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(589, 'ICELAND PUB ', '1', '5040333', 'YOMBO KWA LIMBOA DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(590, 'CLUB SUNSET', '1', '5041810', 'YOMBO VITUKA LUMO MWANZO DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(591, 'MOMENT 3', '1', '5003403', 'KIWALANI DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(592, 'NEW CORNER 3', '1', '5026872', 'KIWALANI BOMBOM DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(593, 'JJS PUB 3', '1', '5033344', 'KIWALANI BOMBOM DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(594, 'SWAI 2', '1', '5006526', 'YOMBO POLICE DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(595, 'IKIZU 3', '1', '5036680', 'YOMBO VITUKA DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(596, 'MOSHA 3', '1', '5035685', 'YOMBO KILAKALA TEMEKE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(597, 'KITONGA PUB', '1', '5003475', 'KIWALANI BOMBOM DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(598, 'PLUSWAY 3', '1', '5042025', 'KIWALANI YOMBO RELI DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(599, 'MWASA 3', '1', '5016808', 'MBAGALA KIZUIANI DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(600, 'MALISA 3', '1', '5047198', 'MBAGALA KIZUIANI DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(601, 'MANYARA 2', '1', '5022771', 'MBAGALA KIPATI DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(602, 'WADAU 3', '1', '5045797', 'MBAGALA MACHINJIONI DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(603, 'KDM 3', '1', '5010862', 'MBAGALA SABASABA DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(604, 'MASURURA 3', '1', '5097827', 'MBAGALA SABASABA DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(605, 'NEW SUN SET 3', '1', '5010854', 'MBAGALA BUGUDADI DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(606, 'KISUMA 3', '1', '5047316', 'SABASABA MBAGALA DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(607, 'NEW ROYAL 3', '1', '5099182', 'KITIMOND TEMEKE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(608, 'ANNA INN 3', '1', '5040475', 'CHANGANI TEMEKE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(609, 'KIMM 3', '1', '5099177', 'NGARAMBE TEMEKE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(610, 'CHIPOLOPOLO PUB', '1', '5035622', 'LIKWATI TEMEKE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(611, 'KISUMA 3', '1', '5004141', 'MWEMBE YANGA TEMEKE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(612, 'SUGAR RAY 3', '1', '5018638', 'SOKOTA TEMEKE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(613, 'STEREO PUB', '1', '5003961', 'STEREO TEMEKE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(614, 'MAKUTI 3', '1', '5002313', 'WAILES TEMEKE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(615, 'ROFA 3', '1', '5000026', 'WAILES TEMEKE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(616, 'NAOMI CAFÉ', '1', '5040467', 'TEMEKE WAILES DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(617, 'GENEVA 3', '1', '5000825', 'VETENARY TEMEKE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(618, 'CHEKERENI 3', '1', '5098058', 'SANDALI TEMEKE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(619, 'BONEY 3', '1', '5097116', 'SANDALI TEMEKE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(620, 'YETU 3', '1', '5003756', 'SANDALI TEMEKE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(621, 'LUSAKA 3 AND LODGE', '1', '5021953', 'TEMEKE SANDALI DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(622, 'KIMOLO\'S  3', '1', '5034588', 'STEREO TEMEKE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(623, 'TWIGA 3', '1', '5001866', 'STEREO TEMEKE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(624, 'HIGH  CLASSIC 3', '1', '5035768', 'STEREO TEMEKE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(625, 'GOOGLE SEARCH 3', '1', '5012319', 'MAGENGENI CHAMAZI MBAGALA DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(626, 'EAGLE PUB', '1', '5041374', 'MBAGALA MAJI MATITU DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(627, 'KAKONKO 3', '1', '5003398', 'MATITU MALIASILI MBAGALA DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(628, 'SWIFT CANTEEN', '1', '5007701', 'MBAGALA CHARAMBE TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(629, 'NANAI 2', '1', '5007697', 'MBAGALA KIBANGULILE KOKOTO TEMEKE DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(630, 'MBISHA 2', '1', '5044826', 'MBAGALA RANGITATU DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(631, 'VIJANA 3', '1', '5028194', 'MAENDELEO ROAD CHANG\'OMBE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(632, 'LAMBADA 3', '1', '5016983', 'MAENDELEO ROAD CHANG\'OMBE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(633, 'THE CHOICE PUB', '1', '5003374', 'KEKO MAGEREZA CHANGOMBE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(634, 'LIQUID PUB', '1', '5003477', 'CHANG\'OMBE ROAD DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(635, 'GLAMAS PUB', '1', '5097759', 'TAIFA CHANG\'OMBE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(636, 'LUKIZA PUB', '1', '5098530', 'KEKO JUU CHANG\'OMBE', 0, 3, 0, 1, 1, 0),
(637, 'MWANAWANE PUB', '1', '5039502', 'MANDELA ROAD DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(638, 'WIKA 3', '1', '5099793', 'UNUBINI CHANG\'OMBE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(639, 'NEW KEKO 3', '1', '5031402', 'KEKO MAGURUMBASI DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(640, 'UNIQUE 3', '1', '5021170', 'KEKO MAGURUMBASI DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(641, 'SCORPION 3', '1', '5097760', 'BORA CHANGOMBE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(642, 'DAR PEACE PARK 3', '1', '5034422', 'KEKO MAGURUMBASI DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(643, 'KING PALACE 3', '1', '5098032', 'MAGURUMBASI KEKO DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(644, 'NEW KIOMBOI 3', '1', '5033708', 'KEKO MWANGA DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(645, 'GIFT 3', '1', '5097078', 'KEKO MWANGA DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(646, 'KIVULINI 3', '1', '5011306', 'CHANGOMBE TCC TEMEKE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(647, 'J.J 3', '1', '5019512', 'CHANG\'OMBE BORA DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(648, 'RAHA LEO 3', '1', '5003402', 'KEKO MAGURUMBASI DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(649, 'NJAU PUB', '1', '5004132', 'KEKO MAGEREZA CHANGOMBE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(650, 'OMAX 3', '1', '5099940', 'KEKO MAGURUMBASI DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(651, 'SHAOSON 3', '1', '5019750', 'KEKO MAGURUMBASI DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(652, 'NEW MILLENIUM 3', '1', '5003404', 'KEKO MAGURUMBASI DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(653, 'NASOR 2', '1', '5001348', 'CHANG\'OMBE TEMEKE DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(654, 'MAGOMENI PUB', '1', '5003480', 'KEKO JUU CHANG\'OMBE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(655, 'SARAFINA  I INN', '1', '5006615', 'MTONGANI KWA AZIZ ALLY TEMEKE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(656, 'KILIMO 3', '1', '5021300', 'MTONI MTONI SIFA TEMEKE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(657, 'KIZOTA INN', '1', '5097633', 'MTONI SABASABA TEMEKE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(658, 'CARNIVAL 3', '1', '5097630', 'MTONI TEMEKE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(659, '2 TOWN 3', '1', '5031104', 'KURASINI TEMEKE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(660, 'KILWA ROAD PUB', '1', '5016060', 'KURASINI JKT TEMEKE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(661, 'BANDARI HEADQUATOR 3', '1', '5099627', 'BANDARI TEMEKE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(662, 'MAKHIRIKHIRI PUB', '1', '5097631', 'KURASINI UFUNDI TEMEKE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(663, 'RONGAI 3', '1', '5020613', 'SABASABA MAONYESHO TEMEKE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(664, 'NYORORO 3', '1', '5017046', 'MIVINJENI KURASINI TEMEKE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(665, 'CAMP VISION 3', '1', '5033197', 'SABASABA MAONYESHO TEMEKE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(666, 'KOMBORA 3', '1', '5026243', 'MADAFU KWA KINDANI TEMEKE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(667, 'WHITEWASH 3', '1', '5012679', 'YOMBO VITUKA MALAWI HOSPITAL DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(668, 'CHALINZE 3', '1', '5019538', 'YOMBO VITUKA CHALINZE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(669, 'KILIMA KIKAVU 2', '1', '5047154', 'UNGINDONI KIGAMBONI DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(670, 'KIPEPEO BEACH', '1', '5012470', 'MJI MWEMA MJI MWEMA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(671, 'KIPEPEO BEACH', '1', '5041586', 'MJI MWEMA MJI MWEMA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(672, 'KIJIJI BEACH', '1', '5035800', 'KIJALUBA KIGAMBONI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(673, 'REHEMA 2', '1', '5032828', 'CITY CENTRE SOFIA KAWAWA KIPANDE DAR', 0, 2, 0, 2, 1, 0),
(674, 'ISAACK KIOSK', '1', '5031848', 'CITY CENTER BIBI TITI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(675, 'GUSTAFA 2', '1', '5040574', 'CITY CENTER MLIMA ILALA DAR ES SALAAM', 0, 2, 0, 2, 1, 0),
(676, 'K&K PROVISION STORE', '1', '5040571', 'CITY CENTRE JAMHURI ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(677, 'ESHAAN\'S STORE', '1', '5048850', 'CITY CENTRA ZANAKI ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(678, 'FLORA BUTCHER 2', '1', '5023578', 'NKURUMA DAR ES SALAAM', 0, 2, 0, 2, 1, 0),
(679, 'J.O ENTERPRISES', '1', '5055342', 'NKURUMA CITY CENTRE ILALA DAR ES SALAAM', 0, 1, 0, 2, 1, 0),
(680, 'KAN STORES', '1', '5056617', 'CITY CENTRE NKURUMAH ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(681, 'GEORGE 2', '1', '5099475', 'MPAKANI DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(682, 'OSLO CITY 2', '1', '5047554', 'KIGAMBONI KISIWANI DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(683, 'DANIEL 2', '1', '5099971', 'KIBAONI KIGAMBONI DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(684, 'THE GUNNERS CAFÉ', '1', '5051981', 'KIGAMBONI MJI MWEMA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(685, 'TUMCHE MOLA CAFÉ', '1', '5099843', 'UNGINDONI KIGAMBONI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(686, 'KIJIJI BEACH (3)', '1', '5049243', 'KIGAMBONI KIJALUBA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(687, 'MATWA CAFÉ', '1', '5099959', 'KIGAMBONI TUNGI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(688, 'KIGAMBONI ONE COMPLEX', '1', '5007548', 'UNGINDONI KIGAMBONI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(689, 'MASSANA CAFÉ', '1', '5037366', 'KIGAMBONI KISOTA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(690, 'TUMCHE MOLA CAFÉ', '1', '5056209', 'KIGAMBONI UGINDONI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(691, 'TUMCHE MOLA CAFÉ', '1', '5056199', 'UGINDONI KIGAMBONI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(692, 'KUFA KULALA CAFÉ', '1', '5048856', 'GOBA KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(693, 'SARA CAFÉ', '1', '5033216', 'GOBA KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(694, 'CHESCO FAST FOOD', '1', '5048193', 'KULANGWA GOBA KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(695, 'HAPPY LIFE CAFÉ', '1', '5057859', 'TABATA SHULE SHULE ST DAR ES SALAAM', 1, 0, 1, 1, 1, 0),
(696, 'NEW HAMBURE CAFÉ', '1', '5047486', 'TABATA SHULE MTAMBANI ILALA DAR ES SALAAM', 1, 0, 1, 1, 1, 0),
(697, 'MAGHALI FAST FOOD AND SOFT DRINKS', '1', '5037198', 'TABATA CHANG\'OMBE ILALA DAR ES SALAAM', 1, 0, 0, 1, 1, 0),
(698, 'MUNGU MKUBWA CAFÉ', '1', '5006497', 'TABATA LIWITI ILALA DAR ES SALAAM', 1, 0, 0, 1, 1, 0),
(699, 'GABIELA 2', '1', '5048367', 'TABATA SHULE  SOKONI STREET', 1, 2, 0, 1, 1, 0),
(700, 'HILLTECH CAFÉ', '1', '5037149', 'TABATA BIMA STAND ILALA DAR ES SALAAM', 1, 0, 0, 1, 1, 0),
(701, 'AISHA CAFÉ', '1', '5057857', 'TABATA BIMA DAR ES SALAAM', 1, 0, 0, 1, 1, 0),
(702, 'FURAHIA CAFÉ', '1', '5037197', 'TABATA CHANG\'OMBE ILALA DAR ES SALAAM', 1, 0, 0, 1, 1, 0),
(703, 'MAISHA PLUS 1 CAFÉ', '1', '5055598', 'IKWIRIRI RUFIJI PWANI', 2, 0, 0, 1, 1, 0),
(704, 'MAISHA PLUS 2 CAFÉ', '1', '5055609', 'IKWIRIRI RUFIJI PWANI', 2, 0, 0, 1, 1, 0),
(705, 'BAHATI CAFÉ', '1', '5055626', 'IKWIRIRI RUFIJI PWANI', 2, 0, 0, 1, 1, 0),
(706, 'MATIMBWA CAFÉ', '1', '5055649', 'IKWIRIRI RUFIJI PWANI', 2, 0, 0, 1, 1, 0),
(707, 'MCHUCHULI CAFÉ', '1', '5055799', 'IKWIRIRI RUFIJI PWANI', 2, 0, 0, 1, 1, 0),
(708, 'SAKORO CAFÉ', '1', '5055795', 'KILWA ROAD IKWIRIRI PWANI', 2, 0, 0, 1, 1, 0),
(709, 'BI UBWA CAFÉ', '1', '5055783', 'IKWIRIRI RUFIJI PWANI', 2, 0, 0, 1, 1, 0),
(710, 'DINA CAFÉ', '1', '5055791', 'MCHUKWI RUFIJI PWANI', 2, 0, 0, 1, 1, 0),
(711, 'SHARIFA CAFÉ', '1', '5055638', 'MUHORO RUFIJI PWANI', 2, 0, 0, 1, 1, 0),
(712, 'ZUHURA CAFÉ', '1', '5055600', 'MUHORO RUFIJI PWANI', 2, 0, 0, 1, 1, 0),
(713, 'JONGO CAFÉ', '1', '5055634', 'MUHORO RUFIJI PWANI', 2, 0, 0, 1, 1, 0),
(714, 'MPONDA CAFÉ', '1', '5055633', 'MUHORO RUFIJI PWANI', 2, 0, 0, 1, 1, 0),
(715, 'NASRA CAFÉ', '1', '5055787', 'MUHORO RUFIJI PWANI', 2, 0, 0, 1, 1, 0),
(716, 'NDENGE CAFÉ', '1', '5055616', 'NYAMWAGE RUFIJI PWANI', 2, 0, 2, 1, 1, 0),
(717, 'NEEMA GROUP CAFÉ', '1', '5055818', 'UTETE RUFIJI PWANI', 2, 0, 2, 1, 1, 0),
(718, 'MMINGE CAFÉ', '1', '5055832', 'UTETE RUFIJI PWANI', 2, 0, 2, 1, 1, 0),
(719, 'ZUHURA CAFÉ', '1', '5055322', 'IKWIRIRI KILWA ROAD PWANI DAR ES SALAAM', 2, 0, 0, 1, 1, 0),
(720, 'ALEX 2', '1', '5046257', 'UKWAMANI KAWE DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(721, 'MABULA 2', '1', '5003379', 'UKWAMANI KAWE DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(722, 'ST BRENDAZI HOSPITAL', '1', '5004066', 'UKWAMANI KAWE DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(723, 'AMBAKISYE CAFÉ', '1', '5022964', 'KAWE UKWAMANI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(724, 'POT GARDEN', '1', '5099586', 'MZIMUNI KAWE PEKAS DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(725, 'PANGANI CAFÉ', '1', '5003304', 'UKWAMANI STENDI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(726, 'HIPRO 3', '1', '5004053', 'UKWAMANI KAWE DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(727, 'GRECE CAFÉ', '1', '5004056', 'UKWAMANI KAWE DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(728, 'TAIROLING CAFÉ', '1', '5004055', 'UKWAMANI KAWE DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(729, 'ESTEM COMPAND CAFÉ', '1', '5004060', 'MARINGO KAWE KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(730, 'OSAMBI CAFÉ', '1', '5034722', 'MPAKANI MLALAKUWA DAR', 0, 0, 0, 3, 1, 0),
(731, 'ELISTY 2', '1', '5006750', 'SURVEY MIKOROSHINI DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(732, 'SILENCE 2', '1', '5028996', 'MPAKANI WENGE DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(733, 'EBENEZER CAFÉ', '1', '5033741', 'SURVEY KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(734, 'MAMA MANKA CAFÉ', '1', '5043698', 'MISUGUSUGU MLANDIZI PWANI', 0, 0, 0, 3, 1, 0),
(735, 'J CAFÉ', '1', '5037622', 'MISUGUSUGU MLANDIZI PWANI', 0, 0, 0, 3, 1, 0),
(736, 'SAMSON CAFÉ', '1', '5041413', 'MISUGUSUGU PWANI', 0, 0, 0, 3, 1, 0),
(737, 'MOKA 2', '1', '5041391', 'KIBAHA MISUGUSUGU KIBAHA PWANI', 0, 2, 0, 3, 1, 0),
(738, 'CHOMOLA CAFÉ', '1', '5032920', 'MISUGUSUGU MLANDIZI PWANI', 0, 0, 0, 3, 1, 0),
(739, 'WANDEMA CAFÉ', '1', '5014635', 'KIBAHA MLANDIZI PWANI', 0, 0, 0, 3, 1, 0),
(740, 'V. SHIRIMA 2', '1', '5040155', 'MPUNGANI MIKOCHENI B DAR ES SALAAM', 0, 2, 0, 2, 1, 0),
(741, 'PEACE CAFÉ', '1', '5007107', 'MAJEMBE CCK ROAD MIKOCHEN IB DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(742, 'PRISCUS 2', '1', '5007109', 'OSSAMA STREET MIKOCHENI B DAR ES SALAAM', 0, 2, 0, 2, 1, 0),
(743, 'MAMA MAFTAH CAFÉ', '1', '5007261', 'KWA NYERERE MIKOCHENI B DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(744, 'MOHAMED CAFÉ', '1', '5097637', 'MBURAHATI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(745, 'MUDACK CAFÉ', '1', '5022396', 'KITUO KIPYA GONGO LA MBOTO ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(746, 'HARUNA CAFÉ', '1', '5096940', 'KITUO KIPYA ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(747, 'ZEMBWELA CAFÉ', '1', '5036740', 'GONGO LA MBOTO STAND ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(748, 'MACHO CAFÉ', '1', '5037364', 'GONGO LA MBOTO STAND ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(749, 'MAMA IRENE CAFÉ', '1', '5013526', 'MALIASILI GOMGO LA MBOTO ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(750, 'MZAM3AUNI CAFÉ', '1', '5022401', 'MZAM3AUNI GONGO LA MBOTO ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(751, 'MBUZINI CAFÉ', '1', '5037811', 'MZAM3AUNI STREET ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(752, '4PL AGENCIES LTD', '1', '5008948', 'MZAM3AUNI GONGO LA MBOTO ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(753, 'GEMA CAFÉ', '1', '5022297', 'KITUO KIPYA GONGO LA MBOTO ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(754, 'MIKENDO CAFÉ', '1', '5048684', 'UWANJA WA DENGER GOMGO LA MBOTO ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(755, 'MATHAYO CAFÉ', '1', '5037359', 'UKONGA GONGO LA MBOTO DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(756, 'JUMA CAFÉ', '1', '5037357', 'UKONGA GONGO LA MBOTO DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(757, 'FDP CAFÉ', '1', '5003889', 'MAKUMBUSHO STAND KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(758, 'GROLY CAFÉ', '1', '5014842', 'MAKUMBUSHO KIJITONYAMA KINONDONI', 0, 0, 0, 3, 1, 0),
(759, 'ANGELA 2', '1', '5023596', 'MAKUMBUSHO KINONDONI DAR', 0, 2, 0, 3, 1, 0),
(760, 'SAZA  SANA CAFÉ', '1', '5047147', 'KIMANGA KWA SWAI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(761, 'ALOYCE 2', '1', '5001797', 'TABATA KISUKULU KATI  DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(762, 'WEST GARDEN ANNEX 3', '1', '5003089', 'TABATA KISUKULU KWA SWAI DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(763, 'OSAMA 2', '1', '5037345', 'TABATA KIMANGA DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(764, 'SASHA\'S FAST FOOD', '1', '5005920', 'KIMANGA TABATA ILALA', 0, 0, 0, 1, 1, 0),
(765, 'MAMBOLEO CAFÉ', '1', '5011472', 'KIMANGA STAND DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(766, 'NOJEQ HOME CAFÉ', '1', '5008084', 'TABATA KIMANGA STAND DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(767, 'MWANANCHI CAFÉ', '1', '5098877', 'TABATA KIMANGA STAND DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(768, 'ELIA CAFÉ', '1', '5002764', 'TABATA MAWENZI STAND DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(769, 'PIONEER CAFÉ', '1', '5011491', 'KISUKURU BONYOKWA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(770, 'ZENJI RAHA CAFÉ', '1', '5006506', 'KISIWANI MWANANYAMALA KINONDONI DAR ES SALAAM', 3, 0, 0, 2, 1, 0),
(771, 'KAGWINA 3', '1', '5018300', 'MWANANYAMALA KINONDONI', 3, 3, 3, 2, 1, 0),
(772, 'USHINDI FAST FOOD CAFÉ', '1', '5043987', 'MWANAMBOKA MWANANYAMALA KINONDONI DAR ES SALAAM', 3, 0, 0, 2, 1, 0),
(773, 'KIMAMBI 2', '1', '5097586', 'MTONI KIJICHI MIANDE DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(774, 'SAKAS 2', '1', '5007615', 'MTONI KIJICHI BWAWANI DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(775, 'MMARI 2', '1', '5006486', 'MBAGALA KUU JESHI LA WOKOVU DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(776, 'MFINANGA CAFÉ', '1', '5040549', 'MAILIMOJA STAND NJUWENI KIBAHA', 0, 0, 0, 3, 1, 0),
(777, 'JAVISCO 3', '1', '5041400', 'TUMBI KIBAHA COAST REGION', 0, 3, 0, 3, 1, 0),
(778, 'ZULFA CAFÉ', '1', '5047503', 'TUMBI HOSPITAL STAND KIBAHA', 0, 0, 0, 3, 1, 0),
(779, 'NYUMBU 1 CAFÉ', '1', '5047360', 'NYUMBU MSANGANI ROAD KIBAHA', 0, 0, 0, 3, 1, 0),
(780, 'NYUMBU CAFÉ', '1', '5047359', 'MYIKA MSANGANI ROAD KIBAHA', 0, 0, 0, 3, 1, 0),
(781, 'AMINA CAFÉ', '1', '5006758', 'MWENGE GARAGE DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(782, 'MAMA MANDELA CAFÉ', '1', '5039757', 'MWENGE GARAGE DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(783, 'MASAUA 2', '1', '5045268', 'MWENGE NZASA DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(784, 'WALLET ONE FAST FOOD', '1', '5057828', 'TABATA SHULE DAR ES SALAAM', 1, 0, 0, 1, 1, 0),
(785, 'AVIAN & GENERAL CAFÉ', '1', '5006253', 'MWANANYAMALA KINONDONI', 3, 0, 0, 2, 1, 0),
(786, 'MRISHO CAFÉ', '1', '5007804', 'PEACE STREET KINONDONI DAR ES SALAAM', 3, 0, 0, 2, 1, 0),
(787, 'LET CAFÉ', '1', '5044128', 'MWANANYAMALA KWA KOPA KINONDONI', 3, 0, 0, 2, 1, 0),
(788, 'MBONDE 2', '1', '5045135', 'MWANANYAMALA SOKONI KINONDONI DAR ES SALAAM', 3, 2, 0, 2, 1, 0),
(789, 'RAMA 2', '1', '5047103', 'MWANANYAMALA KWA MAMA ZAKARIA DAR ES SALAAM', 3, 2, 0, 2, 1, 0),
(790, 'MAMA ZAI CAFÉ', '1', '5056377', 'ISELE STREET MWANANYAMALA KINONDONI DAR ES SALAAM', 3, 0, 0, 2, 1, 0),
(791, 'UTAMU KOLEA CAFÉ', '1', '5056462', 'KWA KOPA MSIKITINI MWANANYAMALA DAR ES SALAAM', 3, 0, 0, 2, 1, 0),
(792, 'MOME HOTEL', '1', '5005300', 'GOGONI KIBAMBA DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(793, 'KHALFAN CAFÉ', '1', '5097935', 'KIBAMBA CCM KIBAMBA DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(794, 'PANAMA 3', '1', '5001523', 'KIBAMBA CCM KIBAMBA DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(795, 'KEN CAFÉ', '1', '5037641', 'LUGURUNI SHELI KIBAMBA DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(796, 'ST.JOSEPH CANTEEN CAFÉ', '1', '5042866', 'SHELI KIBAMBA KIBAMBA DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(797, 'LEAH CAFÉ', '1', '5092591', 'KIBAMBA KWEMBE DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(798, 'MWAKWINYA CAFÉ', '1', '5092593', 'KIMBAMBA CCM DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(799, 'MWANDIO 3', '1', '5007073', 'BUNJU B STAND KINONDONI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(800, 'PENDO 2', '1', '5007075', 'BUNJU A STAND KINONDONI DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(801, 'MESS 831 CAFÉ', '1', '5049837', 'MBWENI JKT MASAITI BOKO MAGENGENI KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(802, '3IKI 2', '1', '5021635', 'MBWENI MASAITI KINONDONI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(803, 'BANANA CAFÉ', '1', '5007657', 'BANANA GONGO LA MBOTO DAR ES SALAAM', 4, 0, 0, 1, 1, 0),
(804, 'MATATA CAFÉ', '1', '5026120', 'BANANA UKONGA DAR ES SALAAM', 4, 0, 0, 1, 1, 0),
(805, 'JEJERISH CAFÉ', '1', '5096915', 'BANANA BANANA ILALA DAR ES SALAAM', 4, 0, 0, 1, 1, 0),
(806, 'PRINCE TAKE AWAY', '1', '5007370', 'BANANA ILALA DAR ES SALAAM', 4, 0, 0, 1, 1, 0),
(807, 'SIA FAST FOOD', '1', '5011505', 'BANANA MAJUMBA SITA', 4, 0, 0, 1, 1, 0),
(808, 'MAMA SUMA CAFÉ', '1', '5014255', 'SITAKISHARI BANANA UKONGA DAR ES SALAAM', 4, 0, 0, 1, 1, 0),
(809, 'MISHEMISHE CAFÉ', '1', '5006576', 'BANANA ILALA DAR ES SALAAM', 4, 0, 0, 1, 1, 0),
(810, 'JEJERISH CAFÉ', '1', '5037798', 'BANANA ILALA DAR ES SALAAM', 4, 0, 0, 1, 1, 0),
(811, 'BANANA CAFÉ', '1', '5057271', 'BANANA UKONGA ILALA DAR ES SALAAM', 4, 0, 0, 1, 1, 0),
(812, 'JEJERISH CAFÉ', '1', '5037798', 'BANANA UKONGA DAR ES SALAAM', 4, 0, 0, 1, 1, 0),
(813, 'SELE CAFÉ', '1', '5098016', 'CHAMA MIKOCHENI A KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(814, 'DEUSI TAKE AWAY', '1', '5048515', 'KING\'OKO STREET MIKOCHENI A KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(815, 'MUNAWAAR CAFÉ', '1', '5039914', 'MIKOCHENI KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(816, 'JAMES 2', '1', '5047262', 'GEZAULOLE STREET MOKOCHENI A DAR ES SALAAM', 0, 2, 0, 2, 1, 0),
(817, 'HOME BROTHERS CAFÉ', '1', '5008853', 'CHWAKU STREET MIKOCHENI A DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(818, 'ASANTE CAFÉ', '1', '5055224', 'MIKOCHENI A KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(819, 'SUZANA CAFÉ', '1', '5024488', 'KAIRUKI ROAD MIKOCHENI A KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(820, 'TUPENDANE CAFÉ', '1', '5014192', 'TEGETA KIBAONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(821, 'CANNOSA CAFÉ', '1', '5044266', 'TEGETA MASISTER DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(822, 'DULA MIHINDI CAFÉ', '1', '5003941', 'TEGETA MADALE KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(823, 'MANGI 2', '1', '5099775', 'SINZA PALESTINA  KINONDONI DAR ES SALAAM', 0, 2, 0, 2, 1, 0),
(824, 'JOSEPH 2', '1', '5040178', 'PALESTINA SINZA KINONDONI DAR ES SALAAM', 0, 2, 0, 2, 1, 0),
(825, 'WHITE CAFÉ', '1', '5006728', 'SALOON KINYEREZI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(826, 'LUGANO SOFT DRINKS', '1', '5048890', 'SONGASI KINYEREZI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(827, 'LUGANO CAFÉ', '1', '5092769', 'KINYEREZI SONGASI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(828, 'BONGE CAFÉ', '1', '5040832', 'TABATA SEGEREA SHELI ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(829, 'WHITE PUB', '1', '5099286', 'TABATA SANENE ILALA DAR ES SALAAM', 0, 0, 3, 1, 1, 0),
(830, 'FORBES BITES & BBQ', '1', '5049239', 'TABATA 3ACUDA DAR ES SALAAM', 0, 0, 3, 1, 1, 0),
(831, 'FAMILY 2', '1', '5097451', 'TABATA 3ACUDA DAR ES SALAAM', 0, 2, 3, 1, 1, 0),
(832, 'MAMBA 2', '1', '5040885', 'TABATA 3ACUDA DAR ES SALAAM', 0, 2, 3, 1, 1, 0),
(833, 'ONESMO CAFÉ', '1', '5005948', 'DARAJANI SWEET CORNER KINONDONI', 0, 0, 0, 2, 1, 0),
(834, 'MTANZANIA HOTEL', '1', '5043096', 'TANDALE UZURI SHULE KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(835, 'TRIPPLE D CAFÉ', '1', '5037589', 'CHALINZE BWLINGU PWANI', 0, 0, 0, 3, 1, 0),
(836, 'BABA VV 2', '1', '5007249', 'CHALINZE PERA BAGAMOYO', 0, 2, 0, 3, 1, 0),
(837, 'NEW MK PUB', '1', '5047132', 'CHALINZE MDAULA BAGAMOYO', 0, 0, 0, 3, 1, 0),
(838, 'MAMA MJESHI CAFÉ', '1', '5037600', 'CHALINZE BWILINGU PWANI', 0, 0, 0, 3, 1, 0),
(839, 'PWANI CAFE', '1', '5047874', 'CHALINZE BWILINGU PWANI', 0, 0, 0, 3, 1, 0),
(840, 'MAMA LEILA CAFÉ', '1', '5032613', 'MAGINDU CHALINZE PWANI', 0, 0, 0, 3, 1, 0),
(841, 'SHAMLANGI RESTAURANT', '1', '5098321', 'CHALINZE MDAULA BAGAMOYO', 0, 0, 0, 3, 1, 0),
(842, 'KIANGI GROCERY', '1', '5098391', 'CHALINZE MSOLWA BAGAMOYO', 0, 0, 0, 3, 1, 0),
(843, 'BABU MAGINDU CAFÉ', '1', '5037596', 'CHALINZE BWILINGU PWANI', 0, 0, 0, 3, 1, 0),
(844, 'PHAMACY 3', '1', '5099027', 'KIMARA MWISHO DAR', 0, 3, 0, 3, 1, 0),
(845, 'NJAU 2', '1', '5025661', 'KIMARA MATANGINI DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(846, 'MAMA ASENGA 2', '1', '5012675', 'KIMARA MATANGINI DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(847, 'KENGE PUB', '1', '5028127', 'KIMARA 3A3A YA KING\'ONG\'O DAR', 0, 0, 0, 3, 1, 0),
(848, 'MUNIRA RESTAURANT', '1', '5099088', 'MANZESE MNAZI MMOJA KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(849, 'WINI 2', '1', '5056585', 'UBUNGO MANZESE DAR ES SALAAM', 0, 2, 0, 2, 1, 0),
(850, 'FOOD FOR LIFE CAFÉ', '1', '5099882', 'FERRY KIGAMBONI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(851, 'NEW TOTTY 2', '1', '5047347', 'FERRY KIGAMBONI DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(852, 'CONTAINER 3', '1', '5047199', 'FERRY KIGAMBONI DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(853, 'MORAUYA FOOD STUFF', '1', '5092748', 'KIGAMBONI FERRY DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(854, 'HAMIDU 2', '1', '5005887', 'KIBANGU UBUNGO DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(855, 'RUKIA CAFÉ', '1', '5011954', 'KIBANGU UBUNGO DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(856, 'USTADHI CAFÉ', '1', '5041350', 'TABATA AREA KINONDONI', 0, 0, 0, 1, 1, 0),
(857, 'SOPHIA CAFÉ', '1', '5007483', 'TABATA AREA KINONDONI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(858, 'HAMADI CAFÉ', '1', '5007471', 'TABATA AREA KINONDONI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(859, 'MASAKI 2', '1', '5007517', 'TABATA AREA KINONDONI DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(860, 'MWALIMU MPEMBA CAFÉ', '1', '5007511', 'TABATA AREA KINONDONI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(861, 'MJUNI CAFÉ', '1', '5004156', 'NDUMBIKO KIBANGU UBUNGO', 0, 0, 0, 1, 1, 0),
(862, 'MA JIMMY CAFÉ', '1', '5034054', 'TABATA AREA KINONDONI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(863, 'MAMA SKOLA CAFÉ', '1', '5099790', 'KANISANI KIBANGU UBUNGO DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(864, 'KING\'OLOMBI SOFT DRINKS', '1', '5098291', 'TABATA AREA KINONDONI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(865, 'KINTIKU CAFÉ', '1', '5040992', 'TABATA AREA KINONDONI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(866, 'MTEMI GROCERY', '1', '5038542', 'TABATA AREA KINONDONI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(867, 'MELAND CAFÉ', '1', '5032963', 'MCHACHANI KIBANGU UBUNGO DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(868, 'LYIMO FAST FOOD', '1', '5092860', 'MAKOKA KWA MKUWA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(869, 'VICTOR 2', '1', '5003086', 'SHELL YA WADADU KIVULE DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(870, 'BUSTANI YA EDEN CAFÉ', '1', '5097146', 'MATEMBELE YA PILI KIVULE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(871, 'MAMA KELVIN CAFÉ', '1', '5002880', 'MATEMBELE YA PILI KIVULE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(872, 'AMMY CAFÉ', '1', '5009139', 'UKONGA MAZIZINI RELINI STAND DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(873, 'CHUMA CAFÉ', '1', '5097164', 'MOSHI 3 UKONGA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(874, 'LEMIRA CAFÉ', '1', '5098514', 'MOSHI 3 UKONGA ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(875, 'ELCOCONUT CAFÉ', '1', '5038540', 'KUNDUCHI KINZUDI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(876, 'KHAD TWINS CAFÉ', '1', '5006648', 'MBEZI SALASALA AFRICANA DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(877, 'MWEMBENI CAFÉ', '1', '5032866', 'KUNDUCHI MTAKUJA MTONGANI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(878, 'MPEMBA CAFÉ', '1', '5044294', 'MTONGANI KUNDUCHI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(879, 'CLINTON 2', '1', '5047082', 'SALASALA MBEZI DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(880, 'MESHACK CAFÉ', '1', '5006198', 'KUNDUCHI MTONGANI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(881, '3AKA 2', '1', '5004059', 'MWENGE KIJIJINI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(882, 'MAMA B CAFÉ', '1', '5032921', 'MWENGE KIJIJINI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(883, 'KANJE 2', '1', '5046407', 'MWENGE BAMAGA DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(884, 'SHIRIMA 2', '1', '5044479', 'MWENGE BAMAGA DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(885, 'ALPHEMY CAFÉ', '1', '5017371', 'MWENGE BAMAGA DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(886, 'BI UBWA CAFÉ', '1', '5047020', 'MWENGE TRA KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(887, 'LOVERS CAFÉ', '1', '5032784', 'MWENGE BAMAGA DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(888, 'ANNA 2', '1', '5004077', 'MWENGE KIJIJINI DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(889, 'DECENT SCHOOL CAFÉ', '1', '5032228', 'MWENGE KIJIJINI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(890, 'WILLY 2', '1', '5043389', 'MWENGE KIJIJINI DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(891, 'NAKAYA PUB', '1', '5004195', 'MWENGE KIJIJINI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(892, 'WHITE PARROT CAFÉ', '1', '5041368', 'MAJI MATUTU MALI ASILI MABAGALA TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(893, 'MARIAM CAFÉ', '1', '5000697', 'MBAGALA MAGENGENI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(894, 'YALLOW CAFÉ', '1', '5097589', 'CHARAMBE MAKONDEKO MACHINJIONI MBAGALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(895, 'KARAFUU CAFÉ', '1', '5005147', 'MBAGALA CHARAMBE MAGENGENI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(896, 'FOR NICE CAFÉ', '1', '5044247', 'MBAGALA CAHARAMBE KWA MBIKU TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(897, 'RAMA CAFÉ', '1', '5022295', 'MBAGALA CHARAMBE MATITU DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(898, 'EMIRATE CAFÉ', '1', '5003446', 'CHABOKO KWA MBIKU MBAGALA DAR', 0, 0, 0, 1, 1, 0),
(899, 'MNAENDAJE CAFÉ', '1', '5007859', 'MABAGALA KILUNGULE MWISHO DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(900, 'KASSIM CAFÉ', '1', '5027669', 'CHARAMBE MAGENGENI MBAGALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(901, 'MNAZI MMOJA CAFÉ', '1', '5047697', 'SINZA KWAREMI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(902, 'DEO CAFÉ', '1', '5037024', 'SINZA WHITE  INN DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(903, 'YASIN CAFÉ', '1', '5041513', 'SINZA WHITE INN KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(904, 'GRAM BOX SALOON', '1', '5044991', 'MADAKTARI STREET MASAKI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(905, 'NGOSHA CAFÉ', '1', '5025928', 'MOROGORO STORE MASAKI KINONDONI', 0, 0, 0, 2, 1, 0),
(906, 'MAMA NYONI CAFÉ', '1', '5034847', 'CHOLE STREET MASAKI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(907, 'RECHO CAFÉ', '1', '5099271', 'CHOLE STREET MASAKI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(908, 'TEST OF MEXICAN CAFÉ', '1', '5008655', 'DOUBLE TREE MASAKI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(909, 'SHAFII TAKE AWAY', '1', '5003359', 'SUPER MASAKI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(910, 'ABRAHAM CAFÉ', '1', '5012783', 'MSASANI MASAKI KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(911, 'MTUMISHI CAFÉ', '1', '5016982', 'NGORONGORO MASAKI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(912, 'KISAMBA CAFÉ', '1', '5004166', 'SINZA MUGABE KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(913, 'MADIKODIKO CAFÉ', '1', '5097626', 'SINZA SHEKILANGO KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(914, 'LETISIA CAFÉ', '1', '5008674', 'MSASANI MWISHO KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(915, 'MOHAMED CAFÉ', '1', '5016278', 'MSASANI GONGONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(916, 'LIU CAFÉ', '1', '5022805', 'MSASANI NAMANGA KIMWERI ROAD DAR', 0, 0, 0, 2, 1, 0),
(917, 'UISO CAFÉ', '1', '5006163', 'MSASANI MAANDAZI ROAD DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(918, 'MAMA RAY CAFÉ', '1', '5006103', 'MSASANI KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(919, 'MING CAFÉ', '1', '5006186', 'MSASANI NAMANGA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(920, 'IDDI CAFÉ', '1', '5097991', 'MSASANI MADUKA MAWILI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(921, 'MAMA COCA CAFÉ', '1', '5034418', 'MSASANI TIDO DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(922, 'ALOLE INVESTMENT', '1', '5099111', 'MSASANI MACHO ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(923, 'KAZI HOUSE', '1', '5021855', 'CITY CENTRER AZIKIWE DAR', 0, 0, 3, 2, 1, 0),
(924, 'UMAKI CAFÉ', '1', '5041175', 'POSTA   GHANA STREET DAR ES SALAAM', 0, 0, 3, 2, 1, 0),
(925, 'GAPCO CAFÉ', '1', '5037330', 'POSTA AZIKIWE DAR ES SALAAM', 0, 0, 3, 2, 1, 0),
(926, 'MKANGE CAFÉ', '1', '5035489', 'POSTA KIVUKONI DAR', 0, 0, 0, 2, 1, 0),
(927, 'PENDO CAFÉ', '1', '5007174', 'POSTA KIVUKONI DAR', 0, 0, 0, 2, 1, 0),
(928, 'FURAHA CAFÉ', '1', '5037268', 'CITY CENTRE KIVUKONI ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(929, 'MTWANA CAFÉ', '1', '5007175', 'POSTA SOKOINE DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(930, 'MKOKOTA CAFÉ', '1', '5035179', 'POSTA MAGOROFANI DAR', 0, 0, 0, 2, 1, 0),
(931, 'PAULO CAFÉ', '1', '5038531', 'POSTA MAGOGONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(932, 'MOKA CITY CAFÉ', '1', '5012768', 'POSTA SAMORA STREET DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(933, 'MUKESHI CAFE', '1', '5031088', 'SAMORA CITY CENTER DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(934, 'ABAYANGO CAFÉ', '1', '5098358', 'MAGOMENI RUAHA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(935, 'NASSAM CAFÉ', '1', '5055538', 'MIKUMI HOSPITAL MAGOMENI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(936, 'MIKUMI FAST FOOD', '1', '5048009', 'MAGOMENI MIKUMI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(937, 'ALLY CAFÉ', '1', '5012823', 'MAGOMENI KIMAMBA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(938, 'WAGOSI CAFÉ', '1', '5098188', 'MAGOMENI KAGERA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(939, 'DAR MODERN TAARABU 2', '1', '5047460', 'MAGOMENI MUTAMBANI', 0, 2, 0, 2, 1, 0),
(940, 'CANALI CAFÉ', '1', '5041705', 'KIGOGO MBUYUNI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(941, 'ALLY CAFÉ', '1', '5056597', 'MAGOMENI MWEMBE CHAIKINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(942, 'MSHANA CAFÉ', '1', '5031734', 'KIMARA BONYOKWA DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(943, 'MASSAWE 2', '1', '5005352', 'KIMARA SARANGA DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(944, '5N 3', '1', '5014390', 'KIMARA SUKA DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(945, 'DF CAFÉ', '1', '5032604', 'MBEZI KWA MPIJI MAGOE DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(946, 'ABDUL CAFÉ', '1', '5014696', 'MBEZI MWISHO DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(947, 'SAFARI PARK', '1', '5042255', 'MBEZI LUIS KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(948, 'MERY 2', '1', '5007692', 'MBEZI LUIS KINONDONI DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(949, 'DARAJANI CAFÉ', '1', '5008860', 'MBEZI KWA MSIGANI MARAMBA DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(950, 'MAMA MAZIWA CAFÉ', '1', '5092583', 'MBEZI LUIS NJIA PANDA YA MAKABE DAR', 0, 0, 0, 3, 1, 0),
(951, 'TYSON CAFÉ', '1', '5006281', 'MAKANYA MAGOMENI KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(952, 'AMNE CAFÉ', '1', '5006325', 'KONDOA MAGOMENI KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(953, 'JAY TAKE AWAY CAFÉ', '1', '5006372', 'MLALI MAKANYA MAGOMENI KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(954, 'ALAPHA CAFÉ', '1', '5036220', 'MAKANYA MAGOMENI KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(955, 'TUMAINI CAFÉ', '1', '5047954', 'MAGOMENI KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(956, 'A.M CAFÉ', '1', '5013966', 'POPOBAWA MAGOMENI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(957, 'DARAJANI CAFÉ', '1', '5039547', 'MTONI KWA AZIZI ALLY TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(958, 'MAMA PENDO CAFÉ', '1', '5022872', 'MTONI KWA AZIZI ALLY TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(959, 'NGOSHA CAFÉ', '1', '5019573', 'SIFA MTONI TEMEKE DA ES SALAAM', 0, 0, 0, 1, 1, 0),
(960, 'KIDEVU CAFÉ', '1', '5037174', 'MTONI ZEBRA TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(961, 'MJ CAFÉ', '1', '5037120', 'MTONGANI STAND YA SHAMBA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(962, 'STANDARD CAFÉ', '1', '5018400', 'SUDAN TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(963, 'A & R CATERING', '1', '5022320', 'ROUND ABOUT KILWA ROAD GEREZANI DAR ES SALAAM', 2, 0, 0, 2, 1, 0),
(964, 'MUBA CAFÉ', '1', '5046939', 'KIPATA GEREZANI KARIAKOO DAR ES SALAAM', 2, 0, 0, 2, 1, 0),
(965, 'KISAKA CAFÉ', '1', '5046944', 'M3UKU GEREZANI DAR ES SALAAM', 2, 0, 0, 2, 1, 0),
(966, 'SHULE YA SECONDARY UHURU MCHANGANYIKO', '1', '5012786', 'UHURU GEREZANI DAR ES SALAAM', 2, 0, 0, 2, 1, 0),
(967, 'NEEMA CAFÉ', '1', '5005662', 'UHURU GEREZANI DAR ES SALAAM', 2, 0, 0, 2, 1, 0),
(968, 'SOPHY CAFÉ', '1', '5000360', 'SOMALI GEREZANI DAR ES SALAAM', 2, 0, 0, 2, 1, 0),
(969, 'MAMA MKWE CAFÉ', '1', '5037431', 'VINGUNGUTI MIEMBENI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(970, 'SHUGHULI CAFÉ', '1', '5009137', 'VINGUNGUTI FIDAH DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(971, 'TUKUTANE CAFÉ', '1', '5032107', 'UWANJA WA NDEGE MOGO DAR', 0, 0, 0, 1, 1, 0),
(972, 'KHAMIS CAFÉ', '1', '5099164', 'VINGUNGUTI KOMBO DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(973, 'AMI CAFÉ', '1', '5027926', 'MNYAMANI VINGUNGUTI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(974, 'MKOMBOZI CAFE', '1', '5039038', 'PELAPELA VINGUNGUTI ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(975, 'N AND H CAFÉ', '1', '5005600', 'UWANJA WA NDEGE  POSTA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(976, 'PLATNUM 3', '1', '5033492', 'TABATA KISIWANI DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(977, 'WANGU CAFTERIA', '1', '5007828', 'MABIBO MAGOMENI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(978, 'SAADA CAFÉ', '1', '5037141', 'MABIBO MAGOMENI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(979, 'SAHARA CATERING & SERVICE CAFÉ', '1', '5007847', 'MABIBO SAHARANI MAGOMENI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(980, 'CHURCH CAFÉ', '1', '5097223', 'MABIBO FARASI MAGOMENI KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(981, 'MAMA AMINA CAFÉ', '1', '5056277', 'MABIBO FARASI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(982, 'MEMA WOMEN ORGAZATION(MEWOTA) CAFÉ', '1', '5055530', 'MABIBO FARASI UBUNGI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(983, 'DIVA CAFÉ', '1', '5037213', 'MABIBO MAGOMENI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(984, 'STELLA CAFÉ', '1', '5022568', 'MABIBO MAGOMENI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(985, 'SWAIBA CAFÉ', '1', '5047493', 'MABIBO MAGOMENI KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(986, 'NIT COMMUNITY CAFÉ', '1', '5024684', 'MABIBO MAGOMENI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(987, 'HUSNA CAFÉ', '1', '5008966', 'KINYANTIRA STENDI ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(988, 'SEBASTIAN CAFÉ', '1', '5092798', 'KINYANTILE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(989, 'MAMA DERICK CAFÉ', '1', '5092800', 'KITUNDA MATEMBELE YA KWANZA DAR', 0, 0, 0, 1, 1, 0),
(990, 'SHIRIMA 2', '1', '5046093', 'KIJITONYAMA AFRICA SANA DAR ES SALAAM', 0, 2, 0, 2, 1, 0),
(991, 'SB 3BECUE', '1', '5055715', 'AFRICASANA MABATINI DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(992, 'CONTENA CAFÉ', '1', '5044011', 'AIRTEL MOROCCO KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(993, 'ESTER CAFÉ', '1', '5001271', 'UBALOZI KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(994, 'LATINA PARLOUR CAFÉ', '1', '5001750', 'AIRTEL MOROCCO KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(995, 'EDDIE CAFÉ', '1', '5040996', 'MTAMBANI KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(996, 'EDDY BONGE CAFÉ', '1', '5056288', 'MTAMBANI KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(997, 'FATUMA CAFÉ', '1', '5041540', 'MTAMBANI KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(998, 'MPEMBA CAFÉ', '1', '5099729', 'KISUTU KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(999, 'MAMA STEPHEN CAFÉ', '1', '5038484', 'MTAMBANI KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1000, 'CHAR\'S CAFÉ', '1', '5041293', 'MANYANYA KINONDONI ', 0, 0, 0, 2, 1, 0),
(1001, 'ALAWA CAFÉ', '1', '5012770', 'MWEMBEJINI KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1002, 'RASHID CAFÉ', '1', '5097653', 'TOGO KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1003, 'MWAIPOPO CHIPS', '1', '5022524', 'CITY CENTER BIBI TITI  DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1004, 'JUMA 2', '1', '5056656', 'CITY CENTRE KISUTU SOKONI DAR ES SALAAM', 0, 2, 3, 2, 1, 0),
(1005, 'FANYA FASTA FAST FOOD', '1', '5004653', 'BASIHAYA KINONDONI', 0, 0, 0, 3, 1, 0),
(1006, 'VICENT CAFÉ', '1', '5041160', 'BOKO BASIHAYA', 0, 0, 0, 3, 1, 0),
(1007, 'THABI CAFÉ', '1', '5041272', 'BOKO DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1008, 'DORCAS CAFÉ', '1', '5039784', 'TEGETA NYUKI KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1009, 'MAU CAFÉ', '1', '5057044', 'TEGETA NYUKI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1010, 'MAMA KAMBENJU CAFÉ', '1', '5008877', 'YOMBO BUZA KANISANI TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1011, 'MAMA SEBO CAFÉ', '1', '5004711', 'TEMEKE MASHINE YA MAJI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1012, 'MAMA SARAH CAFÉ', '1', '5005431', 'MASHINE YA MAJI TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1013, 'SIGNEX CAFÉ', '1', '5007911', 'TEMEKE YOMBO BUZA KANISANI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1014, 'SALMA CAFÉ', '1', '5022330', 'TEMEKE YOMBO ABIOLA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1015, 'DOUBLE K CAFÉ', '1', '5014944', 'YOMBO MAKANGARAWE TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1016, '1 ROSE CAFÉ', '1', '5042290', 'JOGOO STREET MBEZI BEACH DA ES SALAAM', 0, 0, 0, 3, 1, 0),
(1017, 'VOROGWE 2', '1', '5006440', 'MBAGALA KUU KICHEMCHEM DAR ES ALAAAM', 0, 2, 0, 1, 1, 0),
(1018, 'AMALI CENTRE 2', '1', '5012571', 'TOANGOMA MSIKITINI KONGOWE DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(1019, 'JAFARI 2', '1', '5096789', 'KIBELEWELE KONGOWE DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(1020, 'DALWESH CAFÉ', '1', '5098275', 'MZINGA KONGOWE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1021, 'SAMIR CAFÉ', '1', '5038233', 'MZINGA KONGOWE MBAGALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1022, 'MWANGA 2', '1', '5002930', 'MZINGA KONGOWE MBAGALA DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(1023, 'KIMARO  2', '1', '5047319', 'MZINGA KONGOWE MBAGALA DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(1024, 'MAMA MIRAJI CAFÉ', '1', '5003453', 'KANISANI KONGOWE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1025, 'MATERU NON TRADE', '1', '5002920', 'BAKWATA KONGOWE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1026, 'BAYAN CAFÉ', '1', '5056885', 'MIKWAMBE MWAPEMBA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1027, 'RMH CAFÉ', '1', '5056884', 'MIKWAMBE MWAPEMBA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1028, 'KIBADEN CAFÉ', '1', '5099055', 'CHANIKA LUBAKAYA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1029, 'MAPUTO RESTAURANT', '1', '5006405', 'MSUMBIJI ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1030, 'MSAFIRI 2', '1', '5044679', 'CHANIKA BUYUNI ILALA', 0, 2, 0, 1, 1, 0),
(1031, 'MKUFYA GARDEN ENTRPRISES', '1', '5038573', 'CHANIKA ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1032, 'MASIAGA CAFÉ', '1', '5042144', 'URAMBO STREET UPANGA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1033, 'FINEST RESTAURANT', '1', '5049633', 'MUHIMBILI STREET UPANGA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1034, 'DM CAFÉ CATERING SERVICES', '1', '5017452', 'UPANGA MUHIMBILI ROUND ABOUT ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1035, 'DM CAFÉ CATERING SERVICES', '1', '5012454', 'UPANGA MAGHARIBI ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1036, 'MOI CAFÉ', '1', '5056523', 'UPANGA MUHIMBILI ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1037, 'MUSSA CAFÉ', '1', '5033381', 'MKUNGUNI LIKOMA STREET KARIAKOO ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1038, 'MAMA DONA CAFÉ', '1', '5014294', 'MZIZIMA KARIAKOO DAR', 0, 0, 0, 2, 1, 0),
(1039, 'ZUWENA CAFÉ', '1', '5005253', 'TANDAMTI STREET KARIAKOO DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1040, 'SAFARI CAFÉ', '1', '5099723', 'NDANDA STREET KARIAKOO ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1041, 'ALIS CAFÉ', '1', '5007653', 'NDANDA STREET KARIAKOO DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1042, 'MUIPA CAFÉ', '1', '5007652', 'AGREY STREET KARIAKOO DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1043, 'SAID CAFÉ', '1', '5007547', 'TANDAMTI STREET KARIAKOO DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1044, 'JUMANNE CAFÉ', '1', '5007550', 'TANDAMTI STREET KARIAKOO DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1045, 'MMANDA CAFÉ', '1', '5008061', 'MCHIKICHINI ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1046, 'TWAHA CAFÉ', '1', '5007549', 'NYAMWEZI STREET KARIAKOO DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1047, 'OMAR CAFÉ', '1', '5056541', 'NYAMWEZI STREET KARIAKOO ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1048, 'KHALID II 2', '1', '5039688', 'LUMUMBA STREET KARIAKOO DAR ES SALAAM', 0, 2, 0, 2, 1, 0),
(1049, '900 INAPENDEZA CAFÉ', '1', '5003493', 'KARIAKOO AGGREY DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1050, 'MAMA LEILA CAFÉ', '1', '5002115', 'PEMBA KARIAKOO ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1051, 'MAMA MIRE CAFÉ', '1', '5040365', 'SUKUMA KARIAKOO ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1052, 'SALIMA CAFÉ', '1', '5099981', 'KARIAKOO LUMUMBA ', 0, 0, 0, 2, 1, 0),
(1053, 'AWADHI REST', '1', '5017268', 'KARIAKOO MAFIA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1054, 'MANYEMA CAFÉ', '1', '5004828', 'KARIAKOO MAFIA ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1055, 'MAFYA CAFÉ', '1', '5055341', 'MAFYA KARIAKOO DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1056, 'MATELEKA CAFÉ', '1', '5099899', 'PEMBA STREET KARIAKOO DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1057, 'MAMA MWITA CAFÉ', '1', '5005641', 'SIKUKUU KARIAKOO DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1058, 'CUZZINA 17 CAFÉ', '1', '5007539', 'KARIAKOO MAFIA DAR', 0, 0, 0, 2, 1, 0),
(1059, 'MAMA RICH CAFÉ', '1', '5003784', 'KARIAKOO LIVINGSTONE DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1060, 'STAR CAFÉ', '1', '5005627', 'KARIAKOO KARIAKOO ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1061, 'REHEMA CAFÉ', '1', '5008092', 'TANDAMTI KARIAKOO DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1062, 'RK RESTAURANT CATERY', '1', '5002972', 'TANDIKA UGWENO TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1063, '3CELONA CAFÉ', '1', '5003412', 'TANDIKA KILIMAHEWA TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1064, 'BEST CAFÉ', '1', '5002610', 'TANDIKA BEREGE TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1065, 'CITY COLLAGE CANTEEN', '1', '5014424', 'TANDIKA BANDARI TEMEKE', 0, 0, 0, 1, 1, 0),
(1066, 'CHAU RAY CAFÉ', '1', '5037253', 'TANDIKA MPOGO DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1067, 'SWAHIBA CAFÉ', '1', '5048501', 'TANDIKA SOKONI TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1068, 'KIGOGO 2', '1', '5007172', 'TANDIKA FOMA TEMEKE DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(1069, 'CENTURIO CAFÉ', '1', '5002971', 'TANDIKA KIPUNGO DAR ES SLAM', 0, 0, 0, 1, 1, 0),
(1070, 'NAKHLAT CAFÉ', '1', '5003416', 'TANDIKA VIANIZA TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1071, 'ZAINA CAFÉ', '1', '5005601', 'BUBUBU TANDIKA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1072, 'HAMIDA CAFÉ', '1', '5002791', 'TANDIKA MASOKO TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1073, 'KITUNDA CAFÉ', '1', '5008876', 'TANDIKA KITUNDA TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1074, 'SOUDY CAFÉ', '1', '5006056', 'TANDIKA MASOKO TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1075, 'MAMA FARIDA CAFÉ', '1', '5097733', 'KIWALANI JET TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1076, 'MAMA SONDA CAFÉ', '1', '5022527', 'KIWALANI KWA GUDE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1077, 'BORN 2', '1', '5027854', 'YOMBO VITUKA YOMBO MALAWI DAR', 0, 2, 0, 1, 1, 0),
(1078, 'NYAMIZI CAFÉ', '1', '5042024', 'KIWALANI MNARA WA TIGO DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1079, 'MAKUNDI CAFÉ', '1', '5045724', 'MBAGALA KIZUIANI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1080, 'MAMA ADERA CAFÉ', '1', '5010943', 'MBAGALA KIZUIANI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1081, 'STEVE WONDER CAFÉ', '1', '5032973', 'MBAGALA KIZUIANI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1082, 'G7 CAFÉ', '1', '5004838', 'MBAGALA KIZUIANI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1083, 'BABU BEKA CAFÉ', '1', '5056521', 'MBAGALA KIZUIANI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1084, 'MAMA MSANGI CAFÉ', '1', '5002777', 'SABASABA MBAGALA', 0, 0, 0, 1, 1, 0),
(1085, 'DOLPHIN CAFÉ', '1', '5044060', 'MBAGALA SABASABA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1086, 'SUBIRA CAFÉ', '1', '5022769', 'MBAGALA KIZINGA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1087, 'RAHIMA CAFÉ', '1', '5010860', 'MBAGALA MISSION DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1088, 'MAMA MWANANA CAFÉ', '1', '5036935', 'MBAGALA SABASABA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1089, 'PRISCA CAFÉ', '1', '5035743', 'MBAGALA SABASABA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1090, 'AILE CAFÉ', '1', '5044946', 'MBAGALA MISSION DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1091, 'RAHMA CAFÉ', '1', '5047317', 'MBAGALA MISSION DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1092, 'NGWELE CAFÉ', '1', '5044789', 'MISSION MBAGALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1093, 'MAMA WAWILI CAFÉ', '1', '5011917', 'MBAGALA SABASABA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1094, 'ISLAM CAFÉ', '1', '5056316', 'LIKWATI TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1095, 'MARIAM CAFÉ', '1', '5002538', 'WAILES TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1096, 'FULL SHANGWE CAFETERIA', '1', '5022549', 'TEMEKE MAGURUWE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1097, 'FULL SHANGWE CAFETERIA', '1', '5022545', 'TEMEKE YOMBO DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1098, 'BUNIE MILK CENTRE', '1', '5002552', 'MKUMBA TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0);
INSERT INTO `outlet` (`outlet_id`, `outlet_name`, `outlet_type`, `outlet_no`, `location`, `occd_id`, `chan_id`, `route_id`, `reg_id`, `district_id`, `salesrep_id`) VALUES
(1099, 'ROYOSHA CAFÉ', '1', '5032753', 'TEMEKE MAHINDA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1100, 'MAMA MANDELA CAFÉ', '1', '5032750', 'TEMEKE SOKOTA MANDELA ROAD DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1101, 'MAMA RAFII CAFE', '1', '5035771', 'TAVETA TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1102, 'MAMA AMINA CAFÉ', '1', '5040477', 'NJINJO TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1103, 'GULF CAFÉ', '1', '5040254', 'WAILES TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1104, 'ANSILA CAFÉ', '1', '5002340', 'SUDAN TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1105, 'MAMA FRANK CAFÉ', '1', '5040496', ' STEREO TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1106, 'SHARIF INVESTMENT', '1', '5005513', 'NJINJO TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1107, 'MTUPA CAFÉ', '1', '5048536', 'TEMEKE HOSPITAL STEREO DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1108, 'MTUPA CAFÉ', '1', '5040504', 'TEMEKE TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1109, '3KE CAFÉ', '1', '5011392', 'TEMEKE KIKALE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1110, 'M\'BEZI CAFÉ', '1', '5003429', 'MATITU MBAGALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1111, 'KIPOLO CAFÉ', '1', '5032384', 'MBAGALA MBAGALA SHULE DAR ES  SALAAM', 0, 0, 0, 1, 1, 0),
(1112, 'MAMA K CAFE', '1', '5023176', 'CHARAMBE MBAGALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1113, 'MAMA DEBORA CAFÉ', '1', '5002868', 'MBAGALA ZAKHEM DA ES SALAAM', 0, 0, 0, 1, 1, 0),
(1114, 'DUKA KUBWA 2', '1', '5002761', 'MBAGALA CHARAMBE MANCHESTER TEMEKE DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(1115, 'DAR LIVE CAFÉ', '1', '5045799', 'MBAGALA ZAKHEM DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1116, 'DASHE CAFÉ', '1', '5002756', 'MBAGALA RANGI TATU DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1117, 'MAMA SAMWEL CAFÉ', '1', '5002886', 'MBAGALA ZAKHEM DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1118, 'MBAGARA 2PING CENTRE', '1', '5002905', 'MBAGARA RANGI TATU DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(1119, 'MASAKU PUB', '1', '5044800', 'RANGI TATU MBAGALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1120, 'SALMA CAFÉ', '1', '5093071', 'MBAGALA RANGITATU TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1121, 'SULVAN CAFÉ', '1', '5043945', 'KEKO MWANGA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1122, 'MAMA MAGORE CAFÉ', '1', '5011340', 'TAIFA KEKO TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1123, 'LUTARANANE CAFÉ', '1', '5011920', 'CHANG\'OMBE BORA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1124, 'MTUKULA CAFÉ', '1', '5099101', 'MTUKULA CHANG\'OMBE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1125, 'FAMILY CAFÉ', '1', '5038242', 'MGULANI CHANG\'OMBE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1126, 'ALUWIYA CAFÉ', '1', '5019572', 'TAIFA STREET TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1127, 'MTILADHA CAFÉ', '1', '5016601', 'MAENDELEO ROAD CHANG\'OMBE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1128, 'NJAU CAFÉ', '1', '5021015', 'KURASINI TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1129, 'MAMA KOMBA CAFÉ', '1', '5041549', 'KURASINI TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1130, 'SANGAWE 2', '1', '5006607', 'TEMEKE STEREO DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(1131, 'MALAWI CARGO CAFÉ', '1', '5047482', 'KURASINI BANDARI TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1132, 'MASTER 2', '1', '5022325', 'UHASIBU TEMEKE DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(1133, 'MAPUNDA CAFÉ', '1', '5032864', 'MIVINJENI TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1134, 'BPSHED CANTEEN(TPA)', '1', '5007835', 'BANDARI TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1135, 'CHAMALAMA CAFÉ', '1', '5022328', 'TEMEKE YOMBO DOVYA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1136, 'ZAINABU CAFÉ', '1', '5022995', 'YOMBO KIWALANI RELINI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1137, 'KAIRUKI CAFETERIA', '1', '5040698', 'MIKOCHENI KAIRUKI KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1138, 'MGAYA CAFÉ', '1', '5022294', 'MTONI STAND YA SHAMBA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1139, 'JWTZ KIMBIJI CANTEEN', '1', '5044939', 'KIGAMBONI KIMBIJI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1140, 'MASSAWE 2', '1', '5008353', 'CHANG\'OMBE STREET TABATA DAR ES SALAAM', 1, 2, 0, 1, 1, 0),
(1141, 'MAMA LISHE UDSM', '1', '5024112', 'CHUO KIKUU UDSM KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1142, 'VODACOM CANTEEN 2', '1', '5032427', 'MLIMANI CITY KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1143, 'VODACOM CANTEEN', '1', '5000709', 'MLIMANI CITY KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1144, 'VODACOM CANTEEN', '1', '5000709', 'MLIMANI CITY KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1145, 'BIDCO CANTEEN', '1', '5043108', 'VIWANDANI MIKOCHENI B KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1146, 'SEIF ZAHOR 2', '1', '5008053', 'KWA MWINYI MIKOCHENI B KINONDONI DAR ES SALAAM', 0, 2, 0, 2, 1, 0),
(1147, 'KAMPALA CANTEEN', '1', '5012098', 'UKONGA GONGO LA MBOTO DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1148, 'NYUMBU OFFICERS CANTEEN', '1', '5047363', 'NYIKA MSANGANI ROAD KIBAHA', 0, 0, 0, 3, 1, 0),
(1149, 'AVIATION CANTEEN', '1', '5035050', 'BANANA DAR ES SALAAM', 4, 0, 0, 1, 1, 0),
(1150, 'TIPPER AKO CATERING CANTEEN', '1', '5099194', 'TIPPER KIGAMBONI TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1151, 'ROYAL SOAP CANTEEN', '1', '5043301', 'TABATA AREA KINONDONI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1152, 'MWANANCHI CANTEEN', '1', '5007513', 'TABATA AREA KINONDONI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1153, 'KKKT CHURCH CANTEEN', '1', '5016439', 'TABATA AREA KINONDONI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1154, 'EPZA CANTEEN', '1', '5043775', 'MANDELA ROAD DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1155, 'ST.GASPER CANTEEN', '1', '5044593', 'KUNDUCHI BEACH DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1156, 'PROCE CANTEEN', '1', '5031373', 'CITY CENTER POSTA DAR ES SALAAM', 0, 0, 3, 2, 1, 0),
(1157, 'POSTA CANTEEN', '1', '5022151', 'GHANA OHIO STREET ILALA DAR ES SALAAM', 0, 0, 3, 2, 1, 0),
(1158, 'ARDHI CANTEEN', '1', '5002625', 'CITY CENTRE KIVUKONI ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1159, 'NIMRI CANTEEN', '1', '5055209', 'CITY CENTRE LUTHUL ROAD ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1160, 'TBA CANTEEN', '1', '5044007', 'CITY CENTRE SOKOINE ROAD ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1161, 'PAGALI CANTEEN & CAFÉ', '1', '5006307', 'MUFINDI MAGOMENI KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1162, 'BENJAMIN MKAPA CANTEEN', '1', '5005689', 'UHURU GEREZANI DAR ES SALAAM', 2, 0, 0, 2, 1, 0),
(1163, 'DON NYATI CANTEEN', '1', '5023020', 'VINGUNGUTI MIEMBENI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1164, 'OK PLASTIC CANTEEN', '1', '5008997', 'VINGUNGUTI MIEMBENI FIDA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1165, 'AIRPORT TERMINAL III CANTEEN', '1', '5004878', 'AIRPORT DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1166, 'POLICE AIRWING CANTEEN', '1', '5026126', 'AIRPORT ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1167, 'POLICE AIRWING CANTEEN', '1', '5026126', 'AIRPORT ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1168, 'DHL CANTEEN', '1', '5032803', 'VINGUNGUTI KALAKANA MIEMBENI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1169, 'WHITE HOUSE 3', '1', '5017706', 'TABATA KISIWANI DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(1170, 'LOYOLA HIGH SCHOOL CANTEEN', '1', '5095082', 'MABIBO KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1171, 'OPEN UNIVERSITY CANTEEN', '1', '5037647', 'BIAFRA KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1172, 'MAKELE 2', '1', '5006445', 'MANYEMA MBEZI BEACH KINONDONI DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(1173, 'MASSANA CANTEEN', '1', '5055208', 'MASSANA ROAD MBEZI BEACH KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1174, 'TEDDY CAFÉ RESTAURANT', '1', '5003079', 'KONGOWE MBAGALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1175, 'MUHAS STAFF CANTEEN', '1', '5029887', 'UPANGA MUHIMBILI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1176, 'LAKE OIL CANTEEN', '1', '5011943', 'TAZARA MCHICHA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1177, 'TAU CANTEEN', '1', '5003076', 'TWALIPO ADMISTATION  UNIT KILWA ROAD MIGULANI DAR', 0, 0, 0, 1, 1, 0),
(1178, 'POLICE CANTEEN', '1', '5016066', 'TEMEKE CHAN\'OMBE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1179, 'TAU CANTEEN', '1', '5003076', 'UHASIBU KURASINI TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1180, 'HAMIS CHIPS CAFÉ', '1', '5007609', 'MBAGALA ZAKHEM TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1181, 'JOHN KIOSK', '1', '5047101', 'MBAGALA KOKOTO ST TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1182, 'POLICE AFYA CANTEEN', '1', '5043992', 'KURASINI TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1183, '3AZA CANTEEN', '1', '5000394', 'KURASINI TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1184, 'SAMARIA CANTEEN', '1', '5004716', 'KURASINI UHASIBU DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1185, 'LEGRAND SLOTS CASINO', '1', '5039698', 'RUFIJI NYAMWEZI KARIAKOO ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1186, 'QUICK CATARING', '1', '5047616', 'POSTA GARDEN VIEW DAR ES SALAAM', 0, 0, 3, 2, 1, 0),
(1187, 'MAMA RAMA  CATERING', '1', '5002884', 'MIVINJENI TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1188, 'TIGER 3', '1', '5005563', 'MWANANYAMALA KINONDONI', 3, 3, 0, 2, 1, 0),
(1189, 'PAZZ 3', '1', '5098330', 'KINONDONI BIAFRA DAR ES SALAAM', 3, 3, 0, 2, 1, 0),
(1190, 'PENTECOSTE CHURCH', '1', '5006438', 'KINONDONI SHAMBA DAR ES SALAAM', 0, 2, 0, 2, 1, 0),
(1191, 'TRIPLE J 3', '1', '5005173', 'SHEKILANGO UBUNGO KINONDONI DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(1192, 'BAKARI 2', '1', '5047965', 'PICHA YANDEGE KIBAHA', 0, 2, 0, 3, 1, 0),
(1193, 'KIBO BUSINESS CLUB', '1', '5041021', 'BLOCK 41 KINONDONI DAR ES SALAAM', 0, 1, 0, 2, 1, 0),
(1194, 'KIBO BUSINESS CLUB', '1', '5041021', 'BLOCK 41 KINONDONI DAR ES SALAAM', 0, 1, 0, 2, 1, 0),
(1195, 'COSMOPOLITAN SPORT CLUB', '1', '5098408', 'MKUNGUNI STREET KARIAKOO DAR ES SALAAM', 0, 1, 0, 2, 1, 0),
(1196, 'SUGAR RAY NIGHT CLUB', '1', '5052166', 'TEMEKE SOKOTA DAR ES SALAAM', 0, 1, 0, 1, 1, 0),
(1197, 'HARBOURS CLUB ', '1', '5041256', 'KURASINI TEMEKE DAR ES SALAAM', 0, 1, 0, 1, 1, 0),
(1198, 'HRM DECORATION', '1', '5004037', 'MCHICHANI KIBANGU UBUNGO DAR ES SALAAM', 0, 1, 0, 1, 1, 0),
(1199, 'ALEXIA HEALTH CENTRE', '1', '5056584', 'KONGOWE TOANGOMA TEMEKE DAR ES SALAAM', 0, 1, 0, 1, 1, 0),
(1200, 'SOFIA CAFÉ', '1', '5048093', 'UBUNGO GOBA KINODNONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1201, 'PETER CHIPS', '1', '5048223', 'GOBA KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1202, 'MANKA FAST FOOD', '1', '5048091', 'GOBA KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1203, 'JAMALI 2', '1', '5003918', 'MZIMUNI KAWE DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(1204, 'KISANGANYA 2', '1', '5008856', 'KAWE MALINGO DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(1205, 'BONGE CHIPS RESTAURANT', '1', '5042997', 'MZIMUNI KAWE KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1206, 'JANET CAFÉ', '1', '5097980', 'KAWE MZIMUNI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1207, 'ROBATI 2', '1', '5004023', 'MZIMUNI KAWE DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(1208, 'MATIMILA GROCERY', '1', '5022744', 'KAWE BONDENI KWA MAMA KESI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1209, 'EXAUDI 2', '1', '5004183', 'UKWAMANI KAWE DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(1210, 'KADO 2', '1', '5016406', 'KAWE MZIMUNI DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(1211, 'MPAFUGWA 2', '1', '5014718', 'KAWE MZIMUNI DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(1212, 'LULU 2', '1', '5005071', 'KAWE MNALANI KINONDONI', 0, 2, 0, 3, 1, 0),
(1213, 'SAAFII KIOSK', '1', '5004111', 'UKWAMANI KAWE DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1214, 'MNYETI 2', '1', '5022740', 'KAWE UKWAMANI DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(1215, 'BONGE CAFÉ', '1', '5012584', 'KAWE UKWAMANI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1216, 'MASILINGI BIRTH EATERY', '1', '5037706', 'MTAMBANI MLANDIZI PWANI', 0, 0, 0, 3, 1, 0),
(1217, 'E.K TEA ROOM', '1', '5006701', 'BIMA ROAD MIKOCHENI B DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1218, 'CDEA', '1', '5007256', 'BUSINESS MIKOCHENI B DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1219, 'H ONE FOOD HOUSE', '1', '5056589', 'CLOUDS STREET MIKOCHENI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1220, 'EMMANUEL SHIRIMA 2', '1', '5039673', 'TAASISI MIKOCHENI B DAR ES SALAAM', 0, 2, 0, 2, 1, 0),
(1221, '2SISTER GROCERY', '1', '5096643', 'MAKUMBUSHO KIJITONYAMA KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1222, 'DOUBLE F CAFÉ', '1', '5042761', 'MAKUMBUSHO KIJITONYAMA KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1223, 'GG SUPER MARKET 2', '1', '5037204', 'MAKUMBUSHO KIJITONYAMA DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(1224, 'F SQUARE CAFÉ', '1', '5004024', 'MAKUMBUSHO KIJITONYAMA DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1225, 'MKAKA GROCERY', '1', '5003837', 'MAKUMBUSHO KIJITONYAMA KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1226, 'YARDIZ CAFÉ', '1', '5003383', 'MAGEREZA UKONGA DAR ES SALAAM', 4, 0, 0, 1, 1, 0),
(1227, 'MGOSI CAFE', '1', '5003499', 'MADAFU UKONGA DAR ES SALAAM', 4, 0, 0, 1, 1, 0),
(1228, 'EBENEZER CAFÉ', '1', '5004160', 'MOMBASA UKONGA DAR ES SALAAM', 4, 0, 0, 1, 1, 0),
(1229, 'FATUMA CAFÉ', '1', '5035041', 'MOMBASA UKONGA DAR ES SALAAM', 4, 0, 0, 1, 1, 0),
(1230, 'MOMBASA CAFÉ', '1', '5057256', 'MIGOMBANI MOMBASA ILALA DAR ES SALAAM', 4, 0, 0, 1, 1, 0),
(1231, 'PRICERITE FOOD STORE', '1', '5017740', 'KIJICHI CCM MABAGALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1232, 'ROSE GROCERY', '1', '5047829', 'MTONI KIJICHI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1233, 'MAMA J CAFÉ', '1', '5055760', 'KIJICHI MGENI NANI MBAGALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1234, 'MAMA ISSA CAFÉ', '1', '5055752', 'KIJICHI BWAWANI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1235, 'MAFIA CAFÉ', '1', '5055757', 'KIJICHI MBAGALA KUU STAND DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1236, 'MAMA MAM CAFÉ', '1', '5055765', 'KIJICHI NJIA YA NG\'OMBE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1237, 'MAMA ABDUL CAFÉ', '1', '5056270', 'MTONI KIJICHI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1238, 'SIMBA MICHIPS', '1', '5056269', 'KIJICHI NELUKA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1239, 'STELARINE CAFÉ', '1', '5056265', 'KIJICHI CCM DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1240, 'TUMBI CANTEEN', '1', '5052872', 'TUMBI HOSPITAL STAND KIBAHA', 0, 0, 0, 3, 1, 0),
(1241, 'BABU MBUZI CAFÉ', '1', '5038360', 'MWENGE STAND GARAGE DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1242, 'BONJUU CAFÉ', '1', '5043988', 'MWENGE STAND KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1243, 'SHARIFF CAFÉ', '1', '5044474', 'MWENGE STAND DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1244, 'KIFARU FAST FOOD', '1', '5056499', 'UJIJI STREET MWANANYAMALA DAR ES SALAAM', 3, 0, 0, 2, 1, 0),
(1245, 'MLEGI MGAHAWA', '1', '5037188', 'BUGURUNI MALAPA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1246, 'NOMNOMS CAFÉ', '1', '5056603', 'BUNJU MBWENI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1247, 'SHEILAH CAFÉ', '1', '5040110', 'GARDEN ROAD MIKOCHENI B DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1248, 'TALK OF THE TOWN', '1', '5043058', 'ROSE GARDEN ROAD MIKOCHENI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1249, 'MASASI EATERY', '1', '5020037', 'TEGETA KWA NDEVU KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1250, 'RESHY 4', '1', '5000237', 'BWAWANI WAZO MASHAMBA YA JESHI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1251, 'S&S BURGER & FRIES', '1', '5048791', 'TEGETA KIBAONI KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1252, 'MAHANJUMATI CAFÉ', '1', '5042986', 'SOKONI STREET SINZA A DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1253, 'KAZIMOTO FAST FOOD', '1', '5049637', 'TABATA SEGEREA KWA BIBI STAND TABATA SEGEREA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1254, 'DOREEN FAST FOOD', '1', '5048360', 'TABATA SANENE ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1255, 'MAMA MUHIB CAFÉ', '1', '5007185', 'CHALINZE POLICE PWANI', 0, 0, 0, 3, 1, 0),
(1256, 'LUGOBA PETROL STATION', '1', '5048906', 'LUGOBA CHALINZE DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1257, 'YFS CAFÉ', '1', '5003779', 'KIMARA MWISHO ZAHANATI DAR', 0, 0, 0, 3, 1, 0),
(1258, 'FERRY RESTAURANT', '1', '5047289', 'FERRY KIGAMBONI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1259, 'AMALODGER 3', '1', '5012853', 'TABATA AREA KINONDONI DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(1260, 'DELY FAST FOOD', '1', '5025594', 'TABATA AREA KINONDONI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1261, 'JUICE KINGDOM', '1', '5045317', 'MWENGE TRA KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1262, 'SUPER BITE CAFÉ', '1', '5005938', 'MAGOMENI TOSHEKA ILALA KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1263, 'ILUDOS FAST FOOD', '1', '5056813', 'MAGOMENI USALAMA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1264, 'SIVI CATERING SERVICE', '1', '5007658', 'MAGOMENI USALAMA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1265, 'TUWENAWE MAMA LISHE SOKONI', '1', '5007667', 'MAGOMENI USALAMA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1266, 'MICCO FAMILY STANDARD 3', '1', '5014306', 'KIMARA SUKA DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(1267, 'ROK FAST FOOD', '1', '5049836', 'MBEZI MWISHO CENTRE SOKONI KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1268, 'MBELWA 4', '1', '5057088', 'MBEZI LUIS STAND DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1269, 'WHITE CHIPS', '1', '5098040', 'LINDI GEREZANI DAR ES SALAAM', 2, 0, 0, 2, 1, 0),
(1270, 'ZAWADI MAMA LISHE', '1', '5040299', 'SOMALI GEREZANI DAR ES SALAAM', 2, 0, 0, 2, 1, 0),
(1271, 'MKOMBOZI CAFÉ', '1', '5003411', 'MIEMBENI VINGUNGUTI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1272, 'ASHURA CAFE', '1', '5035078', 'MIEMBENI VINGUNGUTI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1273, 'TANI CAFÉ', '1', '5031996', 'KARAKATA UNDEGE TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1274, 'PARAGON SERVICES LTD', '1', '5008696', 'AIRPORT TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1275, 'DHL SACCOS', '1', '5011175', 'AIRPORT ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1276, 'MAWANI RESTAURANT', '1', '5014445', 'SIDO TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1277, 'JMO FOOD PRODUCTS', '1', '5009004', 'KARAKATA MJI MPYA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1278, 'BAM CANTEEN', '1', '5021328', 'MWL NYERERE INTERNATIONAL AIRPORT III DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1279, 'MOSHIRO CAFÉ', '1', '5003408', 'AIR PORT KARAKATA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1280, 'MURZA CANTEEN', '1', '5052181', 'NYERERE ROAD VINGUNGUTI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1281, 'EBENEZA CAFÉ', '1', '5040255', 'KARAKATA UWANJA WA NDEGE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1282, 'EMANUELE ATERY', '1', '5008126', 'MABIBO MAGOMENI KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1283, 'REGINA CAFÉ', '1', '5055528', 'MABIBO FARASI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1284, 'NEW MAMA BONGE CAFTERIA', '1', '5046529', 'MABIBO FARASI MAGOMENI KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1285, 'MARIA CAFÉ', '1', '5055527', 'MABIBO UBUNGO DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1286, 'BEST FREE CAFTERIA', '1', '5005676', 'MAGOMENI MABIBO KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1287, 'CHAIWALA CAFÉ', '1', '5048714', 'INDIRA GANDHI MOROGORO ROAD ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1288, 'TRIPLE J FOOD ZONE', '1', '5056666', 'KISUTU POSTA ILALA DAR ES SALAAM', 0, 0, 3, 2, 1, 0),
(1289, 'ALLY\'S BURGER', '1', '5056668', 'CITY CENTRE KISUTU DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1290, 'CHAIWALA EXPRESS', '1', '5059816', 'CITY CENTRE SAMORA DAR', 0, 0, 0, 2, 1, 0),
(1291, 'VOX RESTAURANT', '1', '5056602', 'BOKO MSIKITINI KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1292, 'ATHUMAN CAFÉ', '1', '5057040', 'UZARAMUNI BOKO DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1293, 'MAMA GEE CAFÉ', '1', '5057042', 'BOKO BASIHAYA DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1294, 'HANS 4', '1', '5056511', 'TEGETA NAMANGA KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1295, 'KIBADAMO HOTEL', '1', '5018130', 'BANK STREET UBUNGO NHC KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1296, 'BEKHAM CAFÉ', '1', '5001939', 'YOMBO DOVYA TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1297, 'MAMA SHEBY CAFÉ', '1', '5037543', 'TEMEKE BUZA LULENGE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1298, 'RAMSO CAFÉ', '1', '5005443', 'TEMEKE BUZA MAMA KIBONGE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1299, 'SUMA CLASSIC CAFÉ', '1', '5043239', 'BUZA NJIA PANDA KITUNDA TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1300, 'FREEDOM CAFÉ', '1', '5039273', 'YOMBO DOVYA TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1301, 'SALMA II CAFÉ', '1', '5004703', 'TEMEKE YOMBO ABIOLA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1302, 'SUPER PUB', '1', '5007514', 'MJI MWEMA ROAD MBEZI BEACH DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1303, 'MAMA SADIKI 2', '1', '5046144', 'FIVE STARS STREET MBEZI BEACH DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(1304, 'URASSA 2', '1', '5032308', 'TANGI BOVU MBEZI BEACH KINONDONI DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(1305, 'GS LIQUOR STORE', '1', '5097829', 'MASAKI TOANGOMA TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1306, 'KYUSA 2', '1', '5099199', 'LUBAKAYA CHANIKA ILALA DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(1307, 'SALIM CAFÉ', '1', '5057675', 'CHANIKA ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1308, 'SAMWEL 2', '1', '5006420', 'KIMWANI ILALA DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(1309, 'KINYAMWEZI STOP OVER 3', '1', '5006406', 'KINYAMWEZI PUGU ILALA DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(1310, 'BONI 2', '1', '5010875', 'CHANIKA KWA ZOO STREET ILALA DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(1311, 'UGOGA FAMILY CAFÉ', '1', '5034467', 'CHANIKA ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1312, '3BECUE HOUSE', '1', '5021212', 'UPANGA ALYKHAN DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(1313, 'SEBASTIAN FOOD LTD', '1', '5056772', 'MSIMBAZI ROAD GEREZANI ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1314, 'CHEF TOWN DELIGHTS', '1', '5007381', 'MKUNGUNI KARIAKOO ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1315, 'TANGA FOOD PALACE', '1', '5045078', 'NDANDA NARUNG\'OMBE KARIAKOO DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1316, 'MR BEEF BURGER', '1', '5043437', 'MSIMBAZI STREET KARIAKOO DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1317, 'TBL CANTEEN', '1', '5002485', 'MCHIKICHINI ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1318, 'LUNCHTIME CAFÉ', '1', '5041232', 'MCHIKICHINI ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1319, 'MAMA KELVIN CAFÉ', '1', '5036997', 'NYAMWEZI KARIAKOO ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1320, 'SMALL TEA ROOM', '1', '5035834', 'TWIGA STREET KARIAKOO DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1321, 'RATCO EXPRESS EATERY', '1', '5008096', 'AMAN KARIAKOO DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1322, 'KARACHI FOOD CENTRE', '1', '5008667', 'LIVINGSTONE KARIAKOO ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1323, 'MOSA FAST FOOD', '1', '5056612', 'MSIMBAZI STREET ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1324, 'MEIKAF FAST FOOD', '1', '5052116', 'LUMUMBA STREET KARIAKOO ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1325, 'TARIMO 2', '1', '5011452', 'TANDIKA MARUNGU TEMEKE DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(1326, 'M JOSIAH CAFÉ', '1', '5099807', 'TANDIKA MAGURUWE TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1327, 'MAKUTI PUB', '1', '5039483', 'YOMBO VITUKA LUMO SERIKALI ZA MITAA', 0, 0, 0, 1, 1, 0),
(1328, 'JUMA CAFÉ', '1', '5099583', 'KIWALANI MWAKALINGA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1329, 'THE HOT KITCHEN', '1', '5042293', 'CHANG\'OMBE ROAD DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1330, 'KASIMOTO RESTAURANT', '1', '5043943', 'KEKO MWANGA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1331, 'MAMA OMARY CAFÉ', '1', '5003422', 'TAIFA CHANG\'OMBE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1332, '3AKA SOFT DRINKS', '1', '5003426', 'CHANG\'OMBE MAGEREZA DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(1333, 'MISOSI AFYA BORA CAFÉ', '1', '5099941', 'KEKO MAGURUMBASI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1334, 'KITUMBO CAFÉ', '1', '5039536', 'KEKO MAGURUMBASI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1335, 'HABIBA RESTAURANT', '1', '5012146', 'MTONI KWA AZIZI TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1336, 'PS FAST FOOD', '1', '5010542', 'TABATA SEGEREA UGOMBOLWA ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1337, 'BIBILULU FAST FOOD', '1', '5052199', 'TABATA SEGEREA KWABIBI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1338, 'FRIENDS GARDEN', '1', '5020385', 'YOMBO VITUKA MACHIMBO DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1339, 'MAMA MTUMWA GROCERY', '1', '5098743', 'GOBA KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1340, 'NYELLA GROCERY', '1', '5098349', 'MADALE MIVUMONI KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1341, 'ASHELI GROCERY', '1', '5008972', 'SHULE DAWASCO TABATA DAR ES SALAAM', 1, 0, 1, 1, 1, 0),
(1342, 'KWARUWE GROCERY', '1', '5017822', 'TABATA AROMA DAR ES SALAAM', 1, 0, 1, 1, 1, 0),
(1343, 'SANDRA GROCERY', '1', '5041055', 'TABATA SHULE ILALA DAR ES SALAAM', 1, 0, 1, 1, 1, 0),
(1344, 'LEILA GROCERY', '1', '5055824', 'IKWIRIRI RUFIJI PWANI', 2, 0, 0, 1, 1, 0),
(1345, 'HEAVEN GROCERY', '1', '5055822', 'IKWIRIRI RUFIJI PWANI', 2, 0, 0, 1, 1, 0),
(1346, 'FREE PARK GROCERY', '1', '5055614', 'NYAMWAGE RUFIJI PWANI', 2, 0, 2, 1, 1, 0),
(1347, 'NYASA GROCERY', '1', '5055618', 'UTETE RUFIJI PWANI', 2, 0, 2, 1, 1, 0),
(1348, 'MADANGA 2', '1', '5004026', 'UKWAMANI KAWE DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(1349, 'AMBA GROCERY', '1', '5005479', 'KAWE SOKONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1350, 'CHOVE 2', '1', '5042269', 'KAWE UKWAMANI DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(1351, 'ROSE GROCERY', '1', '5033944', 'MISUGUSUGU PWANI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1352, 'ELIAS GROCERY', '1', '5038577', 'MISUGUSUGU PWANI', 0, 0, 0, 3, 1, 0),
(1353, 'KAYANGE GROCERY', '1', '5032922', 'MISUGUSUGU PWANI', 0, 0, 0, 3, 1, 0),
(1354, 'MANKA GROCERY', '1', '5033796', 'MISUGUSUGU MLANDIZI PWANI', 0, 0, 0, 3, 1, 0),
(1355, 'MINJA GROCERY', '1', '5017981', 'ULONGONI STREET GONGO LA MBOTO ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1356, 'ADROK GROCERY', '1', '5008985', 'MZAM3AUNI STREET ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1357, 'WANGU GROCERY', '1', '5018904', 'MZAM3AUNI GONGO LA MBOTO ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1358, 'MWAJUMA GROCERY', '1', '5020910', 'MASAKI KISARAWE GONGO LA MBOTO ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1359, 'MASWA GROCERY', '1', '5002901', 'BUMILA STREET GONGO LA MBOTO DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1360, 'LEMORA GROCERY', '1', '5048173', 'PUGU BOMBANI GONGO LA MBOTO ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1361, 'CONSOLATA GROCERY', '1', '5003896', 'MAKUMBUSHO KIJITONYAMA KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1362, 'AMINA GROCERY', '1', '5098177', 'MAKUMBUSHO KIJITONYAMA KINONDONI', 0, 0, 0, 3, 1, 0),
(1363, 'GEORGIA GROCERY', '1', '5011541', 'MAKUMBUSHO KIJITONYAMA KINONDONI', 0, 0, 0, 3, 1, 0),
(1364, 'JOYCE GROCERY', '1', '5098170', 'MAKUMBUSHO KIJITONYAMA DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1365, 'BETTY GROCERY', '1', '5096642', 'MAKUMBUSHO KIJITONYAMA KINONDONI', 0, 0, 0, 3, 1, 0),
(1366, 'AISHA GROCERY', '1', '5037246', 'MAKUMBUSHO KIJITONYAMA DAR', 0, 0, 0, 3, 1, 0),
(1367, 'OLIVARY 2', '1', '5048882', 'KISUKURU KWASWAI DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(1368, 'MANGO GARDEN 3', '1', '5012870', 'VIJANA MWANANYAMALA KINONDONI DAR ES SALAAM', 3, 3, 0, 2, 1, 0),
(1369, 'SCAPCHINO RESTAURANT', '1', '5047067', 'KOMAKOMA MWANANYAMALA KINONDONI DAR ES SALAAM', 3, 0, 0, 2, 1, 0),
(1370, 'SHIRIMA 2', '1', '5045136', 'KARAFUU MWANANYAMALA KINONDONI DAR ES SALAAM ', 3, 2, 0, 2, 1, 0),
(1371, 'MWEYENTALE GROCERY', '1', '5057282', 'UKONGA KICHANGANI ILALA DAR ES SALAAM', 4, 0, 0, 1, 1, 0),
(1372, 'MERCY GROCERY', '1', '5057258', 'MOMBASA MAZIZINI ILALA DAR ES SALAAM', 4, 0, 0, 1, 1, 0),
(1373, 'MTANGI GROCERY', '1', '5007607', 'VIKUGE KONGOWE KIBAHA COAST REGION', 0, 0, 0, 3, 1, 0),
(1374, 'MARUNDA GROCERY', '1', '5044170', 'MAILI MOJA KIBAHA COAST REGION', 0, 0, 0, 3, 1, 0),
(1375, 'CONTAINER 3', '1', '5015342', 'MAIL MOJA STAND COAST REGION', 0, 3, 0, 3, 1, 0),
(1376, 'PENINA GROCERY', '1', '5007613', 'UNGINDONI MAILIMOJA KIBAHA', 0, 0, 0, 3, 1, 0),
(1377, 'SUMMMIT RESTAURANT', '1', '5014652', 'MKOANI KIBAHA COAST REGION', 0, 0, 0, 3, 1, 0),
(1378, 'MAMA ANDREW GROCERY', '1', '5037652', 'MATHIAS MKUZA KIBAHA ', 0, 0, 0, 3, 1, 0),
(1379, 'PICHA YA NDEGE 3', '1', '5036445', 'PICHA YA NDEGE KIBAHA COAST REGION', 0, 3, 0, 3, 1, 0),
(1380, 'MASAI 2', '1', '5022780', 'KWA MFIPA STREET KIBAHA COAST REGION', 0, 2, 0, 3, 1, 0),
(1381, 'MAMA NDUNGURU GROCERY', '1', '5030890', 'MAJUMBA MATANO KINDEGE KIBAHA COAST REGION', 0, 0, 0, 3, 1, 0),
(1382, 'SIJALI 2', '1', '5005470', 'MSANGANI KIBAHA COAST REGION', 0, 2, 0, 3, 1, 0),
(1383, 'HAULE GROCERY', '1', '5052871', 'PICHA YA NDEGE KIBAHA COAST REGION', 0, 0, 0, 3, 1, 0),
(1384, 'GOD GROCERY', '1', '5018798', 'BOKO MNENIA KIBAHA PWANI', 0, 0, 0, 3, 1, 0),
(1385, 'GLADY GROCERY', '1', '5047269', 'MWENGE KIJIJINI GARAGE KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1386, 'ZK GROCERY', '1', '5012594', 'MWANANYAMALA MANJUNJU KINONDONI', 3, 0, 0, 2, 1, 0),
(1387, 'MAKIDI GROCERY', '1', '5041290', 'MOROCCO ROAD KINONDONI DAR ES SALAAM', 3, 0, 0, 2, 1, 0),
(1388, 'MTENGA 3', '1', '5044750', 'KILUVYA MADUKANI KILUVYA DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(1389, 'NEEMA 2', '1', '5005292', 'NJIA PANDA SHULE KIBAMBA DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(1390, 'HUSBAZAY 2', '1', '5005275', 'NJIA PANDA SHULE KIBAMBA DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(1391, 'JR CAMP GROCERY', '1', '5056943', 'KIBAMBA KWA MANGI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1392, 'BONDENI GROCERY', '1', '5057671', 'BUNJU A USALAMA DAR ES SALAM', 0, 0, 0, 3, 1, 0),
(1393, 'NDAGAFIJO GROCERY', '1', '5030295', 'MAJUMBA SITA UKONGA ILALA DAR ES SALAAM', 4, 0, 0, 1, 1, 0),
(1394, 'DEO GROCERY', '1', '5008899', 'SITAKISHARI UKONGA DAR ES SALAAM', 4, 0, 0, 1, 1, 0),
(1395, 'FAMILY TAVERN GROCERY', '1', '5030745', 'KIPUNGUNI BANANA DAR ES SALAAM', 4, 0, 0, 1, 1, 0),
(1396, 'SHIRIMA 2', '1', '5023874', 'CCM CHAMA MIKOCHENI A DAR ES SALAAM', 0, 2, 0, 2, 1, 0),
(1397, '5 WAYS 3', '1', '5001083', 'FIVE WAYS STREET MIKOCHENI A DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(1398, 'LIWA GROCERY', '1', '5037576', 'BWAWANI WZO MASHAMBA YA JESHI KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1399, 'JJ GROCERY', '1', '5028413', 'KWADITOPILE TABATA KINYEREZI ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1400, 'DOSA GROCERY', '1', '5030433', 'DITOPILE KIJIWENI KINYEREZI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1401, 'MOUNT MERU 3', '1', '5007225', 'CHALINZE PERA BAGAMOYO', 0, 3, 0, 3, 1, 0),
(1402, 'BWASHEE 2', '1', '5021793', 'CHALINZE BWILINGU PWANI', 0, 2, 0, 3, 1, 0),
(1403, 'JESHI GROCERY', '1', '5023455', 'CHALINZE MAGINDU PWANI', 0, 0, 0, 3, 1, 0),
(1404, 'BABAI GROCERY', '1', '5037580', 'CHALINZE MAGINDU PWANI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1405, 'TAMLA GROCERY', '1', '5035254', 'CHALINZE MBOGA PWANI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1406, 'NURU GROCERY', '1', '5098311', 'CHALINZE MSATA BAGAMOYO', 0, 0, 0, 3, 1, 0),
(1407, 'HEMED GROCERY', '1', '5037601', 'MBOGA CHALINZE COAST REGION DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1408, 'CHINGA 2', '1', '5050490', 'CHALINZE MDAULA BAGAMOYO', 0, 2, 0, 3, 1, 0),
(1409, 'KILIMNYONGA 3', '1', '5007204', 'CHALINZE MDAULA BAGAMOYO', 0, 3, 0, 3, 1, 0),
(1410, 'MFYOME 2', '1', '5047295', 'CHALINZE BWILINGU BAGAMOYO', 0, 2, 0, 3, 1, 0),
(1411, 'MWITA 2', '1', '5026962', 'CHALINZE NERO BAGAMOYO', 0, 2, 0, 3, 1, 0),
(1412, 'MAKUTANO 3', '1', '5048905', 'CHALINZE UBENA BAGAMOYO', 0, 3, 0, 3, 1, 0),
(1413, 'MAGINDU VOALI GROCERY', '1', '5038575', 'MAGINDU SEREGETE CHALINZE', 0, 0, 0, 3, 1, 0),
(1414, 'NYANGE GROCERY', '1', '5044752', 'KIMARA KING\'ONGO DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1415, 'MLELE GROCERY', '1', '5092731', 'KIMARA BUCHA DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1416, 'MWAKALINGA GROCERY', '1', '5012172', 'KIBANGU UBUNGO DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1417, 'KIKULA PUB', '1', '5096907', 'TABATA AREA KINONDONI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1418, 'MWANAHAWA GROCERY & STOKIST', '1', '5005888', 'KIBANGU UBUNGO DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1419, 'SHIRIMA GROCERY', '1', '5034065', 'RIVERSIDE STAND UBUNGO DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1420, 'JOSEPHINE GROCERY', '1', '5044169', 'TABATA AREA KINONDONI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1421, 'SCOLA GROCERY ', '1', '5007510', 'MABIBO HOSTEL UBUNGO KINONDONI AREA DAR ES SALAAM ', 0, 0, 0, 1, 1, 0),
(1422, 'EDGER GROCERY', '1', '5098163', 'TABATA AREA KINONDONI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1423, 'KITAMO GROCERY', '1', '5096893', 'MCHICHANI KIBANGU UBUNGO DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1424, 'MESIA GROCERY', '1', '5097415', 'NDUMBIKO KIBANGU UBUNGO DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1425, 'J.M GROCERY', '1', '5040976', 'TABATA AREA KINONDONI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1426, 'MUFINDI GROCERY', '1', '5006496', 'UBUNGO MAKOKA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1427, 'LILA BUSINESS CENTRE GROCERY', '1', '5011464', 'MAKOKA KIBANGU UBUNGO DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1428, 'DARFUL GROCERY', '1', '5000329', 'KWA DIWANI UKONGA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1429, 'GESANTA GROCERY', '1', '5057745', 'MATEMBELE YA PILI MWEMBENI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1430, 'MAGRETH GROCERY', '1', '5007564', 'KUNDUCHI SALASALA KWA BABU DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1431, 'KITUNGUU GROCERY', '1', '5032774', 'KUNDUCHI TEGETA ROAD DAR', 0, 0, 0, 3, 1, 0),
(1432, 'LUPEMBE GROCERY', '1', '5037170', 'KINZUDI MBEZI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1433, 'MAUA GROCERY', '1', '5032940', 'KUNDUCHI BEACH DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1434, 'ASTERIA CAFÉ', '1', '5023993', 'MWENGE KIJIJINI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1435, 'OMI GROCERY', '1', '5036496', 'CHARAMBE KWA MBIKU MBAGALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1436, 'JOHN 2', '1', '5042563', 'SINZA WHITE INN KINONDONI DAR ES SALAAM', 0, 2, 0, 2, 1, 0),
(1437, 'KEMY GROCERY', '1', '5008656', 'BANDARI LINE MASAKI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1438, 'MANSO GROCERY', '1', '5043342', 'GEZA MIKOCHENI A DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1439, 'KITUTU GROCERY', '1', '5016769', 'MSASANI MSASANI KIMWERI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1440, 'SHIRIMA GROCERY', '1', '5041093', 'MBEZI KWA YUSUPH KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1441, '3WAY PUB', '1', '5098333', 'MBEZI LUIS NJIAPANDA MPIJI KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1442, 'MARTA GROCERY', '1', '5007809', 'MBEZI LUIS NJIA PANDA KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1443, 'SEBULENI GROCERY', '1', '5031107', 'MBEZI MARAMBA MAWILI KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1444, 'MBOE GROCERY', '1', '5044312', 'MBEZI MAGARI SABA DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1445, 'F1Y 2', '1', '5014316', 'MAKABE MBEZI KINONDONI', 0, 2, 0, 3, 1, 0),
(1446, 'JOMBA 2', '1', '5006293', 'MAKANYA MAGOMENI KINONDONI DAR ES SALAAM', 0, 2, 0, 2, 1, 0),
(1447, 'PEACE AND LOVE GROCERY', '1', '5040253', 'TEMEKE MWISHO DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1448, 'MAMA ABDUL GROCERY', '1', '5022431', 'VINGUNGUTI MAJENGO DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1449, 'TEDY GROCERY', '1', '5008996', 'VINGUNGUTI FARU DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1450, 'SISE GROCERY', '1', '5021997', 'MABIBO LOYOLA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1451, 'JOSEPH GROCERY', '1', '5022720', 'MABIBO SOKONI MAGOMENI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1452, 'KIBOKO GROCERY', '1', '5097906', 'BIAFRA-KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1453, 'BAND GROCERY', '1', '5056967', 'CITY CENTRE KISUTU SOKONI DAR ES SALAAM', 0, 0, 3, 2, 1, 0),
(1454, 'MAMA DOREEN GROCERY', '1', '5055366', 'BUZA KIDAGAA TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1455, 'URIO GROCERY', '1', '5037548', 'TEMEKE YOMBO ABIOLA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1456, 'SIA GROCERY', '1', '5032911', 'SUPER GOIG DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1457, 'EUNICE 2PING CENTRE', '1', '5007462', 'SUPER GOIG MBEZI BEACH DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(1458, 'KIMASHUKU 2', '1', '5002474', 'GOBA ROAD MBEZI JUU STREET MBEZI BEACH DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(1459, 'GREEN APPETITE INN', '1', '5096814', 'TOANGOMA MASAKI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1460, 'MAMAMWENYE GROCERY', '1', '5056888', 'TOANGOMA MIKWAMBE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1461, 'MANYALA GROCERY', '1', '5012155', 'RUBAKAYA ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1462, 'SIHA GROCERY', '1', '5006416', 'GOGO CHANIKA ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1463, 'BUKOBA 3', '1', '5044676', 'MAPUTO CHANIKA ILALA DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(1464, 'THERESIA 2', '1', '5097093', 'CHANIKA ILALA DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(1465, 'GLORY TO GOD 2', '1', '5011965', 'CHANIKA DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(1466, 'MPEMBA CAFÉ', '1', '5006413', 'MSUMBIJI ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1467, 'JATTY MAISHA 2', '1', '5099525', 'CHANIKA ILALA LUKOONI DAR', 0, 2, 0, 1, 1, 0),
(1468, 'MAAJABU NYAMA CHOMA GROCERY', '1', '5099060', 'ITALIANA STREET ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1469, 'BIBI TEMEKE GROCERY', '1', '5006435', 'BONDENI MUHEZA KARIAKOO DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1470, 'MAMA HAIKA GROCERY', '1', '5011451', 'TANDIKA MAGHOROFANI TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1471, 'KYARA GROCERY', '1', '5097230', 'TANDIKA BANDARI TEMEKE DARE ES SALAAM', 0, 0, 0, 1, 1, 0),
(1472, 'MUDY GERY GROCERY', '1', '5002176', 'YOMBO VITUKA YOMBO DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1473, 'JACKYS GROCERY', '1', '5024842', 'TEMEKE MCHICHA TAZARA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1474, 'MPOGORO GROCERY', '1', '5011477', 'YOMBO VITUKA LUMO MWANZO DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1475, 'MREMA GROCERY', '1', '5020378', 'KIWALANI SHELI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1476, 'MHEGELE GROCERY ', '1', '5098451', 'YOMBO KWA LIMBOA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1477, 'COCA COLA KIOSK', '1', '5031766', 'YOMBO SHULE YE MSINGI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1478, 'CARIFONIA GROCERY', '1', '5037733', 'MBAGALA MISSION TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1479, 'MKANDI GROCERY', '1', '5016576', 'MBAGALA MAKUKA KUSINI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1480, 'JBS GROCERY', '1', '5048103', 'SABASABA KIPATI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1481, 'BAGA POINT GROCERY', '1', '5052196', 'MBAGALA KIZUIANI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1482, 'LIUMACO 2 MAGOROFANI', '1', '5098098', 'TEMEKE MAGANGA DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(1483, 'ASENGA GROCERY', '1', '5021395', 'SOKOTA TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1484, 'TINA GROCERY', '1', '5001760', 'MADENGE TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1485, 'LEMIRA GROCERY', '1', '5014943', 'TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1486, 'SAMUNGE GROCERY', '1', '5099752', 'MBAGALA CHARAMBE KWA MBIKU DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1487, 'SALUM 2', '1', '5004180', 'MBAGALA ZAKHEM DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(1488, 'MANKA GROCERY', '1', '5002891', 'MBAGALA ZAKHEM DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1489, 'KITIMOTO GROCERY', '1', '5093072', 'MBAGALA KOKOTO TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1490, 'LINDA GROCERY', '1', '5099794', 'MUTUKULA ROAD CHANG\'OMBE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1491, 'ANNA GROCERY', '1', '5003448', 'KEKO MAGEREZA CHANG\'OMBE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1492, 'MAC LODGE AND CLASSIC PUB', '1', '5031840', 'TABATA KISUKURU MIGOMBANI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1493, 'GREENWOOD LODGE', '1', '5037167', 'KUNDUCHI TEGETA ROAD DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1494, 'MFAUME 2', '1', '5007243', 'CHALINZE MDAULA BAGAMOYO DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(1495, 'HOME GROUND PARK', '1', '5007776', 'MBEZI MAKABE KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1496, 'ITUNGI LODGE', '1', '5031355', 'VINGUNGUTI BUTIAMA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1497, 'BANOR HALL', '1', '5027724', 'SURVEY MLIMANI CITY DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1498, 'BANOR  HALL', '1', '5027724', 'SURVEY MLIMANI CITY DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1499, 'SABA 2', '1', '5017928', 'MPAKANI DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(1500, 'GRAKEA HALL', '1', '5002779', 'MWISHO WA LAMI GONGO LA MBOTO DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1501, 'BWAWANI MAGEREZA HALL', '1', '5032615', 'CHALINZE BWAWANI BAGAMOYO', 0, 0, 0, 3, 1, 0),
(1502, 'GENESIS HALL', '1', '5036899', 'KIMARA TEMBONI KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1503, 'SEVEN ONE MESS', '1', '5011958', 'JESHINI KIBANGU KOTA UBUNGO DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1504, 'MARY 2', '1', '5042596', 'KIMARA KINONDONI DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(1505, 'HUBERT KILATO HALL', '1', '5021421', 'KIMARA STOP OVER DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1506, 'MASAWE 2', '1', '5035016', 'LEGHO UBUNGO KINONDONI DAR ES SALAAM', 0, 2, 0, 2, 1, 0),
(1507, 'HOPE AND VICTORY STATIONERY', '1', '5036452', 'MAKONDE STREET MBEZI BEACH DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1508, '2 PUB', '1', '5007479', 'GOBA ROAD MBEZI JUU STREET MBEZI BEACH DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1509, 'NAJJA HARDWARE', '1', '5005239', 'NYAMWEZI GEREZANI KARIAKOO DAR ES SALAAM', 2, 0, 0, 2, 1, 0),
(1510, 'OLD TRAFORD PUB', '1', '5003773', 'KIMBIJI KIGAMBONI TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1511, 'CHANJARIKA PUB', '1', '5056060', 'KIGAMBONI MAWENI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1512, 'JOYS PARK 3', '1', '5056018', 'KIGAMBONI MASAKI MJI MWEMA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1513, 'MIKADI BEACH', '1', '5056847', 'MIKADI KIGAMBONI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1514, 'THE ANNEX TULIVU RESTAURANT', '1', '5098462', 'KIGAMBONI MWASONGA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1515, 'KANTINA GARDEN LODGE', '1', '5048153', 'GOBA KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1516, 'SAFINA 3', '1', '5048727', 'GOBA KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1517, 'MAMSERA PUB', '1', '5048097', 'GOBA UBUNGO KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1518, 'TEXAS 3', '1', '5048208', 'GOBA KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1519, 'LA STANZA 3', '1', '5047685', 'GOBA ROAD KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1520, 'KABEYA 3', '1', '5016448', 'KUNGURU GOBA KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1521, 'GOOD TIME PUB', '1', '5041460', 'GOBA KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1522, 'PICNIC 3', '1', '5048713', 'GOBA KUNGURU KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1523, 'SEBALUWA PUB', '1', '5048085', 'GOBA KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1524, 'PAZURI RESTAURANT', '1', '5056868', 'GOBA KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1525, 'LASTANZA 3', '1', '5047516', 'GOBA KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1526, 'HOME PUB', '1', '5048200', 'KAWAWA MADALE KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1527, 'MCHIKICHINI 3', '1', '5048709', 'MAKONGO JUU KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1528, 'MALENGO 3', '1', '5037768', 'MAKONGO JUU KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1529, 'FORTY FORTY 3 & RESTAURANT', '1', '5037145', 'TABATA BIMA ILALA DAR ES SALAAM', 1, 0, 0, 1, 1, 0),
(1530, 'DOUBLE D PUB', '1', '5099456', 'TABATA MAGENGENI ILALA DAR ES SALAAM', 1, 0, 0, 1, 1, 0),
(1531, 'FORTY FORTY 3 & RESTAURANT', '1', '5037145', 'TABATA BIMA ILALA DAR ES SALAAM', 1, 0, 0, 1, 1, 0),
(1532, 'ROSS ONE PUB', '1', '5047484', 'TABATA SHULE ILALA DAR ES SALAAM', 1, 0, 1, 1, 1, 0),
(1533, 'GEORGINA 3', '1', '5017541', 'TABATA BIMA ST MERRY ILALA DAR ES SALAAM', 1, 0, 0, 1, 1, 0),
(1534, 'MNDECHA PUB', '1', '5047393', 'TABATA AROMA ILALA DAR ES SALAAM', 1, 0, 1, 1, 1, 0),
(1535, 'CAR WASH 3', '1', '5037147', 'TABATA RELINI ILALA DAR ES SALAAM', 1, 0, 1, 1, 1, 0),
(1536, 'GREEN LIGHT HOTEL', '1', '5017269', 'TABATA SHULE ILALA DAR ES SALAAM', 1, 0, 1, 1, 1, 0),
(1537, 'PARK AND BUY PUB', '1', '5037194', 'TABATA CHANG\'OMBE DAR ES SALAAM', 1, 0, 0, 1, 1, 0),
(1538, 'KAUNDA 3', '1', '5055640', 'KAUNDA STREET IKWIRIRI PWANI', 2, 0, 0, 1, 1, 0),
(1539, 'EAGLE 3', '1', '5055621', 'IKWIRIRI RUFIJI PWANI', 2, 0, 0, 1, 1, 0),
(1540, 'SILENT INN 3', '1', '5055834', 'IKWIRIRI RUFIJI PWANI', 2, 0, 0, 1, 1, 0),
(1541, 'IBIZA INN 3', '1', '5055833', 'IKWIRIRI RUFIJI PWANI', 2, 0, 0, 1, 1, 0),
(1542, 'MNAMWA PUB', '1', '5055599', 'MUHORO RUFIJI PWANI', 2, 0, 0, 1, 1, 0),
(1543, 'KILINDI PUB', '1', '5055642', 'CHUMBI IKWIRIRI RUFIJI PWANI', 2, 0, 2, 1, 1, 0),
(1544, 'TANDAIMA 3', '1', '5055615', 'UTETE RUFIJI PWANI', 2, 0, 2, 1, 1, 0),
(1545, 'KIVULINI 3', '1', '5039023', 'IKWIRIRI KILWA ROAD PWANI DAR ES SALAAM', 2, 0, 0, 1, 1, 0),
(1546, 'LUKUNDO 3', '1', '5047771', 'IKWIRIRI RUFIJI PWANI', 2, 0, 0, 1, 1, 0),
(1547, 'MANANGWA 3', '1', '5039025', 'IKWIRIRI RUFIJI PWANI', 2, 0, 0, 1, 1, 0),
(1548, 'UMWE HOTEL', '1', '5014572', 'IKWIRIRI RUFIJI PWANI', 2, 0, 0, 1, 1, 0),
(1549, 'KIWANI CANTEEN', '1', '5045042', 'KAWE JKT DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1550, 'DARAJANI 3', '1', '5043991', 'KAWE BEACH KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1551, 'THE JIKO RESTAURANT', '1', '5043990', 'KAWE BEACH KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1552, 'SWAUM 2', '1', '5004113', 'UKWAMANI KAWE DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(1553, 'DOCTAR 3', '1', '5004036', 'UKWAMANI KAWE DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1554, 'MESS MAKAO MAKUU JKT', '1', '5003797', 'MARINGO KAWE KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1555, 'IAN 3', '1', '5020896', 'KAWE UKWAMANI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1556, 'MJENGO PUB', '1', '5003360', 'SHOKO KAWE DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1557, 'KABEJEA 2', '1', '5005019', 'KAWE UKWAMANI DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(1558, 'LUGALO SOCIAL HALL', '1', '5031375', 'KAWE LUGALO 34KJ', 0, 0, 0, 3, 1, 0),
(1559, 'LUGALO SOCIAL HALL', '1', '5031375', 'KAWE LUGALO 34KJ', 0, 0, 0, 3, 1, 0),
(1560, 'LUGALO SOCIAL HALL', '1', '5031375', 'KAWE LUGALO 34KJ', 0, 0, 0, 3, 1, 0),
(1561, 'DDC 3', '1', '5017893', 'MLIMANI CITY SURVEY STREET DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1562, 'CALABASH 3', '1', '5030229', 'LIFUNGILA STAND MWENGE DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1563, 'CAMP DAVID 3', '1', '5017916', 'MPAKANI DARAJANI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1564, 'DALLAS PUB', '1', '5039725', 'SURVEY MLALAKUWA DAR', 0, 0, 0, 3, 1, 0),
(1565, 'MBINGA RESTAURANT', '1', '5023522', 'SURVEY MLALAKUA DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1566, 'MIGOMBANI 3', '1', '5005857', 'SURVEY MLALAKUA DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1567, 'MFUNGA\'S 3', '1', '5039083', 'LIHUNGILA DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1568, 'CHATO RESTAURANT', '1', '5017691', 'MLIMANI CITY SURVEY DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1569, 'CHATO RESTAURANT', '1', '5021792', 'MLIMANI CITY SURVEY DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1570, 'SURVEY MOTEL', '1', '5006739', 'SURVEY MKOROSHINI DAR', 0, 0, 0, 3, 1, 0),
(1571, 'SINGDAN 3', '1', '5041421', 'MISUGUSUGU PWANI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1572, 'KOREYA GROCERY', '1', '5044194', 'MLANDIZI MTONGANI USALAMA PWANI', 0, 0, 0, 3, 1, 0),
(1573, 'WEMA 3', '1', '5027305', 'KILANGALANGA B PWANI', 0, 0, 0, 3, 1, 0),
(1574, 'KAHINDA 3', '1', '5055843', 'MZENGA MLANDIZI PWANI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1575, 'MANGI 2 2', '1', '5035344', 'MLANDIZI KIBAHA PWANI', 0, 2, 0, 3, 1, 0),
(1576, 'LIJALU PUB', '1', '5027310', 'MLANDIZI KATI PWANI', 0, 0, 0, 3, 1, 0),
(1577, 'NEEMA 2', '1', '5014307', 'MLANDIZI MISWE DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(1578, 'CHEMCHEM 3', '1', '5027842', 'MLANDIZI STAND PWANI', 0, 0, 0, 3, 1, 0),
(1579, 'KAULI YA BIBI 3', '1', '5031012', 'MLANDIZI KALOLENI PWANI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1580, 'NDESSI PUB', '1', '5040770', 'MLANDIZI STAND PWANI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1581, 'MACHOKODO GROCERY', '1', '5034252', 'MLANDIZI STAND PWANI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1582, 'FIRST INN 3', '1', '5044125', 'MLANDIZI CHEMCHEM PWANI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1583, 'SUBRINA 3', '1', '5033870', 'KWARA KIBAHA PWANI', 0, 0, 0, 3, 1, 0),
(1584, 'MOGAS 3', '1', '5034016', 'RUVU DARAJANI PWANI', 0, 0, 0, 3, 1, 0),
(1585, 'NDETEMA  3', '1', '5027312', 'RUVU DARAJANI PWANI', 0, 0, 0, 3, 1, 0),
(1586, 'NDETEMA 3', '1', '5027312', 'RUVU DARAJANI PWANI', 0, 0, 0, 3, 1, 0),
(1587, 'SUPER NIGHT 3', '1', '5057291', 'MTONGANI MLANDIZI PWANI', 0, 0, 0, 3, 1, 0),
(1588, 'IGMAYAYI 3', '1', '5057288', 'VISIGA MADAFU MLANDIZI PWANI', 0, 0, 0, 3, 1, 0),
(1589, 'BALTON CANTEEN', '1', '5098107', 'BALTON CCK ROAD MIKOCHENI B DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1590, 'MILLIONAIRE PUB', '1', '5054842', 'CCK AREA MIKOCHENI KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1591, 'BUSHOKE CAFÉ', '1', '5007260', 'OSSAMA STREET MIKOCHENI B DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1592, 'MEB\'S PUB', '1', '5007258', 'CLOUDS MIKOCHENI B DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1593, 'LULE 2', '1', '5007259', 'USHINDI MIKOCHENI B DAR ES SALAAM', 0, 2, 0, 2, 1, 0),
(1594, 'GLADDY\'S 3', '1', '5098547', 'GONGO LA MBOTO STAND ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1595, 'NEW MTU NA MTU 3', '1', '5048770', 'MALIASILI MWISHO WA LAMI GONGO LA MBOTO ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1596, 'NYAMA CHOMA 3', '1', '5048772', 'MWISHO WA LAMI GONGO LA MBOTO ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1597, 'PUGU INN 3', '1', '5016948', 'MWISHO WA LAMI GONGO LA MBOTO ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1598, 'SAFARI PUB', '1', '5008951', 'KITUO KIPYA ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1599, 'MBEYA PUB', '1', '5048764', 'NJIAPANDA MONGO LA NDEGE GONGO LA MBOTO ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1600, 'THE CHAMPIONS NIGHT CLUB', '1', '5048362', 'KAMPALA STADIUM GONGO LA MBOTO ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1601, 'THE CHAMPIONS NIGHT CLUB', '1', '5048362', 'KAMPALA STADIUM GONGO LA MBOTO ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1602, 'MALEWA PUB', '1', '5048766', 'KAMPALA STADIUM GONGO LA MBOTO ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1603, 'LEXUS PUB', '1', '5048767', 'ULONGONI B GONGO LA MBOTO ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1604, 'LUHUHU PUB', '1', '5097896', 'MAJOHE ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1605, 'SOUTH PARK', '1', '5035045', 'MAJOHE GONGO LA MBOTO ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1606, 'BATA CLUB', '1', '5048763', 'MAJOHE CHUO RADA GONGO LA MBOTO ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1607, 'SHEMSHIZ HOTEL', '1', '5030580', 'MZAM3AUNI STREET ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1608, 'MEZAMBILI GROCERY', '1', '5008952', 'MZAM3AUNI STAND GONGO LA MBOTO ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1609, 'MVUNGI PUB', '1', '5042681', 'MZAM3AUNI ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1610, 'NEW SHUDU INN', '1', '5000176', 'MZAM3AUNI GONGO LA MBOTO ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1611, 'MAVUNO 3', '1', '5008992', 'UWANJA WA DENGER GOMGO LA MBOTO ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1612, 'MAVUNO 3', '1', '5008992', 'UWANJA WA DENGER GOMGO LA MBOTO ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1613, 'MAGE PUB', '1', '5037851', 'PUGU SHULENI ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1614, 'VASCODAGAMA INN', '1', '5025028', 'GONGO LA MBOTO PUGU KICHANGANI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1615, 'OTTANA 3', '1', '5022402', 'PUGU KAJIUNGENI GONGO LA MBOTO ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1616, 'MAGOGONI 3', '1', '5046214', 'MONGO LA NDEGE CENTRE ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1617, 'BOTEA 2', '1', '5006362', 'FUKAYOSI BAGAMOYO PWANI', 0, 2, 0, 3, 1, 0),
(1618, 'KAMBENI 3 & GUEST', '1', '5030431', 'KISUKURU MIGOMBANI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1619, 'FAST FOOD & CARRY', '1', '5052195', 'MIGOMBANI MWEMBENI MAKABURINI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1620, 'SUPER KITIMOTO RESTAURANT', '1', '5052896', 'MWANANYAMALA KISIWANI KINONDONI DAR ES SALAAM', 3, 0, 0, 2, 1, 0),
(1621, 'MANGO GARDEN 3', '1', '5048782', 'MWANANYAMALA VIJANA KINONDONI DAR ES SALAAM', 3, 0, 0, 2, 1, 0),
(1622, 'MANGO GARDEN', '1', '5037619', 'MAFELE MWANANYAMALA KINONDONI', 3, 0, 0, 2, 1, 0),
(1623, 'GET UP PUB', '1', '5056482', 'MWANANYAMALA MASAI KINONDONI DAR ES SALAAM', 3, 0, 0, 2, 1, 0),
(1624, 'MAMA NAIKE CAFÉ', '1', '5006505', 'MANJUMNJU MWANANYAMALA KINONDONI DAR ES SALAAM', 3, 0, 0, 2, 1, 0);
INSERT INTO `outlet` (`outlet_id`, `outlet_name`, `outlet_type`, `outlet_no`, `location`, `occd_id`, `chan_id`, `route_id`, `reg_id`, `district_id`, `salesrep_id`) VALUES
(1625, 'NEW ALINACHA RESTAURANT', '1', '5056473', 'KAMBAGWA KINONDONI DAR ES SALAAM', 3, 0, 0, 2, 1, 0),
(1626, 'TWITTER 3', '1', '5056370', 'KARAFUU STREET KINONDONI DAR ES SALAAM', 3, 0, 0, 2, 1, 0),
(1627, 'DOUBLE H 3', '1', '5056373', 'KAMBANGWA STREET MAHAKAMANI KINONDONI DAR ES SALAAM', 3, 0, 0, 2, 1, 0),
(1628, 'NEW FULL SHANGWE 3', '1', '5056376', 'KOMAKOMA STREET KINONDONI DAR ES SALAAM', 3, 0, 0, 2, 1, 0),
(1629, 'VISION PUB', '1', '5037243', 'UKONGA MADAFU ILALA DAR ES SALAAM', 4, 0, 0, 1, 1, 0),
(1630, 'NYAGISYA PUB', '1', '5040672', 'MAZIZINI UKONGA DAR ES SALAAM', 4, 0, 0, 1, 1, 0),
(1631, 'AMANI 2', '1', '5006441', 'MTONI KIJICHI DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(1632, 'CONTAINER PUB', '1', '5045728', 'MTONI KIJICHI NELUKA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1633, 'BLUE ZONE 3', '1', '5019444', 'MTONI KIJICHI CCM STREET DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1634, 'WAKANAI 3', '1', '5000849', 'MTONI KIJICHI KWA BURUDA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1635, 'MZAM3AUNI PUB', '1', '5045212', 'KIJICHI MIANDE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1636, 'MAKUMIRA PUB', '1', '5055763', 'KIJICHI MTONI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1637, 'MADUKA PUB', '1', '5055772', 'JESHI LA MWISHO MGENI NANI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1638, 'MIGOMBANI PUB', '1', '5055734', 'KIJICHI MGENI NANI MBAGALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1639, 'SAFINA PUB', '1', '5055767', 'KIJICHI NAIJERIA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1640, 'GATEWAY BAZAAR PUB', '1', '5055771', 'KIJICHI MIANDE TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1641, 'BABA PUB ', '1', '5055732', 'KIJICHI MGENI NANI MBAGALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1642, 'KABEDEA PUB', '1', '5055780', 'KIJICHI MTONI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1643, 'CECY PUB', '1', '5056275', 'KIJICHI NJIA YA NG\'OMBE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1644, '3EN CHAME PUB', '1', '5056263', 'KIJICHI MTONI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1645, 'SAWAKA INN PUB', '1', '5056264', 'KIJICHI MGENI NANI MBAGALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1646, 'MAISHA PLUS PUB', '1', '5056261', 'MBAGALA KUU KICHEMCHEM DAR ES ALAAAM', 0, 0, 0, 1, 1, 0),
(1647, '3EN GUEST HOUSE', '1', '5056253', 'KIJICHI TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1648, 'AMAZON 3', '1', '5098794', 'MAIL MOJA KIBAHA COAST REGION', 0, 0, 0, 3, 1, 0),
(1649, 'BAB D 3', '1', '5054945', 'MKOANI PICHA YA NDEGE KIBAHA PWANI', 0, 0, 0, 3, 1, 0),
(1650, 'IRAMBA 3', '1', '5047504', 'MAILI MOJA SHULE KIBAHA COAST REGION', 0, 0, 0, 3, 1, 0),
(1651, 'MNARANI PUB', '1', '5054978', 'MNARANI LOLIONDO KIBAHA PWANI', 0, 0, 0, 3, 1, 0),
(1652, 'KWAMASAWE 3', '1', '5055702', 'MKOANI MAILI MOJA STAND KIBAHA', 0, 0, 0, 3, 1, 0),
(1653, 'MAYU PARK', '1', '5040550', 'KWA MATHIAS MSIKITINI KIBAHA', 0, 0, 0, 3, 1, 0),
(1654, 'NGOWI RESTAURANT', '1', '5022937', 'KWA MATHIAS KIBAHA COAST REGION', 0, 0, 0, 3, 1, 0),
(1655, 'FLORIDA 3', '1', '5047361', 'MWEMBE  TAYARI MATHIAS KIBAHA COAST REGION', 0, 0, 0, 3, 1, 0),
(1656, 'MKUU PUB', '1', '5047518', 'TANITA STREET KIBAHA', 0, 0, 0, 3, 1, 0),
(1657, 'LIVINGSTONE 3', '1', '5049371', 'KWA MATHIAS STAND KIBAHA', 0, 0, 0, 3, 1, 0),
(1658, 'KASSIM 2', '1', '5047368', 'KWA MBONDE GROUND KIBAHA PWANI', 0, 2, 0, 3, 1, 0),
(1659, 'NGOWI 3', '1', '5047352', 'KONGOWE SHELI KIBAHA PWANI', 0, 0, 0, 3, 1, 0),
(1660, 'SEVEN SEVEN PARK', '1', '5008774', 'KWAMFIPA MIEMBE SABA KIBAHA', 0, 0, 0, 3, 1, 0),
(1661, 'NYARUSI 3', '1', '5043697', 'KONGOWE STAND BUS KIBAHA', 0, 0, 0, 3, 1, 0),
(1662, 'NAMBELEMA 3', '1', '5047476', 'MWENDAPOLE MSIKITINI COASTAL REGION KIBAHA', 0, 0, 0, 3, 1, 0),
(1663, 'MSUYA PUB', '1', '5047353', 'KONGOWE KATI KIBAHA PWANI', 0, 0, 0, 3, 1, 0),
(1664, 'BUTAM 3', '1', '5047358', 'MSANGANI ROAD KIBAHA', 0, 0, 0, 3, 1, 0),
(1665, 'PIKO 3', '1', '5040546', 'MSANGANI ROAD NEAR MWEMBE TAYARI KIBAHA', 0, 0, 0, 3, 1, 0),
(1666, 'K\'S RESTAURANT', '1', '5043000', 'PICHA YA NDEGE SHELI MAILI MOJA KIBAHA PWANI', 0, 0, 0, 3, 1, 0),
(1667, 'CONTAINER 3', '1', '5098791', 'MAIL MOJA STAND KIBAHA COAST REGION', 0, 0, 0, 3, 1, 0),
(1668, 'TAMAL HOTEL', '1', '5044209', 'MWENGE KIJIJINI KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1669, 'SUNGU CHINI 3', '1', '5046620', 'MWENGE NZASA DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1670, 'DUKA LA MADAWA ', '1', '5045313', 'MWENGE JESHINI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1671, 'KIFUMBO HUT ', '1', '5005523', 'MWENGE NZASA DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1672, 'SHIRIMA 2', '1', '5045377', 'KINONDONI BIAFRA DAR ES SALAAM', 3, 2, 0, 2, 1, 0),
(1673, 'NDASHAU 3', '1', '5021498', 'MWANANYAMALA KWA KOPA KINONDONI DAR ES SALAAM', 3, 0, 0, 2, 1, 0),
(1674, 'BEN PUB', '1', '5005545', 'MOROCCO ROAD KINONDONI B DAR ES SALAAM', 3, 0, 0, 2, 1, 0),
(1675, 'KASITU 2', '1', '5041433', 'KIBAMBA CCM KIBAMBA DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(1676, 'NEW PARIS 3', '1', '5037643', 'KIBAMBA HOSPITAL KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1677, 'GARDEN 3', '1', '5037222', 'KILUVYA MADUKANI KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1678, 'PEACE PUB', '1', '5038568', 'KILUVYA KWA KOMBA KIBAMBA KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1679, 'SHIMBIKATI PUB', '1', '5042868', 'KILUVYA MADUKANI KILUVYA DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1680, 'G.G GARDEN 2', '1', '5038585', 'KILUVYA MADUKANI KIBAMBA KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1681, 'ROYAL GROCERY', '1', '5015260', 'KILUVYA DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1682, 'LUGURUNI PARK', '1', '5043218', 'LUGURUNI KIBAMBA KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1683, 'EDEN PARK 3', '1', '5030796', 'LUGURUNI KIBAMBA KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1684, 'MSANGENI 3', '1', '5044111', 'NJIA PANDA YA SHULE KIBAMBA DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1685, 'BOTINI PUB', '1', '5032867', 'KILUVYA GOGONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1686, 'JON DEE PUB', '1', '5056945', 'KIBAMBA KWEMBE DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1687, 'TRIPPLE C SUMMIT PUB', '1', '5056944', 'KIBAMBA CCM KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1688, 'MAGRAM HOTEL', '1', '5057865', 'TABATA SHULE BWAWANI STREET DAR ES SALAAM', 1, 0, 1, 1, 1, 0),
(1689, 'APC CONFERENCE HOTEL', '1', '5049641', 'MBWENI MOGA KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1690, 'URIO 3', '1', '5032813', 'BUNJU B STAND DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1691, 'MANGARIRI 3', '1', '5057668', 'KIRUNGURE DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1692, 'KIRIMANI PARK', '1', '5057651', 'MBWENI MOGA DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1693, 'DOREN 3', '1', '5057648', 'BUNJU KIRUNGURE DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1694, 'JET GROCERY', '1', '5057652', 'MBWEN UBUNGO DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1695, 'AMIGO 3', '1', '5032810', 'BUNJU A FANAKA DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1696, 'RUVUMA 3', '1', '5007023', 'BUNJU A BUNJU STAND KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1697, 'TETA PUB', '1', '5056805', 'TETA MBWENI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1698, 'GALAXY PUB', '1', '5056958', 'BOKO MAGENGENI KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1699, 'MNONO PUB', '1', '5006630', 'KWA JESHI STAND KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1700, 'GIAN LODGE', '1', '5034034', 'BANANA UKONGA ILALA DAR ES SALAAM', 4, 0, 0, 1, 1, 0),
(1701, 'GERAGE PUB', '1', '5052890', 'MAJUMBA SITA UKONGA ILALA DAR ES SALAAM', 4, 0, 0, 1, 1, 0),
(1702, 'KIOTA JUNGLE RESTAURANT', '1', '5009337', 'SITAKISHARI BANANA UKONGA DAR ES SALAAM', 4, 0, 0, 1, 1, 0),
(1703, 'DEO PUB', '1', '5057108', 'UKONGA STAKISHARI DAR ES SALAAM', 4, 0, 0, 1, 1, 0),
(1704, 'BILLIONARE PUB', '1', '5037683', 'KIBAKI STREET MIKOCHENI A KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1705, 'TEXAS BAY WASH', '1', '5006043', 'GARDEN ROAD MIKOCHENI KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1706, 'TIPS LOUNGE RESTAURANT', '1', '5052897', 'VIKAWE STREET MIKOCHENI A KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1707, 'NEW FOREST PUB & CAR WASH', '1', '5057345', 'TEGETA KIBAONI KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1708, 'GM 3', '1', '5001662', 'TEGETA AZANIA KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1709, 'BM COMPLEX 3', '1', '5024069', 'TEGETA AZANIA STAND DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1710, 'NYAKORO LODGE', '1', '5049480', 'TEGETA MKANADA KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1711, 'GDB RESTAURANT', '1', '5022966', 'TEGETA KWA NDEVU MISSION STREET DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1712, 'DARAJANI PUB', '1', '5022967', 'TEGATA KWA NDEVU DAR   ES SALAAM', 0, 0, 0, 3, 1, 0),
(1713, 'UMOJA PUB', '1', '5032807', 'MIVUMONI UMOJA ROAD DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1714, 'NDUSYEPO PUB', '1', '5032868', 'TEGETA KWA NDEVU MAGENGENI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1715, 'MANKA RESTAURANT', '1', '5015414', 'TEGETA MSICHOKE KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1716, '255 PUB', '1', '5032870', 'TEGETA NGUZO ZA ZANZI3 DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1717, 'VILLAGE PARK', '1', '5056527', 'TEGETA CONTAINER MADALE KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1718, 'BEN 10 PUB', '1', '5032869', 'WAZO OPPOSITE TEMA INTERPRISES DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1719, 'MSERI 3', '1', '5005930', 'KIBAONI NYUKI MATAA KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1720, 'CORNER 3', '1', '5057653', 'WAZO MSIKITINI WAZO ROAD DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1721, 'MAISHA EXECUTIVE HOTEL', '1', '5040182', 'SINZA MAKABURINI KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1722, 'AUNCLE PUB', '1', '5023311', 'SINZA MAWASILIANO KINONDOI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1723, 'G7 PUB', '1', '5047668', 'TABATA KIFURU ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1724, 'BL GROUP PUB', '1', '5048338', 'TABATA KINYEREZI ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1725, 'PUB D', '1', '5049638', 'MBUYUNI MSIKTINI BUS STAND KINYEREZI ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1726, 'STK PUB', '1', '5047669', 'MBUYUNI KINYEREZI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1727, 'G9 PUB', '1', '5048891', 'SALOONO TABATA KINYEREZI ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1728, 'MADIBA PUB', '1', '5047676', 'KICHANGANI KINYEREZI ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1729, 'STRESS FREE PUB', '1', '5048899', 'KIBAGA KINYEREZI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1730, 'EDEN PUB', '1', '5048355', 'TABATA CHAMA ILALA DAR ES SALAAM', 0, 0, 3, 1, 1, 0),
(1731, 'MGONJA PARK & RESTAURANT', '1', '5047090', 'CHALINZE MWARABU PWANI', 0, 0, 0, 3, 1, 0),
(1732, 'NDESAMBURO RESTAURANT', '1', '5007229', 'CHALINZE BWILINGU BAGAMOYO', 0, 0, 0, 3, 1, 0),
(1733, 'MAISHA PLUS 3', '1', '5037710', 'CHALINZE BWILINGU PWANI BAGAMOYO', 0, 0, 0, 3, 1, 0),
(1734, 'ROSE GROCERY', '1', '5023454', 'CHALINZE MAGINDU PWANI', 0, 0, 0, 3, 1, 0),
(1735, 'CHEYO MSATA 3', '1', '5047901', 'MSATA NJIA PANDA CHALINZE PWANI', 0, 0, 0, 3, 1, 0),
(1736, 'DRIVE INN LOUNGE', '1', '5048768', 'MSATA PWANI CHALINZE ', 0, 0, 0, 3, 1, 0),
(1737, 'LUGOBA PETROL STATION 01', '1', '5098302', 'CHALINZE LUGOBA PWANI', 0, 0, 0, 3, 1, 0),
(1738, 'SAIPI 3', '1', '5021731', 'MIKOROSHINI CHALINZE PWANI', 0, 0, 0, 3, 1, 0),
(1739, 'SENGEREMA 3', '1', '5054956', 'BWAWANI BAGAMOYO CHALINZE PWANI', 0, 0, 0, 3, 1, 0),
(1740, 'ZANZI3 CAFÉ', '1', '5012596', 'KIMARA 3UTI KINONDONI DAR ES SALAAM', 0, 0, 3, 3, 1, 0),
(1741, 'MKULIMA 3', '1', '5005972', 'KONA KIMARA KINONDONI DAR ES SALAM', 0, 0, 0, 3, 1, 0),
(1742, 'NEW SUKA 3', '1', '5040416', 'KIMARA SUKA KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1743, 'PERFECT 2 PUB', '1', '5038598', 'KIMARA MWISHO KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1744, 'E.M PUB', '1', '5044259', 'KIMARA MWISHO DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1745, 'ANTAZ 3', '1', '5055590', 'KIMARA STOP OVER KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1746, 'VICTORIOUS GENESIS HALL', '1', '5038597', 'KIMARA TEMBONI KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1747, 'ROYAL PUB', '1', '5057313', 'KIMARA 3UTI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1748, 'GENESIS HEALTH CLUB', '1', '5016456', 'KIMARA 3UTI KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1749, 'ATLANTA 3', '1', '5056335', 'MABIBO SOKONI MANZESE DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1750, 'STAR VIEW 3', '1', '5057070', 'UBUNGO MANZESE DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1751, 'SARAKIKI CATERING', '1', '5047240', 'UBUNGO MANZESE KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1752, 'S-R 3', '1', '5012857', 'TABATA AREA KINONDONI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1753, 'MWARABU PUB', '1', '5040978', 'TABATA AREA KINONDONI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1754, 'HOSTEL 3', '1', '5021010', 'TABATA AREA KINONDONI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1755, 'REMMY 2', '1', '5012103', 'MABIBO HOSTEL KINONDONI AREA DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(1756, 'MARRIOTTI HOTEL', '1', '5012856', 'TABATA AREA KINONDONI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1757, 'SHIRIMA 3', '1', '5001713', 'TABATA AREA KINONDONI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1758, 'VEGETABLE 3', '1', '5030899', 'KIVULE MATEMBELE TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1759, 'GISTO PUB', '1', '5056740', 'UKONGA MAJOHE KWA DIWANI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1760, 'NANSIO PUB', '1', '5056747', 'KITUNDA MWANAGATI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1761, 'MUUNGANO PARK PUB', '1', '5097119', 'KIVULE CCM ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1762, 'NDAMENI 3', '1', '5034030', 'KIGOGO DARAJANI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1763, 'TRINA EXECUTIVE 3', '1', '5007094', 'KINZUDI MAJENGO DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1764, 'BIG BROTHER 3', '1', '5032932', 'KUNDUCHI KILIMAHEWA SALASALA DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1765, 'CLUB RONADO', '1', '5032928', 'TEGETA SKANKA DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1766, 'ARNOLD PUB', '1', '5042808', 'TEGETA SKANKA DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1767, 'TRANSFORMA PUB', '1', '5032933', 'KUNDUCHI SALASALA KWA BABU DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1768, 'CONTENA GROCERY', '1', '5032926', 'TEGETA SKASNKA DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1769, 'SEMA 3', '1', '5021264', 'MBEZI AFRICANA DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1770, 'OSTRICH PUB', '1', '5032767', 'MBEZI SALASALA MAGENGENI DAR', 0, 0, 0, 3, 1, 0),
(1771, 'JS LOUNGE', '1', '5056292', 'MBEZI KILONGAWIMA AFRICANA DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1772, 'ROSE PUB', '1', '5037067', 'MBUYUNI KUNDUCHI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1773, 'JOB 3', '1', '5005878', 'MBUYUNI KUNDUCHI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1774, 'HOT SPOT PUB', '1', '5024088', 'KUNDUCHI SALASALA MADUKANI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1775, 'KING SIZE PUB', '1', '5046572', 'KUNDUCHI SALASALA DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1776, 'LITO STAR PARK', '1', '5018741', 'KUNDUCHI SALASALA UWANJA WA SONG GAS DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1777, 'CLUB NG\'OMBE', '1', '5032775', 'MSICHOKE TEGETA ROAD KUNDUCHI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1778, 'JUNCTION PUB', '1', '5002512', 'KUNDUCHI BEACH DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1779, 'MALANJA EXECUTIVE INN', '1', '5006668', 'BAHARI BEACH KUNDUCHI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1780, 'SICK PUB', '1', '5044756', 'MTONGANI KUNDUCHI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1781, 'MALANJA ANNEX', '1', '5006647', 'KUNDUCHI MTONGANI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1782, 'ROCK CITY PUB', '1', '5000609', 'KUNDUCHI 2 SAND KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1783, 'NGALAWA 3', '1', '5005216', 'MTONGANI KUNDUCHI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1784, 'AMAHORO PUB', '1', '5045008', 'KUNDUCHI SALASALA DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1785, 'LITO STAR PARK', '1', '5018741', 'KUNDUCHI SALASALA UWANJA WA SONG GAS DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1786, 'TRIPPLE G PUB', '1', '5026020', 'KUNDUCHI MACHIMBO MTONGANI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1787, 'ROSE 2', '1', '5039961', 'MWENGE KIJIJINI DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(1788, 'TAUSI 3', '1', '5021230', 'MBAGALA CHARAMBE TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1789, 'MASSAWE 2', '1', '5056510', 'SINZA MAKABURINI DAR ES SALAAM', 0, 2, 0, 2, 1, 0),
(1790, 'LION HOTEL', '1', '5057066', 'SINZA LION DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1791, 'PRINCESS HALL', '1', '5006652', 'SINZA KWA REMMY KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1792, 'CHOLE RESTAURANT', '1', '5008663', 'CHOLE STREET MASAKI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1793, 'SHANGRILA 3', '1', '5009303', 'HAILE SELASIE ROAD OYSTERBAY DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1794, 'FRIENDS POINT PUB', '1', '5048249', 'CHOLE ROAD MASAKI KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1795, 'ULAYA ULAYA PARK VIEW', '1', '5023486', 'SINZA SHEKILANGO KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1796, 'GALITOS RESTAURENT', '1', '5033810', 'SINZA MADUKANI KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1797, 'MAWELA 3', '1', '5005262', 'SINZA VATCAN KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1798, 'MAWELA 3', '1', '5005262', 'SINZA VATCAN KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1799, 'MAWELA 3', '1', '5005262', 'SINZA VATCAN KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1800, 'MAWELA 3', '1', '5005262', 'SINZA VATCAN KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1801, 'VILLAGE BERBER Q', '1', '5032619', 'MSASANI MWISHO DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1802, 'SIS CLUB', '1', '5042686', 'MSASANI MACHO ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1803, 'LANGO LA JIJI 3', '1', '5012827', 'MAGOMENI MIKUMI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1804, 'TRAVETINE HOTEL', '1', '5039046', 'MAGOMENI USALAMA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1805, 'UMOJA GROCERY', '1', '5044276', 'KIMARA BONYOKWA DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1806, 'DIGA CAR WASH', '1', '5044659', 'KIMARA VINANE KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1807, 'SPYDER PUB', '1', '5055846', 'KIMARA BONYOKWA DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1808, 'UPENDO PUB', '1', '5040899', 'KIMARA STOP OVER KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1809, 'MANGI 2', '1', '5005359', 'KIMARA STOP OVER STREET DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(1810, 'TWO IN ONE STORE', '1', '5098906', 'KIMARA STOP OVER DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1811, 'NYANJIGE PUB', '1', '5055844', 'KIMARA STOP OVER KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1812, 'TEMBONI GARDEN', '1', '5047488', 'TEMBONI KIMARA KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1813, 'HILL SIDE PARK', '1', '5055842', 'KIMARA GOLANI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1814, 'TUPENDANE PUB', '1', '5047489', 'KIMARA SUKA KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1815, 'BEDA FARM PARK', '1', '5056343', 'MBEZI MPIGI MAGOHE DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1816, 'SUN SIRO 3', '1', '5007758', 'MBEZI LUIS KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1817, 'MSOCOPA PUB', '1', '5032602', 'MBEZI MAKABE DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1818, 'HILL TOP PUB', '1', '5041633', 'MBEZI MAKABE KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1819, '1S PUB', '1', '5039284', 'MBEZI MAKABE KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1820, 'BOCHI CANTEEN', '1', '5048479', 'MBEZI KWA MSUGURI KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1821, 'MWAKA 3', '1', '5048775', 'MBEZI KWA MSUGURI KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1822, 'KILIMA 3', '1', '5041108', 'MBEZI LUIS KIBANDA CHA MKAA DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1823, 'MCHINA 2', '1', '5012839', 'MBEZI KIBANDA CHA MKAA DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(1824, 'NYAMIZI LODGE', '1', '5098337', 'MBEZI KWA YUSUPH KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1825, 'LA FACE PARK', '1', '5003793', 'MBEZI MARAMBA MAWILI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1826, 'MOON RISING PUB', '1', '5039278', 'MBEZI MAGARI SABA KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1827, 'BONDENI HOTEL', '1', '5015934', 'UWAZANI MAGOMENI KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1828, 'NDEKHA HOTEL', '1', '5006309', 'KONDOA MAGOMENI KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1829, 'GRAND HOTEL', '1', '5027541', 'KONDOA MAGOMENI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1830, 'MANNA HOTEL', '1', '5006319', 'MAKUTI A MAGOMENI KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1831, 'LUKUMBESO 3', '1', '5098255', 'SOMANGA MAKUTI MAGOMENI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1832, 'HARARE INN', '1', '5002453', 'KARIAKOO ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1833, 'ZEBRA 3', '1', '5099718', 'SIFA MTONI TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1834, 'KEYS HOTEL', '1', '5006552', 'KIPATA GEREZANI KARIAKOO DAR ES SALAAM', 2, 0, 0, 2, 1, 0),
(1835, 'KEYS HOTEL', '1', '5006552', 'KIPATA GEREZANI KARIAKOO DAR ES SALAAM', 2, 0, 0, 2, 1, 0),
(1836, 'SAPHIRE HOTEL', '1', '5041893', 'LINDI GEREZANI ILALA DAR ES SALAAM', 2, 0, 0, 2, 1, 0),
(1837, 'SHUWARY HOTEL', '1', '5099169', 'SOMALI GEREZANI ILALA DAR ES SALAAM', 2, 0, 0, 2, 1, 0),
(1838, 'J.J 3 & HOTEL', '1', '5055353', 'LIVINGSTONE STREET UDOE KARIAKOO DAR ES SALAAM', 2, 0, 0, 2, 1, 0),
(1839, 'MAPAMBANO 3', '1', '5032937', 'VINGUNGUTI MIEMBENI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1840, 'SANCHO PUB', '1', '5012109', 'VINGUNGUTI BUTIAMA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1841, 'AMSHA AMSHA PUB', '1', '5006676', 'VINGUNGUTI MJI MPYA KOMBO DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1842, 'BELLA PUB', '1', '5017615', 'VINGUNGUTI KOMBO DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1843, 'JOSE PUB', '1', '5035312', 'VINGUNGUTI BUTIAMA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1844, 'KAULETI INN II 3', '1', '5012606', 'VINGUNGUTI SIMBA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1845, 'EMMANUEL PUB', '1', '5018653', 'VINGUNGUTI BECCO DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1846, 'RK PUB', '1', '5009002', 'VINGUNGUTI MAJENGO DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1847, 'FIRST AND LAST HBR', '1', '5019849', 'UWANJA WA NDEGE KARAKATA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1848, 'HIGHWAY 3', '1', '5037435', 'AIRPORT MOGO DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1849, 'RELINI GARDEN HBR', '1', '5037824', 'KARAKATA UWANJA WA NDEGE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1850, 'GABOS PUB', '1', '5049640', 'KARAKATA MOGO ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1851, 'TITANIC 3', '1', '5034671', 'MTAKUJA VINGUNGUTI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1852, 'SAJA PUB', '1', '5052183', 'VINGUNGUTI MTAKUJA RELINI TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1853, 'NEW SUPRIME HOTEL', '1', '5008650', 'NYERERE ROAD GREZANI ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1854, 'PRITORIAL LODGE & GUEST HOUSE', '1', '5037343', 'TABATA DARAJANI CHAMA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1855, 'SIMA PUB', '1', '5008127', 'MABIBO MAGOMENI KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1856, 'TWO WAYS PUB', '1', '5031599', 'MABIBO FARASI MAGOMENI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1857, 'PACHA PUB', '1', '5056278', 'MABIBO FARASI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1858, 'AMBAGAI 3', '1', '5055526', 'MABIBO MWEMBENI UBUNGO DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1859, 'FACEBOOK 3', '1', '5016170', 'MABIBO MAKUTANO DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1860, 'MAGOLE LODGE', '1', '5022411', 'KITUNDA MAGOLE SHULE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1861, 'SEKENKE RESORT', '1', '5042882', 'KITUNDA KIZUIANI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1862, 'TRIPLE R PUB', '1', '5042405', 'KITUNDA MACHIMBONI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1863, 'PATAMU PUB', '1', '5048520', 'KITUNDA KATI POSTA KINONDONI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1864, 'ROSE GROCERY', '1', '5022246', 'KITUNDA HOSPITAL DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1865, 'CHEERS PUB', '1', '5047122', 'KITUNDA NYANGASA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1866, 'MUSHI 2', '1', '5042888', 'KITUNDA KICHANGANI ILALA DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(1867, 'TSUNAMI PUB', '1', '5033091', 'KIBEBERU SUNAMI ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1868, 'PENTAGON 3', '1', '5042678', 'KIVULE NJIA PANDA YA SHULE ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1869, 'PENTAGON 3', '1', '5042678', 'KIVULE NJIA PANDA YA SHULE ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1870, 'ONE TOUCH 3', '1', '5022774', 'KITUNDA KIVULE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1871, 'JAY DEE 3', '1', '5041898', 'MACHIMBONI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1872, 'SIHA 3', '1', '5030992', 'KITUNDA CCM DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1873, 'JOYCE PUB', '1', '5032491', 'KITUNDA KANYANTIRA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1874, 'MAGOLE PUB', '1', '5030621', 'KITUNDA MAGOLE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1875, 'MSERI MVANGE 3', '1', '5047218', 'SINZA E SINZA E  KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1876, 'AIRTEL CANTEEN', '1', '5097656', 'AIRTEL MOROCCO KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1877, 'TOROKAUJE 3BEQUE', '1', '5013693', 'ADA ESTATE KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1878, 'TOROKAUJE 3BEQUE', '1', '5013693', 'BLOCK 41 KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1879, 'KILIMANJARO PUB', '1', '5044120', 'KIMOSCOW STREET KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1880, 'ZAHABU PUB', '1', '5012774', 'MKWAJUNI KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1881, 'UROPEAN HOTEL', '1', '5006415', 'MKWAJUNI KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1882, 'FJ HOTEL', '1', '5019652', 'LIVINGSTONE KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1883, 'MWANANCHI FAST FOOD', '1', '5056072', 'MKWAJUNI KINODNONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1884, 'DA HOMEY PUB', '1', '5044009', 'UBALOZINI KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1885, 'BLACK POINT 3', '1', '5032818', 'TUNISIA ROAD KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1886, 'BLACK POINT 3', '1', '5032818', 'TUNISIA ROAD KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1887, 'BLACK POINT 3', '1', '5032818', 'TUNISIA ROAD KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1888, 'FERNANDIS PUB', '1', '5011009', 'KINONDONI UFIPA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1889, 'MCHAPAKAZI CAR WASH', '1', '5043721', 'KINONDONI ROAD DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1890, 'CHILICHILI RESTAURANT', '1', '5049377', 'KISUTU KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1891, 'HUNTER\'S PUB', '1', '5099737', 'TX MARKET KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1892, 'GIMA PUB', '1', '5027049', 'MWEMBEJINI KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1893, 'YASINTA PUB', '1', '5056764', 'MWEMBEJINI KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1894, 'MAPOKEZI PUB', '1', '5042127', 'KINONDONI SHAMBA KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1895, 'COPA CABANA', '1', '5034876', 'TOGO KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1896, 'CALIFONIA PUB', '1', '5097266', 'BOKO CALIFONIA DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1897, 'PINK DIAMOND', '1', '5032979', 'KUNDUCHI UNUNIO KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1898, 'BASNAHENE 3', '1', '5016393', 'TEGETA UNUNIO A KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1899, 'HAWAII BEACH PUB', '1', '5000249', 'TEGETA UNUNIO A KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1900, 'PENDEZA TOTO 2', '1', '5047480', 'TEGETA NYUKI DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(1901, 'FAMILY 3', '1', '5037165', 'TEGETA KIBO DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1902, 'KV 3', '1', '5007963', 'UBUNGO MAZIWA KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1903, 'KINYAIYA PUB', '1', '5001372', 'RIVERSIDE UBUNGO KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1904, 'NEW VILLAGE 3', '1', '5013218', 'UBUNGO MAZIWA KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1905, 'LONDON 3', '1', '5017674', 'UBUNGO MAZIWA KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1906, 'MIAM PUB', '1', '5037215', 'KISIWANI UBUNGO KINODNONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1907, 'DOVYA INN 3', '1', '5000245', 'YOMBO DOVYA TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1908, 'MPINGA PUB', '1', '5097518', 'TEMEKE YOMBO DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1909, 'SOLAR POWER PUB', '1', '5045054', 'TEMEKE YOMBO MAKANGARAWE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1910, 'DAR SAFARI PARK', '1', '5001296', 'TEMEKE YOMBO BUZA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1911, 'SAVOY 3', '1', '5097537', 'TEMEKE BUZA KANISANI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1912, 'SWAI 2', '1', '5047755', 'TEMEKE KIPELA B DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(1913, 'DELUXE 3', '1', '5048349', 'TEMEKE BUZA MJI MPYA TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1914, 'ZAKARIA KWEKA PUB', '1', '5030610', 'TEMEKE BUZA CAPETOWN DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1915, 'CAPETOWN 3', '1', '5031131', 'TEMEKE BUZA CAPETOWN DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1916, 'IPONJOLA PUB', '1', '5097545', 'TEMEKE BUZA CAPETOWN DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1917, 'OLDIES PUB', '1', '5003725', 'TEMEKE BUZA MASHINE YA MAJI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1918, 'MMASAI PUB', '1', '5048341', 'TEMEKE BUZA MASHINE YA MAJI TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1919, 'BONEY M PUB', '1', '5048348', 'TEMEKE BUZA MASHINE YA MAJI TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1920, 'FURAHA GROCERY', '1', '5048343', 'TEMEKE BUZA MASHINE YA MAJI ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1921, 'EAST LONDON 3', '1', '5097561', 'TEMEKE BUZA LULENGE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1922, 'MARY PUB', '1', '5022346', 'TEMEKE BUZA KANISANI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1923, 'BWENDES RESORT', '1', '5024562', 'TEMEKE YOMBO DOVYA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1924, 'KWEKA GROCERY', '1', '5000019', 'TEMEKE YOMBO KILAKALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1925, 'MICHUNGWANI 3', '1', '5009131', 'YOMBO KILAKALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1926, 'GIRAFFE HOTEL', '1', '5014658', 'WHITE SAND DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1927, 'HAIDALY PUB', '1', '5048502', 'MBEZI BEACH TANK BOVU KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1928, 'THE WING MAN 3', '1', '5057340', 'MBEZI BEACH KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1929, 'G SPORT 3', '1', '5048247', 'J.K NYERERE NDAFU STREET KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1930, 'ROYAL CLASSIC PUB', '1', '5014784', 'MAKONDE STREET MBEZI BEACH KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1931, 'TWIGA HALL SUNSET', '1', '5006359', 'MAKONDE STREET MBEZI BEACH KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1932, 'TWIGA HALL SUNSET', '1', '5006359', 'MAKONDE STREET MBEZI BEACH KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1933, 'TWIGA HALL SUNSET', '1', '5006359', 'MAKONDE STREET MBEZI BEACH KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1934, 'TWIGA HALL SUNSET', '1', '5004245', 'MAKONDE STREET MBEZI BEACH KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1935, 'TEMBO HALL SUNSET', '1', '5013713', 'MAKONDE STREET MBEZI BEACH KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1936, 'BUFFALO HALL', '1', '5098194', 'MAKONDE MBEZI BEACH KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1937, 'BUFFALO HALL', '1', '5098194', 'MAKONDE STREET MBEZI BEACH KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1938, 'MNARANI PUB', '1', '5046139', 'MBEZI JUU MBEZI BEACH DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1939, 'CONTAINER PUB', '1', '5040604', 'AFRIVANA STREET MBEZI BEACH KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(1940, 'NJOMBE PUB', '1', '5045348', 'KWASAKU TOANGOMA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1941, 'KIRURUMO 2', '1', '5002833', 'TOANGOMA KONGOWE DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(1942, 'MALVIN RESTAURANT', '1', '5049709', 'TOANGOMA MSIKITINI KONGOWE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1943, 'MUJO PUB', '1', '5057684', 'CHANIKA ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1944, 'PESA MADAFU PUB', '1', '5057688', 'CHANIKA ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1945, 'ITALIAN SAFARI PARK', '1', '5012171', 'ITALIAN ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1946, 'FARIDI 2', '1', '5039693', 'TANDAMTI LIKOMA DAR ES SALAAM', 0, 2, 0, 2, 1, 0),
(1947, 'AKUBU PARADISE HOTEL', '1', '5030868', 'MAGILA STREET KARIAKOO DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1948, 'CORNER GROCERY', '1', '5041244', 'MBANDA MASASI STREET KARIAKOO ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1949, 'NEW CAMP GUEST HOUSE', '1', '5022761', 'MCHIKICHINI ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1950, 'SEZARI PARK', '1', '5099565', 'MCHIKICHINI ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1951, 'YUETAN HOTEL', '1', '5006431', 'RUFIJI NYAMWEZI KARIAKOO ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1952, 'DALLAS HOTEL', '1', '5006780', 'RUFIJI SWAHILI KARIAKOO ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1953, 'EBENEZER DESTEFANO HOTEL', '1', '5040734', 'AMANI KARIAKOO DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1954, 'EBENEZER DESTEFANO HOTEL', '1', '5040734', 'AMANI KARIAKOO DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1955, 'NEW HAPPY HOTEL', '1', '5006279', 'LUMUMBA UNGONI KARIAKOO DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1956, 'IDEAL HOTEL', '1', '5099603', 'UNGONI LUMUMBA KARIAKOO ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1957, 'IDEAL HOTEL', '1', '5099603', 'UNGONI LUMUMBA KARIAKOO ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1958, 'SAYARI HOTEL', '1', '5020295', 'GOGO-KARIAKOO DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1959, 'SPICE HOTEL', '1', '5099908', 'NARUNG\'OMBE ILALA KARIAKOO DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1960, 'KING PALACE HOTEL', '1', '5007267', 'UHURU STREET KARIAKOO DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1961, 'DDC 3', '1', '5048601', 'CONGO MHONDA ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1962, 'LANDMARK HOTEL', '1', '5007265', 'CONGO STREET KARIAKOO DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1963, 'RUFIJI GEST HOUSE', '1', '5016002', 'KARIAKOO NARUNG\'OMBE DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1964, 'TROPICAL HOTEL', '1', '5024206', 'KARIAKOO NARUNG\'OMBE DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1965, 'DURBAN HOTEL', '1', '5005609', 'UDOWE KARIAKOO ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(1966, 'CONTAINER PUB', '1', '5014425', 'TABATA KIMANGA KAMENE SCHOOL DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1967, 'MUSOMA HALL', '1', '5002927', 'TANDIKA MAGURUWE TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1968, 'MBUNI 3', '1', '5099813', 'TANDIKA KILIMA HEWA TEMEKE', 0, 0, 0, 1, 1, 0),
(1969, 'TAUSI LODGE HBR', '1', '5003077', 'TANDIKA MAGGHOROFANI TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1970, 'AFRICA LODGE', '1', '5035268', 'TANDIKA KIPUNGO TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1971, 'JUMBA LA DHAHABU 3', '1', '5001352', 'TANDIKA KICHANGANI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1972, 'MZEE GUEST HOUSE', '1', '5002933', 'TANDIKA BEREGE TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1973, 'SWAHIBA HOTEL', '1', '5099634', 'TANDIKA TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1974, 'TEMEKE HOTEL', '1', '5037142', 'TANDIKA KICHANGANI TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1975, 'TEMEKE HOTEL', '1', '5037142', 'TANDIKA KICHANGANI TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1976, 'BOSCO GROCERY', '1', '5016258', 'TANDIKA MAGHOROFANI TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1977, 'CHADEMA 3', '1', '5099048', 'KIWALANI BOMBOM CHADEMA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1978, 'KOYANGA PARK', '1', '5097731', 'KIWALANI KIJIWE SAMLI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1979, 'RIVER GARDEN HBR', '1', '5014590', 'KIWALANI BINTI MUSSA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1980, 'MONIE ANEX PUB', '1', '5025480', 'YOMBO VITUKA LUMO DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1981, 'NEW GAMBE PUB', '1', '5052174', 'YOMBO VITUKA MACHIMBO TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1982, 'PADE MAPAMBANO PUB', '1', '5098013', 'YOMBO VITUKA SIGARA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1983, 'NILE HOTEL', '1', '5098366', 'YOMBO SIGARA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1984, 'NEW BUSHMAN 3', '1', '5027284', 'YOMBO VITUKA SIGARA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1985, 'NILE 3', '1', '5007206', 'YOMBO VITUKA SIGARA TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1986, 'KISAUNI GARDEN', '1', '5039494', 'KIWALANI BOMBOM DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1987, 'NYAMBIZI PUB', '1', '5010857', 'MBAGALA SABASABA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1988, 'PR HOTEL', '1', '5099342', 'KITOMONDO TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1989, 'PR HOTEL', '1', '5099342', 'KITOMONDO TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1990, 'PR HOTEL', '1', '5099342', 'KITOMONDO TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1991, 'BULYAGA 3', '1', '5043150', 'LIKWATI TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1992, 'NEW GIRRAFE HOTEL', '1', '5041998', 'SUDAN TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1993, 'SIX PUB', '1', '5002175', 'LIKWATI TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1994, 'IBRA PUB', '1', '5056301', 'USALAMA SANDALI TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1995, 'GRACE CATERING & RESTAURANT', '1', '5056302', 'STEREO STREET TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1996, 'MCHICHA PARK', '1', '5098108', 'UNIBINI CHANG\'OMBE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1997, 'MADILI 80 PUB', '1', '5047540', 'CHANG\'OMBE KEKO JUU TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1998, 'NATIONAL HOTEL II', '1', '5002546', 'NGOMATI STREET CHANG\'OMBE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(1999, 'CLUB INFERNOL HBR', '1', '5003457', 'KEKO JUU CHANG\'OMBE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2000, 'ASEEL FOOD RESTAURANT', '1', '5005297', 'CHANG\'OMBE TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2001, 'SS PUB', '1', '5022535', 'KEKO JUU TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2002, 'SARAH KIKI CANTEEN', '1', '5004021', 'KEKO MWANGA TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2003, 'MBWERA PUB', '1', '5039504', 'CHANG\'OMBE TAIFA TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2004, 'NEW NGEKEWA 3', '1', '5002466', 'MWANGA STREET KEKO DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2005, 'CAFETERIA I ', '1', '5099875', 'MTONI SABASABA TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2006, 'DIPLOMACIA CANTEEN', '1', '5035639', 'KURASINI TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2007, 'CONTAINER HBR', '1', '5002751', 'KURASINI TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2008, 'THE PUB ONE', '1', '5037479', 'KURASINI UHASIBU TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2009, 'J.S HOTEL', '1', '5032094', 'MTONI KWA AZIZI ALLY TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2010, 'KURASINI FAMILY', '1', '5001426', 'KURASINI MINAZINI TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2011, 'PENTAGON PUB', '1', '5012322', 'MIVINJENI TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2012, 'BPSHED CANTEEN(TPA)', '1', '5007835', 'BANDARI TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2013, 'BPSHED CANTEEN(TPA)', '1', '5007835', 'BANDARI TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2014, 'CENTRAL WORK2 CANTEEN(TPA)', '1', '5007834', 'BANDARI TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2015, 'RUDY\'S FARM', '1', '5022498', 'KUNDUCHI BAHARI BEACH KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2016, 'HALBERT KAILUKI HOSPITAL KIOSK', '1', '5030987', 'MIKOCHENI KAILUKI KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2017, 'ARAFA UPENDO HEALTH CENTRE', '1', '5003842', 'TEMEKE SANDAWE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2018, 'ROCHE 2', '1', '5055667', 'MAWENI KIGAMBONI DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(2019, 'REGENCY HOTEL', '1', '5015980', 'MWAI KIBAKI ROAD MIKOCHENI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2020, 'MAKMAR HOTEL', '1', '5057944', 'MSATA CHALINZE', 0, 0, 0, 3, 1, 0),
(2021, 'GREEN LEAF PALACE HOTEL', '1', '5012615', 'KIMARA KOROGWE DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2022, 'R.J FIVE HOTEL', '1', '5011949', 'OMEC KIBANGU UBUNGO DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2023, 'ATRIUMS HOTEL', '1', '5044126', 'MWENGE AFRICASANA DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2024, 'FELIX I 2', '1', '5006521', 'SINZA KINONDONI DAR ES SALAAM', 0, 2, 0, 2, 1, 0),
(2025, 'AGGY DECORATORS KIOSK', '1', '5047268', 'SINZA WHITE INN KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2026, 'LAVISTA INN HOTEL', '1', '5049636', 'MAGOMENI MAKANYA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2027, 'JP HOTEL', '1', '5041874', 'NYAMWEZI GEREZANI ILALA DAR ES SALAAM', 2, 0, 0, 2, 1, 0),
(2028, 'HOT REEF HOTEL', '1', '5040586', 'KIPAWA AIRPORT DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2029, 'HOT REEF HOTEL', '1', '5040586', 'KIPAWA AIRPORT DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2030, 'BOKO IN HOTEL', '1', '5041442', 'BOKO NYAKASANGWE DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2031, 'MBEZI GARDEN HOTEL', '1', '5007325', 'MAKONDE JUU MBEZI BEACH KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2032, 'ULARONI 2', '1', '5097114', 'TANGI BOVU MBEZI BEACH DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(2033, 'ABDALLAH 2', '1', '5003883', 'BAKWATA KONGOWE DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(2034, 'IRIS HOTEL', '1', '5006430', 'AMAN LIVINGSTONE KARIAKOO DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2035, 'NEW HAPPY HOTEL', '1', '5006279', 'UNGONI/LUMUMBA KARIAKOO ILALA', 0, 0, 0, 2, 1, 0),
(2036, 'CATE HOTEL', '1', '5044279', 'KARIAKOO NYAMWEZI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2037, 'MANYANGWE HOTEL', '1', '5019169', 'KARIAKOO TANDAMTI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2038, 'MANYANGWE HOTEL', '1', '5019169', 'KARIAKOO PEMBA STREET ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2039, 'OMAN HOTEL', '1', '5056300', 'MKUMBA TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2040, 'JS HOTEL', '1', '5019060', 'TEMEKE KWA AZIZI ALLY DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2041, 'MASAMA RESORT & LODGE', '1', '5036901', 'MABIBO MAGOMENI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2042, 'MASAWE 2', '1', '5019119', 'KIMARA GOLANI DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(2043, 'NEW SABA 3', '1', '5018808', 'MTONI AZIZI ALLY TEMEKE DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(2044, 'GREEN BELT MARCO INVESTMENT LTD', '1', '5021979', 'BANANA DAR ES SALAAM', 4, 1, 0, 1, 1, 0),
(2045, 'TARIMO 2', '1', '5034524', 'MBEZI KWA MSUGURI DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(2046, 'BABA ROSE 2', '1', '5096820', 'KIDETE KIGAMBONI DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(2047, 'PETER  2', '1', '5047181', 'TUNGI KIGAMBONI DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(2048, 'MPOKI KIOSKI', '1', '5057851', 'TABATA 3ACUDA DAR ES SALAAM', 1, 0, 0, 1, 1, 0),
(2049, 'N.S CAR WASH', '1', '5037277', 'TABATA SHULE MUSLIM DAR ES SALAAM', 1, 0, 1, 1, 1, 0),
(2050, 'SHIMBA KIOSK', '1', '5055617', 'IKWIRIRI RUFIJI PWANI', 2, 0, 0, 1, 1, 0),
(2051, 'MKINGA KIOSK', '1', '5055625', 'IKWIRIRI RUFIJI PWANI', 2, 0, 0, 1, 1, 0),
(2052, 'MABOKA KIOSK', '1', '5055629', 'IKWIRIRI RUFIJI PWANI', 2, 0, 0, 1, 1, 0),
(2053, 'KINAWILO KIOSK', '1', '5055635', 'NYAMWAGE RUFIJI PWANI', 2, 0, 0, 1, 1, 0),
(2054, 'MINJA KIOSK', '1', '5055801', 'IKWIRIRI RUFIJI PWANI', 2, 0, 0, 1, 1, 0),
(2055, 'SHAMTE KIOSK', '1', '5055805', 'IKWIRIRI RUFIJI PWANI', 2, 0, 0, 1, 1, 0),
(2056, 'MAKARANI KIOSK', '1', '5055800', 'IKWIRIRI RUFIJI PWANI', 2, 0, 0, 1, 1, 0),
(2057, 'MPILI KIOSK', '1', '5055815', 'IKWIRIRI RUFIJI PWANI', 2, 0, 0, 1, 1, 0),
(2058, 'ZAITUNI KIOSK', '1', '5055806', 'IKWIRIRI RUFIJI PWANI', 2, 0, 0, 1, 1, 0),
(2059, 'CHAUDA KIOSK', '1', '5055823', 'IKWIRIRI RUFIJI PWANI', 2, 0, 0, 1, 1, 0),
(2060, 'NDUNDU KIOSK', '1', '5055792', 'IKWIRIRI RUFIJI PWANI', 2, 0, 0, 1, 1, 0),
(2061, 'MBONDE KIOSK', '1', '5055631', 'MUHORO RUFIJI PWANI', 2, 0, 0, 1, 1, 0),
(2062, 'MLAY KIOSK', '1', '5055620', 'NYAMWAGE RUFIJI PWANI', 2, 0, 2, 1, 1, 0),
(2063, 'EDSON KIOSK', '1', '5034723', 'KAWE MZIMUNI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2064, 'DISMAS 2', '1', '5003939', 'UKWAMANI KAWE DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(2065, 'MSONGE 3', '1', '5016892', 'KAWE MZIMUNI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(2066, 'BRANZI 3', '1', '5004025', 'UKWAMANI KAWE DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(2067, 'BATULI KIOSK', '1', '5046549', 'KAWE UKWAMANI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2068, 'GOODLUCK KIOSK', '1', '5003353', 'UKWAMANI KAWE DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2069, 'MAMA EVA 2', '1', '5041402', 'KIBAHA MLANDIZI PWANI', 0, 2, 0, 3, 1, 0),
(2070, 'FASAHA 2', '1', '5045179', 'KIBAHA MLANDIZI PWANI', 0, 2, 0, 3, 1, 0),
(2071, 'SHIRIMA 2', '1', '5047117', 'KIBAHA MLANDIZI PWANI', 0, 2, 0, 3, 1, 0),
(2072, 'LIBRA INTERNET CAFÉ', '1', '5039897', 'KWA NYERERE MIKOCHENI B DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2073, 'KKKT KIOSK', '1', '5004860', 'UKONGA MAGEREZA DAR ES SALAAM', 4, 0, 0, 1, 1, 0),
(2074, 'MANKA KIOSK', '1', '5004532', 'UKONGA MAGEREZA DAR ES SALAAM', 4, 0, 0, 1, 1, 0),
(2075, 'SUZIE KIOSK', '1', '5003826', 'MOMBASA UKONGA DAR ES SALAAM', 4, 0, 0, 1, 1, 0),
(2076, 'YOHANA KIOSK', '1', '5057265', 'MAZIZINI MOMBASA DAR ES SALAAM', 4, 0, 0, 1, 1, 0),
(2077, 'KANESA KIOSK', '1', '5035304', 'MSANGANI STREET KIBAHA COAST REGION', 0, 0, 0, 3, 1, 0),
(2078, 'MAKATA KIOSK', '1', '5023489', 'NJIAPANDA NDEGE BEACH  DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2079, 'INNOCENT J TEMBA', '1', '5040421', 'KIMARA 3UTI KINONDONI DAR ES SALAAM', 0, 0, 3, 3, 1, 0),
(2080, 'IMMESI KIOSK', '1', '5092733', 'KIMARA KING\'ONGO DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2081, 'MADINA RESTAURANT', '1', '5019724', 'KIGAMBONI URASA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2082, 'SELEMANI KIOSK', '1', '5007508', 'TABATA AREA KINONDONI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2083, 'BABUU AUTO SPARE', '1', '5007512', 'TABATA AREA KINONDONI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2084, 'JUMUIYA YA KANISA KIOSK', '1', '5042616', 'TABATA AREA KINONDONI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2085, 'MJESHI SMART KIOSK', '1', '5012859', 'TABATA AREA KINONDONI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2086, 'HARVEST AFRICA KIOSK', '1', '5015396', 'EXTERNAL MAKUBURI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2087, 'MWALIMU KIOSK', '1', '5012473', 'KINONDONI AREA MABIBO HOSTEL DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2088, 'MASISTER KIOSK', '1', '5028647', 'MAKUBURI UBUNGO KINONDONI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2089, 'KKKT KIOSK', '1', '5017676', 'MWENGE KIJIJINI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2090, 'MGAZA KIOSK', '1', '5036609', 'MSASANI KISIWA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2091, 'TUGELEPO KIOSK', '1', '5041173', 'POSTA CITY CENTRE DAR ES SALAAM', 0, 0, 3, 2, 1, 0),
(2092, 'AFRICAN KIOSK', '1', '5099537', 'POSTA GARDEN VIEW DAR', 0, 0, 3, 2, 1, 0),
(2093, 'MUSA KIOSK', '1', '5017476', 'POSTA KIVUKONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2094, 'SARAKIKI KIOSK', '1', '5047265', 'CITY CENTRE KIVUKONI ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2095, 'NYANSULU KIOSK', '1', '5031406', 'POSTA KIVUKONI DAR', 0, 0, 0, 2, 1, 0),
(2096, 'MAMA MANYAMA KIOSK', '1', '5041051', 'POSTA KIVUKONI DAR', 0, 0, 0, 2, 1, 0),
(2097, 'REHEMA KIOSK', '1', '5055407', 'BACKLAYS STREET UPANGA ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2098, 'SHUMBI KIOSK', '1', '5017579', 'OCEAN ROAD CITY CENTER DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2099, 'DEO KIOSK', '1', '5044063', 'KURASINI TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2100, 'MUSHI KIOSK', '1', '5006187', 'LINDIGEREZANI KARIAKOO DAR ES SALAAM', 2, 0, 0, 2, 1, 0),
(2101, 'LEILA KIOSK', '1', '5099531', 'KIUNGANI GEREZANI DAR ES SALAAM', 2, 0, 0, 2, 1, 0),
(2102, 'MASAI KIOSK', '1', '5039389', 'KIUNGANI GEREZANI KARIAKOO DAR ES SALAAM', 2, 0, 0, 2, 1, 0),
(2103, 'JUMA KIOSK', '1', '5039388', 'UHURU GEREZANI KARIAKOO DAR ES SALAAM', 2, 0, 0, 2, 1, 0),
(2104, 'BUHERI KIOSK', '1', '5038366', 'UHURU GEREZANI KARIAKOO DAR ES SALAAM', 2, 0, 0, 2, 1, 0),
(2105, 'SEMBE KIOSK', '1', '5005687', 'KIPATA GEREZANI DAR ES SALAAM', 2, 0, 0, 2, 1, 0),
(2106, 'MARIAM KIOSK', '1', '5055413', 'GEREZANI MAKAMBA KARIAKOO DAR ES SALAAM', 2, 0, 0, 2, 1, 0),
(2107, 'SHIDA KIOSK', '1', '5006201', 'KIUNGANI GEREZANI DAR ES SALAAM', 2, 0, 0, 2, 1, 0),
(2108, 'OBAMA KIOSK', '1', '5005241', 'GEREZANI MAKAMBA ILALA DAR ES SALAAM', 2, 0, 0, 2, 1, 0),
(2109, 'MANKA KIOSK', '1', '5045069', 'M3UKU GEREZANI DAR ES SALAAM', 2, 0, 0, 2, 1, 0),
(2110, 'MURA KIOSK', '1', '5055412', 'M3UKU SWAHILI KARIAKOO DAR ES SALAAM', 2, 0, 0, 2, 1, 0),
(2111, '@THE WHEEL AFRICA LTD', '1', '5055370', 'KASANGA STREET GEREZANI KARIAKOO DAR ES SALAAM', 2, 0, 0, 2, 1, 0),
(2112, 'SHULE YA MSINGI UHURU WASICHANA', '1', '5098038', 'LINDI GEREZANI DAR ES SALAAM', 2, 0, 0, 2, 1, 0),
(2113, 'MARRY KIOSK', '1', '5020707', 'UHURU GEREZANI KARIAKOO', 2, 0, 0, 2, 1, 0),
(2114, 'RENATUS KIOSK', '1', '5040303', 'SOMALI GEREZANI DAR ES SALAAM', 2, 0, 0, 2, 1, 0),
(2115, 'MTUMWA KIOSK', '1', '5012281', 'SOMALI GEREZANI ILALA DAR ES SALAAM', 2, 0, 0, 2, 1, 0),
(2116, 'BI HAMIDA KIOSK', '1', '5038379', 'KIPATA GEREZANI DAR ES SALAAM', 2, 0, 0, 2, 1, 0),
(2117, 'ABBY KIOSK', '1', '5041885', 'GEREZANI UHURU ROAD DAR ES SALAAM', 2, 0, 0, 2, 1, 0),
(2118, 'MSELE KIOSK', '1', '5098039', 'SWAHILI GEREZANI DAR ES SALAAM', 2, 0, 0, 2, 1, 0),
(2119, 'JOHN KIOSK', '1', '5008710', 'NYAMWEZI GEREZANI ILALA DAR ES SALAAM', 2, 0, 0, 2, 1, 0),
(2120, 'MNYALU KIOSK', '1', '5002334', 'M3UKU GEREZANI DAR ES SALAAM', 2, 0, 0, 2, 1, 0),
(2121, 'MAMA NELLY KIOSK', '1', '5055541', 'UHURU JUNCTION MSIMBAZI MATAA', 2, 0, 0, 2, 1, 0),
(2122, 'CATHY KIOSK', '1', '5056671', 'SOMALI KIPANDE GEREZANI DAR ES SALAAM', 2, 0, 0, 2, 1, 0),
(2123, 'IMANI KWAYA METRE KIOSK', '1', '5037406', 'AIRPORT MOGO DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2124, 'STAMFORD BRIDGE KIOSK', '1', '5056280', 'MABIBO SOKONI KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2125, 'ROBERT KIOSK', '1', '5001670', 'CITY CENTER LIBYA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2126, 'AUGUSTINO KIOSK', '1', '5038984', 'CITY CENTRE CHAGGA  STREET DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2127, 'ALOYCE KIOSK', '1', '5007294', 'CITY CENTRE MSHIHIRI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2128, 'GERALD KIOSK', '1', '5031320', 'CITY CENTRE MSHIHIRI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2129, 'MAKERE 2', '1', '5001330', 'CITY CENTER BIBI TITI DAR ES SALAAM', 0, 2, 0, 2, 1, 0),
(2130, 'MENGI KIOSK', '1', '5004117', 'BUZA KANISANI TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2131, 'HUSNA KIOSK', '1', '5014749', 'MAKONDE STREET MBEZI BEACH KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2132, 'MARUHUBI KIOSK', '1', '5034834', 'UPANGA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2133, 'MAHIMBO KIOSK', '1', '5039703', 'MKUNGUNI KARIAKOO ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2134, 'MSAFIRI KIOSK', '1', '5002139', 'MSIMBAZI MKUNGUNI KARIAKOO ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2135, 'HUSNA KIOSK', '1', '5055348', 'MAFIA MZIZIMA KARIAKOO DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2136, 'FARID KIOSK', '1', '5005258', 'TANDAMTI STREET KARIAKOO DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2137, 'BI SAADA KIOSK', '1', '5038258', 'NDANDA STREET KARIAKOO DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2138, 'MICHAEL KIOSK', '1', '5007554', 'MAGILA STREET KARIAKOO DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2139, 'LUCY KIOSK', '1', '5012804', 'MUHONDA KARIAKOO DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2140, 'KKKT KIOSK KARIAKOO', '1', '5041246', 'LIKOMA KARIAKOO ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2141, 'VUCA KKKT KIOSK', '1', '5099322', 'MASASI STREET KARIAKOO DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2142, 'MASASI KIOSK', '1', '5005245', 'MASASI STREET KARIAKOO DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2143, 'ZAINABU KIOSK', '1', '5008095', 'MHEZA B KARIAKOO DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2144, 'MCHIKICHINI SECONDARY SCHOOL', '1', '5007623', 'MCHIKICHINI ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2145, 'ALEX KIOSK', '1', '5041231', 'MCHIKICHINI ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2146, 'KESSY 2', '1', '5048836', 'SWAHILI TWIGA DAR ES SALAAM', 0, 2, 0, 2, 1, 0),
(2147, 'ISMAIL KIOSK', '1', '5099323', 'TWIGA STREET KARIAKOO DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2148, 'HAFIZ KIOSK', '1', '5099222', 'SWAHILI STREET KARIAKOO DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2149, 'F1 KIOSK', '1', '5042006', 'AMANI MSIMBAZI KARIAKOO DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2150, 'ALBIN KIOSK', '1', '5099602', 'KIPANDE KARIAKOO ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2151, 'SHABANI KIOSK', '1', '5008648', 'KIPANDE KARIOKOO ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2152, 'ROBERT KIOSK', '1', '5002110', 'KARIAKOO UNDERGROUND MARKET DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2153, 'GEORGE KIOSK', '1', '5099902', 'KARIAKOO SOKONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0);
INSERT INTO `outlet` (`outlet_id`, `outlet_name`, `outlet_type`, `outlet_no`, `location`, `occd_id`, `chan_id`, `route_id`, `reg_id`, `district_id`, `salesrep_id`) VALUES
(2154, 'KARIAKOO MARKET KIOSK', '1', '5033393', 'KARIAKOO SWAHILI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2155, 'KARIMU KIOSK', '1', '5002119', 'PEMBA KARIAKOO ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2156, 'TANDAMTI KIOSK', '1', '5098100', 'KARIAKOO TANDAMTI STREET DAR', 0, 0, 0, 2, 1, 0),
(2157, 'TEDDY KIOSK', '1', '5047766', 'KARIAKOO TANDAMTI STREET ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2158, 'MKULU KIOSK', '1', '5056030', 'KARIAKOO NARUN\'GOMBE STREET ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2159, 'AMRY YANGA KIOSK', '1', '5098356', 'NYAMWEZI KARIAKOO ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2160, 'SWEED KIOSK', '1', '5040364', 'KARIAKOO DONGE ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2161, 'YONA KIOSK', '1', '5007284', 'MAFIA STREET KARIAKOO DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2162, 'RAJABU KIOSK', '1', '5008745', 'KARIAKOO NYAMWEZI ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2163, 'MATULA KIOSK', '1', '5007277', 'SWAHILI STREET KARIAKOO DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2164, 'MABOMBA KIOSK', '1', '5099903', 'CONGO TANDAMTI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2165, 'HAMISI KIOSK', '1', '5002107', 'AGREY STREET KARIAKOO DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2166, 'MOHAMED KIOSK', '1', '5055540', 'MAFIA STREET SIKUKUU KARIAKOO DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2167, 'AMANI KIOSK', '1', '5005259', 'MKUNGUNI KARIAKOO ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2168, 'MASHOO KIOSK', '1', '5040363', 'AGREY STREET KARIAKOO DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2169, 'MNYALU KIOSK', '1', '5098101', 'KARIAKOO TANDAMTI ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2170, 'KASIMU KIOSK', '1', '5034619', 'KARIAKOO MKUNGUNI STREET ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2171, 'HEMED KIOSK', '1', '5034560', 'KARIAKOO NYAMWEZI STREET DAR', 0, 0, 0, 2, 1, 0),
(2172, 'TUNZA KIOSK', '1', '5016245', 'MKUNGUNI KARIAKOO ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2173, 'MWANAIDI KIOSK', '1', '5098850', 'CONGO PEMBA KARIAKOO ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2174, 'FATUMA KIOSK', '1', '5040627', 'KARIAKOO MSIMBAZI ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2175, 'HALIMA KIOSK ', '1', '5099985', 'KARIAKOO KONGO ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2176, 'MARIAM KIOSK', '1', '5001576', 'KARIAKOO CONGO STREET ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2177, 'JUMA OMARY KIOSK', '1', '5098409', 'NARUNG\'OMBE STREET KARIAKOO DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2178, 'KISA KIOSK', '1', '5041695', 'MUHONDA KARIAKOO DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2179, 'MSIGALA KIOSK', '1', '5041206', 'KARIAKOO MCHIKICHINI DAR', 0, 0, 0, 2, 1, 0),
(2180, 'OSAMA II KIOSK', '1', '5032508', 'RAHA STREET KARIAKOO ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2181, 'MARIAMU II 2', '1', '5001800', 'KARIAKOO CONGO MCHIKICHINI DAR ES SALAAM', 0, 2, 0, 2, 1, 0),
(2182, 'WACHU KIOSK', '1', '5098099', 'AGREY KARIAKOO ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2183, 'LUKA I KIOSK', '1', '5099905', 'AGREY KARIAKOO ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2184, 'TEO MUSHI KIOSK', '1', '5020488', 'MSIMBAZI KARIAKOO ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2185, 'NASRA KIOSK', '1', '5002118', 'NARUNG\'OMBE STREET KARIAKOO DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2186, 'FARAJA KIOSK', '1', '5055310', 'KARIAKOO SIKUKUU DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2187, 'IDDI KIOSK', '1', '5056771', 'SWAHILI STREET KARIAKOO ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2188, 'FIRE KIOSK', '1', '5003462', 'KIWALANI TEMEKE TEZARA FIRE DR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2189, 'ALPHONCE KIOSK', '1', '5056891', 'MBAGALA KIZINGA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2190, 'MAMA JOSE KIOSK', '1', '5010942', 'MBAGALA SABASABA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2191, 'BEN KIOSK (WAILES PRIMARY SCHOOL)', '1', '5098713', 'TEMEKE WAILES DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2192, 'EDEN KIOSK', '1', '5097868', 'TEMEKE MAGANGA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2193, 'TWAHA KIOSK', '1', '5006637', 'TEMEKE MAPAMBANO DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2194, 'BENJA KIOSK', '1', '5037138', 'NDALALA STREET TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2195, 'VICENT KIOSK', '1', '5005504', 'TEMEKE LIKWATI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2196, 'SAMWEL KIOSK', '1', '5002154', 'TEMEKE USALAMA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2197, 'ZAKHEM HOSPITAL CANTEEN', '1', '5047150', 'MBAGALA ZA ZAKHEM DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2198, 'MOROVIAN KIOSK', '1', '5027315', 'MACHUNGWA KEKO DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2199, 'POLICE UJENZI KIOSK', '1', '5056028', 'KEKO TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2200, 'SANGALI  KIOSK', '1', '5031105', 'BANDARINI TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2201, 'VJS KIOSK', '1', '5097949', 'SABASABA MAONYESHO TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2202, 'CLINTON KIOSK', '1', '5099872', 'MTONI SABASABA TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2203, 'HAMZA KIOSK', '1', '5008779', 'SABASABA MAONYESHO TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2204, 'MAMA MATUNDA KIOSK', '1', '5009127', 'AZIZ ALLY SABASABA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2205, 'TEXAS LODGE', '1', '5097831', 'SABASABA MBAGALA NJIA YA NG\'OMBE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2206, 'NEW WOKIMA GUEST HOUSE', '1', '5016428', 'KEKO MAGURUMBASI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2207, 'DOLINI 2', '1', '5012841', 'MBEZI NJIA PANDA GOBA DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(2208, 'SOGOTI GUEST HOUSE', '1', '5018548', 'MAGOMENI JARIBU DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2209, 'JITUME GUEST HOUSE', '1', '5011318', 'TEMEKE KITOMONDO DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2210, 'MBEZI COMFORTABLE GUEST', '1', '5012843', 'MBEZI KIBANDA CHA MKAA DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2211, 'MBEZI COMFORTABLE GUEST', '1', '5012843', 'MBEZI KIBANDA CHA MKAA DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2212, 'TWIGA INN', '1', '5016413', 'KEKO JUU CHANG\'OMBE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2213, 'NSALLA INN LODGE', '1', '5007762', 'MBEZI LUIS MICHUNGWANI KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2214, 'KIHIYO 2', '1', '5003377', 'MZIMUNI KAWE DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(2215, 'MUDI 2', '1', '5023547', 'CHALINZE MDAULA PWANI', 0, 2, 0, 3, 1, 0),
(2216, 'KTC KUNDUCHI MESS', '1', '5027257', 'KUNDUCHI MTONGANI JESHINI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2217, 'KTC KUNDUCHI MESS', '1', '5027257', 'KUNDUCHI MTONGANI JESHINI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2218, 'KTC KUNDUCHI MESS', '1', '5027257', 'KUNDUCHI MTONGANI JESHINI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2219, 'KTC KUNDUCHI MESS', '1', '5027257', 'KUNDUCHI MTONGANI JESHINI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2220, 'SABASABA MESS ', '1', '5099873', 'MTONI SABASABA TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2221, 'TEXAS ANNEX LODGE & PUB', '1', '5048178', 'WEEKEND STRRE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2222, 'DALARNA LOUNGE', '1', '5056807', 'MABWEPANDE BUNJU DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2223, 'KECYE MIN SUPERMARKET', '1', '5057270', 'PONDI UKONGA ILALA DAR ES SALAAM', 4, 0, 0, 1, 1, 0),
(2224, 'PP JJ MIN SUPER MARKET', '1', '5092604', 'TEMEKE BUZA KANISANI DAR', 0, 0, 0, 1, 1, 0),
(2225, 'POINT FIVE MIN MARKET', '1', '5005081', 'JK ROAD MWAI KIBAKI ROAD DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2226, 'STYLES NSMILES MIN SUPERMARKET', '1', '5098171', 'GOBA OYSTERBAY KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2227, 'LUGOBA PETROL STATION I', '1', '5047214', 'CHALINZE LUGOBA BAGAMOYO', 0, 0, 0, 3, 1, 0),
(2228, 'ASDA PROVISION STORE', '1', '5021831', 'POSTA PAMBA ROAD DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2229, 'DELINA   MIN SUPERMARKET', '1', '5043321', 'KIGAMBONI FERRY DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2230, 'SWEET BABY MINI SUPERMARKET ', '1', '5003068', 'KWA DIWANI UKONGA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2231, 'RHINO MINI SUPER MARKET', '1', '5039386', 'GEREZANI ROUND ABOUT KILWA ROAD DAR ES SALAAM', 2, 0, 0, 2, 1, 0),
(2232, 'SAMBAYA 2', '1', '5007475', 'KAWAZI STREET MBEZI BEACH DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(2233, 'ST PIUS SCHOOL 2', '1', '5003063', 'GOLOKA KONGOWE MBAGALA DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(2234, 'FLAMINGO MIN SUPER MARKET ', '1', '5002770', 'TABATA SAVANNAR STAND DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2235, 'JIDI RETAIL 2', '1', '5007796', 'YOMBO SIGARA TEMEKE DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(2236, 'DIANA MINI MARKET', '1', '5005677', 'MABIBO FARASI MAGOMENI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2237, 'MC MILLS MIN MARKET', '1', '5049710', 'TOANGOMA MASAKI TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2238, 'HAIKA GROCERY', '1', '5099952', 'MBAGARA RANGI TATU DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2239, 'MAUA MOTEL', '1', '5006609', 'MTONI KWA AZIZI TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2240, 'BHACHU MIN SUPERMARKET', '1', '5092795', 'KITUNDA RELINI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2241, 'BETY 2', '1', '5022321', 'UNUNIO MNARA WA TIGO DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(2242, 'KILIMANI PARK', '1', '5048147', 'GOBA KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2243, 'SEVEN SEVEN PARK', '1', '5008774', 'MIEMBE SABA KIBAHA COAST REGION', 0, 0, 0, 3, 1, 0),
(2244, 'KIWALAA PARK', '1', '5099486', 'VIKUGE KONGOWE KIBAHA COAST REGION', 0, 0, 0, 3, 1, 0),
(2245, 'D & D MIN SUPERMARKET', '1', '5092896', 'UPANGA KIBASILA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2246, 'JM MIN SUPERMARKET', '1', '5032598', 'MBEZI STAND MPYA DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2247, 'NICE PUB', '1', '5007807', 'MBEZI MSAKUZI KINONDONI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(2248, '3EN PARK', '1', '5007936', 'BUZA MWANAGATI TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2249, 'PUMA PETROL STATION', '1', '5047694', 'TABATA MATUMBI ILALA DAR ES SALAAM', 1, 0, 1, 1, 1, 0),
(2250, 'OIL COM MWENGE MLALAKUWA', '1', '5097684', 'MWENGE MLALAKUWA KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2251, 'KISARAWE FILLING STATION', '1', '5002911', 'KISARAWE MJINI GONGO LA MBOTO ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2252, 'WRAP BURGER', '1', '5097683', 'VICTORIA KINONDONI DAR ES SALAAM', 3, 0, 0, 2, 1, 0),
(2253, 'GAPCO BANANA', '1', '5021973', 'BANANA ILALA DAR ES SALAAM', 4, 0, 0, 1, 1, 0),
(2254, 'OILCOM TMJ', '1', '5099143', 'MIKOCHANI A KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2255, 'PETRO TEGETA ', '1', '5045271', 'TEGETA AZANIA KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2256, 'MAMA NASMA', '1', '5098074', 'CHALINZE BWILINGU PWANI', 0, 0, 0, 3, 1, 0),
(2257, 'FIVE STAR PETROL STATION', '1', '5037581', 'CHALINZE MSATA PWANI BAGAMOYO DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2258, 'LUGOBA PETROL STATION IV', '1', '5098325', 'CHALINZE LUGOBA BAGAMOYO', 0, 0, 0, 3, 1, 0),
(2259, 'BABY 2', '1', '5030556', 'CHALINZE MDAULA BAGAMOYO', 0, 2, 0, 3, 1, 0),
(2260, 'MBOZI GROCERY', '1', '5021776', 'CHALINZE MDAULA BAGAMOYO', 0, 0, 0, 3, 1, 0),
(2261, 'KAWEZA CAFÉ', '1', '5038098', 'MBEZI LUIZ STREET DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2262, 'OILCOM P STATION', '1', '5016171', 'OILCOM STREET MAGOMENI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2263, 'ORYX P STATION', '1', '5041211', 'CONGO MSIMBAZI ILALA KARIAKOO DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2264, 'VICTORIA AIRPORT', '1', '5007015', 'AIRPORT ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2265, 'VICTORIA GARAGE', '1', '5008686', 'UBUNGO GEREJI KINONDONI DAR', 0, 0, 0, 1, 1, 0),
(2266, 'SERENGET HOUSING', '1', '5097691', 'AIRPORT ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2267, 'ALLY\'S BURGER OILCOM VETINARY', '1', '5010701', 'TEMEKE VETINARY TEMEKE', 0, 0, 0, 1, 1, 0),
(2268, 'MOSES\'S PHARMACY', '1', '5007769', 'MBEZI LUIS KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2269, 'SHILELA PHARMACY', '1', '5008728', 'UPANGA UNITED NATION ROAD ILALA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2270, 'STRATEGIC STUDIO', '1', '5056034', 'MAFIA KARIAKOO DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2271, 'RV PUB ', '1', '5047079', 'MJI MWEMA KIGAMBONI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2272, 'BWAGAMOYO RESTAURANT', '1', '5003482', 'DAR ZOO KIGAMBONI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2273, 'LIQUID LULU PUB', '1', '5045936', 'KIGAMBONI MAWENI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2274, 'ADAM 2', '1', '5099232', 'KIGAMBONI KISOTA DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(2275, 'NEW VISION PUB', '1', '5056066', 'KIBADA UGINDONI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2276, 'SPIDER PUB', '1', '5099973', 'KIGAMBONI TUNGI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2277, 'MALLYA PUB', '1', '5027495', 'GOBA KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2278, 'NGAUTI PARK', '1', '5031591', 'GOBA ROAD MBEZI BEACH KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2279, 'SUN SEAT PUB', '1', '5098121', 'GOBA KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2280, 'DEO PUB', '1', '5048190', 'MADALE MIVUMONI KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2281, 'SIX PUB', '1', '5023398', 'MADALE MIVUMONI KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2282, 'MNYAMA PUB', '1', '5009146', 'MADALE MIVUMONI KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2283, 'MKWIRA PUB', '1', '5033046', 'MADALE MIVUMONI KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2284, 'AMANI PUB', '1', '5016883', 'MADALE MIVUMONI KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2285, 'SUMMIT 3', '1', '5031235', 'MAKONGO MWISHO KINONDONI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(2286, 'UPUMALANGA PUB', '1', '5038537', 'TABATA BIMA STAND ILALA DAR ES SALAAM', 1, 0, 0, 1, 1, 0),
(2287, 'MSALIKIE PUB', '1', '5041347', 'TABATA MAGENGENI DAR ES SALAAM', 1, 0, 0, 1, 1, 0),
(2288, 'PLIMM PUB', '1', '5047257', 'CHANG\'OMBE STREET TABATA DAR ES SALAAM', 1, 0, 0, 1, 1, 0),
(2289, 'RESOURT PUB', '1', '5006490', 'TABATA AROMA DAR', 1, 0, 1, 1, 1, 0),
(2290, 'MWEMBENI PUB', '1', '5008931', 'TABATA SHULE DAR ES SALAAM', 1, 0, 1, 1, 1, 0),
(2291, 'KITAS PUB', '1', '5040731', 'TABATA CHANG\'OMBE DAR ES SALAAM', 1, 0, 0, 1, 1, 0),
(2292, 'CESY PUB', '1', '5011357', 'TABATA SHULE DAR ES SALAAM', 1, 0, 0, 1, 1, 0),
(2293, 'JUNTION PUB', '1', '5055644', 'NYAMWAGE RUFIJI PWANI', 2, 0, 2, 1, 1, 0),
(2294, 'MJENGONI PUB', '1', '5046162', 'BONDENI SHOKO KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2295, 'OMARY 2PING', '1', '5098858', 'MZIMUNI KAWE DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(2296, 'SEIF GROCERY ', '1', '5097982', 'MZIMUNI KAWE DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2297, 'CHRISTINA PUB', '1', '5006147', 'KAWE MZIMUNI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2298, 'MARIETHA 2', '1', '5097977', 'MZIMUNI KAWE MIKOROSHINI DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(2299, 'BULLS PUB', '1', '5099410', 'MLIMANI CITY DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2300, 'ETINA RESTAURANT', '1', '5033633', 'SURVEY MLALAKUWA DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2301, 'SILAYO 2', '1', '5039314', 'MPAKANI MWENGE DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(2302, 'KAMCHE PUB', '1', '5024693', 'MPAKANI MANDELA ROAD KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2303, 'HAMIS 2', '1', '5011381', 'MADAFU MLANDIZI', 0, 2, 0, 3, 1, 0),
(2304, 'MAJALIWA 2', '1', '5008768', 'MISWE KIBAHA PWANI', 0, 2, 0, 3, 1, 0),
(2305, 'G8 PUB', '1', '5040583', 'RUVU DARAJANI MLANDIZI PWANI', 0, 0, 0, 3, 1, 0),
(2306, 'URIO PUB', '1', '5037664', 'MISUGUSUGU PWANI KIBAHA', 0, 0, 0, 3, 1, 0),
(2307, 'JM VIP PUB', '1', '5037720', 'USHINDI MIKOCHENI B DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2308, 'HK PUB', '1', '5022812', 'ITV STREET MIKOCHENI B KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2309, 'JUCHE LUBAGO', '1', '5039906', 'KWA MWINYI MIKOCHENI B DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2310, 'TARIMO MIN SUPER MARKET', '1', '5040142', 'USHINDI MIKOCHENI B DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2311, 'VARESANGA 2', '1', '5043076', 'MSIKITINI STREET MIKOCHENI B KINONDONI DAR ES SALAAM', 0, 2, 0, 2, 1, 0),
(2312, 'LEOTENA PUB', '1', '5037356', 'NJIA PANDA YA KAMPALA UNIVERSITY GONGO LA MBOTO ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2313, 'SOCCER CITY PUB', '1', '5035529', 'KAZI MZUMBWI KISARAWE GONGO LA MBOTO ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2314, 'MANGI PUB', '1', '5031809', 'GONGO LA MBOTO ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2315, 'ALEX PUB', '1', '5041690', 'MWENGE GARAGE DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2316, 'REHEMA GROCERY', '1', '5002568', 'KIMANGA STAND DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2317, 'ANKO PUB', '1', '5056793', 'TABATA KIMANGA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2318, 'SALUMU 2', '1', '5047093', 'KABAKABANA MWANANYAMALA KINONDONI DAR ES  SALAAM', 3, 2, 3, 2, 1, 0),
(2319, 'NEW SITE PUB', '1', '5056481', 'MWANANYAMALA GARDEN KINONDONI DAR ES SALAAM', 3, 0, 3, 2, 1, 0),
(2320, 'VANE PUB', '1', '5007528', 'MANGO GARDEN MWANANYAMALA KINONDONI', 3, 0, 0, 2, 1, 0),
(2321, 'LUKIA 2', '1', '5007527', 'MKWAJUNI MWANANYAMALA KINONDONI', 3, 2, 0, 2, 1, 0),
(2322, 'PINO PUB', '1', '5056498', 'KARAFUU KINONDONI DAR ES SALAAM', 3, 0, 0, 2, 1, 0),
(2323, 'ATLAS PUB', '1', '5005923', 'UKONGA MAZIZINI DAR ES SALAAM', 4, 0, 0, 1, 1, 0),
(2324, 'MOKIWA PUB', '1', '5013394', 'MAGEREZA UKONGA MOMBASA DAR ES SALAAM', 4, 0, 0, 1, 1, 0),
(2325, 'PINK PUB', '1', '5057264', 'MAZIZINI MOMBASA DAR ES SALAAM', 4, 0, 0, 1, 1, 0),
(2326, 'MUYAMA PUB', '1', '5057257', 'MOMBASA TRANSFORMA DAR ES SALAAM', 4, 0, 0, 1, 1, 0),
(2327, 'MBISE 2', '1', '5047170', 'MTONI KIJICHI NELUKA DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(2328, 'DICKY PUB', '1', '5042077', 'MBAGALA RANGI TATU DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2329, 'YERUSALEM 2', '1', '5097930', 'MTONI KIJICHI NASAKO DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(2330, 'HEINEKEN 3', '1', '5006485', 'MTONI KIJICHI POLISI  ES SALAAM', 0, 3, 0, 1, 1, 0),
(2331, 'DAZ 2', '1', '5006482', 'MBAGALA KUU NJIA PANDA YA NG\'OMBE DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(2332, 'MAKINI CAFÉ', '1', '5006475', 'MBAGALA KUU DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2333, 'KWETU PAZURI 3', '1', '5097535', 'MBAGALA KUU STENDI DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(2334, 'SEBLENI PUB', '1', '5056260', 'KIJICHI MWEMBENI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2335, 'VATICAN CITY PUB', '1', '5022391', 'MWENDAPOLE KIBAHA', 0, 0, 0, 3, 1, 0),
(2336, 'CHACHA 2', '1', '5008772', 'MIEMBE SABA KIBAHA COAST REGION', 0, 2, 0, 3, 1, 0),
(2337, 'SMILE PUB', '1', '5039782', 'MWENGE KIJIJINI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2338, 'SERENGETI PUB', '1', '5019462', 'MWENGE GARAGE DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2339, 'RAHA LEO SALOON', '1', '5005449', 'MWENGE STAND DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2340, 'PROFFESSORS CORNER PUB', '1', '5044480', 'MWENGE STAND DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2341, 'MARRY 2', '1', '5045269', 'MWENGE MSIKITINI DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(2342, 'SAMANGA PUB', '1', '5039763', 'MWENGE STAND KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2343, 'MWANANCHI 2', '1', '5047404', 'MWENGE NZASA DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(2344, 'NEEMA REASTAURANT', '1', '5032781', 'MWENGE STAND DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2345, 'FAMILY CHIPS CAFÉ', '1', '5005527', 'MWENGE NZASA DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2346, 'COM1 PUB', '1', '5008668', 'KINONDONI MOROCO DAR ES SALAAM', 3, 0, 0, 2, 1, 0),
(2347, 'HOMEPUB', '1', '5036222', 'UJIJI CCM MWANANYAMALA DAR ES SALAAM', 3, 0, 0, 2, 1, 0),
(2348, 'ANNAH 2', '1', '5006451', 'KINONDONI BIAFRA DAR ES SALAAM', 3, 2, 0, 2, 1, 0),
(2349, 'FJJ GARDEN PUB', '1', '5034695', 'KIBAMBA KWA MANGI KIBAMBA DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2350, 'NEW BONDENI PUB', '1', '5001740', 'KIBAMBA HOSPITAL KIBAMBA DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2351, 'ABBY STORE', '1', '5001758', 'LUGURUNI KIBAMBA DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2352, 'GLORY 2', '1', '5047081', 'BUNJU B MAMA MUNUO KINONDONI DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(2353, 'JM PUB', '1', '5006194', 'BUNJU B KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2354, 'ABIHUD 2', '1', '5007054', 'MIANZINI KINONDONI DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(2355, 'NEIGHBOURS 3', '1', '5012008', 'BUNJU MIANZINI STREET DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(2356, 'MORO PUB', '1', '5056806', 'USALAMA BUNJU DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2357, 'MAMA RONALDO PUB', '1', '5008955', 'SITAKISHARI UKONGA DAR ES SALAAM', 4, 0, 0, 1, 1, 0),
(2358, 'ANGEL PUB', '1', '5036753', 'BANANA ILALA DAR ES SALAAM', 4, 0, 0, 1, 1, 0),
(2359, 'KABILE CORNER PUB', '1', '5040120', 'GARDEN ROAD MIKOCHENI B DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2360, 'BAVARIA PUB', '1', '5030708', 'TEGETA MKANADA DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2361, 'ZERO PUB', '1', '5019883', 'TEGETA KIBAONI KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2362, 'VIOLA PUB', '1', '5001667', 'TEGETA WAZO ROAD KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2363, 'MAMY PUB', '1', '5014650', 'TEGETA TEGETA MADALE DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2364, 'UMOJA PUB', '1', '5022003', 'MIVUMINI UMOJA ROAD DAR', 0, 0, 0, 3, 1, 0),
(2365, 'NYANGA 2', '1', '5005434', 'MAKABURINI SINZA KINONDONI DAR ES SALAAM', 0, 2, 0, 2, 1, 0),
(2366, 'KIMARIO 2', '1', '5006573', 'KIBAGA KINYEREZI DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(2367, 'NELSON FAMILY 2', '1', '5006694', 'KIBAKA KINYEREZI DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(2368, 'KILUMBUYO PUB', '1', '5032241', 'KINYEREZI ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2369, 'KAVESU PUB', '1', '5030365', 'KINYEREZI STAND ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2370, 'RICH PUB', '1', '5095178', 'KIFURU KINYEREZI ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2371, 'SHILY 2', '1', '5006698', 'MBUYUNI KINYEREZI DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(2372, 'FURAHA 2', '1', '5006696', 'MAJUMBA SITA ROAD KINYEREZI ILALA DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(2373, 'SAMUNGE PUB', '1', '5041330', 'KINYEREZI SALOON DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2374, 'DARJANI WHITE PUB', '1', '5042602', 'MAJUMBA SITA ROAD KINYEREZI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2375, 'MKUU PUB', '1', '5008930', 'TABATA UGOMBOLWA ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2376, 'KIBERITI 2', '1', '5040868', 'SANENE STREET TABATA DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(2377, 'ANGEL PUB', '1', '5043177', 'TABATA SEGEREA UGOMBOLWA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2378, 'AGGY PUB', '1', '5037692', 'MBOGA LUGOBA CHALINZE', 0, 0, 0, 3, 1, 0),
(2379, 'HAWA PUB', '1', '5057326', 'CHALINZE POLICE PWANI', 0, 0, 0, 3, 1, 0),
(2380, 'SHETA LOVE PUB', '1', '5057930', 'CHALINZE POLICE ', 0, 0, 0, 3, 1, 0),
(2381, '3UTI VIEW', '1', '5099796', 'KIMARA 3UTI KINONDONI DAR ES SALAAM', 0, 3, 3, 3, 1, 0),
(2382, 'GRACE PUB', '1', '5007036', 'KIMARA MWISHO DAR ', 0, 0, 0, 3, 1, 0),
(2383, 'CONTEINER 2', '1', '5022451', 'KIMARA STOP OVER DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(2384, 'DINA 2', '1', '5007106', 'KIMARA KING\'ONG\'O DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(2385, 'MTUI 2', '1', '5006760', 'KIMARA STOPOVER DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(2386, 'USTADH 2', '1', '5098455', 'KIMARA STOP OVER DAR', 0, 2, 0, 3, 1, 0),
(2387, 'MANGI 2', '1', '5007099', 'KIMARA KING\'ONG\'O DAR', 0, 2, 0, 3, 1, 0),
(2388, 'GREEN LAND 3', '1', '5036440', 'KIMARA MICHUNGWANI DAR', 0, 3, 0, 3, 1, 0),
(2389, 'REHEMA 2', '1', '5007098', 'KIMARA MWISHO DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(2390, 'MUSHI 2', '1', '5034982', 'KIMARA KOROGWE DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(2391, 'RUAHA GALAX 3', '1', '5006761', 'KIMARA KOROGWE DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(2392, 'CONAR 3', '1', '5097746', 'KIMARA B DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(2393, 'GOOD CHANNEL 3', '1', '5099361', 'MANZESE MIDIZINI KINONDONI DAR ES SALAAM', 0, 3, 0, 2, 1, 0),
(2394, 'JACK\'S PUB', '1', '5031579', 'MWANANCHI UBUNGO KINONDONI AREA DAR ES SALAAM ', 0, 0, 0, 1, 1, 0),
(2395, 'MANDELA PUB', '1', '5040979', 'TABATA AREA KINONDONI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2396, 'WASI MAKUTI PUB', '1', '5011924', 'TABATA AREA KINONDONI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2397, 'JUNGLE PUB', '1', '5007493', 'TABATA AREA KINONDONI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2398, 'VIP PUB', '1', '5017547', 'TABATA AREA KINONDONI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2399, 'HILL TOP 3', '1', '5003879', 'KIBANGU UBUNGO DAR ES SALAAM', 0, 3, 0, 1, 1, 0),
(2400, 'VALENTINE PUB', '1', '5040993', 'TABATA AREA ILALA DAR ES SALAAM                                                                                                                                                                                                                            ', 0, 0, 0, 1, 1, 0),
(2401, 'NEW MIKUMI PUB', '1', '5056536', 'MATEMBELE YA PILI KIVULE ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2402, 'REST GARDEN PUB', '1', '5040673', 'UKONGA MOSHI 3 DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2403, 'ARAWA PUB', '1', '5057736', 'KWA DIWANI BOMBA MBILI KWA USTAAZI DAR ES SALAAAM', 0, 0, 0, 1, 1, 0),
(2404, 'FLORENCE PUB', '1', '5057748', 'MOSHI 3 CHAMA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2405, 'CUBE PUB', '1', '5007090', 'BAHARI BEACH KUNDUCHI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2406, 'KONDO PUB', '1', '5007034', 'BAHARI BEACH KUNDUCHI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2407, 'CONTAINER PUB', '1', '5041283', 'KUNDUCHI MSICHOKE TEGETA ROAD DAR', 0, 0, 0, 3, 1, 0),
(2408, 'MAWINGU PUB', '1', '5035523', 'KUNDUCHI BAHARI BEACH DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2409, 'RANGE PUB', '1', '5006645', 'MBEZI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2410, 'WHITE MEAT 3', '1', '5007030', 'BAHARI BEACH KUNDUCHI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(2411, 'GOOD NIGHT PUB', '1', '5037160', 'KUNDUCHI MTAKUJA DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2412, 'DAMAS PUB', '1', '5037186', 'KUNDUCHI MTONGANI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2413, 'KIFAGIO PUB', '1', '5037256', 'TEGETA DARAJANI KWA MAGANGA DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2414, 'JAMBO PUB', '1', '5014766', 'BAHARI BEACH SIMBA ROAD CITY HARVEST CHURCH DAR', 0, 0, 0, 3, 1, 0),
(2415, 'HAPPY FASHION', '1', '5006230', 'MWENGE KIJIJINI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2416, 'CONTENA PUB', '1', '5003373', 'MWENGE KIJIJINI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2417, 'MAFISA 2', '1', '5038348', 'MWENGE KIJIJINI DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(2418, 'DIGITAL PUB', '1', '5047245', 'CHARAMBEE MALIASILI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2419, 'WEBUPSTAIRS PUB', '1', '5001707', 'MBAGALA CHARAMBE MATITU DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2420, 'MANCHESTER PUB', '1', '5031164', 'MBAGALA KILUNGULE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2421, 'JASIS GARDEN', '1', '5004717', 'KATOKE OYSTERBAY DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2422, 'ALLADIN SHISHA LOUNGE', '1', '5008659', 'KATOKE STREET OYSTERBAY DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2423, 'RAY 2', '1', '5036562', 'BONGOYO OSTERBAY DAR ES SALAAM', 0, 2, 0, 2, 1, 0),
(2424, 'SEBULENI PUB', '1', '5008834', 'MSASANI KISIWA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2425, 'TWIGA PUB', '1', '5023095', 'MASASANI ALBIN SAIDI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2426, 'SALAMA BOMBAY PUB', '1', '5008754', 'MSASANI MSASANI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2427, 'P 2', '1', '5047459', 'KAGERA MIKUMI KISIWANI DAR ES SALAAM', 0, 2, 0, 2, 1, 0),
(2428, 'MREMA PUB', '1', '5023683', 'MAGOMENI USALAMA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2429, 'FOREST PUB', '1', '5022517', 'KIMARA KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2430, 'PAVINIA PUB', '1', '5005183', 'KIMARA MWISHO DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2431, 'KAVISHE 2', '1', '5012586', 'KIMARA BONYOKWA DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(2432, 'DOLPHIN PUB', '1', '5026130', 'KIMARA KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2433, 'ANGEL\'S PARK', '1', '5040902', 'KIMARA STOP OVER KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2434, 'MAPACHA PUB', '1', '5005356', 'KIMARA SUKA DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2435, 'BUFFALO 3', '1', '5018293', 'KIMARA SUKA DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(2436, 'KILIMANI PUB', '1', '5005186', 'KIMARA TEMBONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2437, 'BEMECK PUB', '1', '5038584', 'GOLANI KIMARA SUKA DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2438, 'MADOX PUB', '1', '5037761', 'KIMARA DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2439, 'NEW VISSION PUB', '1', '5022439', 'KIMARA SUKA DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2440, 'TRIPPLE B 2', '1', '5022510', 'KIMARA SUKA DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(2441, 'KAMBONYA PUB', '1', '5044295', 'KIMARA SUKA DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2442, 'SEKI PUB', '1', '5041091', 'MBEZI LUIS DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2443, 'DAD\'S PUB', '1', '5036540', 'MBEZI LUIS DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2444, 'MWANZA  2', '1', '5029365', 'MBEZI MAKABE KINONDONI DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(2445, 'KISANGANI PUB', '1', '5098340', 'MBEZI MAKABE KINONDONI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2446, 'SHIRIMA 2', '1', '5007152', 'MBEZI LUIS KINONDONI DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(2447, 'ARIZONA 3 & GUEST', '1', '5041634', 'MBEZI LUIS KINONDONI DAR ES SALAAM', 0, 3, 0, 3, 1, 0),
(2448, 'KEN PUB', '1', '5012837', 'MBEZI LUIS DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2449, 'REHEMA 2', '1', '5038102', 'MBEZI KIMARA B KINONDONI DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(2450, 'HOPE 2', '1', '5025403', 'MBEZI KIMARA B KINONDONI DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(2451, 'MASSAWE 2', '1', '5007775', 'MBEZI MSIGANI KINODONI DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(2452, 'SUMMIT PUB', '1', '5012021', 'MBEZI LUIS DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2453, 'MANGI 2', '1', '5007771', 'MBEZI MASAKUZI KINONDONI DAR ES SALAAM', 0, 2, 0, 3, 1, 0),
(2454, 'THE LITE PUB', '1', '5028871', 'MBEZI MARAMBA MAWILI DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2455, 'NDEKHA PUB', '1', '5006310', 'KONDOA MAGOMENI KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2456, 'SHOO PUB', '1', '5022289', 'TEMEKE DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2457, 'BELLA II PUB', '1', '5011484', 'VINGUNGUTI KOMBO DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2458, 'MAKAUKI 2', '1', '5022992', 'VINGUNGUTI SAHARA DAR', 0, 2, 0, 1, 1, 0),
(2459, 'KISINGE PUB', '1', '5098081', 'VINGUNGUTI RELINI ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2460, 'SANTA BLANK PUB', '1', '5011471', 'CCM MAWENZI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2461, '2 MELLAR PUB', '1', '5010828', 'MAWENZI MAWENZI STAND DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2462, 'ESTER 2', '1', '5009119', 'MANDELA CHINI DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(2463, 'ALAMBA PUB', '1', '5035964', 'TABATA KIMANGA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2464, 'MAMA MREMA PUB', '1', '5096863', 'MANDELA JUU TABATA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2465, '2000 PUB & GUEST HOUSE', '1', '5020644', 'TABATA MAWENZI MAWENZI STAND DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2466, 'HAULE PUB', '1', '5028095', 'MAWENZI CCM GROUND DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2467, 'BROTHER JOFU PUB', '1', '5022036', 'MABIBO MAGOMENI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2468, 'ANGEL PUB', '1', '5022903', 'MABIBO FARASI MAGOMENI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2469, 'H PUB', '1', '5004883', 'MABIBO FARASI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2470, 'GK PUB', '1', '5033745', 'MABIBO MAGOMENI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2471, 'WHATSAPP PUB', '1', '5009141', 'KITUNDA RELINI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2472, 'JANTA 2', '1', '5097151', 'KITUNDA SHULE ILALA DAR ES SALAAM', 0, 2, 0, 1, 1, 0),
(2473, 'ELMA PUB', '1', '5022416', 'KINYANTIRA STREET KIVULE ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2474, 'PLATNUM PUB', '1', '5022240', 'MAGOLE KWA MPEMBA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2475, 'EVA PUB', '1', '5037361', 'KITUNDA MASSAI DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2476, 'VIP PUB', '1', '5017826', 'KITUNDA KIVULE ILALA DAR ES SALAAM', 0, 0, 0, 1, 1, 0),
(2477, 'MATEMBELA PUB', '1', '5092793', 'KITUNDA MATEMBELE YA KWANZA DAR', 0, 0, 0, 1, 1, 0),
(2478, 'NTALAM PUB', '1', '5009298', 'KIJITONYAMA MPAKANI A DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2479, 'USARIVER PUB', '1', '5000183', 'AIRTEL MOROCCO KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2480, 'BCBG PUB', '1', '5098517', 'MKUNGUNI KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2481, 'URU PUB', '1', '5001786', 'HANANASIF KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2482, 'MA DCD PUB', '1', '5007390', 'MWEMBEJINI KINONDONI ', 0, 0, 0, 2, 1, 0),
(2483, 'WASTARABU PUB', '1', '5001535', 'MOSCOW KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2484, 'IRENE PUB', '1', '5007354', 'MKWAJUNI KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2485, 'BADOO PUB', '1', '5009301', 'ITUNZE KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2486, 'SUMIT PUB', '1', '5001533', 'MKWAJUNI KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2487, 'KILOLE PUB', '1', '5099859', 'KINONDONI SHAMBA DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2488, 'SHIMBI KATI PUB', '1', '5097543', 'KINONDONI SHAMBA KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2489, 'MATAKO PUB', '1', '5044989', 'BIAFRA KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2490, 'CK PUB', '1', '5016980', 'KARAGO KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2491, 'STEREO PUB', '1', '5056040', 'STUDIO KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2492, 'DA HOME PUB', '1', '5001941', 'UBALOZI KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2493, 'DA HOME PUB', '1', '5099860', 'UBALOZI KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2494, 'OCTAR\'S PUB', '1', '5041292', 'UBALOZI KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2495, 'NEW FARMERS PUB', '1', '5022260', 'SEKENKE KINONDONI DAR ES SALAAM ', 0, 0, 0, 2, 1, 0),
(2496, '4WAYS PUB', '1', '5097898', 'ADA ESTATE KINONDONI DAR ES SALAAM', 0, 0, 0, 2, 1, 0),
(2497, 'K.V PUB', '1', '5045999', 'BOKO BASIHAYA DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2498, 'PRINCES K PUB', '1', '5017533', 'BOKO CHAMA DAR ES SALAAM', 0, 0, 0, 3, 1, 0),
(2499, 'CLAY PUB', '1', '5032776', 'BOKO NAMANGA DAR ES SALAAM', 0, 0, 0, 3, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `out_type`
--

CREATE TABLE `out_type` (
  `out_type_id` int(11) NOT NULL,
  `out_type_name` varchar(120) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `out_type`
--

INSERT INTO `out_type` (`out_type_id`, `out_type_name`) VALUES
(1, 'RED');

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `reg_id` int(11) NOT NULL,
  `distr_id` int(11) NOT NULL,
  `reg_name` varchar(120) NOT NULL,
  `rsm_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`reg_id`, `distr_id`, `reg_name`, `rsm_id`) VALUES
(1, 1, 'DAR NORTH', 1),
(2, 1, 'DAR SOUTH', 2),
(3, 1, 'DAR CENTER', 3);

-- --------------------------------------------------------

--
-- Table structure for table `rejected_loan_cooler`
--

CREATE TABLE `rejected_loan_cooler` (
  `reject_id` int(11) NOT NULL,
  `loan_cooler_id` int(11) NOT NULL,
  `rejected_by` int(11) NOT NULL,
  `reject_reason` text NOT NULL,
  `reject_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rejected_loan_cooler`
--

INSERT INTO `rejected_loan_cooler` (`reject_id`, `loan_cooler_id`, `rejected_by`, `reject_reason`, `reject_date`) VALUES
(1, 4, 6, 'this is too much for me to handle', '2019-12-18 20:56:57'),
(3, 5, 2, 'your information not enough', '2019-12-18 21:19:26'),
(4, 6, 5, 'this is too much for me to handle', '2019-12-18 21:32:18'),
(5, 8, 1, 'hey you doing tonight and tomorrow', '2019-12-18 21:38:38');

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE `route` (
  `route_id` int(11) NOT NULL,
  `s_point` text,
  `e_point` text,
  `street_road` text NOT NULL,
  `reg_id` int(11) NOT NULL,
  `occd_id` int(11) NOT NULL,
  `salesrep_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `route`
--

INSERT INTO `route` (`route_id`, `s_point`, `e_point`, `street_road`, `reg_id`, `occd_id`, `salesrep_id`) VALUES
(1, NULL, NULL, 'TABATA MUSLIM-TABATA RELINI ROUND ABOUT', 1, 1, 1),
(2, NULL, NULL, 'TANESCO-DARAJANI', 1, 2, 2),
(3, NULL, NULL, 'KISIWANI TO GADERN', 2, 3, 1),
(4, NULL, NULL, 'MAGEREZA BUS STAND-MOMBASA BUS STAND', 1, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `rsm`
--

CREATE TABLE `rsm` (
  `rsm_id` int(11) NOT NULL,
  `email` varchar(120) DEFAULT NULL,
  `phone` varchar(120) DEFAULT NULL,
  `rsm_name` varchar(120) NOT NULL,
  `login_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rsm`
--

INSERT INTO `rsm` (`rsm_id`, `email`, `phone`, `rsm_name`, `login_id`) VALUES
(1, 'fred@gmail.com', '25577777', 'FREDRICK MTUI', 1),
(2, NULL, NULL, 'ESTHER NDAGILE', 2),
(3, NULL, NULL, 'PATRICK SWAI', 3);

-- --------------------------------------------------------

--
-- Table structure for table `sales_rep`
--

CREATE TABLE `sales_rep` (
  `sales_rep_id` int(11) NOT NULL,
  `sales_rep_name` text NOT NULL,
  `occd_id` int(11) NOT NULL,
  `login_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_rep`
--

INSERT INTO `sales_rep` (`sales_rep_id`, `sales_rep_name`, `occd_id`, `login_id`) VALUES
(1, 'Jawad', 1, 8),
(2, 'Michael', 2, 9),
(3, 'Gaston', 3, 10);

-- --------------------------------------------------------

--
-- Table structure for table `technicians`
--

CREATE TABLE `technicians` (
  `technic_id` int(11) NOT NULL,
  `technic_name` text NOT NULL,
  `login_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `technicians`
--

INSERT INTO `technicians` (`technic_id`, `technic_name`, `login_id`) VALUES
(1, 'meintenance technician', 14);

-- --------------------------------------------------------

--
-- Table structure for table `user_auth`
--

CREATE TABLE `user_auth` (
  `user_id` int(11) NOT NULL,
  `username` text COLLATE utf8_unicode_ci NOT NULL,
  `password` text COLLATE utf8_unicode_ci NOT NULL,
  `user_role` int(11) NOT NULL,
  `user_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_auth`
--

INSERT INTO `user_auth` (`user_id`, `username`, `password`, `user_role`, `user_status`) VALUES
(1, 'darnorth@rsm.co', 'dar123', 2, 1),
(2, 'darsouth@rsm.co', 'dar123', 2, 1),
(3, 'darcenter@rsm.co', 'dar123', 2, 1),
(4, 'admin@admin.co', 'dar123', 1, 1),
(5, 'darnorth@asm.co', 'dar123', 3, 1),
(6, 'darsouth@asm.co', 'dar123', 3, 1),
(7, 'darcenter@asm.co', 'dar123', 3, 1),
(8, 'darnorth@sales.co', 'dar123', 4, 1),
(9, 'darsouth@sales.co', 'dar123', 4, 1),
(10, 'darcenter@sales.co', 'dar123', 4, 1),
(11, 'vtrac@cck.com', 'Vtrac123', 5, 1),
(12, 'user@fleet.cck', 'fleet123', 6, 1),
(13, 'manager@maint.cck', 'maint123', 7, 1),
(14, 'technician@technic.cck', 'technic123', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtracks`
--

CREATE TABLE `vtracks` (
  `vtrack_id` int(11) NOT NULL,
  `controller_name` text NOT NULL,
  `loged_in_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtracks`
--

INSERT INTO `vtracks` (`vtrack_id`, `controller_name`, `loged_in_id`) VALUES
(1, 'Victor', 7);

-- --------------------------------------------------------

--
-- Table structure for table `vtrack_release_info`
--

CREATE TABLE `vtrack_release_info` (
  `rerlease_id` int(11) NOT NULL,
  `cooler_sn` varchar(11) NOT NULL,
  `gate_pass` text NOT NULL,
  `request_id` int(11) NOT NULL,
  `vtrack_id` int(11) DEFAULT '1',
  `is_delivered` int(11) NOT NULL DEFAULT '0',
  `release_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtrack_release_info`
--

INSERT INTO `vtrack_release_info` (`rerlease_id`, `cooler_sn`, `gate_pass`, `request_id`, `vtrack_id`, `is_delivered`, `release_date`) VALUES
(1, 'SN123435', 'GTPASS49304', 7, 1, 0, '2019-12-19 00:00:00'),
(2, '27xe27', 'Zl1OnOlzNfZW', 1, 1, 0, '2019-12-18 23:01:33'),
(3, '67xe17', '0TkxKLuZQKDL', 9, 1, 0, '2019-12-18 23:02:34'),
(4, '57xe17', 'eqNgJGp9V6Na', 13, 1, 0, '2019-12-19 03:33:04'),
(5, '17xe37', 'bB5dUCM2m7Ug', 14, 1, 0, '2019-12-19 03:33:45'),
(6, 'FV660', 'YPJxSV5Cq7ov', 3, 1, 0, '2019-12-23 00:44:53'),
(7, 'FV660', 'QA0XcKcKvOvs', 8, 1, 0, '2019-12-23 02:18:45'),
(8, 'FV650', '1UVjjpQul3zJ', 2, 1, 0, '2019-12-23 21:59:23'),
(9, 'FV651', 'phpXaJiJixLb', 3, 1, 0, '2019-12-23 22:00:00'),
(10, 'FV650', 'ydF1eFlNLdLB', 4, 1, 0, '2019-12-23 22:00:56'),
(11, 'FV652', 'SF9ITTTDQjsq', 5, 1, 0, '2019-12-23 22:01:42');

-- --------------------------------------------------------

--
-- Structure for view `coolerview`
--
DROP TABLE IF EXISTS `coolerview`;
-- Error reading structure for table db_a50947_cdc.coolerview: #1356 - View 'db_a50947_cdc.coolerview' references invalid table(s) or column(s) or function(s) or definer/invoker of view lack rights to use them

-- --------------------------------------------------------

--
-- Structure for view `loancoolerview`
--
DROP TABLE IF EXISTS `loancoolerview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`a50947_cdc`@`%` SQL SECURITY DEFINER VIEW `loancoolerview`  AS  select `loan_coooler`.`ln_col_id` AS `ln_col_id`,`loan_coooler`.`next_to` AS `next_to`,`loan_coooler`.`route_id` AS `route_id`,`loan_coooler`.`route` AS `route`,`loan_coooler`.`empties` AS `empties`,`loan_coooler`.`order_no` AS `order_no`,`loan_coooler`.`sales_rep_id` AS `sales_rep_id`,`loan_coooler`.`cooler_type` AS `cooler_type`,`loan_coooler`.`serial_no` AS `serial_no`,`loan_coooler`.`recomendations` AS `recomendations`,`loan_coooler`.`request_date` AS `request_date`,`loan_coooler`.`doc_no` AS `doc_no`,`loan_coooler`.`contract_no` AS `contract_no`,`loan_coooler`.`outlet_no` AS `outlet_no`,`loan_coooler`.`outlet_name` AS `outlet_name`,`loan_coooler`.`outlet_owner` AS `outlet_owner`,`loan_coooler`.`location` AS `location`,`loan_coooler`.`street` AS `street`,`loan_coooler`.`outlet_tag` AS `outlet_tag`,`loan_coooler`.`passport` AS `passport`,`loan_coooler`.`user_identity` AS `user_identity`,`loan_coooler`.`asm_signature` AS `asm_signature`,`loan_coooler`.`rsm_signature` AS `rsm_signature`,`loan_coooler`.`asm_attend_date` AS `asm_attend_date`,`loan_coooler`.`rsm_attend_date` AS `rsm_attend_date`,`loan_coooler`.`approved_by_asm` AS `approved_by_asm`,`loan_coooler`.`approved_by_rsm` AS `approved_by_rsm`,`loan_coooler`.`approved_by_contlr` AS `approved_by_contlr`,`loan_coooler`.`approve_by_fmanager` AS `approve_by_fmanager`,`loan_coooler`.`fmanager_sign` AS `fmanager_sign`,`loan_coooler`.`contract` AS `contract`,`loan_coooler`.`asm_id` AS `asm_id`,`loan_coooler`.`rsm_id` AS `rsm_id`,(case when ((`loan_coooler`.`approved_by_asm` = 0) and (`loan_coooler`.`approved_by_rsm` = 0)) then 'PENDING' when ((`loan_coooler`.`approved_by_asm` = 0) and (`loan_coooler`.`approved_by_rsm` = 1)) then 'PENDING' when ((`loan_coooler`.`approved_by_asm` = 1) and (`loan_coooler`.`approved_by_rsm` = 0)) then 'PENDING' when ((`loan_coooler`.`approved_by_asm` = 1) and (`loan_coooler`.`approved_by_rsm` = 1)) then 'APPROVED' else 'DECLINED' end) AS `cooler_status` from `loan_coooler` ;

-- --------------------------------------------------------

--
-- Structure for view `maintenancecoolerview`
--
DROP TABLE IF EXISTS `maintenancecoolerview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`a50947_cdc`@`%` SQL SECURITY DEFINER VIEW `maintenancecoolerview`  AS  select `cooler_maintenance`.`cooler_main_id` AS `cooler_main_id`,`cooler_maintenance`.`sales_rep_id` AS `sales_rep_id`,`cooler_maintenance`.`outlet_name` AS `outlet_name`,`cooler_maintenance`.`outlet_no` AS `outlet_no`,`cooler_maintenance`.`street` AS `street`,`cooler_maintenance`.`near_to` AS `near_to`,`cooler_maintenance`.`cooler_type` AS `cooler_type`,`cooler_maintenance`.`serial_no` AS `serial_no`,`cooler_maintenance`.`deflect` AS `deflect`,`cooler_maintenance`.`tag_no` AS `tag_no`,`cooler_maintenance`.`request_date` AS `request_date`,`cooler_maintenance`.`date_of_repair` AS `date_of_repair`,`cooler_maintenance`.`r_status` AS `r_status`,(case when (`cooler_maintenance`.`r_status` = 0) then 'RECEIVED' when (`cooler_maintenance`.`r_status` = 1) then 'ASSIGNED' when (`cooler_maintenance`.`r_status` = 2) then 'FIXED' end) AS `cooler_status` from `cooler_maintenance` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `asm`
--
ALTER TABLE `asm`
  ADD PRIMARY KEY (`asm_id`);

--
-- Indexes for table `audit`
--
ALTER TABLE `audit`
  ADD PRIMARY KEY (`audit_id`);

--
-- Indexes for table `audit_availability`
--
ALTER TABLE `audit_availability`
  ADD PRIMARY KEY (`aud_av_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `channel`
--
ALTER TABLE `channel`
  ADD PRIMARY KEY (`channel_id`);

--
-- Indexes for table `coolers`
--
ALTER TABLE `coolers`
  ADD PRIMARY KEY (`cooler_sn`);

--
-- Indexes for table `cooler_maintenance`
--
ALTER TABLE `cooler_maintenance`
  ADD PRIMARY KEY (`cooler_main_id`);

--
-- Indexes for table `cooler_types`
--
ALTER TABLE `cooler_types`
  ADD PRIMARY KEY (`coolertype_id`);

--
-- Indexes for table `delivery_info`
--
ALTER TABLE `delivery_info`
  ADD PRIMARY KEY (`delivery_id`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`distr_id`);

--
-- Indexes for table `fleet`
--
ALTER TABLE `fleet`
  ADD PRIMARY KEY (`fleet_id`);

--
-- Indexes for table `group_channel`
--
ALTER TABLE `group_channel`
  ADD PRIMARY KEY (`chan_id`);

--
-- Indexes for table `loan_coooler`
--
ALTER TABLE `loan_coooler`
  ADD PRIMARY KEY (`ln_col_id`);

--
-- Indexes for table `login_roles`
--
ALTER TABLE `login_roles`
  ADD PRIMARY KEY (`log_role_id`);

--
-- Indexes for table `maintenance`
--
ALTER TABLE `maintenance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maintenance_dpt`
--
ALTER TABLE `maintenance_dpt`
  ADD PRIMARY KEY (`maint_id`);

--
-- Indexes for table `maintenance_task`
--
ALTER TABLE `maintenance_task`
  ADD PRIMARY KEY (`task_id`);

--
-- Indexes for table `occd`
--
ALTER TABLE `occd`
  ADD PRIMARY KEY (`occd_id`);

--
-- Indexes for table `outlet`
--
ALTER TABLE `outlet`
  ADD PRIMARY KEY (`outlet_id`);

--
-- Indexes for table `out_type`
--
ALTER TABLE `out_type`
  ADD PRIMARY KEY (`out_type_id`);

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`reg_id`);

--
-- Indexes for table `rejected_loan_cooler`
--
ALTER TABLE `rejected_loan_cooler`
  ADD PRIMARY KEY (`reject_id`);

--
-- Indexes for table `route`
--
ALTER TABLE `route`
  ADD PRIMARY KEY (`route_id`);

--
-- Indexes for table `rsm`
--
ALTER TABLE `rsm`
  ADD PRIMARY KEY (`rsm_id`);

--
-- Indexes for table `sales_rep`
--
ALTER TABLE `sales_rep`
  ADD PRIMARY KEY (`sales_rep_id`);

--
-- Indexes for table `technicians`
--
ALTER TABLE `technicians`
  ADD PRIMARY KEY (`technic_id`);

--
-- Indexes for table `user_auth`
--
ALTER TABLE `user_auth`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `vtracks`
--
ALTER TABLE `vtracks`
  ADD PRIMARY KEY (`vtrack_id`);

--
-- Indexes for table `vtrack_release_info`
--
ALTER TABLE `vtrack_release_info`
  ADD PRIMARY KEY (`rerlease_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `asm`
--
ALTER TABLE `asm`
  MODIFY `asm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `audit`
--
ALTER TABLE `audit`
  MODIFY `audit_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `audit_availability`
--
ALTER TABLE `audit_availability`
  MODIFY `aud_av_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `channel`
--
ALTER TABLE `channel`
  MODIFY `channel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cooler_maintenance`
--
ALTER TABLE `cooler_maintenance`
  MODIFY `cooler_main_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cooler_types`
--
ALTER TABLE `cooler_types`
  MODIFY `coolertype_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `delivery_info`
--
ALTER TABLE `delivery_info`
  MODIFY `delivery_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `distr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fleet`
--
ALTER TABLE `fleet`
  MODIFY `fleet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `group_channel`
--
ALTER TABLE `group_channel`
  MODIFY `chan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `loan_coooler`
--
ALTER TABLE `loan_coooler`
  MODIFY `ln_col_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `login_roles`
--
ALTER TABLE `login_roles`
  MODIFY `log_role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `maintenance`
--
ALTER TABLE `maintenance`
  MODIFY `id` int(45) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `maintenance_dpt`
--
ALTER TABLE `maintenance_dpt`
  MODIFY `maint_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `maintenance_task`
--
ALTER TABLE `maintenance_task`
  MODIFY `task_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `occd`
--
ALTER TABLE `occd`
  MODIFY `occd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `outlet`
--
ALTER TABLE `outlet`
  MODIFY `outlet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2500;

--
-- AUTO_INCREMENT for table `out_type`
--
ALTER TABLE `out_type`
  MODIFY `out_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `region`
--
ALTER TABLE `region`
  MODIFY `reg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rejected_loan_cooler`
--
ALTER TABLE `rejected_loan_cooler`
  MODIFY `reject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `route`
--
ALTER TABLE `route`
  MODIFY `route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rsm`
--
ALTER TABLE `rsm`
  MODIFY `rsm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sales_rep`
--
ALTER TABLE `sales_rep`
  MODIFY `sales_rep_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `technicians`
--
ALTER TABLE `technicians`
  MODIFY `technic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_auth`
--
ALTER TABLE `user_auth`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `vtracks`
--
ALTER TABLE `vtracks`
  MODIFY `vtrack_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vtrack_release_info`
--
ALTER TABLE `vtrack_release_info`
  MODIFY `rerlease_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
