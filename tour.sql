-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2020 at 08:33 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tour`
--

-- --------------------------------------------------------

--
-- Table structure for table `analyse_events`
--

CREATE TABLE `analyse_events` (
  `id` int(11) NOT NULL,
  `p_name1` varchar(300) NOT NULL,
  `p_loc1` varchar(300) NOT NULL,
  `p_det1` longtext NOT NULL,
  `p_high1` longtext NOT NULL,
  `p_price1` date NOT NULL,
  `p_app1` tinyint(1) DEFAULT NULL,
  `p_img1` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `analyse_events`
--

INSERT INTO `analyse_events` (`id`, `p_name1`, `p_loc1`, `p_det1`, `p_high1`, `p_price1`, `p_app1`, `p_img1`) VALUES
(3, 'Event Concert', 'TVM Hall', 'Add. Det. 1\r\nAdd. Det. 2\r\nAdd. Det. 3\r\nAdd. Det. 4', 'Highlights 1\r\nHighlights 2', '2020-07-11', 1, 'media/priscilla-du-preez-ggeZ9oyI-PE-unsplash_UDvPBkp.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `analyse_package`
--

CREATE TABLE `analyse_package` (
  `id` int(11) NOT NULL,
  `p_name` varchar(300) NOT NULL,
  `p_loc` varchar(300) NOT NULL,
  `p_det` longtext NOT NULL,
  `p_high` longtext NOT NULL,
  `p_price` longtext NOT NULL,
  `p_app` tinyint(1) DEFAULT NULL,
  `p_img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `analyse_package`
--

