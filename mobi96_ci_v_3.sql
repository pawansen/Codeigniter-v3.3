-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 13, 2017 at 05:37 PM
-- Server version: 5.7.19-0ubuntu0.16.04.1
-- PHP Version: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mobi96_ci_v_3`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_notifications`
--

CREATE TABLE `admin_notifications` (
  `id` bigint(20) NOT NULL,
  `title` varchar(250) NOT NULL,
  `message` text NOT NULL,
  `last_user_id` int(11) NOT NULL DEFAULT '0',
  `status` enum('PENDING','COMPLETED') NOT NULL DEFAULT 'PENDING',
  `sent_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cms`
--

CREATE TABLE `cms` (
  `cms_id` int(11) NOT NULL,
  `page_id` varchar(50) NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `image` varchar(255) NOT NULL,
  `active` smallint(6) NOT NULL COMMENT '1= active, 0=inactive',
  `create_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms`
--

INSERT INTO `cms` (`cms_id`, `page_id`, `description`, `image`, `active`, `create_date`) VALUES
(1, 'about', '<p><br></p><h5>Lorem Ipsum is simply dummy text of the printing and typesetting \r\nindustry. Lorem Ipsum has been the industry\'s standard dummy text ever \r\nsince the 1500s,Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting \r\nindustry. Lorem Ipsum has been the industry\'s standard dummy text ever \r\nsince the 1500s,Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting \r\nindustry. Lorem Ipsum has been the industry\'s standard dummy text ever \r\nsince the 1500s,Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting \r\nindustry. Lorem Ipsum has been the industry\'s standard dummy text ever \r\nsince the 1500s,<br></h5><p><br></p><p><br></p><p><br></p>', '', 1, '2017-06-19 07:16:03'),
(2, 'privacy_policy', '<p><br></p><h5>Lorem Ipsum is simply dummy text of the printing and typesetting \r\nindustry. Lorem Ipsum has been the industry\'s standard dummy text ever \r\nsince the 1500s,Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting \r\nindustry. Lorem Ipsum has been the industry\'s standard dummy text ever \r\nsince the 1500s,Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting \r\nindustry. Lorem Ipsum has been the industry\'s standard dummy text ever \r\nsince the 1500s,Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting \r\nindustry. Lorem Ipsum has been the industry\'s standard dummy text ever \r\nsince the 1500s,<br></h5><p><br></p><p><br></p><p><br></p>', '', 1, '2017-06-19 07:16:25');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `user_id`, `message`, `datetime`) VALUES
(1, 146, 'hi', '2017-08-10 00:47:40'),
(2, 180, 'test', '2017-08-25 04:14:40');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `code` varchar(30) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `code`, `name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'AS', 'American Samoa'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctica'),
(9, 'AG', 'Antigua And Barbuda'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armenia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australia'),
(14, 'AT', 'Austria'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BS', 'Bahamas The'),
(17, 'BH', 'Bahrain'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbados'),
(20, 'BY', 'Belarus'),
(21, 'BE', 'Belgium'),
(22, 'BZ', 'Belize'),
(23, 'BJ', 'Benin'),
(24, 'BM', 'Bermuda'),
(25, 'BT', 'Bhutan'),
(26, 'BO', 'Bolivia'),
(27, 'BA', 'Bosnia and Herzegovina'),
(28, 'BW', 'Botswana'),
(29, 'BV', 'Bouvet Island'),
(30, 'BR', 'Brazil'),
(31, 'IO', 'British Indian Ocean Territory'),
(32, 'BN', 'Brunei'),
(33, 'BG', 'Bulgaria'),
(34, 'BF', 'Burkina Faso'),
(35, 'BI', 'Burundi'),
(36, 'KH', 'Cambodia'),
(37, 'CM', 'Cameroon'),
(38, 'CA', 'Canada'),
(39, 'CV', 'Cape Verde'),
(40, 'KY', 'Cayman Islands'),
(41, 'CF', 'Central African Republic'),
(42, 'TD', 'Chad'),
(43, 'CL', 'Chile'),
(44, 'CN', 'China'),
(45, 'CX', 'Christmas Island'),
(46, 'CC', 'Cocos (Keeling) Islands'),
(47, 'CO', 'Colombia'),
(48, 'KM', 'Comoros'),
(49, 'CG', 'Congo'),
(50, 'CD', 'Congo The Democratic Republic Of The'),
(51, 'CK', 'Cook Islands'),
(52, 'CR', 'Costa Rica'),
(53, 'CI', 'Cote D\'Ivoire (Ivory Coast)'),
(54, 'HR', 'Croatia (Hrvatska)'),
(55, 'CU', 'Cuba'),
(56, 'CY', 'Cyprus'),
(57, 'CZ', 'Czech Republic'),
(58, 'DK', 'Denmark'),
(59, 'DJ', 'Djibouti'),
(60, 'DM', 'Dominica'),
(61, 'DO', 'Dominican Republic'),
(62, 'TP', 'East Timor'),
(63, 'EC', 'Ecuador'),
(64, 'EG', 'Egypt'),
(65, 'SV', 'El Salvador'),
(66, 'GQ', 'Equatorial Guinea'),
(67, 'ER', 'Eritrea'),
(68, 'EE', 'Estonia'),
(69, 'ET', 'Ethiopia'),
(70, 'XA', 'External Territories of Australia'),
(71, 'FK', 'Falkland Islands'),
(72, 'FO', 'Faroe Islands'),
(73, 'FJ', 'Fiji Islands'),
(74, 'FI', 'Finland'),
(75, 'FR', 'France'),
(76, 'GF', 'French Guiana'),
(77, 'PF', 'French Polynesia'),
(78, 'TF', 'French Southern Territories'),
(79, 'GA', 'Gabon'),
(80, 'GM', 'Gambia The'),
(81, 'GE', 'Georgia'),
(82, 'DE', 'Germany'),
(83, 'GH', 'Ghana'),
(84, 'GI', 'Gibraltar'),
(85, 'GR', 'Greece'),
(86, 'GL', 'Greenland'),
(87, 'GD', 'Grenada'),
(88, 'GP', 'Guadeloupe'),
(89, 'GU', 'Guam'),
(90, 'GT', 'Guatemala'),
(91, 'XU', 'Guernsey and Alderney'),
(92, 'GN', 'Guinea'),
(93, 'GW', 'Guinea-Bissau'),
(94, 'GY', 'Guyana'),
(95, 'HT', 'Haiti'),
(96, 'HM', 'Heard and McDonald Islands'),
(97, 'HN', 'Honduras'),
(98, 'HK', 'Hong Kong S.A.R.'),
(99, 'HU', 'Hungary'),
(100, 'IS', 'Iceland'),
(101, 'IN', 'India'),
(102, 'ID', 'Indonesia'),
(103, 'IR', 'Iran'),
(104, 'IQ', 'Iraq'),
(105, 'IE', 'Ireland'),
(106, 'IL', 'Israel'),
(107, 'IT', 'Italy'),
(108, 'JM', 'Jamaica'),
(109, 'JP', 'Japan'),
(110, 'XJ', 'Jersey'),
(111, 'JO', 'Jordan'),
(112, 'KZ', 'Kazakhstan'),
(113, 'KE', 'Kenya'),
(114, 'KI', 'Kiribati'),
(115, 'KP', 'Korea North'),
(116, 'KR', 'Korea South'),
(117, 'KW', 'Kuwait'),
(118, 'KG', 'Kyrgyzstan'),
(119, 'LA', 'Laos'),
(120, 'LV', 'Latvia'),
(121, 'LB', 'Lebanon'),
(122, 'LS', 'Lesotho'),
(123, 'LR', 'Liberia'),
(124, 'LY', 'Libya'),
(125, 'LI', 'Liechtenstein'),
(126, 'LT', 'Lithuania'),
(127, 'LU', 'Luxembourg'),
(128, 'MO', 'Macau S.A.R.'),
(129, 'MK', 'Macedonia'),
(130, 'MG', 'Madagascar'),
(131, 'MW', 'Malawi'),
(132, 'MY', 'Malaysia'),
(133, 'MV', 'Maldives'),
(134, 'ML', 'Mali'),
(135, 'MT', 'Malta'),
(136, 'XM', 'Man (Isle of)'),
(137, 'MH', 'Marshall Islands'),
(138, 'MQ', 'Martinique'),
(139, 'MR', 'Mauritania'),
(140, 'MU', 'Mauritius'),
(141, 'YT', 'Mayotte'),
(142, 'MX', 'Mexico'),
(143, 'FM', 'Micronesia'),
(144, 'MD', 'Moldova'),
(145, 'MC', 'Monaco'),
(146, 'MN', 'Mongolia'),
(147, 'MS', 'Montserrat'),
(148, 'MA', 'Morocco'),
(149, 'MZ', 'Mozambique'),
(150, 'MM', 'Myanmar'),
(151, 'NA', 'Namibia'),
(152, 'NR', 'Nauru'),
(153, 'NP', 'Nepal'),
(154, 'AN', 'Netherlands Antilles'),
(155, 'NL', 'Netherlands The'),
(156, 'NC', 'New Caledonia'),
(157, 'NZ', 'New Zealand'),
(158, 'NI', 'Nicaragua'),
(159, 'NE', 'Niger'),
(160, 'NG', 'Nigeria'),
(161, 'NU', 'Niue'),
(162, 'NF', 'Norfolk Island'),
(163, 'MP', 'Northern Mariana Islands'),
(164, 'NO', 'Norway'),
(165, 'OM', 'Oman'),
(166, 'PK', 'Pakistan'),
(167, 'PW', 'Palau'),
(168, 'PS', 'Palestinian Territory Occupied'),
(169, 'PA', 'Panama'),
(170, 'PG', 'Papua new Guinea'),
(171, 'PY', 'Paraguay'),
(172, 'PE', 'Peru'),
(173, 'PH', 'Philippines'),
(174, 'PN', 'Pitcairn Island'),
(175, 'PL', 'Poland'),
(176, 'PT', 'Portugal'),
(177, 'PR', 'Puerto Rico'),
(178, 'QA', 'Qatar'),
(179, 'RE', 'Reunion'),
(180, 'RO', 'Romania'),
(181, 'RU', 'Russia'),
(182, 'RW', 'Rwanda'),
(183, 'SH', 'Saint Helena'),
(184, 'KN', 'Saint Kitts And Nevis'),
(185, 'LC', 'Saint Lucia'),
(186, 'PM', 'Saint Pierre and Miquelon'),
(187, 'VC', 'Saint Vincent And The Grenadines'),
(188, 'WS', 'Samoa'),
(189, 'SM', 'San Marino'),
(190, 'ST', 'Sao Tome and Principe'),
(191, 'SA', 'Saudi Arabia'),
(192, 'SN', 'Senegal'),
(193, 'RS', 'Serbia'),
(194, 'SC', 'Seychelles'),
(195, 'SL', 'Sierra Leone'),
(196, 'SG', 'Singapore'),
(197, 'SK', 'Slovakia'),
(198, 'SI', 'Slovenia'),
(199, 'XG', 'Smaller Territories of the UK'),
(200, 'SB', 'Solomon Islands'),
(201, 'SO', 'Somalia'),
(202, 'ZA', 'South Africa'),
(203, 'GS', 'South Georgia'),
(204, 'SS', 'South Sudan'),
(205, 'ES', 'Spain'),
(206, 'LK', 'Sri Lanka'),
(207, 'SD', 'Sudan'),
(208, 'SR', 'Suriname'),
(209, 'SJ', 'Svalbard And Jan Mayen Islands'),
(210, 'SZ', 'Swaziland'),
(211, 'SE', 'Sweden'),
(212, 'CH', 'Switzerland'),
(213, 'SY', 'Syria'),
(214, 'TW', 'Taiwan'),
(215, 'TJ', 'Tajikistan'),
(216, 'TZ', 'Tanzania'),
(217, 'TH', 'Thailand'),
(218, 'TG', 'Togo'),
(219, 'TK', 'Tokelau'),
(220, 'TO', 'Tonga'),
(221, 'TT', 'Trinidad And Tobago'),
(222, 'TN', 'Tunisia'),
(223, 'TR', 'Turkey'),
(224, 'TM', 'Turkmenistan'),
(225, 'TC', 'Turks And Caicos Islands'),
(226, 'TV', 'Tuvalu'),
(227, 'UG', 'Uganda'),
(228, 'UA', 'Ukraine'),
(229, 'AE', 'United Arab Emirates'),
(230, 'GB', 'United Kingdom'),
(231, 'US', 'United States'),
(232, 'UM', 'United States Minor Outlying Islands'),
(233, 'UY', 'Uruguay'),
(234, 'UZ', 'Uzbekistan'),
(235, 'VU', 'Vanuatu'),
(236, 'VA', 'Vatican City State (Holy See)'),
(237, 'VE', 'Venezuela'),
(238, 'VN', 'Vietnam'),
(239, 'VG', 'Virgin Islands (British)'),
(240, 'VI', 'Virgin Islands (US)'),
(241, 'WF', 'Wallis And Futuna Islands'),
(242, 'EH', 'Western Sahara'),
(243, 'YE', 'Yemen'),
(244, 'YU', 'Yugoslavia'),
(245, 'ZM', 'Zambia'),
(246, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=active, 0=inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`, `active`) VALUES
(1, 'admin', 'Administrator', 1),
(2, 'Users', 'This is Users', 1);

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login_attempts`
--

INSERT INTO `login_attempts` (`id`, `ip_address`, `login`, `time`) VALUES
(1, '127.0.0.1', 'admin@admin.com', 1507893323),
(2, '127.0.0.1', 'admin@assessment.com', 1507894077),
(3, '::1', 'ranveer.mobiwebtech@gmail.com', 1507895634),
(4, '127.0.0.1', 'admin@assessment.com', 1507896385);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL COMMENT '(reciever_id)',
  `sender_id` bigint(20) DEFAULT NULL COMMENT '(sent from)',
  `noti_type` varchar(150) DEFAULT NULL,
  `message` text NOT NULL,
  `read_status` enum('YES','NO') NOT NULL DEFAULT 'NO',
  `params` text,
  `sent_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `option_name` varchar(100) NOT NULL,
  `option_value` varchar(100) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1 for on 0 for off'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `option_name`, `option_value`, `status`) VALUES
