-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2021 at 10:42 PM
-- Server version: 10.1.8-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kwalitywallsinventorydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add payment mode', 7, 'add_paymentmode'),
(26, 'Can change payment mode', 7, 'change_paymentmode'),
(27, 'Can delete payment mode', 7, 'delete_paymentmode'),
(28, 'Can view payment mode', 7, 'view_paymentmode'),
(29, 'Can add GST', 8, 'add_gst'),
(30, 'Can change GST', 8, 'change_gst'),
(31, 'Can delete GST', 8, 'delete_gst'),
(32, 'Can view GST', 8, 'view_gst'),
(33, 'Can add brand', 9, 'add_brand'),
(34, 'Can change brand', 9, 'change_brand'),
(35, 'Can delete brand', 9, 'delete_brand'),
(36, 'Can view brand', 9, 'view_brand'),
(37, 'Can add Category', 10, 'add_itemcategory'),
(38, 'Can change Category', 10, 'change_itemcategory'),
(39, 'Can delete Category', 10, 'delete_itemcategory'),
(40, 'Can view Category', 10, 'view_itemcategory'),
(41, 'Can add item', 11, 'add_item'),
(42, 'Can change item', 11, 'change_item'),
(43, 'Can delete item', 11, 'delete_item'),
(44, 'Can view item', 11, 'view_item'),
(45, 'Can add sold item', 12, 'add_solditem'),
(46, 'Can change sold item', 12, 'change_solditem'),
(47, 'Can delete sold item', 12, 'delete_solditem'),
(48, 'Can view sold item', 12, 'view_solditem'),
(49, 'Can add Sell', 13, 'add_invoicesells'),
(50, 'Can change Sell', 13, 'change_invoicesells'),
(51, 'Can delete Sell', 13, 'delete_invoicesells'),
(52, 'Can view Sell', 13, 'view_invoicesells'),
(53, 'Can add purchased item', 14, 'add_purchaseditem'),
(54, 'Can change purchased item', 14, 'change_purchaseditem'),
(55, 'Can delete purchased item', 14, 'delete_purchaseditem'),
(56, 'Can view purchased item', 14, 'view_purchaseditem'),
(57, 'Can add Purchase', 15, 'add_invoicepurchase'),
(58, 'Can change Purchase', 15, 'change_invoicepurchase'),
(59, 'Can delete Purchase', 15, 'delete_invoicepurchase'),
(60, 'Can view Purchase', 15, 'view_invoicepurchase');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$3INimmbGE8CF$aJQkOJWgxiICINnhsilJU0resUw4cHyPN41iHv+nY/0=', '2021-03-08 18:17:42.227818', 1, 'sahil', '', '', '', 1, 1, '2021-03-08 18:17:33.908429');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-03-08 18:19:10.737459', '1', 'ICE CANDY', 1, '[{"added": {}}]', 10, 1),
(2, '2021-03-08 18:19:19.347272', '2', 'MAGNUM', 1, '[{"added": {}}]', 10, 1),
(3, '2021-03-08 18:19:27.001557', '2', 'MAGNUM', 2, '[]', 10, 1),
(4, '2021-03-08 18:19:32.790292', '3', 'OTHER', 1, '[{"added": {}}]', 10, 1),
(5, '2021-03-08 18:19:43.980224', '4', 'CORNETTO', 1, '[{"added": {}}]', 10, 1),
(6, '2021-03-08 18:21:38.927876', '5', 'TUB', 1, '[{"added": {}}]', 10, 1),
(7, '2021-03-08 18:21:57.788720', '6', 'PARTY PACK', 1, '[{"added": {}}]', 10, 1),
(8, '2021-03-08 18:22:14.897803', '7', 'CUP', 1, '[{"added": {}}]', 10, 1),
(9, '2021-03-08 18:23:13.397894', '8', 'STICK', 1, '[{"added": {}}]', 10, 1),
(10, '2021-03-08 18:23:40.672647', '1', 'ICE CANDY', 3, '', 10, 1),
(11, '2021-03-08 18:25:22.771145', '8', 'FEAST', 2, '[{"changed": {"fields": ["Category name"]}}]', 10, 1),
(12, '2021-03-08 18:25:31.766263', '9', 'KULFI', 1, '[{"added": {}}]', 10, 1),
(13, '2021-03-08 18:25:53.066430', '10', 'STICK', 1, '[{"added": {}}]', 10, 1),
(14, '2021-03-08 18:27:22.640076', '1', 'ORANGE MAHABAR (10Rs)', 1, '[{"added": {}}]', 11, 1),
(15, '2021-03-08 18:30:36.010546', '2', 'MAGIC DUST (20Rs)', 1, '[{"added": {}}]', 11, 1),
(16, '2021-03-08 18:30:52.544884', '3', 'WATER MELON (15Rs)', 1, '[{"added": {}}]', 11, 1),
(17, '2021-03-08 18:31:08.124100', '4', 'AAMRAS (25Rs)', 1, '[{"added": {}}]', 11, 1),
(18, '2021-03-08 18:31:23.719267', '5', 'COLA BLAST (10Rs)', 1, '[{"added": {}}]', 11, 1),
(19, '2021-03-08 18:31:38.953602', '6', 'LEMON BLAST (10Rs)', 1, '[{"added": {}}]', 11, 1),
(20, '2021-03-08 18:32:25.827250', '7', 'MANGO ZAP (25Rs)', 1, '[{"added": {}}]', 11, 1),
(21, '2021-03-08 18:32:55.803750', '8', 'CHOCOLATE TRUFFLE (80Rs)', 1, '[{"added": {}}]', 11, 1),
(22, '2021-03-08 18:33:14.186855', '9', 'ALMOND (90Rs)', 1, '[{"added": {}}]', 11, 1),
(23, '2021-03-08 18:33:33.325312', '10', 'BROWNIE (90Rs)', 1, '[{"added": {}}]', 11, 1),
(24, '2021-03-08 18:34:16.126969', '11', 'TRIXY (60Rs)', 1, '[{"added": {}}]', 11, 1),
(25, '2021-03-08 18:35:04.985324', '12', 'CHOCOTASTIC SUNDAE (30Rs)', 1, '[{"added": {}}]', 11, 1),
(26, '2021-03-08 18:35:20.834816', '13', 'VANILLA (10Rs)', 1, '[{"added": {}}]', 11, 1),
(27, '2021-03-08 18:35:37.215214', '14', 'VANILLA (15Rs)', 1, '[{"added": {}}]', 11, 1),
(28, '2021-03-08 18:35:52.458867', '15', 'STRAWBERRY (15Rs)', 1, '[{"added": {}}]', 11, 1),
(29, '2021-03-08 18:36:10.022479', '16', 'BUTTERSCOTCH (30Rs)', 1, '[{"added": {}}]', 11, 1),
(30, '2021-03-08 18:36:21.839456', '17', 'CHOCOLATE (20Rs)', 1, '[{"added": {}}]', 11, 1),
(31, '2021-03-08 18:36:35.651882', '18', 'OREO AND CREAM (50Rs)', 1, '[{"added": {}}]', 11, 1),
(32, '2021-03-08 18:36:53.290825', '19', 'DESI KULFI (50Rs)', 1, '[{"added": {}}]', 11, 1),
(33, '2021-03-08 18:37:10.787707', '20', 'TENDER COCONUT (50Rs)', 1, '[{"added": {}}]', 11, 1),
(34, '2021-03-08 18:41:03.442903', '21', 'SANDWICH CHOCOLATE AND VANILLA (30Rs)', 1, '[{"added": {}}]', 11, 1),
(35, '2021-03-08 18:41:20.495524', '22', 'CASSATTA (60Rs)', 1, '[{"added": {}}]', 11, 1),
(36, '2021-03-08 18:43:14.199003', '23', 'CHOCO VANILLA (30Rs)', 1, '[{"added": {}}]', 11, 1),
(37, '2021-03-08 18:43:36.466704', '24', 'CHOCO CONE (10Rs)', 1, '[{"added": {}}]', 11, 1),
(38, '2021-03-08 18:43:47.038976', '25', 'BUTTERSCOTCH (40Rs)', 1, '[{"added": {}}]', 11, 1),
(39, '2021-03-08 18:44:30.183889', '26', 'DOUBLE CHOCOLATE (40Rs)', 1, '[{"added": {}}]', 11, 1),
(40, '2021-03-08 18:44:34.291232', '26', 'DOUBLE CHOCOLATE (40Rs)', 2, '[]', 11, 1),
(41, '2021-03-08 18:44:46.340664', '27', 'BUTTERSCOTCH (20Rs)', 1, '[{"added": {}}]', 11, 1),
(42, '2021-03-08 18:45:07.061538', '28', 'CHOCOLATE (20Rs)', 1, '[{"added": {}}]', 11, 1),
(43, '2021-03-08 18:45:25.059221', '29', 'CHOKISSIMO (60Rs)', 1, '[{"added": {}}]', 11, 1),
(44, '2021-03-08 18:46:13.518867', '30', 'OREO AND CREAM (60Rs)', 1, '[{"added": {}}]', 11, 1),
(45, '2021-03-08 18:47:24.932608', '11', 'CHOCOBAR', 1, '[{"added": {}}]', 10, 1),
(46, '2021-03-08 18:47:48.263936', '31', 'CHOCOBAR MINI (10Rs)', 1, '[{"added": {}}]', 11, 1),
(47, '2021-03-08 18:48:09.675838', '32', 'CHOCOBAR (20Rs)', 1, '[{"added": {}}]', 11, 1),
(48, '2021-03-08 18:48:46.607999', '33', 'SHAHI KULFI (20Rs)', 1, '[{"added": {}}]', 11, 1),
(49, '2021-03-08 18:48:59.722036', '34', 'DRYFRUIT RABRI KULFI (30Rs)', 1, '[{"added": {}}]', 11, 1),
(50, '2021-03-08 18:49:32.849888', '35', 'FEAST CHOCOLATE (30Rs)', 1, '[{"added": {}}]', 11, 1),
(51, '2021-03-08 18:49:42.434490', '36', 'FEAST FRUIT & NUT (40Rs)', 1, '[{"added": {}}]', 11, 1),
(52, '2021-03-08 18:51:20.051888', '37', 'RAJWADI BITE (10Rs)', 1, '[{"added": {}}]', 11, 1),
(53, '2021-03-08 18:53:07.532689', '38', 'VANILLA (135Rs)', 1, '[{"added": {}}]', 11, 1),
(54, '2021-03-08 18:53:32.916678', '39', 'DIVINE CHOCOLATE (229Rs)', 1, '[{"added": {}}]', 11, 1),
(55, '2021-03-08 18:53:46.563622', '40', 'CREAMY KULFI (249Rs)', 1, '[{"added": {}}]', 11, 1),
(56, '2021-03-08 18:53:58.179436', '41', 'MANGO (149Rs)', 1, '[{"added": {}}]', 11, 1),
(57, '2021-03-08 18:54:21.746630', '42', 'CREME CARAMEL (229Rs)', 1, '[{"added": {}}]', 11, 1),
(58, '2021-03-08 18:54:35.425656', '43', 'OREO AND CREAM (249Rs)', 1, '[{"added": {}}]', 11, 1),
(59, '2021-03-08 18:54:53.132049', '44', 'TENDER COCONUT (199Rs)', 1, '[{"added": {}}]', 11, 1),
(60, '2021-03-08 18:56:09.353825', '45', 'CHOCO BROWNIE FUDGE (249Rs)', 1, '[{"added": {}}]', 11, 1),
(61, '2021-03-08 18:56:39.047725', '46', 'FRUIT & NUT (229Rs)', 1, '[{"added": {}}]', 11, 1),
(62, '2021-03-08 18:56:52.605311', '47', 'BUTTERSCOTCH (149Rs)', 1, '[{"added": {}}]', 11, 1),
(63, '2021-03-08 18:57:51.428664', '48', 'VANILLA (99Rs)', 1, '[{"added": {}}]', 11, 1),
(64, '2021-03-08 18:58:22.426425', '49', 'OREO AND CREAM (149Rs)', 1, '[{"added": {}}]', 11, 1),
(65, '2021-03-08 18:58:37.690396', '50', 'CREAMY KULFI (165Rs)', 1, '[{"added": {}}]', 11, 1),
(66, '2021-03-08 18:59:11.070929', '48', 'VANILLA (99Rs)', 2, '[{"changed": {"fields": ["Category"]}}]', 11, 1),
(67, '2021-03-08 18:59:32.450175', '51', 'CHOCOLATE (129Rs)', 1, '[{"added": {}}]', 11, 1),
(68, '2021-03-08 18:59:48.583824', '52', 'BLACKCURRANT (165Rs)', 1, '[{"added": {}}]', 11, 1),
(69, '2021-03-08 18:59:59.147130', '53', 'MANGO (129Rs)', 1, '[{"added": {}}]', 11, 1),
(70, '2021-03-08 19:00:10.218170', '54', 'STRAWBERRY (99Rs)', 1, '[{"added": {}}]', 11, 1),
(71, '2021-03-08 19:00:24.152618', '55', 'BUTTERSCOTCH (129Rs)', 1, '[{"added": {}}]', 11, 1),
(72, '2021-03-08 19:00:34.015743', '56', 'KESAR PISTA (149Rs)', 1, '[{"added": {}}]', 11, 1),
(73, '2021-03-08 19:00:43.786961', '57', 'TUTTI FRUTTI (129Rs)', 1, '[{"added": {}}]', 11, 1),
(74, '2021-03-08 19:03:43.669646', '1', 'CASH', 1, '[{"added": {}}]', 7, 1),
(75, '2021-03-08 19:03:47.229151', '2', 'PHONEPE', 1, '[{"added": {}}]', 7, 1),
(76, '2021-03-08 19:03:51.469916', '3', 'PAYTM', 1, '[{"added": {}}]', 7, 1),
(77, '2021-03-08 19:04:07.579985', '4', 'GPAY', 1, '[{"added": {}}]', 7, 1),
(78, '2021-03-08 19:04:11.229104', '5', 'CARD', 1, '[{"added": {}}]', 7, 1),
(79, '2021-03-08 19:04:18.272600', '6', 'SWIGGY', 1, '[{"added": {}}]', 7, 1),
(80, '2021-03-11 07:41:03.318992', '47', 'BUTTERSCOTCH (149Rs)', 2, '[{"changed": {"fields": ["Current stock"]}}]', 11, 1),
(81, '2021-03-11 07:41:24.731976', '46', 'FRUIT & NUT (229Rs)', 2, '[{"changed": {"fields": ["Current stock"]}}]', 11, 1),
(82, '2021-03-11 07:41:35.480863', '45', 'CHOCO BROWNIE FUDGE (249Rs)', 2, '[{"changed": {"fields": ["Current stock"]}}]', 11, 1),
(83, '2021-03-11 07:41:46.258587', '44', 'TENDER COCONUT (199Rs)', 2, '[{"changed": {"fields": ["Current stock"]}}]', 11, 1),
(84, '2021-03-11 07:41:58.573530', '43', 'OREO AND CREAM (249Rs)', 2, '[{"changed": {"fields": ["Current stock"]}}]', 11, 1),
(85, '2021-03-11 07:42:17.605810', '42', 'CREME CARAMEL (229Rs)', 2, '[{"changed": {"fields": ["Current stock"]}}]', 11, 1),
(86, '2021-03-11 07:42:30.486053', '41', 'MANGO (149Rs)', 2, '[{"changed": {"fields": ["Current stock"]}}]', 11, 1),
(87, '2021-03-11 07:42:43.009832', '40', 'CREAMY KULFI (249Rs)', 2, '[{"changed": {"fields": ["Current stock"]}}]', 11, 1),
(88, '2021-03-11 07:42:54.660595', '39', 'DIVINE CHOCOLATE (229Rs)', 2, '[{"changed": {"fields": ["Current stock"]}}]', 11, 1),
(89, '2021-03-11 07:43:10.852858', '38', 'VANILLA (135Rs)', 2, '[{"changed": {"fields": ["Current stock"]}}]', 11, 1),
(90, '2021-03-11 07:43:42.012889', '57', 'TUTTI FRUTTI (129Rs)', 2, '[{"changed": {"fields": ["Current stock"]}}]', 11, 1),
(91, '2021-03-11 07:43:50.801248', '56', 'KESAR PISTA (149Rs)', 2, '[{"changed": {"fields": ["Current stock"]}}]', 11, 1),
(92, '2021-03-11 07:44:04.197253', '55', 'BUTTERSCOTCH (129Rs)', 2, '[{"changed": {"fields": ["Current stock"]}}]', 11, 1),
(93, '2021-03-11 07:44:12.193187', '54', 'STRAWBERRY (99Rs)', 2, '[{"changed": {"fields": ["Current stock"]}}]', 11, 1),
(94, '2021-03-11 07:44:21.560499', '53', 'MANGO (129Rs)', 2, '[{"changed": {"fields": ["Current stock"]}}]', 11, 1),
(95, '2021-03-11 07:44:31.383339', '52', 'BLACKCURRANT (165Rs)', 2, '[{"changed": {"fields": ["Current stock"]}}]', 11, 1),
(96, '2021-03-11 07:44:41.229974', '51', 'CHOCOLATE (129Rs)', 2, '[{"changed": {"fields": ["Current stock"]}}]', 11, 1),
(97, '2021-03-11 07:44:57.739614', '50', 'CREAMY KULFI (165Rs)', 2, '[{"changed": {"fields": ["Current stock"]}}]', 11, 1),
(98, '2021-03-11 07:45:12.851946', '49', 'OREO AND CREAM (149Rs)', 2, '[{"changed": {"fields": ["Current stock"]}}]', 11, 1),
(99, '2021-03-11 07:45:19.598422', '48', 'VANILLA (99Rs)', 2, '[{"changed": {"fields": ["Current stock"]}}]', 11, 1),
(100, '2021-03-11 07:45:39.309463', '10', 'BROWNIE (90Rs)', 2, '[{"changed": {"fields": ["Current stock"]}}]', 11, 1),
(101, '2021-03-11 07:45:46.933312', '9', 'ALMOND (90Rs)', 2, '[{"changed": {"fields": ["Current stock"]}}]', 11, 1),
(102, '2021-03-11 07:45:59.162707', '8', 'CHOCOLATE TRUFFLE (80Rs)', 2, '[{"changed": {"fields": ["Current stock"]}}]', 11, 1),
(103, '2021-03-11 07:47:11.600335', '30', 'OREO AND CREAM (60Rs)', 2, '[{"changed": {"fields": ["Current stock"]}}]', 11, 1),
(104, '2021-03-11 07:47:22.971844', '29', 'CHOKISSIMO (60Rs)', 2, '[{"changed": {"fields": ["Current stock"]}}]', 11, 1),
(105, '2021-03-11 07:47:58.243954', '28', 'CHOCOLATE (20Rs)', 2, '[{"changed": {"fields": ["Current stock"]}}]', 11, 1),
(106, '2021-03-11 07:49:22.961455', '24', 'CHOCO CONE (10Rs)', 2, '[{"changed": {"fields": ["Current stock"]}}]', 11, 1),
(107, '2021-03-11 07:50:12.322364', '26', 'DOUBLE CHOCOLATE (40Rs)', 2, '[{"changed": {"fields": ["Current stock"]}}]', 11, 1),
(108, '2021-03-11 07:50:56.278565', '25', 'BUTTERSCOTCH (40Rs)', 2, '[{"changed": {"fields": ["Current stock"]}}]', 11, 1),
(109, '2021-03-11 07:51:41.559809', '58', 'VANILLA (40Rs)', 1, '[{"added": {}}]', 11, 1),
(110, '2021-03-11 07:52:33.047056', '27', 'BUTTERSCOTCH (20Rs)', 2, '[{"changed": {"fields": ["Current stock"]}}]', 11, 1),
(111, '2021-03-11 07:53:13.934632', '59', 'BUTTERSCOTCH (15Rs)', 1, '[{"added": {}}]', 11, 1),
(112, '2021-03-11 07:54:07.873431', '18', 'OREO AND CREAM (50Rs)', 2, '[{"changed": {"fields": ["Current stock"]}}]', 11, 1),
(113, '2021-03-11 07:54:14.871776', '20', 'TENDER COCONUT (50Rs)', 2, '[{"changed": {"fields": ["Current stock"]}}]', 11, 1),
(114, '2021-03-11 07:54:24.703084', '11', 'TRIXY (60Rs)', 2, '[{"changed": {"fields": ["Current stock"]}}]', 11, 1),
(115, '2021-03-11 07:54:34.058422', '12', 'CHOCOTASTIC SUNDAE (30Rs)', 2, '[{"changed": {"fields": ["Current stock"]}}]', 11, 1),
(116, '2021-03-11 07:54:54.209341', '13', 'VANILLA (10Rs)', 3, '', 11, 1),
(117, '2021-03-11 07:55:05.625696', '14', 'VANILLA (15Rs)', 2, '[{"changed": {"fields": ["Current stock"]}}]', 11, 1),
(118, '2021-03-11 07:55:12.125145', '15', 'STRAWBERRY (15Rs)', 2, '[{"changed": {"fields": ["Current stock"]}}]', 11, 1),
(119, '2021-03-11 07:55:18.081445', '17', 'CHOCOLATE (20Rs)', 2, '[{"changed": {"fields": ["Current stock"]}}]', 11, 1),
(120, '2021-03-11 07:55:26.142541', '16', 'BUTTERSCOTCH (30Rs)', 2, '[{"changed": {"fields": ["Current stock"]}}]', 11, 1),
(121, '2021-03-11 07:55:40.730068', '34', 'DRYFRUIT RABRI KULFI (30Rs)', 2, '[{"changed": {"fields": ["Current stock"]}}]', 11, 1),
(122, '2021-03-11 07:55:47.912475', '33', 'SHAHI KULFI (20Rs)', 2, '[{"changed": {"fields": ["Current stock"]}}]', 11, 1),
(123, '2021-03-11 07:55:57.064349', '37', 'RAJWADI BITE (10Rs)', 2, '[{"changed": {"fields": ["Current stock"]}}]', 11, 1),
(124, '2021-03-11 07:56:24.067661', '31', 'CHOCOBAR MINI (10Rs)', 2, '[{"changed": {"fields": ["Current stock"]}}]', 11, 1),
(125, '2021-03-11 07:56:34.140021', '1', 'ORANGE MAHABAR (10Rs)', 2, '[{"changed": {"fields": ["Current stock"]}}]', 11, 1),
(126, '2021-03-11 07:56:58.752852', '5', 'COLA BLAST (10Rs)', 2, '[{"changed": {"fields": ["Current stock"]}}]', 11, 1),
(127, '2021-03-11 07:57:07.379850', '6', 'LEMON BLAST (10Rs)', 2, '[{"changed": {"fields": ["Current stock"]}}]', 11, 1),
(128, '2021-03-11 07:57:54.193099', '35', 'FEAST CHOCOLATE (30Rs)', 2, '[{"changed": {"fields": ["Current stock"]}}]', 11, 1),
(129, '2021-03-11 07:58:26.191471', '60', 'NUTTY BAR (10Rs)', 1, '[{"added": {}}]', 11, 1),
(130, '2021-03-11 07:58:34.482110', '4', 'AAMRAS (25Rs)', 2, '[{"changed": {"fields": ["Current stock"]}}]', 11, 1),
(131, '2021-03-11 07:58:43.387450', '7', 'MANGO ZAP (25Rs)', 2, '[{"changed": {"fields": ["Current stock"]}}]', 11, 1),
(132, '2021-03-11 07:58:52.280428', '32', 'CHOCOBAR (20Rs)', 2, '[{"changed": {"fields": ["Current stock"]}}]', 11, 1),
(133, '2021-03-11 07:59:04.403669', '36', 'FEAST FRUIT & NUT (40Rs)', 2, '[{"changed": {"fields": ["Current stock"]}}]', 11, 1),
(134, '2021-03-11 07:59:13.997486', '21', 'SANDWICH CHOCOLATE AND VANILLA (30Rs)', 2, '[{"changed": {"fields": ["Current stock"]}}]', 11, 1),
(135, '2021-03-11 07:59:20.942456', '22', 'CASSATTA (60Rs)', 2, '[{"changed": {"fields": ["Current stock"]}}]', 11, 1),
(136, '2021-03-11 08:03:27.887824', '23', 'CHOCO VANILLA (30Rs)', 3, '', 11, 1),
(137, '2021-03-11 08:04:34.137482', '19', 'DESI KULFI (50Rs)', 2, '[{"changed": {"fields": ["Current stock"]}}]', 11, 1),
(138, '2021-03-11 08:11:57.180765', '3', 'WATER MELON (15Rs)', 2, '[{"changed": {"fields": ["Current stock"]}}]', 11, 1),
(139, '2021-03-11 08:12:01.272005', '3', 'WATER MELON (15Rs)', 3, '', 11, 1),
(140, '2021-03-11 08:12:09.284224', '19', 'DESI KULFI (50Rs)', 3, '', 11, 1),
(141, '2021-03-11 14:41:44.800792', '1', 'InvoiceSells object (1)', 1, '[{"added": {}}, {"added": {"name": "sold item", "object": "SoldItem object (1)"}}, {"added": {"name": "sold item", "object": "SoldItem object (2)"}}, {"added": {"name": "sold item", "object": "SoldItem object (3)"}}, {"added": {"name": "sold item", "object": "SoldItem object (4)"}}, {"added": {"name": "sold item", "object": "SoldItem object (5)"}}, {"added": {"name": "sold item", "object": "SoldItem object (6)"}}, {"added": {"name": "sold item", "object": "SoldItem object (7)"}}]', 13, 1),
(142, '2021-03-11 14:42:37.438642', '2', 'InvoiceSells object (2)', 1, '[{"added": {}}, {"added": {"name": "sold item", "object": "SoldItem object (8)"}}, {"added": {"name": "sold item", "object": "SoldItem object (9)"}}]', 13, 1),
(143, '2021-03-11 14:43:47.035817', '3', 'InvoiceSells object (3)', 1, '[{"added": {}}, {"added": {"name": "sold item", "object": "SoldItem object (10)"}}, {"added": {"name": "sold item", "object": "SoldItem object (11)"}}, {"added": {"name": "sold item", "object": "SoldItem object (12)"}}]', 13, 1),
(144, '2021-03-11 14:44:46.000681', '4', 'InvoiceSells object (4)', 1, '[{"added": {}}, {"added": {"name": "sold item", "object": "SoldItem object (13)"}}, {"added": {"name": "sold item", "object": "SoldItem object (14)"}}, {"added": {"name": "sold item", "object": "SoldItem object (15)"}}, {"added": {"name": "sold item", "object": "SoldItem object (16)"}}]', 13, 1),
(145, '2021-03-11 14:45:45.623342', '5', 'InvoiceSells object (5)', 1, '[{"added": {}}, {"added": {"name": "sold item", "object": "SoldItem object (17)"}}]', 13, 1),
(146, '2021-03-11 14:46:32.597067', '6', 'InvoiceSells object (6)', 1, '[{"added": {}}, {"added": {"name": "sold item", "object": "SoldItem object (18)"}}, {"added": {"name": "sold item", "object": "SoldItem object (19)"}}]', 13, 1),
(147, '2021-03-11 14:47:07.317636', '7', 'InvoiceSells object (7)', 1, '[{"added": {}}, {"added": {"name": "sold item", "object": "SoldItem object (20)"}}]', 13, 1),
(148, '2021-03-11 14:49:13.990743', '8', 'InvoiceSells object (8)', 1, '[{"added": {}}, {"added": {"name": "sold item", "object": "SoldItem object (21)"}}]', 13, 1),
(149, '2021-03-11 14:49:58.165078', '9', 'InvoiceSells object (9)', 1, '[{"added": {}}, {"added": {"name": "sold item", "object": "SoldItem object (22)"}}, {"added": {"name": "sold item", "object": "SoldItem object (23)"}}]', 13, 1),
(150, '2021-03-11 14:50:20.805995', '10', 'InvoiceSells object (10)', 1, '[{"added": {}}, {"added": {"name": "sold item", "object": "SoldItem object (24)"}}]', 13, 1),
(151, '2021-03-11 15:32:45.346142', '9', 'ALMOND (90Rs)', 2, '[{"changed": {"fields": ["Current stock"]}}]', 11, 1),
(152, '2021-03-11 15:33:49.696862', '11', 'InvoiceSells object (11)', 1, '[{"added": {}}, {"added": {"name": "sold item", "object": "SoldItem object (25)"}}, {"added": {"name": "sold item", "object": "SoldItem object (26)"}}, {"added": {"name": "sold item", "object": "SoldItem object (27)"}}, {"added": {"name": "sold item", "object": "SoldItem object (28)"}}, {"added": {"name": "sold item", "object": "SoldItem object (29)"}}]', 13, 1),
(153, '2021-03-11 15:34:03.672195', '11', 'InvoiceSells object (11)', 2, '[{"changed": {"fields": ["Payment mode", "Order Id"]}}]', 13, 1),
(154, '2021-03-11 15:36:35.332089', '12', 'InvoiceSells object (12)', 1, '[{"added": {}}, {"added": {"name": "sold item", "object": "SoldItem object (30)"}}]', 13, 1),
(155, '2021-03-11 15:37:37.830276', '13', 'InvoiceSells object (13)', 1, '[{"added": {}}, {"added": {"name": "sold item", "object": "SoldItem object (31)"}}, {"added": {"name": "sold item", "object": "SoldItem object (32)"}}]', 13, 1),
(156, '2021-03-11 15:38:34.472207', '14', 'InvoiceSells object (14)', 1, '[{"added": {}}, {"added": {"name": "sold item", "object": "SoldItem object (33)"}}]', 13, 1),
(157, '2021-03-11 15:39:15.123142', '15', 'InvoiceSells object (15)', 1, '[{"added": {}}, {"added": {"name": "sold item", "object": "SoldItem object (34)"}}, {"added": {"name": "sold item", "object": "SoldItem object (35)"}}]', 13, 1),
(158, '2021-03-11 15:40:21.281555', '16', 'InvoiceSells object (16)', 1, '[{"added": {}}, {"added": {"name": "sold item", "object": "SoldItem object (36)"}}, {"added": {"name": "sold item", "object": "SoldItem object (37)"}}, {"added": {"name": "sold item", "object": "SoldItem object (38)"}}]', 13, 1),
(159, '2021-03-11 15:41:39.368312', '26', 'DOUBLE CHOCOLATE (50Rs)', 2, '[{"changed": {"fields": ["Price"]}}]', 11, 1),
(160, '2021-03-11 15:42:08.836185', '17', 'InvoiceSells object (17)', 1, '[{"added": {}}, {"added": {"name": "sold item", "object": "SoldItem object (39)"}}, {"added": {"name": "sold item", "object": "SoldItem object (40)"}}]', 13, 1),
(161, '2021-03-11 15:43:36.649227', '4', 'AAMRAS (30Rs)', 2, '[{"changed": {"fields": ["Price"]}}]', 11, 1),
(162, '2021-03-11 15:44:02.249551', '57', 'TUTTI FRUTTI (135Rs)', 2, '[{"changed": {"fields": ["Price"]}}]', 11, 1),
(163, '2021-03-11 15:47:16.259347', '18', 'InvoiceSells object (18)', 1, '[{"added": {}}, {"added": {"name": "sold item", "object": "SoldItem object (41)"}}, {"added": {"name": "sold item", "object": "SoldItem object (42)"}}, {"added": {"name": "sold item", "object": "SoldItem object (43)"}}, {"added": {"name": "sold item", "object": "SoldItem object (44)"}}]', 13, 1),
(164, '2021-03-11 15:48:32.682809', '19', 'InvoiceSells object (19)', 1, '[{"added": {}}, {"added": {"name": "sold item", "object": "SoldItem object (45)"}}, {"added": {"name": "sold item", "object": "SoldItem object (46)"}}]', 13, 1),
(165, '2021-03-11 15:49:47.701858', '20', 'InvoiceSells object (20)', 1, '[{"added": {}}, {"added": {"name": "sold item", "object": "SoldItem object (47)"}}, {"added": {"name": "sold item", "object": "SoldItem object (48)"}}, {"added": {"name": "sold item", "object": "SoldItem object (49)"}}]', 13, 1),
(166, '2021-03-11 15:50:10.121969', '21', 'InvoiceSells object (21)', 1, '[{"added": {}}, {"added": {"name": "sold item", "object": "SoldItem object (50)"}}]', 13, 1),
(167, '2021-03-11 15:51:02.604791', '22', 'InvoiceSells object (22)', 1, '[{"added": {}}, {"added": {"name": "sold item", "object": "SoldItem object (51)"}}]', 13, 1),
(168, '2021-03-11 15:52:02.874013', '23', 'InvoiceSells object (23)', 1, '[{"added": {}}, {"added": {"name": "sold item", "object": "SoldItem object (52)"}}, {"added": {"name": "sold item", "object": "SoldItem object (53)"}}, {"added": {"name": "sold item", "object": "SoldItem object (54)"}}]', 13, 1),
(169, '2021-03-11 15:52:50.627098', '24', 'InvoiceSells object (24)', 1, '[{"added": {}}, {"added": {"name": "sold item", "object": "SoldItem object (55)"}}]', 13, 1),
(170, '2021-03-11 15:53:24.025007', '25', 'InvoiceSells object (25)', 1, '[{"added": {}}, {"added": {"name": "sold item", "object": "SoldItem object (56)"}}]', 13, 1),
(171, '2021-03-11 15:54:03.218804', '26', 'InvoiceSells object (26)', 1, '[{"added": {}}, {"added": {"name": "sold item", "object": "SoldItem object (57)"}}]', 13, 1),
(172, '2021-03-11 15:54:30.870780', '27', 'InvoiceSells object (27)', 1, '[{"added": {}}, {"added": {"name": "sold item", "object": "SoldItem object (58)"}}]', 13, 1),
(173, '2021-03-11 15:54:54.474926', '24', 'InvoiceSells object (24)', 2, '[{"changed": {"fields": ["Payment mode"]}}]', 13, 1),
(174, '2021-03-11 16:08:03.173767', '38', 'VANILLA (135Rs)', 2, '[{"changed": {"fields": ["Current stock"]}}]', 11, 1),
(175, '2021-03-11 16:14:09.929017', '28', 'InvoiceSells object (28)', 1, '[{"added": {}}, {"added": {"name": "sold item", "object": "SoldItem object (59)"}}, {"added": {"name": "sold item", "object": "SoldItem object (60)"}}, {"added": {"name": "sold item", "object": "SoldItem object (61)"}}, {"added": {"name": "sold item", "object": "SoldItem object (62)"}}, {"added": {"name": "sold item", "object": "SoldItem object (63)"}}]', 13, 1),
(176, '2021-03-12 08:58:49.885368', '29', 'InvoiceSells object (29)', 1, '[{"added": {}}, {"added": {"name": "sold item", "object": "SoldItem object (64)"}}]', 13, 1),
(177, '2021-03-12 08:59:47.786322', '30', 'InvoiceSells object (30)', 1, '[{"added": {}}, {"added": {"name": "sold item", "object": "SoldItem object (65)"}}, {"added": {"name": "sold item", "object": "SoldItem object (66)"}}]', 13, 1),
(178, '2021-03-12 10:03:43.639787', '31', 'InvoiceSells object (31)', 1, '[{"added": {}}, {"added": {"name": "sold item", "object": "SoldItem object (67)"}}]', 13, 1),
(179, '2021-03-12 10:07:20.112045', '31', 'InvoiceSells object (31)', 2, '[{"changed": {"fields": ["Total amount"]}}, {"added": {"name": "sold item", "object": "SoldItem object (68)"}}, {"added": {"name": "sold item", "object": "SoldItem object (69)"}}]', 13, 1),
(180, '2021-03-12 10:13:37.621719', '31', 'InvoiceSells object (31)', 2, '[{"changed": {"fields": ["Total amount", "Discount Note"]}}]', 13, 1),
(181, '2021-03-12 10:14:17.171270', '32', 'InvoiceSells object (32)', 1, '[{"added": {}}, {"added": {"name": "sold item", "object": "SoldItem object (70)"}}]', 13, 1),
(182, '2021-03-12 10:28:21.362449', '33', 'InvoiceSells object (33)', 1, '[{"added": {}}, {"added": {"name": "sold item", "object": "SoldItem object (71)"}}, {"added": {"name": "sold item", "object": "SoldItem object (72)"}}, {"added": {"name": "sold item", "object": "SoldItem object (73)"}}, {"added": {"name": "sold item", "object": "SoldItem object (74)"}}, {"added": {"name": "sold item", "object": "SoldItem object (75)"}}, {"added": {"name": "sold item", "object": "SoldItem object (76)"}}]', 13, 1),
(183, '2021-03-12 10:30:30.946725', '4', 'AAMRAS (30Rs)', 2, '[{"changed": {"fields": ["Current stock"]}}]', 11, 1),
(184, '2021-03-12 10:31:27.649079', '34', 'InvoiceSells object (34)', 1, '[{"added": {}}, {"added": {"name": "sold item", "object": "SoldItem object (77)"}}, {"added": {"name": "sold item", "object": "SoldItem object (78)"}}, {"added": {"name": "sold item", "object": "SoldItem object (79)"}}, {"added": {"name": "sold item", "object": "SoldItem object (80)"}}]', 13, 1),
(185, '2021-03-12 10:33:07.251267', '35', 'InvoiceSells object (35)', 1, '[{"added": {}}, {"added": {"name": "sold item", "object": "SoldItem object (81)"}}, {"added": {"name": "sold item", "object": "SoldItem object (82)"}}, {"added": {"name": "sold item", "object": "SoldItem object (83)"}}, {"added": {"name": "sold item", "object": "SoldItem object (84)"}}, {"added": {"name": "sold item", "object": "SoldItem object (85)"}}]', 13, 1),
(186, '2021-03-12 10:36:23.637756', '36', 'InvoiceSells object (36)', 1, '[{"added": {}}, {"added": {"name": "sold item", "object": "SoldItem object (86)"}}, {"added": {"name": "sold item", "object": "SoldItem object (87)"}}, {"added": {"name": "sold item", "object": "SoldItem object (88)"}}, {"added": {"name": "sold item", "object": "SoldItem object (89)"}}, {"added": {"name": "sold item", "object": "SoldItem object (90)"}}]', 13, 1),
(187, '2021-03-12 11:02:11.125426', '37', 'InvoiceSells object (37)', 1, '[{"added": {}}, {"added": {"name": "sold item", "object": "SoldItem object (91)"}}, {"added": {"name": "sold item", "object": "SoldItem object (92)"}}]', 13, 1),
(188, '2021-03-12 11:05:45.566488', '38', 'InvoiceSells object (38)', 1, '[{"added": {}}, {"added": {"name": "sold item", "object": "SoldItem object (93)"}}]', 13, 1),
(189, '2021-03-12 11:15:45.562852', '39', 'InvoiceSells object (39)', 1, '[{"added": {}}, {"added": {"name": "sold item", "object": "SoldItem object (94)"}}, {"added": {"name": "sold item", "object": "SoldItem object (95)"}}]', 13, 1),
(190, '2021-03-12 11:28:48.350355', '40', 'InvoiceSells object (40)', 1, '[{"added": {}}, {"added": {"name": "sold item", "object": "SoldItem object (96)"}}, {"added": {"name": "sold item", "object": "SoldItem object (97)"}}, {"added": {"name": "sold item", "object": "SoldItem object (98)"}}]', 13, 1),
(191, '2021-03-12 11:29:12.467297', '41', 'InvoiceSells object (41)', 1, '[{"added": {}}, {"added": {"name": "sold item", "object": "SoldItem object (99)"}}]', 13, 1),
(192, '2021-03-12 12:11:01.671837', '42', 'InvoiceSells object (42)', 1, '[{"added": {}}, {"added": {"name": "sold item", "object": "SoldItem object (100)"}}, {"added": {"name": "sold item", "object": "SoldItem object (101)"}}]', 13, 1),
(193, '2021-03-12 12:11:41.046453', '43', 'InvoiceSells object (43)', 1, '[{"added": {}}, {"added": {"name": "sold item", "object": "SoldItem object (102)"}}]', 13, 1),
(194, '2021-03-12 12:12:08.071923', '44', 'InvoiceSells object (44)', 1, '[{"added": {}}, {"added": {"name": "sold item", "object": "SoldItem object (103)"}}]', 13, 1),
(195, '2021-03-12 12:18:08.394579', '45', 'InvoiceSells object (45)', 1, '[{"added": {}}, {"added": {"name": "sold item", "object": "SoldItem object (104)"}}, {"added": {"name": "sold item", "object": "SoldItem object (105)"}}]', 13, 1),
(196, '2021-03-12 12:18:44.213856', '46', 'InvoiceSells object (46)', 1, '[{"added": {}}, {"added": {"name": "sold item", "object": "SoldItem object (106)"}}, {"added": {"name": "sold item", "object": "SoldItem object (107)"}}]', 13, 1),
(197, '2021-03-12 12:20:16.286763', '47', 'InvoiceSells object (47)', 1, '[{"added": {}}, {"added": {"name": "sold item", "object": "SoldItem object (108)"}}, {"added": {"name": "sold item", "object": "SoldItem object (109)"}}, {"added": {"name": "sold item", "object": "SoldItem object (110)"}}, {"added": {"name": "sold item", "object": "SoldItem object (111)"}}]', 13, 1),
(198, '2021-03-12 13:15:45.953334', '41', 'InvoiceSells object (41)', 2, '[{"changed": {"fields": ["Discount", "Payment mode"]}}]', 13, 1),
(199, '2021-03-12 14:15:56.345289', '48', 'InvoiceSells object (48)', 1, '[{"added": {}}, {"added": {"name": "sold item", "object": "SoldItem object (112)"}}]', 13, 1),
(200, '2021-03-12 14:16:07.721244', '48', 'InvoiceSells object (48)', 2, '[{"changed": {"fields": ["Payment mode"]}}]', 13, 1),
(201, '2021-03-12 14:54:11.152734', '48', 'InvoiceSells object (48)', 2, '[{"changed": {"fields": ["Payment mode"]}}]', 13, 1),
(202, '2021-03-12 14:54:27.971407', '49', 'InvoiceSells object (49)', 1, '[{"added": {}}, {"added": {"name": "sold item", "object": "SoldItem object (113)"}}]', 13, 1),
(203, '2021-03-12 14:59:12.966899', '31', 'CHOCOBAR MINI (10Rs)', 2, '[{"changed": {"fields": ["Current stock"]}}]', 11, 1),
(204, '2021-03-12 15:03:27.013173', '49', 'InvoiceSells object (49)', 2, '[{"changed": {"fields": ["Total amount", "Discount", "Discount Note"]}}, {"added": {"name": "sold item", "object": "SoldItem object (114)"}}, {"added": {"name": "sold item", "object": "SoldItem object (115)"}}, {"added": {"name": "sold item", "object": "SoldItem object (116)"}}, {"added": {"name": "sold item", "object": "SoldItem object (117)"}}, {"changed": {"name": "sold item", "object": "SoldItem object (113)", "fields": ["Item", "Item quantity", "Price"]}}]', 13, 1),
(205, '2021-03-12 15:03:38.283212', '49', 'InvoiceSells object (49)', 2, '[{"changed": {"fields": ["Total amount"]}}]', 13, 1),
(206, '2021-03-12 15:05:35.625621', '49', 'InvoiceSells object (49)', 2, '[{"changed": {"fields": ["Discount Note"]}}]', 13, 1),
(207, '2021-03-12 18:19:36.315082', '50', 'InvoiceSells object (50)', 1, '[{"added": {}}, {"added": {"name": "sold item", "object": "SoldItem object (118)"}}, {"added": {"name": "sold item", "object": "SoldItem object (119)"}}, {"added": {"name": "sold item", "object": "SoldItem object (120)"}}, {"added": {"name": "sold item", "object": "SoldItem object (121)"}}, {"added": {"name": "sold item", "object": "SoldItem object (122)"}}, {"added": {"name": "sold item", "object": "SoldItem object (123)"}}, {"added": {"name": "sold item", "object": "SoldItem object (124)"}}]', 13, 1),
(208, '2021-03-14 20:59:53.238454', '50', 'InvoiceSells object (50)', 2, '[{"changed": {"fields": ["Payment mode"]}}]', 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(9, 'tracker', 'brand'),
(8, 'tracker', 'gst'),
(15, 'tracker', 'invoicepurchase'),
(13, 'tracker', 'invoicesells'),
(11, 'tracker', 'item'),
(10, 'tracker', 'itemcategory'),
(7, 'tracker', 'paymentmode'),
(14, 'tracker', 'purchaseditem'),
(12, 'tracker', 'solditem');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-03-08 18:11:02.450875'),
(2, 'auth', '0001_initial', '2021-03-08 18:11:05.691467'),
(3, 'admin', '0001_initial', '2021-03-08 18:11:17.474073'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-03-08 18:11:21.154298'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-03-08 18:11:21.457992'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-03-08 18:11:23.962120'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-03-08 18:11:25.092140'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-03-08 18:11:26.707628'),
(9, 'auth', '0004_alter_user_username_opts', '2021-03-08 18:11:26.743235'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-03-08 18:11:27.718517'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-03-08 18:11:27.743503'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-03-08 18:11:27.795219'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-03-08 18:11:29.464030'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-03-08 18:11:31.604489'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-03-08 18:11:32.602724'),
(16, 'auth', '0011_update_proxy_permissions', '2021-03-08 18:11:32.674610'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-03-08 18:11:33.978559'),
(18, 'sessions', '0001_initial', '2021-03-08 18:11:35.695138'),
(19, 'tracker', '0001_initial', '2021-03-08 18:12:38.301617'),
(20, 'tracker', '0002_auto_20210311_2023', '2021-03-11 14:53:44.071118'),
(21, 'tracker', '0003_invoicesells_odr_id', '2021-03-11 15:11:01.364977'),
(22, 'tracker', '0004_invoicesells_discount_note', '2021-03-11 16:10:32.906340'),
(23, 'tracker', '0005_auto_20210312_1614', '2021-03-12 10:45:12.224559'),
(24, 'tracker', '0006_invoicesells_is_cancelled', '2021-03-12 10:45:52.223685'),
(25, 'tracker', '0007_auto_20210312_1730', '2021-03-12 12:00:40.410077'),
(26, 'tracker', '0008_auto_20210312_1733', '2021-03-12 12:03:55.055665'),
(27, 'tracker', '0009_auto_20210312_1739', '2021-03-12 12:09:58.412271'),
(28, 'tracker', '0010_auto_20210312_1754', '2021-03-12 12:24:42.122433');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('3ndr6vrgc5ew4w360xypf1u66d4nlljz', '.eJxVjEEOwiAQRe_C2hBwYACX7nsGAjMgVdMmpV0Z765NutDtf-_9l4hpW1vcelniyOIitDj9bjnRo0w74HuabrOkeVqXMctdkQftcpi5PK-H-3fQUm_fGhFQV1Wd4aIMecAADMqxK6wpZ4tQDVULqqbga9FgEIgwkSebz0G8P9tVOAs:1lJKRq:QmKvHAU946wcP6-SRoX85wd7Mhsp2B3dOW3Vv7KuMz8', '2021-03-22 18:17:42.283668');

-- --------------------------------------------------------

--
-- Table structure for table `tracker_brand`
--

CREATE TABLE `tracker_brand` (
  `id` int(11) NOT NULL,
  `brand_name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tracker_brand`
--

INSERT INTO `tracker_brand` (`id`, `brand_name`) VALUES
(1, 'Kwality Walls');

-- --------------------------------------------------------

--
-- Table structure for table `tracker_gst`
--

CREATE TABLE `tracker_gst` (
  `id` int(11) NOT NULL,
  `cgst` double NOT NULL,
  `sgst` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tracker_invoicepurchase`
--

CREATE TABLE `tracker_invoicepurchase` (
  `id` int(11) NOT NULL,
  `total_amount` double NOT NULL,
  `dop` datetime(6) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `payment_mode` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tracker_invoicesells`
--

CREATE TABLE `tracker_invoicesells` (
  `id` int(11) NOT NULL,
  `total_amount` double NOT NULL,
  `discount` double DEFAULT NULL,
  `customer` varchar(200) DEFAULT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  `dos` datetime(6) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `payment_mode_id` int(11) DEFAULT NULL,
  `packing_chrg` double DEFAULT NULL,
  `discount_note` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tracker_invoicesells`
--

INSERT INTO `tracker_invoicesells` (`id`, `total_amount`, `discount`, `customer`, `mobile`, `dos`, `status`, `payment_mode_id`, `packing_chrg`, `discount_note`) VALUES
(1, 850, NULL, NULL, NULL, '2021-03-01 06:30:00.000000', 1, 3, NULL, NULL),
(2, 30, NULL, NULL, NULL, '2021-03-01 12:30:00.000000', 1, 1, NULL, NULL),
(3, 90, NULL, NULL, NULL, '2021-03-02 06:30:00.000000', 1, 1, NULL, NULL),
(4, 240, NULL, NULL, NULL, '2021-03-01 18:30:00.000000', 1, 1, NULL, NULL),
(5, 30, NULL, NULL, NULL, '2021-03-01 18:30:00.000000', 1, 1, NULL, NULL),
(6, 20, NULL, NULL, NULL, '2021-03-03 06:30:00.000000', 1, 1, NULL, NULL),
(7, 10, NULL, NULL, NULL, '2021-03-02 18:30:00.000000', 1, 1, NULL, NULL),
(8, 149, NULL, NULL, NULL, '2021-03-04 06:30:00.000000', 1, 1, NULL, NULL),
(9, 20, NULL, NULL, NULL, '2021-03-04 14:49:33.000000', 1, 1, NULL, NULL),
(10, 10, NULL, NULL, NULL, '2021-03-05 14:50:06.000000', 1, 1, NULL, NULL),
(11, 1337, NULL, NULL, NULL, '2021-03-04 05:23:00.000000', 1, 6, 10, NULL),
(12, 129, NULL, NULL, NULL, '2021-03-04 10:20:00.000000', 1, 6, NULL, NULL),
(13, 284, NULL, NULL, NULL, '2021-03-04 13:15:43.000000', 1, 6, 10, NULL),
(14, 10, NULL, NULL, NULL, '2021-03-05 06:30:00.000000', 1, 1, NULL, NULL),
(15, 130, NULL, NULL, NULL, '2021-03-05 15:38:41.000000', 1, 1, NULL, NULL),
(16, 859, NULL, NULL, NULL, '2021-03-05 08:49:00.000000', 1, 6, 10, NULL),
(17, 190, NULL, NULL, NULL, '2021-03-05 08:53:20.000000', 1, 6, 10, NULL),
(18, 305, NULL, NULL, NULL, '2021-03-05 15:45:43.000000', 1, 6, 10, NULL),
(19, 30, NULL, NULL, NULL, '2021-03-06 15:47:50.000000', 1, 1, NULL, NULL),
(20, 134, NULL, NULL, NULL, '2021-03-06 15:48:38.000000', 1, 1, NULL, NULL),
(21, 165, NULL, NULL, NULL, '2021-03-06 15:49:55.000000', 1, 1, NULL, NULL),
(22, 145, NULL, NULL, NULL, '2021-03-06 06:25:24.000000', 1, 6, 10, NULL),
(23, 180, NULL, NULL, NULL, '2021-03-06 13:10:16.000000', 1, 6, 10, NULL),
(24, 298, NULL, NULL, NULL, '2021-03-07 15:52:35.000000', 1, 5, NULL, NULL),
(25, 300, NULL, NULL, NULL, '2021-03-07 15:52:59.000000', 1, 1, NULL, NULL),
(26, 40, NULL, NULL, NULL, '2021-03-07 15:53:30.000000', 1, 1, NULL, NULL),
(27, 20, NULL, NULL, NULL, '2021-03-07 15:54:11.000000', 1, 5, NULL, NULL),
(28, 644, 60, NULL, NULL, '2021-03-07 09:28:00.000000', 1, 6, 10, 'TRIXY CUP WAS FREE'),
(29, 209, NULL, NULL, NULL, '2021-03-07 09:30:18.000000', 1, 6, 10, NULL),
(30, 140, NULL, NULL, NULL, '2021-03-07 08:58:57.000000', 1, 6, 10, NULL),
(31, 125, 10, NULL, NULL, '2021-03-08 09:00:20.000000', 1, 1, NULL, 'DOUBLE CHOCOLATE GIVEN IN 40RS'),
(32, 20, NULL, NULL, NULL, '2021-03-08 10:13:58.000000', 1, 1, NULL, NULL),
(33, 100, NULL, 'NEEL', NULL, '2021-03-08 10:14:37.000000', 0, NULL, NULL, NULL),
(34, 135, NULL, NULL, NULL, '2021-03-08 10:28:54.000000', 1, 1, NULL, NULL),
(35, 160, NULL, NULL, NULL, '2021-03-08 10:31:40.000000', 1, 3, NULL, NULL),
(36, 130, NULL, NULL, NULL, '2021-03-08 10:33:16.000000', 1, 1, NULL, NULL),
(37, 290, NULL, NULL, NULL, '2021-03-08 11:01:03.000000', 1, 6, 10, NULL),
(38, 219, NULL, NULL, NULL, '2021-03-08 11:02:57.000000', 1, 6, 10, NULL),
(39, 140, NULL, NULL, NULL, '2021-03-08 11:06:00.000000', 1, 6, 10, NULL),
(40, 170, NULL, NULL, NULL, '2021-03-09 11:23:24.000000', 1, 1, NULL, NULL),
(41, 10, 2, NULL, NULL, '2021-03-09 11:28:56.000000', 1, 1, NULL, NULL),
(42, 80, NULL, NULL, NULL, '2021-03-09 12:10:32.000000', 1, 1, NULL, NULL),
(43, 60, NULL, NULL, NULL, '2021-03-10 12:11:29.000000', 1, 1, NULL, NULL),
(44, 30, NULL, 'IIFL', NULL, '2021-03-10 12:11:47.000000', 0, NULL, NULL, NULL),
(45, 40, NULL, NULL, NULL, '2021-03-10 12:12:43.000000', 1, 1, NULL, NULL),
(46, 100, NULL, NULL, NULL, '2021-03-10 12:18:20.000000', 1, 1, NULL, NULL),
(47, 175, NULL, NULL, NULL, '2021-03-10 12:19:23.000000', 1, 1, NULL, NULL),
(48, 80, NULL, NULL, NULL, '2021-03-12 14:15:56.246135', 1, 1, NULL, NULL),
(49, 100, 10, NULL, NULL, '2021-03-12 14:54:27.882538', 1, 1, NULL, 'CREDIT 12RS, CLEARED WITH GIVING ORANGE CANDY'),
(50, 200, NULL, NULL, NULL, '2021-03-12 18:19:36.203346', 1, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tracker_item`
--

CREATE TABLE `tracker_item` (
  `id` int(11) NOT NULL,
  `item_name` varchar(450) NOT NULL,
  `price` int(11) NOT NULL,
  `current_stock` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tracker_item`
--

INSERT INTO `tracker_item` (`id`, `item_name`, `price`, `current_stock`, `category_id`) VALUES
(1, 'ORANGE MAHABAR', 10, 41, 10),
(2, 'MAGIC DUST', 20, 60, 10),
(4, 'AAMRAS', 30, 9, 10),
(5, 'COLA BLAST', 10, 45, 10),
(6, 'LEMON BLAST', 10, 46, 10),
(7, 'MANGO ZAP', 25, 13, 10),
(8, 'CHOCOLATE TRUFFLE', 80, 23, 2),
(9, 'ALMOND', 90, 10, 2),
(10, 'BROWNIE', 90, 36, 2),
(11, 'TRIXY', 60, 9, 7),
(12, 'CHOCOTASTIC SUNDAE', 30, 5, 7),
(14, 'VANILLA', 15, 14, 7),
(15, 'STRAWBERRY', 15, 13, 7),
(16, 'BUTTERSCOTCH', 30, 19, 7),
(17, 'CHOCOLATE', 20, 14, 7),
(18, 'OREO AND CREAM', 50, 7, 7),
(20, 'TENDER COCONUT', 50, 2, 7),
(21, 'SANDWICH CHOCOLATE AND VANILLA', 30, 5, 3),
(22, 'CASSATTA', 60, 12, 3),
(24, 'CHOCO CONE', 10, 16, 4),
(25, 'BUTTERSCOTCH', 40, 43, 4),
(26, 'DOUBLE CHOCOLATE', 50, 32, 4),
(27, 'BUTTERSCOTCH', 20, 17, 4),
(28, 'CHOCOLATE', 20, 12, 4),
(29, 'CHOKISSIMO', 60, 9, 4),
(30, 'OREO AND CREAM', 60, 45, 4),
(31, 'CHOCOBAR MINI', 10, 16, 11),
(32, 'CHOCOBAR', 20, 17, 11),
(33, 'SHAHI KULFI', 20, 9, 9),
(34, 'DRYFRUIT RABRI KULFI', 30, 13, 9),
(35, 'FEAST CHOCOLATE', 30, 19, 8),
(36, 'FEAST FRUIT & NUT', 40, 1, 8),
(37, 'RAJWADI BITE', 10, 30, 9),
(38, 'VANILLA', 135, 10, 5),
(39, 'DIVINE CHOCOLATE', 229, 2, 5),
(40, 'CREAMY KULFI', 249, 2, 5),
(41, 'MANGO', 149, 5, 5),
(42, 'CREME CARAMEL', 229, 3, 5),
(43, 'OREO AND CREAM', 249, 2, 5),
(44, 'TENDER COCONUT', 199, 3, 5),
(45, 'CHOCO BROWNIE FUDGE', 249, 3, 5),
(46, 'FRUIT & NUT', 229, 0, 5),
(47, 'BUTTERSCOTCH', 149, 1, 5),
(48, 'VANILLA', 99, 2, 6),
(49, 'OREO AND CREAM', 149, -1, 6),
(50, 'CREAMY KULFI', 165, 0, 6),
(51, 'CHOCOLATE', 129, 4, 6),
(52, 'BLACKCURRANT', 165, 1, 6),
(53, 'MANGO', 129, 3, 6),
(54, 'STRAWBERRY', 99, 2, 6),
(55, 'BUTTERSCOTCH', 129, 1, 6),
(56, 'KESAR PISTA', 149, 1, 6),
(57, 'TUTTI FRUTTI', 135, 2, 6),
(58, 'VANILLA', 40, 15, 4),
(59, 'BUTTERSCOTCH', 15, 23, 4),
(60, 'NUTTY BAR', 10, 16, 10);

-- --------------------------------------------------------

--
-- Table structure for table `tracker_itemcategory`
--

CREATE TABLE `tracker_itemcategory` (
  `id` int(11) NOT NULL,
  `category_name` varchar(450) NOT NULL,
  `brand_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tracker_itemcategory`
--

INSERT INTO `tracker_itemcategory` (`id`, `category_name`, `brand_id`) VALUES
(2, 'MAGNUM', 1),
(3, 'OTHER', 1),
(4, 'CORNETTO', 1),
(5, 'TUB', 1),
(6, 'PARTY PACK', 1),
(7, 'CUP', 1),
(8, 'FEAST', 1),
(9, 'KULFI', 1),
(10, 'STICK', 1),
(11, 'CHOCOBAR', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tracker_paymentmode`
--

CREATE TABLE `tracker_paymentmode` (
  `id` int(11) NOT NULL,
  `mode` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tracker_paymentmode`
--

INSERT INTO `tracker_paymentmode` (`id`, `mode`) VALUES
(5, 'CARD'),
(1, 'CASH'),
(4, 'GPAY'),
(3, 'PAYTM'),
(2, 'PHONEPE'),
(6, 'SWIGGY');

-- --------------------------------------------------------

--
-- Table structure for table `tracker_purchaseditem`
--

CREATE TABLE `tracker_purchaseditem` (
  `id` int(11) NOT NULL,
  `item_quantity` int(11) NOT NULL,
  `price` double NOT NULL,
  `invoice_id_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tracker_solditem`
--

CREATE TABLE `tracker_solditem` (
  `id` int(11) NOT NULL,
  `item_quantity` int(11) NOT NULL,
  `price` double NOT NULL,
  `invoice_id_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tracker_solditem`
--

INSERT INTO `tracker_solditem` (`id`, `item_quantity`, `price`, `invoice_id_id`, `item_id`) VALUES
(1, 5, 50, 1, 37),
(2, 10, 200, 1, 32),
(3, 5, 150, 1, 35),
(4, 5, 100, 1, 33),
(5, 10, 100, 1, 6),
(6, 3, 180, 1, 30),
(7, 7, 70, 1, 5),
(8, 1, 20, 2, 33),
(9, 1, 10, 2, 37),
(10, 3, 30, 3, 60),
(11, 2, 20, 3, 37),
(12, 4, 40, 3, 31),
(13, 3, 30, 4, 60),
(14, 5, 50, 4, 31),
(15, 5, 100, 4, 33),
(16, 1, 60, 4, 22),
(17, 1, 30, 5, 35),
(18, 1, 10, 6, 24),
(19, 1, 10, 6, 37),
(20, 1, 10, 7, 37),
(21, 1, 149, 8, 56),
(22, 1, 10, 9, 37),
(23, 1, 10, 9, 60),
(24, 1, 10, 10, 37),
(25, 1, 249, 11, 43),
(26, 1, 129, 11, 53),
(27, 1, 229, 11, 39),
(28, 6, 180, 11, 21),
(29, 6, 540, 11, 9),
(30, 1, 129, 12, 51),
(31, 1, 135, 13, 38),
(32, 1, 149, 13, 47),
(33, 1, 10, 14, 37),
(34, 2, 120, 15, 30),
(35, 1, 10, 15, 1),
(36, 1, 229, 16, 46),
(37, 4, 360, 16, 9),
(38, 3, 270, 16, 10),
(39, 3, 150, 17, 26),
(40, 1, 40, 17, 25),
(41, 1, 50, 18, 26),
(42, 2, 60, 18, 4),
(43, 1, 135, 18, 57),
(44, 2, 60, 18, 34),
(45, 2, 20, 19, 60),
(46, 1, 10, 19, 31),
(47, 1, 99, 20, 48),
(48, 1, 15, 20, 59),
(49, 2, 20, 20, 24),
(50, 1, 165, 21, 50),
(51, 1, 135, 22, 57),
(52, 1, 50, 23, 20),
(53, 1, 60, 23, 30),
(54, 2, 60, 23, 21),
(55, 2, 298, 24, 49),
(56, 30, 300, 25, 31),
(57, 1, 40, 26, 26),
(58, 1, 20, 27, 32),
(59, 6, 180, 28, 4),
(60, 1, 135, 28, 38),
(61, 4, 120, 28, 21),
(62, 1, 199, 28, 44),
(63, 1, 60, 28, 11),
(64, 1, 199, 29, 44),
(65, 1, 40, 30, 25),
(66, 2, 100, 30, 26),
(67, 1, 50, 31, 26),
(68, 1, 60, 31, 11),
(69, 1, 25, 31, 7),
(70, 1, 20, 32, 27),
(71, 2, 20, 33, 31),
(72, 3, 30, 33, 37),
(73, 2, 20, 33, 60),
(74, 1, 10, 33, 5),
(75, 1, 10, 33, 1),
(76, 1, 10, 33, 6),
(77, 1, 30, 34, 21),
(78, 1, 25, 34, 7),
(79, 1, 30, 34, 4),
(80, 1, 50, 34, 26),
(81, 1, 10, 35, 60),
(82, 1, 80, 35, 8),
(83, 1, 40, 35, 36),
(84, 1, 20, 35, 33),
(85, 1, 10, 35, 37),
(86, 2, 20, 36, 1),
(87, 2, 20, 36, 5),
(88, 2, 20, 36, 6),
(89, 1, 30, 36, 35),
(90, 1, 40, 36, 26),
(91, 4, 200, 37, 26),
(92, 2, 80, 37, 25),
(93, 1, 219, 38, 39),
(94, 1, 60, 39, 30),
(95, 2, 80, 39, 25),
(96, 2, 20, 40, 37),
(97, 1, 15, 40, 15),
(98, 1, 135, 40, 53),
(99, 1, 10, 41, 24),
(100, 2, 60, 42, 35),
(101, 2, 20, 42, 37),
(102, 2, 60, 43, 35),
(103, 2, 30, 44, 15),
(104, 1, 20, 45, 28),
(105, 1, 20, 45, 27),
(106, 1, 40, 46, 36),
(107, 2, 60, 46, 4),
(108, 1, 30, 47, 4),
(109, 1, 80, 47, 8),
(110, 1, 40, 47, 36),
(111, 1, 25, 47, 7),
(112, 1, 80, 48, 8),
(113, 2, 20, 49, 24),
(114, 3, 30, 49, 37),
(115, 3, 30, 49, 60),
(116, 2, 20, 49, 31),
(117, 1, 10, 49, 1),
(118, 1, 10, 50, 37),
(119, 1, 20, 50, 33),
(120, 1, 30, 50, 34),
(121, 1, 10, 50, 60),
(122, 1, 30, 50, 35),
(123, 1, 60, 50, 30),
(124, 1, 40, 50, 26);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `tracker_brand`
--
ALTER TABLE `tracker_brand`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brand_name` (`brand_name`);

--
-- Indexes for table `tracker_gst`
--
ALTER TABLE `tracker_gst`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tracker_invoicepurchase`
--
ALTER TABLE `tracker_invoicepurchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tracker_invoicesells`
--
ALTER TABLE `tracker_invoicesells`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_invoicesells_payment_mode_id_35ba3e9e_fk_tracker_p` (`payment_mode_id`);

--
-- Indexes for table `tracker_item`
--
ALTER TABLE `tracker_item`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tracker_item_item_name_price_category_id_0257d8a9_uniq` (`item_name`,`price`,`category_id`),
  ADD KEY `tracker_item_category_id_0e083251_fk_tracker_itemcategory_id` (`category_id`);

--
-- Indexes for table `tracker_itemcategory`
--
ALTER TABLE `tracker_itemcategory`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_name` (`category_name`),
  ADD KEY `tracker_itemcategory_brand_id_381d0c48_fk_tracker_brand_id` (`brand_id`);

--
-- Indexes for table `tracker_paymentmode`
--
ALTER TABLE `tracker_paymentmode`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mode` (`mode`);

--
-- Indexes for table `tracker_purchaseditem`
--
ALTER TABLE `tracker_purchaseditem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_purchasedite_invoice_id_id_a0f70f7b_fk_tracker_i` (`invoice_id_id`),
  ADD KEY `tracker_purchaseditem_item_id_fa6b9dcc_fk_tracker_item_id` (`item_id`);

--
-- Indexes for table `tracker_solditem`
--
ALTER TABLE `tracker_solditem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_solditem_invoice_id_id_2e37a99a_fk_tracker_i` (`invoice_id_id`),
  ADD KEY `tracker_solditem_item_id_c441c8da_fk_tracker_item_id` (`item_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `tracker_brand`
--
ALTER TABLE `tracker_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tracker_gst`
--
ALTER TABLE `tracker_gst`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tracker_invoicepurchase`
--
ALTER TABLE `tracker_invoicepurchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tracker_invoicesells`
--
ALTER TABLE `tracker_invoicesells`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `tracker_item`
--
ALTER TABLE `tracker_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `tracker_itemcategory`
--
ALTER TABLE `tracker_itemcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tracker_paymentmode`
--
ALTER TABLE `tracker_paymentmode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tracker_purchaseditem`
--
ALTER TABLE `tracker_purchaseditem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tracker_solditem`
--
ALTER TABLE `tracker_solditem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `tracker_invoicesells`
--
ALTER TABLE `tracker_invoicesells`
  ADD CONSTRAINT `tracker_invoicesells_payment_mode_id_35ba3e9e_fk_tracker_p` FOREIGN KEY (`payment_mode_id`) REFERENCES `tracker_paymentmode` (`id`);

--
-- Constraints for table `tracker_item`
--
ALTER TABLE `tracker_item`
  ADD CONSTRAINT `tracker_item_category_id_0e083251_fk_tracker_itemcategory_id` FOREIGN KEY (`category_id`) REFERENCES `tracker_itemcategory` (`id`);

--
-- Constraints for table `tracker_itemcategory`
--
ALTER TABLE `tracker_itemcategory`
  ADD CONSTRAINT `tracker_itemcategory_brand_id_381d0c48_fk_tracker_brand_id` FOREIGN KEY (`brand_id`) REFERENCES `tracker_brand` (`id`);

--
-- Constraints for table `tracker_purchaseditem`
--
ALTER TABLE `tracker_purchaseditem`
  ADD CONSTRAINT `tracker_purchasedite_invoice_id_id_a0f70f7b_fk_tracker_i` FOREIGN KEY (`invoice_id_id`) REFERENCES `tracker_invoicepurchase` (`id`),
  ADD CONSTRAINT `tracker_purchaseditem_item_id_fa6b9dcc_fk_tracker_item_id` FOREIGN KEY (`item_id`) REFERENCES `tracker_item` (`id`);

--
-- Constraints for table `tracker_solditem`
--
ALTER TABLE `tracker_solditem`
  ADD CONSTRAINT `tracker_solditem_invoice_id_id_2e37a99a_fk_tracker_i` FOREIGN KEY (`invoice_id_id`) REFERENCES `tracker_invoicesells` (`id`),
  ADD CONSTRAINT `tracker_solditem_item_id_c441c8da_fk_tracker_item_id` FOREIGN KEY (`item_id`) REFERENCES `tracker_item` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