INSERT INTO `analyse_package` (`id`, `p_name`, `p_loc`, `p_det`, `p_high`, `p_price`, `p_app`, `p_img`) VALUES
(2, 'UK Package', 'London', 'A Visit to London with many experiences all around', 'Big Ben\r\nLondon Eye\r\n10 Downing Street', '10,20,000', 1, 'media/mainlon.jpg'),
(3, 'US Tour', 'USA', 'DFSGFGSDFGSDFGSDFG', 'USA HIGHLIGHTS', '102,200', NULL, 'media/main_usa.jpg'),
(4, 'German Package', 'Germany', 'Hur Dur Hur Dur Hur Dur Hur Dur Hur Dur Hur Dur Hur Dur Hur Dur Hur Dur Hur Dur Hur Dur', 'Neuschwanstein Castle \r\nCologne Cathedral\r\nBavarian State Opera, Munich\r\nRügen Island with chalk cliffs \r\nHeidelberg Castle and old quarter', '50,000', 0, 'media/german_main.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `analyse_pckimg`
--

CREATE TABLE `analyse_pckimg` (
  `id` int(11) NOT NULL,
  `p_img1` varchar(100) NOT NULL,
  `p_img2` varchar(100) NOT NULL,
  `p_img3` varchar(100) NOT NULL,
  `p_name_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `analyse_pckimg`
--

INSERT INTO `analyse_pckimg` (`id`, `p_img1`, `p_img2`, `p_img3`, `p_name_id`) VALUES
(3, 'media/mainlon_Vj1x7bE.jpg', 'media/london-2393098_960_720_reQzkNJ.jpg', 'media/main_german.jpg', 3),
(4, 'media/photo-1467269204594-9661b134dd2b.jpg', 'media/germ_img2.jpg', 'media/germ_img3.jpg', 4);

-- --------------------------------------------------------

--
-- Table structure for table `analyse_sgts`
--

CREATE TABLE `analyse_sgts` (
  `id` int(11) NOT NULL,
  `s_name` varchar(300) NOT NULL,
  `s_url` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `analyse_sgts`
--

INSERT INTO `analyse_sgts` (`id`, `s_name`, `s_url`) VALUES
(1, 'Comm name', '12000'),
(2, 'The Se7en', '50000'),
(3, 'The Sony Corp', '25999');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'Institute');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(17, 1, 13),
(18, 1, 14),
(19, 1, 15),
(20, 1, 16),
(21, 1, 33),
(22, 1, 34),
(16, 1, 35),
(23, 1, 36),
(12, 1, 65),
(13, 1, 66),
(14, 1, 67),
(15, 1, 68);

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
(25, 'Can add profile', 7, 'add_profile'),
(26, 'Can change profile', 7, 'change_profile'),
(27, 'Can delete profile', 7, 'delete_profile'),
(28, 'Can view profile', 7, 'view_profile'),
(29, 'Can add package', 8, 'add_package'),
(30, 'Can change package', 8, 'change_package'),
(31, 'Can delete package', 8, 'delete_package'),
(32, 'Can view package', 8, 'view_package'),
(33, 'Can add pckimg', 9, 'add_pckimg'),
(34, 'Can change pckimg', 9, 'change_pckimg'),
(35, 'Can delete pckimg', 9, 'delete_pckimg'),
(36, 'Can view pckimg', 9, 'view_pckimg'),
(37, 'Can add sell profile', 10, 'add_sellprofile'),
(38, 'Can change sell profile', 10, 'change_sellprofile'),
(39, 'Can delete sell profile', 10, 'delete_sellprofile'),
(40, 'Can view sell profile', 10, 'view_sellprofile'),
(41, 'Can add Package Suggestion', 11, 'add_suggest'),
(42, 'Can change Package Suggestion', 11, 'change_suggest'),
(43, 'Can delete Package Suggestion', 11, 'delete_suggest'),
(44, 'Can view Package Suggestion', 11, 'view_suggest'),
(45, 'Can add cart', 12, 'add_cart'),
(46, 'Can change cart', 12, 'change_cart'),
(47, 'Can delete cart', 12, 'delete_cart'),
(48, 'Can view cart', 12, 'view_cart'),
(49, 'Can add gdet', 13, 'add_gdet'),
(50, 'Can change gdet', 13, 'change_gdet'),
(51, 'Can delete gdet', 13, 'delete_gdet'),
(52, 'Can view gdet', 13, 'view_gdet'),
(53, 'Can add gbook', 14, 'add_gbook'),
(54, 'Can change gbook', 14, 'change_gbook'),
(55, 'Can delete gbook', 14, 'delete_gbook'),
(56, 'Can view gbook', 14, 'view_gbook'),
(57, 'Can add bookguide', 15, 'add_bookguide'),
(58, 'Can change bookguide', 15, 'change_bookguide'),
(59, 'Can delete bookguide', 15, 'delete_bookguide'),
(60, 'Can view bookguide', 15, 'view_bookguide'),
(61, 'Can add Package Suggestion', 16, 'add_sgts'),
(62, 'Can change Package Suggestion', 16, 'change_sgts'),
(63, 'Can delete Package Suggestion', 16, 'delete_sgts'),
(64, 'Can view Package Suggestion', 16, 'view_sgts'),
(65, 'Can add Event', 17, 'add_events'),
(66, 'Can change Event', 17, 'change_events'),
(67, 'Can delete Event', 17, 'delete_events'),
(68, 'Can view Event', 17, 'view_events');

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
  `first_name` varchar(30) NOT NULL,
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
(9, 'pbkdf2_sha256$180000$Z8gFTjFZEpTY$RFIJ0LYxFBPqjR9AO78EbvP0zabQ9tbCKEzUdVt1iWY=', '2020-06-11 07:08:34.326915', 1, 'admin', '', '', 'admin@email.com', 1, 1, '2020-02-06 09:23:46.042819'),
(10, 'pbkdf2_sha256$180000$u2YfSeUpO563$RWMW8fM+4ksNwJ4Rq1hGOVZDOou0jBDBj2y1C+ECqG4=', '2020-06-11 07:24:56.599715', 0, 'ana1', '', '', '', 1, 1, '2020-02-06 09:36:04.000000'),
(15, 'pbkdf2_sha256$180000$RCMRh44GvK0P$/c1BqS9G1LObapYk0QjEID1Z1txIpgrUTddhGnWo9rM=', '2020-02-10 08:51:06.524508', 0, 'theguide', 'the', 'guide', 'gu@gmail.cpm', 0, 1, '2020-02-10 05:44:30.377691'),
(16, 'pbkdf2_sha256$180000$i9GspTmdw6pW$AEDWZAGT7lkQDCyZhEYixvtT3CyAkCXp5zxv32wf/gs=', '2020-02-13 07:38:57.000000', 0, 'user76', 'qwe', 'lastname', 'tijoem@gmail.com', 0, 1, '2020-02-10 05:46:05.000000'),
(17, 'pbkdf2_sha256$180000$Bz7CWbPp7YTl$mU/xPo60jhnxfKV2Dv6nJTcTM3qN3oqEEXO+90cEn9E=', '2020-02-12 07:06:25.960183', 0, 'guide2', 'Grace', 'Stafford', 'MaryNHerrick@teleworm.us', 0, 1, '2020-02-10 08:11:38.110317'),
(18, 'pbkdf2_sha256$180000$5ePsgTRXS5Yu$OTG6FNUfWb58+VWCZ5/5TWOwmtDcnTH+jA9+nBtZDTw=', '2020-02-10 08:59:14.041712', 0, 'guide3', 'Richard', 'Muirhead', 'rich@gmail.com', 0, 1, '2020-02-10 08:54:47.640697'),
(19, 'pbkdf2_sha256$180000$pBGVKFEwYOAQ$mgzgJz5rnr/uFtT7qRNM8867XRN16am/NWisXRpNorU=', '2020-02-10 08:59:20.016054', 0, 'guide4', 'Victoria', 'Charles', 'victo@gmail.com', 0, 1, '2020-02-10 08:55:42.189739'),
(20, 'pbkdf2_sha256$180000$E14Hk1e7INNE$Sdk2tiCu9EZGrD5+PQdlWtcZlG3unhRRMOqozGbbBAk=', '2020-05-18 06:30:48.828915', 0, 'newuser1', 'Forev', 'User', 'forev@gmail.com', 0, 1, '2020-02-10 11:03:56.860550'),
(21, 'pbkdf2_sha256$180000$xVfNLL4fvEcz$16QNpcXXi4MzpD9L5t0FJFJ+lT68EOsVAsSZ2megyXs=', '2020-05-18 05:41:13.402915', 0, 'newuser2', 'Forev', 'User', 'forev@example.com', 0, 1, '2020-02-10 11:05:31.452908'),
(23, 'pbkdf2_sha256$180000$ti1hUMmbav6r$IStKUdvii75wubjH+bJqbXEhNjUZ/5zOhTIgl8RZsF0=', NULL, 0, 'theguide11', 'NEW', 'Guuu', 'theguide11@gmail.com', 0, 1, '2020-02-12 07:36:11.351418'),
(24, 'pbkdf2_sha256$180000$8M9wfqkYe66I$Q9qRafp0ABiU7Pz4zaTAiPvtfjZtw5ud7s4/+eKq0Rg=', '2020-02-12 11:23:12.774121', 0, 'theguide12', 'guido', 'guide', 'qwe@gmail.com', 0, 1, '2020-02-12 07:37:06.240558'),
(25, 'pbkdf2_sha256$180000$hvvmF0dmZqSg$fMG1ePAS0hh0MSaVIRyAUKvXydo0nU4GLULe8/hwAto=', '2020-02-12 11:23:19.590354', 0, 'theguide13', 'op', 'op', 'ee@gmail.com', 0, 1, '2020-02-12 07:40:26.354978'),
(29, 'pbkdf2_sha256$180000$C0tLBMz2cQT6$Db0P1VWSoHZ47ARs2GAB7PMNT4MA751eMrK2t/HXD7A=', '2020-05-15 05:05:53.271058', 0, 'roy', 'Roy', 'Wills', 'graciela1982@hotmail.com', 0, 1, '2020-02-13 06:00:25.279856'),
(30, 'pbkdf2_sha256$180000$HMrWuIQ0oFKa$Bj1G8RJjhVhwYrpGKSUmzPE3uq/zwzPCslcg+uJ8A28=', '2020-05-15 05:59:01.315776', 0, 'jac', 'Jacquelyne', 'Terrell', 'aurelio1992@hotmail.com', 0, 1, '2020-02-13 06:02:53.000305'),
(31, 'pbkdf2_sha256$180000$vm4tlC2qZELH$RNFDnJFKAit5TeEiXvSPw0oEG0xRWSHWpHnwwTGoJzI=', '2020-02-19 06:03:07.942398', 0, 'payton', 'Payton', 'Cormier', 'cnicolas@hermiston.com', 0, 1, '2020-02-19 06:03:00.001944'),
(32, 'pbkdf2_sha256$180000$qra4Ic8fqI1I$BoBqJbUH1ZcygJGjsq6Ucdo+qxuEv3UB5UTU1B4+xyY=', '2020-05-18 06:22:38.656915', 1, 'ad1', '', '', 'ad12@gg.com', 1, 1, '2020-05-15 05:23:26.000000'),
(33, 'pbkdf2_sha256$180000$hSRyXlpwZHc7$0m1fJKWcpRS9WRUrPZ7UKgwggE3A/mfSf6JSbmlRUj8=', '2020-05-15 06:29:49.049461', 0, 'astudent1', 'GAT', 'B', 'weqwe@gg.com', 0, 1, '2020-05-15 05:56:30.000000'),
(34, 'pbkdf2_sha256$180000$C2uUdW2nEzfL$pBQ8BtfXJiog3tDdealNDB98XcQIAW9bj/gxTZQCkig=', '2020-05-15 06:02:32.905879', 0, 'stud1', 'STud', 'Ent', 'tr@gg.com', 0, 1, '2020-05-15 06:02:22.814302'),
(35, 'pbkdf2_sha256$180000$AvoAFRM7XlfD$uFcDounC8oOUYZg+j7JHQEyHEYjk/Z3OZjtvQSrZ1i0=', NULL, 0, 'astudent2', '', '', '', 0, 1, '2020-05-15 06:09:07.702460'),
(36, 'pbkdf2_sha256$180000$rsjJqHKi4yxK$C1ZW0ShWzQD5FfBzHFBDN4PFtdkJ7UvmbZVph7gEOYA=', NULL, 0, 'anewstu', '', '', '', 0, 1, '2020-05-18 04:51:59.049915'),
(37, 'pbkdf2_sha256$180000$s6ZVBYc7cbI6$vQxxTzk3fuL3ZfYp+Ill0RD5vR+41zWGaAK6WpOfqr8=', NULL, 0, 'ane', '', '', '', 0, 1, '2020-05-18 04:54:22.569915'),
(38, 'pbkdf2_sha256$180000$ZiKfzjmsG0p6$vsWfSfIzDZHh8jlZhLdq97uByQFEYuUo5+dlIgU34T8=', NULL, 0, '111', '', '', '', 0, 1, '2020-05-18 04:57:01.164915'),
(39, 'pbkdf2_sha256$180000$mgcXoAWEeUSJ$ngEh1Ng0/7csliIaqroX+jMU7dBbJksFFZjuS0x7ro8=', '2020-05-18 05:22:51.420915', 0, 'NGO1', 'Nat G', '', '123@gg.com', 0, 1, '2020-05-18 05:22:42.512115'),
(40, 'pbkdf2_sha256$180000$eM91HzDep3jb$P/eUBgxeIQ7ZI5VLaUdgcz0eOPojseE7uLGQ+r63A8E=', NULL, 0, 'jon133', 'Jon', 'Smith', 'jon@gg.com', 0, 1, '2020-06-11 04:52:18.543915'),
(41, 'pbkdf2_sha256$180000$I2JcRLWNS7PU$7xIHcONjCB5lTZB+IiZXW3ttYhsEcQGEhzA5xFNIF2w=', '2020-06-11 07:21:30.030915', 0, 'sony1', '2', '2', 'soo@gg.com', 0, 1, '2020-06-11 04:55:11.260915'),
(42, 'pbkdf2_sha256$180000$jQwlpilPUwvg$WEdtrI1gpU2PVAYHGvum35eDOTbq16bsOAKXRSiFmkU=', '2020-06-11 07:24:13.234915', 0, 'sans', 'Samsung', 'Corp', 'saa@gg.com', 0, 1, '2020-06-11 07:05:45.909915');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user_user_permissions`
--

INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
(5, 10, 25),
(6, 10, 26),
(7, 10, 27),
(8, 10, 28),
(1, 10, 37),
(2, 10, 38),
(3, 10, 39),
(4, 10, 40);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL
) ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-02-06 09:31:09.547186', '1', 'Tour Package 1', 2, '[{\"changed\": {\"fields\": [\"P img\"]}}]', 8, 9),
(2, '2020-02-06 09:34:54.662062', '1', 'analyser', 1, '[{\"added\": {}}]', 3, 9),
(3, '2020-02-06 09:36:04.934081', '10', 'ana1', 1, '[{\"added\": {}}]', 4, 9),
(4, '2020-02-06 09:36:19.336905', '10', 'ana1', 2, '[{\"changed\": {\"fields\": [\"Staff status\", \"Groups\"]}}]', 4, 9),
(5, '2020-02-06 09:37:40.873569', '2', 'Package 2', 1, '[{\"added\": {}}]', 8, 10),
(6, '2020-02-06 09:46:48.013863', '2', 'Package 2', 2, '[{\"changed\": {\"fields\": [\"P app\"]}}]', 8, 9),
(7, '2020-02-06 09:46:54.372227', '1', 'Tour Package 1', 2, '[{\"changed\": {\"fields\": [\"P app\"]}}]', 8, 9),
(8, '2020-02-06 09:48:35.752026', '2', 'pckimg object (2)', 1, '[{\"added\": {}}]', 9, 9),
(9, '2020-02-06 10:15:54.106734', '3', 'pckimg object (3)', 2, '[{\"changed\": {\"fields\": [\"P img1\", \"P img2\", \"P img3\"]}}]', 9, 9),
(10, '2020-02-06 10:16:13.258830', '2', 'pckimg object (2)', 2, '[{\"changed\": {\"fields\": [\"P img1\", \"P img2\", \"P img3\"]}}]', 9, 9),
(11, '2020-02-06 10:16:29.675769', '2', 'pckimg object (2)', 2, '[{\"changed\": {\"fields\": [\"P img1\", \"P img2\", \"P img3\"]}}]', 9, 9),
(12, '2020-02-06 10:26:54.819525', '3', 'Tour #3', 2, '[]', 9, 10),
(13, '2020-02-06 10:33:11.499070', '4', 'The Fourth Pack', 1, '[{\"added\": {}}]', 8, 10),
(14, '2020-02-06 10:34:25.782318', '4', 'The Fourth Pack', 1, '[{\"added\": {}}]', 9, 10),
(15, '2020-02-06 11:21:05.662462', '1', 'analyser', 2, '[{\"changed\": {\"fields\": [\"Permissions\"]}}]', 3, 9),
(16, '2020-02-07 07:21:44.017617', '4', 'German Package', 2, '[{\"changed\": {\"fields\": [\"Name of Package\", \"Main Image\"]}}]', 8, 9),
(17, '2020-02-07 07:24:55.328559', '1', 'Kerala Package', 2, '[{\"changed\": {\"fields\": [\"Name of Package\", \"Main Image\"]}}]', 8, 9),
(18, '2020-02-07 07:27:00.158699', '2', 'UK Package', 2, '[{\"changed\": {\"fields\": [\"Name of Package\", \"Main Image\"]}}]', 8, 9),
(19, '2020-02-07 07:28:02.126243', '3', 'US Tour', 2, '[{\"changed\": {\"fields\": [\"Name of Package\", \"Main Image\"]}}]', 8, 9),
(20, '2020-02-07 11:07:09.919254', '1', 'analyser', 2, '[{\"changed\": {\"fields\": [\"Permissions\"]}}]', 3, 9),
(21, '2020-02-08 05:37:22.213673', '2', 'UK Package', 2, '[{\"changed\": {\"fields\": [\"Image 2\", \"Image 3\"]}}]', 9, 9),
(22, '2020-02-08 05:37:50.868297', '1', 'Kerala Package', 3, '', 9, 9),
(23, '2020-02-08 05:38:53.687646', '1', 'Kerala Package', 3, '', 8, 9),
(24, '2020-02-08 05:39:24.826177', '4', 'German Package', 2, '[{\"changed\": {\"fields\": [\"Image 2\", \"Image 3\"]}}]', 9, 9),
(25, '2020-02-08 05:53:04.337256', '2', 'UK Package', 2, '[{\"changed\": {\"fields\": [\"Tour Highlights\"]}}]', 8, 9),
(26, '2020-02-08 05:59:15.157465', '2', 'UK Package', 2, '[{\"changed\": {\"fields\": [\"Tour Highlights\"]}}]', 8, 9),
(27, '2020-02-08 05:59:45.971228', '2', 'UK Package', 2, '[{\"changed\": {\"fields\": [\"Tour Highlights\"]}}]', 8, 9),
(28, '2020-02-08 06:00:36.003090', '2', 'UK Package', 2, '[{\"changed\": {\"fields\": [\"Tour Highlights\"]}}]', 8, 9),
(29, '2020-02-08 06:09:12.960658', '4', 'German Package', 2, '[{\"changed\": {\"fields\": [\"Tour Highlights\"]}}]', 8, 9),
(30, '2020-02-10 06:50:23.895846', '4', 'Profile object (4)', 3, '', 7, 9),
(31, '2020-02-10 06:50:23.958850', '3', 'Profile object (3)', 3, '', 7, 9),
(32, '2020-02-10 06:50:24.000852', '2', 'Profile object (2)', 3, '', 7, 9),
(33, '2020-02-10 06:50:24.025854', '1', 'Profile object (1)', 3, '', 7, 9),
(34, '2020-02-10 06:50:34.938469', '9', 'Profile object (9)', 3, '', 7, 9),
(35, '2020-02-10 06:50:34.983472', '8', 'Profile object (8)', 3, '', 7, 9),
(36, '2020-02-10 06:50:35.067477', '7', 'Profile object (7)', 3, '', 7, 9),
(37, '2020-02-10 08:48:52.544966', '11', 'Profile object (11)', 2, '[{\"changed\": {\"fields\": [\"Approval\"]}}]', 7, 9),
(38, '2020-02-10 08:56:18.089792', '14', 'Profile object (14)', 2, '[{\"changed\": {\"fields\": [\"Approval\"]}}]', 7, 9),
(39, '2020-02-13 05:14:57.726429', '1', 'analyser', 2, '[{\"changed\": {\"fields\": [\"Permissions\"]}}]', 3, 9),
(40, '2020-02-13 05:50:29.984279', '22', 'Profile object (22)', 2, '[{\"changed\": {\"fields\": [\"Approval\"]}}]', 7, 9),
(41, '2020-02-13 05:58:32.407400', '24', 'Profile object (24)', 2, '[{\"changed\": {\"fields\": [\"Approval\"]}}]', 7, 9),
(42, '2020-02-13 06:03:07.098112', '26', 'Profile object (26)', 2, '[{\"changed\": {\"fields\": [\"Approval\"]}}]', 7, 9),
(43, '2020-02-13 07:09:43.061668', '25', 'Profile object (25)', 2, '[{\"changed\": {\"fields\": [\"Approval\"]}}]', 7, 9),
(44, '2020-05-15 05:34:38.390102', '1', 'Concert', 1, '[{\"added\": {}}]', 17, 32),
(45, '2020-05-15 05:43:58.495138', '2', 'DAnce', 1, '[{\"added\": {}}]', 17, 32),
(46, '2020-05-15 05:55:32.985861', '1', 'Institute', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Permissions\"]}}]', 3, 32),
(47, '2020-05-15 05:56:31.094184', '33', 'astudent1', 1, '[{\"added\": {}}]', 4, 10),
(48, '2020-05-15 05:57:00.300855', '33', 'astudent1', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\"]}}]', 4, 10),
(49, '2020-05-15 05:58:11.053902', '1', 'Institute', 2, '[{\"changed\": {\"fields\": [\"Permissions\"]}}]', 3, 32),
(50, '2020-05-15 06:09:08.006477', '35', 'astudent2', 1, '[{\"added\": {}}]', 4, 10),
(51, '2020-05-18 04:49:22.717915', '32', 'ad1', 2, '[]', 4, 10),
(52, '2020-05-18 04:50:41.977915', '16', 'user76', 2, '[]', 4, 10),
(53, '2020-05-18 04:51:59.223915', '36', 'anewstu', 1, '[{\"added\": {}}]', 4, 10),
(54, '2020-05-18 04:54:22.741915', '37', 'ane', 1, '[{\"added\": {}}]', 4, 32),
(55, '2020-05-18 04:55:25.041915', '32', 'ad1', 2, '[]', 4, 10),
(56, '2020-05-18 04:57:01.674915', '38', '111', 1, '[{\"added\": {}}]', 4, 10),
(57, '2020-05-18 04:59:06.953115', '10', 'ana1', 2, '[{\"changed\": {\"fields\": [\"User permissions\"]}}]', 4, 32),
(58, '2020-05-18 04:59:38.584915', '12', 'Profile object (12)', 2, '[{\"changed\": {\"fields\": [\"Approval\"]}}]', 7, 10),
(59, '2020-05-18 06:22:47.044915', '35', 'Profile object (35)', 2, '[{\"changed\": {\"fields\": [\"Approval\"]}}]', 7, 32),
(60, '2020-05-18 06:23:24.792915', '26', 'Profile object (26)', 2, '[{\"changed\": {\"fields\": [\"Role\"]}}]', 7, 32),
(61, '2020-06-11 04:58:10.808915', '37', 'Profile object (37)', 2, '[{\"changed\": {\"fields\": [\"Approval\"]}}]', 7, 9),
(62, '2020-06-11 05:07:35.095915', '2', 'DAnce', 3, '', 17, 9),
(63, '2020-06-11 05:07:35.128915', '1', 'Concert', 3, '', 17, 9),
(64, '2020-06-11 05:10:29.055915', '3', 'Event Concert', 1, '[{\"added\": {}}]', 17, 9),
(65, '2020-06-11 05:10:58.030915', '3', 'Event Concert', 2, '[{\"changed\": {\"fields\": [\"Image 1\", \"Image 2\", \"Image 3\"]}}]', 9, 9),
(66, '2020-06-11 07:06:03.210915', '38', 'Profile object (38)', 2, '[{\"changed\": {\"fields\": [\"Approval\"]}}]', 7, 9);

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
(17, 'analyse', 'events'),
(8, 'analyse', 'package'),
(9, 'analyse', 'pckimg'),
(16, 'analyse', 'sgts'),
(11, 'analyse', 'suggest'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(15, 'guide', 'bookguide'),
(14, 'guide', 'gbook'),
(13, 'guide', 'gdet'),
(12, 'home', 'cart'),
(7, 'home', 'profile'),
(10, 'home', 'sellprofile'),
(6, 'sessions', 'session');

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
(1, 'contenttypes', '0001_initial', '2020-02-06 07:08:36.928004'),
(2, 'auth', '0001_initial', '2020-02-06 07:08:38.579099'),
(3, 'admin', '0001_initial', '2020-02-06 07:08:47.322599'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-02-06 07:08:49.842743'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-02-06 07:08:49.890746'),
(6, 'analyse', '0001_initial', '2020-02-06 07:08:50.365773'),
(7, 'contenttypes', '0002_remove_content_type_name', '2020-02-06 07:08:51.658847'),
(8, 'auth', '0002_alter_permission_name_max_length', '2020-02-06 07:08:51.766853'),
(9, 'auth', '0003_alter_user_email_max_length', '2020-02-06 07:08:51.884860'),
(10, 'auth', '0004_alter_user_username_opts', '2020-02-06 07:08:51.938863'),
(11, 'auth', '0005_alter_user_last_login_null', '2020-02-06 07:08:52.491895'),
(12, 'auth', '0006_require_contenttypes_0002', '2020-02-06 07:08:52.548898'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2020-02-06 07:08:52.588900'),
(14, 'auth', '0008_alter_user_username_max_length', '2020-02-06 07:08:52.799912'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2020-02-06 07:08:52.924919'),
(16, 'auth', '0010_alter_group_name_max_length', '2020-02-06 07:08:53.024925'),
(17, 'auth', '0011_update_proxy_permissions', '2020-02-06 07:08:53.073928'),
(18, 'home', '0001_initial', '2020-02-06 07:08:53.338943'),
(19, 'home', '0002_auto_20200203_1154', '2020-02-06 07:08:54.199992'),
(20, 'home', '0003_auto_20200203_1303', '2020-02-06 07:08:54.957036'),
(21, 'home', '0004_category_product', '2020-02-06 07:08:56.478123'),
(22, 'home', '0005_auto_20200206_1207', '2020-02-06 07:08:59.057270'),
(23, 'home', '0006_auto_20200206_1222', '2020-02-06 07:09:00.307342'),
(24, 'home', '0007_auto_20200206_1232', '2020-02-06 07:09:01.341401'),
(25, 'home', '0008_auto_20200206_1238', '2020-02-06 07:09:02.040441'),
(26, 'sessions', '0001_initial', '2020-02-06 07:09:02.270454'),
(27, 'home', '0009_auto_20200206_1252', '2020-02-06 07:22:17.834958'),
(28, 'analyse', '0002_auto_20200206_1552', '2020-02-06 10:22:24.957090'),
(29, 'analyse', '0003_auto_20200207_1042', '2020-02-07 05:12:16.252816'),
(30, 'home', '0010_sellprofile', '2020-02-07 05:12:16.517831'),
(31, 'home', '0011_remove_sellprofile_exp', '2020-02-07 05:17:36.715655'),
(32, 'home', '0012_auto_20200207_1054', '2020-02-07 05:25:48.688794'),
(33, 'home', '0013_auto_20200207_1124', '2020-02-07 05:54:39.249777'),
(34, 'analyse', '0004_suggest', '2020-02-07 09:33:38.383292'),
(35, 'analyse', '0005_auto_20200207_1635', '2020-02-07 11:06:04.830531'),
(36, 'analyse', '0006_auto_20200207_1637', '2020-02-07 11:08:01.926228'),
(37, 'home', '0014_cart', '2020-02-08 11:22:57.331350'),
(38, 'home', '0015_profile_app', '2020-02-10 04:59:04.358124'),
(39, 'home', '0016_auto_20200210_1048', '2020-02-10 05:19:00.477102'),
(40, 'home', '0017_auto_20200210_1051', '2020-02-10 05:21:56.434499'),
(41, 'home', '0018_profile_app', '2020-02-10 05:33:11.524859'),
(42, 'home', '0019_auto_20200210_1427', '2020-02-10 08:58:01.093578'),
(43, 'home', '0020_auto_20200212_1045', '2020-02-12 05:15:37.263435'),
(44, 'home', '0021_auto_20200212_1154', '2020-02-12 06:27:27.006416'),
(45, 'home', '0022_delete_cart', '2020-02-12 06:27:27.193426'),
(46, 'home', '0023_cart', '2020-02-12 06:28:02.052674'),
(53, 'guide', '0001_initial', '2020-02-13 06:40:11.370333'),
(54, 'guide', '0002_book', '2020-02-13 06:40:11.672350'),
(55, 'guide', '0003_auto_20200213_1100', '2020-02-13 06:40:13.087431'),
(56, 'guide', '0004_auto_20200213_1117', '2020-02-13 06:40:13.477453'),
(57, 'guide', '0005_auto_20200213_1205', '2020-02-13 06:53:18.132333'),
(58, 'guide', '0006_auto_20200213_1205', '2020-02-13 06:53:18.192336'),
(59, 'guide', '0007_auto_20200213_1211', '2020-02-13 06:53:18.259340'),
(60, 'guide', '0008_auto_20200213_1213', '2020-02-13 06:53:18.284342'),
(61, 'guide', '0009_auto_20200213_1216', '2020-02-13 06:53:18.317344'),
(62, 'guide', '0010_delete_gbook', '2020-02-13 06:53:18.351346'),
(63, 'guide', '0011_bookguide', '2020-02-13 06:56:52.888616'),
(64, 'guide', '0012_auto_20200213_1236', '2020-02-13 07:06:48.620690'),
(65, 'analyse', '0007_auto_20200213_1320', '2020-02-13 07:50:18.637975'),
(66, 'analyse', '0008_auto_20200213_1456', '2020-02-13 09:32:04.831229'),
(67, 'home', '0024_auto_20200219_1114', '2020-02-19 05:49:18.170938'),
(68, 'home', '0025_auto_20200219_1115', '2020-02-19 05:49:18.316947'),
(69, 'home', '0026_remove_cart_guide', '2020-02-19 05:49:18.457955'),
(70, 'home', '0027_cart_guide', '2020-02-19 05:49:18.615964'),
(71, 'home', '0028_delete_cart', '2020-02-19 05:51:54.683890'),
(72, 'home', '0029_cart', '2020-02-19 05:52:08.989708'),
(73, 'home', '0030_auto_20200219_1130', '2020-02-19 06:00:13.547424'),
(74, 'analyse', '0009_events', '2020-05-15 05:32:25.137480'),
(75, 'analyse', '0010_auto_20200518_1022', '2020-06-11 04:54:13.640915');

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
('1nuztc0q96tkpof5vtpsjad4i8siq8v0', 'NGI0MTNkMjYxYjMwMzJkNTM3ZWJmYzYxYjg5ODA3OTIwZmEyZGI0YTp7fQ==', '2020-02-24 09:29:25.575793'),
('3thg4c7tk9a5z00bruz86z3oz6htrmpc', 'NGI0MTNkMjYxYjMwMzJkNTM3ZWJmYzYxYjg5ODA3OTIwZmEyZGI0YTp7fQ==', '2020-02-21 06:00:18.172162'),
('3wxa8nbisqvlsc0uvurg3f3d7iymalln', 'NGI0MTNkMjYxYjMwMzJkNTM3ZWJmYzYxYjg5ODA3OTIwZmEyZGI0YTp7fQ==', '2020-02-21 06:18:52.874919'),
('4kprr7fkya8wzgkz90npy7kzjtjjqhga', 'NGI0MTNkMjYxYjMwMzJkNTM3ZWJmYzYxYjg5ODA3OTIwZmEyZGI0YTp7fQ==', '2020-02-21 06:34:14.855654'),
('dy7uczyo4e7btdagf2uvsatnxlmeokug', 'ODk5MzY0ODk0NTk5Y2ExNmU0MDliODY3ZjIwNzJhNzc4YWU1ZGI4ZDp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkOWFlODIyMjQwNTgyOTljNGU3NjgzZWYzNWY2ZDA1Yzk2YWIwNmM1In0=', '2020-02-24 08:48:38.106228'),
('er2s6x4ttpfoarf6lsa0o1k8ypo4md0g', 'NGI0MTNkMjYxYjMwMzJkNTM3ZWJmYzYxYjg5ODA3OTIwZmEyZGI0YTp7fQ==', '2020-02-24 11:02:45.034061'),
('kewnrunqtlhsiygn8di0y9ia97n77lnk', 'NGI4YWJhNmU3NDgxMGY5MWZjZmI0MGRjMGNjYzAzMzE0NzYyODQ3MDp7Il9hdXRoX3VzZXJfaWQiOiIzMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZDBjYWRkOThkOWNiZGMwYWZkZmI0MmYwNTliZWNkY2YyNDg1OTMwNSIsImlkIjozMSwiZ2lkIjoiMjkifQ==', '2020-03-04 06:34:34.781319'),
('lgdy3cifxf4j5jd2indnjmq8rpern1bw', 'NGI0MTNkMjYxYjMwMzJkNTM3ZWJmYzYxYjg5ODA3OTIwZmEyZGI0YTp7fQ==', '2020-02-24 09:29:33.116092'),
('tf1hev5orx84qpzm9qvpexl09y92mdug', 'NGI0MTNkMjYxYjMwMzJkNTM3ZWJmYzYxYjg5ODA3OTIwZmEyZGI0YTp7fQ==', '2020-02-21 06:19:25.289774'),
('w8n2t9l9zvr0lugl7jufscc4j1nx546c', 'NGI0MTNkMjYxYjMwMzJkNTM3ZWJmYzYxYjg5ODA3OTIwZmEyZGI0YTp7fQ==', '2020-02-24 11:10:26.972044'),
('ztx25j9fb9xjxz0zd4nks6y1eb5zphue', 'NGI0MTNkMjYxYjMwMzJkNTM3ZWJmYzYxYjg5ODA3OTIwZmEyZGI0YTp7fQ==', '2020-02-21 06:19:43.003787');

-- --------------------------------------------------------

--
-- Table structure for table `guide_bookguide`
--

CREATE TABLE `guide_bookguide` (
  `id` int(11) NOT NULL,
  `avail` tinyint(1) DEFAULT NULL,
  `guide_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guide_bookguide`
--

INSERT INTO `guide_bookguide` (`id`, `avail`, `guide_id`, `user_id`) VALUES
(1, NULL, 30, 16),
(2, NULL, 29, 21),
(3, NULL, 30, 21),
(4, NULL, 15, 21),
(5, NULL, 15, 20),
(6, NULL, 18, 42);

-- --------------------------------------------------------

--
-- Table structure for table `guide_gdet`
--

CREATE TABLE `guide_gdet` (
  `id` int(11) NOT NULL,
  `pno` varchar(128) NOT NULL,
  `email` varchar(254) NOT NULL,
  `location` varchar(300) NOT NULL,
  `app` tinyint(1) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guide_gdet`
--

INSERT INTO `guide_gdet` (`id`, `pno`, `email`, `location`, `app`, `user_id`) VALUES
(1, '+919495269866', 'ee@gmail.com', 'Germany', 0, 25),
(2, '+447855541858', 'aurelio1992@hotmail.com', 'Britan', NULL, 30),
(3, '+12125552368', '123@GG.COM', '123123123', NULL, 39),
(4, '+12125552368', 'sasas@gg.com', 'loc1', NULL, 42);

-- --------------------------------------------------------

--
-- Table structure for table `home_cart`
--

CREATE TABLE `home_cart` (
  `id` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  `date` longtext NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `guide_id` int(11) NOT NULL,
  `pck_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `home_cart`
--

INSERT INTO `home_cart` (`id`, `num`, `date`, `status`, `guide_id`, `pck_id`, `user_id`) VALUES
(1, 1, '', 0, 15, 4, 21),
(2, 2, '2020-02-29', 0, 30, 2, 31);

-- --------------------------------------------------------

--
-- Table structure for table `home_profile`
--

CREATE TABLE `home_profile` (
  `id` int(11) NOT NULL,
  `email` varchar(254) NOT NULL,
  `birth_date` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  `location` varchar(300) NOT NULL,
  `pno` varchar(128) NOT NULL,
  `role` varchar(300) NOT NULL,
  `app` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `home_profile`
--

INSERT INTO `home_profile` (`id`, `email`, `birth_date`, `user_id`, `location`, `pno`, `role`, `app`) VALUES
(5, '', '', 9, '', '', '', NULL),
(6, '', '', 10, '', '', '', NULL),
(11, 'gu@gmail.cpm', '', 15, 'Germany', '+919495269866', 'guide', 1),
(12, 'tijoem@gmail.com', '2019-12-26', 16, '', '', 'user', 1),
(13, 'MaryNHerrick@teleworm.us', '', 17, 'USA', '+918555702945', 'guide', NULL),
(14, 'rich@gmail.com', '', 18, 'UK', '+917555771287', 'guide', 1),
(15, 'victo@gmail.com', '', 19, 'Italy', '+918555362044', 'guide', NULL),
(16, '', '', 20, '', '', '', NULL),
(17, 'forev@example.com', '2019-01-01', 21, '', '', 'user', NULL),
(19, '', '', 23, '', '', '', NULL),
(20, '', '', 24, '', '', '', NULL),
(21, 'ee@gmail.com', '', 25, 'Germany', '+919495269866', 'guide', NULL),
(25, 'graciela1982@hotmail.com', '', 29, 'USA', '+61455518179', 'guide', 1),
(26, 'aurelio1992@hotmail.com', '', 30, 'Britan', '+447855541858', 'NGO', 1),
(27, 'cnicolas@hermiston.com', '2019-02-02', 31, '', '', 'user', NULL),
(28, '', '', 32, '', '', '', NULL),
(29, '', '', 33, '', '', '', NULL),
(30, 'tr@gg.com', '2000-12-12', 34, '', '', 'user', NULL),
(31, '', '', 35, '', '', '', NULL),
(32, '', '', 36, '', '', '', NULL),
(33, '', '', 37, '', '', '', NULL),
(34, '', '', 38, '', '', '', NULL),
(35, '123@GG.COM', '', 39, '123123123', '+12125552368', 'NGO', 1),
(36, 'jon@gg.com', '2000-01-01', 40, '', '', 'user', NULL),
(37, 'gg@gg.com', '1999-01-02', 41, '', '', 'user', 1),
(38, 'sasas@gg.com', '', 42, 'loc1', '+12125552368', 'NGO', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `analyse_events`
--
ALTER TABLE `analyse_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `analyse_package`
--
ALTER TABLE `analyse_package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `analyse_pckimg`
--
ALTER TABLE `analyse_pckimg`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `p_name_id` (`p_name_id`);

--
-- Indexes for table `analyse_sgts`
--
ALTER TABLE `analyse_sgts`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `guide_bookguide`
--
ALTER TABLE `guide_bookguide`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guide_bookguide_guide_id_96a0d36c_fk_auth_user_id` (`guide_id`),
  ADD KEY `guide_bookguide_user_id_92d138cc_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `guide_gdet`
--
ALTER TABLE `guide_gdet`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `home_cart`
--
ALTER TABLE `home_cart`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pck_id` (`pck_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `home_cart_guide_id_3d424ed1_fk_auth_user_id` (`guide_id`);

--
-- Indexes for table `home_profile`
--
ALTER TABLE `home_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `analyse_events`
--
ALTER TABLE `analyse_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `analyse_package`
--
ALTER TABLE `analyse_package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `analyse_pckimg`
--
ALTER TABLE `analyse_pckimg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `analyse_sgts`
--
ALTER TABLE `analyse_sgts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `guide_bookguide`
--
ALTER TABLE `guide_bookguide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `guide_gdet`
--
ALTER TABLE `guide_gdet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `home_cart`
--
ALTER TABLE `home_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `home_profile`
--
ALTER TABLE `home_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

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
-- Constraints for table `guide_bookguide`
--
ALTER TABLE `guide_bookguide`
  ADD CONSTRAINT `guide_bookguide_guide_id_96a0d36c_fk_auth_user_id` FOREIGN KEY (`guide_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `guide_bookguide_user_id_92d138cc_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `guide_gdet`
--
ALTER TABLE `guide_gdet`
  ADD CONSTRAINT `guide_gdet_user_id_2802b662_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `home_cart`
--
ALTER TABLE `home_cart`
  ADD CONSTRAINT `home_cart_guide_id_3d424ed1_fk_auth_user_id` FOREIGN KEY (`guide_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `home_cart_pck_id_aa38e44c_fk_analyse_package_id` FOREIGN KEY (`pck_id`) REFERENCES `analyse_package` (`id`),
  ADD CONSTRAINT `home_cart_user_id_5795e126_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `home_profile`
--
ALTER TABLE `home_profile`
  ADD CONSTRAINT `home_profile_user_id_5bf46ea0_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