(3, 'admin_email', 'pawan.mobiwebtech@gmail.com', 1),
(4, 'site_name', 'Codeigniter-v3.3', 1),
(5, 'date_foramte', 'd F Y h:i:s A', 1),
(6, 'site_meta_title', 'Codeigniter-v3.3', 1),
(7, 'site_meta_description', 'Codeigniter-v3.3', 1),
(9, 'site_logo', 'uploads/app/1507893786_codeigniter-300x300.png', 1),
(10, 'google_captcha', 'Off', 1),
(11, 'data_sitekey', '6LeRUzQUAAAAAAcIbi4I8TWqK_eLq9Zk4w7RgXnR', 1),
(12, 'secret_key', '6LeRUzQUAAAAAOG_3ZrHIDCpSiXloIU1VzvT1tlR', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `city` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  `update_on` datetime DEFAULT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL COMMENT '1 =active 0= inactive',
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `gender` varchar(50) NOT NULL,
  `date_of_birth` date NOT NULL,
  `signup_type` int(2) NOT NULL DEFAULT '1' COMMENT '1=web2=fb',
  `fb_id` varchar(20) DEFAULT NULL,
  `email_verify` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0 for unverified 1 for verified',
  `profile_pic` varchar(255) DEFAULT NULL,
  `user_image_thumb` varchar(255) DEFAULT NULL COMMENT '250*250',
  `is_logged_out` tinyint(2) NOT NULL DEFAULT '0' COMMENT '''0 = No, 1= Yes''',
  `is_blocked` tinyint(2) NOT NULL DEFAULT '0' COMMENT '''0 = no, 1 = yes''',
  `device_id` varchar(255) DEFAULT NULL COMMENT 'Device Unique ID',
  `device_type` enum('ANDROID','IOS','WEB') NOT NULL DEFAULT 'WEB' COMMENT 'Used to send push notifications',
  `device_token` text,
  `user_token` varchar(255) DEFAULT NULL,
  `badges` int(10) NOT NULL DEFAULT '0',
  `social_type` enum('FACEBOOK','GOOGLE','TWITTER','INSTAGRAM') DEFAULT NULL,
  `social_id` varchar(250) DEFAULT NULL,
  `is_social_signup` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0 = NO, 1 = YES',
  `login_session_key` varchar(255) DEFAULT NULL,
  `is_pass_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `city`, `state`, `country`, `street`, `update_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`, `gender`, `date_of_birth`, `signup_type`, `fb_id`, `email_verify`, `profile_pic`, `user_image_thumb`, `is_logged_out`, `is_blocked`, `device_id`, `device_type`, `device_token`, `user_token`, `badges`, `social_type`, `social_id`, `is_social_signup`, `login_session_key`, `is_pass_token`) VALUES
(1, '127.0.0.1', 'administrator', '$2y$08$ubX9w6atP0/tCtxJRGNgke4FDgseQjoNjX.Nowe5qDMetpvKUSDym', '', 'admin@ci.com', '', 'kiTuQMWjJvfCk5LWBZ7RB.c4017e6155a8fddc89', 1501839749, NULL, 1268889823, 0, 0, 0, '', '0000-00-00 00:00:00', 1507896387, 1, 'Admin', 'Admin', 'Admin', '0', 'MALE', '1998-10-26', 0, '', 0, 'uploads/users/1496412531_FantasyGolf202_(1).png', '', 0, 0, '', 'WEB', '', '', 0, NULL, '', 0, '', ''),
(203, '127.0.0.1', 'pawansen9770', '$2y$08$jBKM6c8gymHkx2ptdwOSoeuFFLuJClMT4ALscKqzhul.dEQL6jB9W', 'fWxdJuOO/iCbekmUIZOQBO', 'pawansen9770@gmail.com', NULL, NULL, NULL, NULL, 1507895621, NULL, NULL, NULL, NULL, NULL, 1507895774, 1, 'pawa', 'sen', NULL, '9856969698', 'MALE', '1984-06-12', 1, NULL, 1, 'uploads/users/1507895621_codeigniter-300x300.png', NULL, 0, 0, '3433355444', 'IOS', 'rttrtrr65656565', NULL, 0, NULL, NULL, 0, 'a2125f82-de90-3f31-1fd8-afe194ed2217', 'hC8AKr8'),
(204, '::1', 'jon', '$2y$08$pwXvwpTQ648VlVWtG7N/luJaz.Q8x/Stq4vn6pu4enIoJtc1bWkLW', 'F5baBTUosHuawh22I/E8W.', 'jon@gmail.com', NULL, NULL, NULL, NULL, 1507895993, NULL, NULL, NULL, 'indore', NULL, NULL, 1, 'jon', 'eleth', NULL, '9754587610', 'Male', '1993-10-14', 1, NULL, 1, 'uploads/users/1493897795_niceneasy-logo.png', 'uploads/users/1493897795_niceneasy-logo_thumb.png', 0, 0, '455545656', 'IOS', 'fgfgfgfgfgfgff', 'eNortjKysFLKys9zSM9NzMzRS87P1TUyMNE1NDUwt7A0tbQ0VrIGXDDHqAnX', 0, NULL, NULL, 0, '25b74bf3-2398-bfd6-0ea9-c75c855eea9c', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `users_device_history`
--

CREATE TABLE `users_device_history` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `device_token` text NOT NULL COMMENT 'Used to send push notfications',
  `device_type` enum('ANDROID','IOS') NOT NULL,
  `device_id` varchar(150) NOT NULL COMMENT 'Device Unique ID',
  `added_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_device_history`
--

INSERT INTO `users_device_history` (`id`, `user_id`, `device_token`, `device_type`, `device_id`, `added_date`) VALUES
(5, 45, 'sdghsdjkjk79879878sdjdfk6hj', 'IOS', '78989sajk89129', '2017-06-02 16:04:49'),
(6, 45, 'sdiufrwerjbkxcv7s8d9f6s87dfsd fbsudfy', 'ANDROID', 'fsdfkjsdfnmvj87689', '2017-06-02 16:31:35'),
(8, 52, '2E464D52-A726-43C4-A369-87E7F6CE1D67', 'IOS', '86F29D83-B781-45CB-AE84-D4F63966388C', '2017-06-15 05:19:25'),
(9, 52, '2E464D52-A726-43C4-A369-87E7F6CE1D67', 'IOS', '8321497E-83BA-4428-A995-5F2239850428', '2017-06-15 08:19:43'),
(10, 52, '2E464D52-A726-43C4-A369-87E7F6CE1D67', 'IOS', '63D99AA2-5129-4476-9851-3A07197A88E4', '2017-06-16 03:14:21'),
(11, 52, '2E464D52-A726-43C4-A369-87E7F6CE1D67', 'IOS', 'C3B9669B-1DE8-4A76-9C29-6F223EE25752', '2017-06-16 03:19:40'),
(12, 52, '2E464D52-A726-43C4-A369-87E7F6CE1D67', 'IOS', 'C7FD118C-776F-4084-895E-2B6197B49DC3', '2017-06-16 03:29:49'),
(14, 52, '2E464D52-A726-43C4-A369-87E7F6CE1D67', 'IOS', 'C2862D9B-CF3A-41C7-AA7C-527CD54C26F0', '2017-06-16 03:53:04'),
(15, 52, '2E464D52-A726-43C4-A369-87E7F6CE1D67', 'IOS', 'F5A71C29-92C1-456A-95A4-01DEA6692E88', '2017-06-16 06:30:30'),
(16, 52, '2E464D52-A726-43C4-A369-87E7F6CE1D67', 'IOS', '489314C1-6226-400E-9C66-9F6779ECDE6B', '2017-06-16 08:23:35'),
(17, 52, '2E464D52-A726-43C4-A369-87E7F6CE1D67', 'IOS', 'F078D52F-89C1-48B4-8541-7F2D1C0B1DEC', '2017-06-16 08:34:47'),
(30, 63, '', '', '', '2017-06-19 04:52:12'),
(31, 203, 'rttrtrr65656565', 'IOS', '3433355444', '2017-06-19 04:53:23'),
(32, 56, 'rttrtrr65656565', '', '3433355444', '2017-06-19 04:53:52'),
(51, 65, '2E464D52-A726-43C4-A369-87E7F6CE1D67', 'IOS', '773A261F-9BC2-4B6C-AB2E-2AAF1FF73288', '2017-07-17 00:54:58'),
(53, 88, '2E464D52-A726-43C4-A369-87E7F6CE1D67', 'IOS', '610488EC-CA7D-4389-AF2F-99D1A9BCBDDC', '2017-07-17 02:38:30'),
(83, 147, '2E464D52-A726-43C4-A369-87E7F6CE1D67', 'IOS', 'A3884B2C-39C2-4252-9F45-5D147352144A', '2017-08-16 08:32:54'),
(91, 147, '2E464D52-A726-43C4-A369-87E7F6CE1D67', 'IOS', '90D01052-309F-407E-8676-1214FA2CBF20', '2017-08-19 05:43:00'),
(92, 185, '', 'ANDROID', '', '2017-08-29 00:39:32'),
(93, 204, 'fgfgfgfgfgfgff', 'IOS', '455545656', '2017-10-13 17:29:53');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL,
  `organization_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`, `organization_id`) VALUES
(1, 1, 1, 0),
(200, 203, 2, 0),
(201, 204, 2, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms`
--
ALTER TABLE `cms`
  ADD PRIMARY KEY (`cms_id`),
  ADD KEY `page_id` (`page_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `sender_id` (`sender_id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_device_history`
--
ALTER TABLE `users_device_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `user_id_2` (`user_id`),
  ADD KEY `user_id_3` (`user_id`),
  ADD KEY `user_id_4` (`user_id`),
  ADD KEY `user_id_5` (`user_id`),
  ADD KEY `user_id_6` (`user_id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cms`
--
ALTER TABLE `cms`
  MODIFY `cms_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;
--
-- AUTO_INCREMENT for table `users_device_history`
--
ALTER TABLE `users_device_history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;