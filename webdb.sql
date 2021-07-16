-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2020 at 04:24 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `aboutus_aboutus`
--

CREATE TABLE `aboutus_aboutus` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `des` longtext NOT NULL,
  `name` varchar(100) NOT NULL,
  `post` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aboutus_aboutus`
--

INSERT INTO `aboutus_aboutus` (`id`, `title`, `des`, `name`, `post`, `img`) VALUES
(2, 'The story behind StartUP', 'The StartUP is an association started as a LinkedIn group in 2006 as a meeting place\r\n							for business owners from around the world. It’s a place where entrepreneurs could share their stories\r\n							and meet other founders and business owners.\r\n							\r\n							LinkedIn did a great job of making it easy for business owners to opt into the group, and before long \r\n							the group had over 50 members. The members were active, sharing stories and advice, and soon there were\r\n							over 1,000 members. As a entrepreneurs community organization we encourage value content sharing.\r\n							\r\n							Flash forward to 2018 - we now have between 25 and 50 new member requesting to join our entrepreneur \r\n							community every day. As of January 2019, the group had 55,000 members. In May 2019, we built \r\n							StartUP.Net as an organization and community for entrepreneurs.', 'Mrs.Olivia Roberts', '(Founder)', 'Founder.jpg');

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
(25, 'Can add aboutus', 7, 'add_aboutus'),
(26, 'Can change aboutus', 7, 'change_aboutus'),
(27, 'Can delete aboutus', 7, 'delete_aboutus'),
(28, 'Can view aboutus', 7, 'view_aboutus'),
(29, 'Can add expert', 8, 'add_expert'),
(30, 'Can change expert', 8, 'change_expert'),
(31, 'Can delete expert', 8, 'delete_expert'),
(32, 'Can view expert', 8, 'view_expert'),
(33, 'Can add sendmessage', 9, 'add_sendmessage'),
(34, 'Can change sendmessage', 9, 'change_sendmessage'),
(35, 'Can delete sendmessage', 9, 'delete_sendmessage'),
(36, 'Can view sendmessage', 9, 'view_sendmessage'),
(37, 'Can add expert', 10, 'add_expert'),
(38, 'Can change expert', 10, 'change_expert'),
(39, 'Can delete expert', 10, 'delete_expert'),
(40, 'Can view expert', 10, 'view_expert'),
(41, 'Can add msg', 11, 'add_msg'),
(42, 'Can change msg', 11, 'change_msg'),
(43, 'Can delete msg', 11, 'delete_msg'),
(44, 'Can view msg', 11, 'view_msg'),
(45, 'Can add sendmessage', 12, 'add_sendmessage'),
(46, 'Can change sendmessage', 12, 'change_sendmessage'),
(47, 'Can delete sendmessage', 12, 'delete_sendmessage'),
(48, 'Can view sendmessage', 12, 'view_sendmessage'),
(49, 'Can add apply', 13, 'add_apply'),
(50, 'Can change apply', 13, 'change_apply'),
(51, 'Can delete apply', 13, 'delete_apply'),
(52, 'Can view apply', 13, 'view_apply'),
(53, 'Can add loans', 14, 'add_loans'),
(54, 'Can change loans', 14, 'change_loans'),
(55, 'Can delete loans', 14, 'delete_loans'),
(56, 'Can view loans', 14, 'view_loans');

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
(1, 'pbkdf2_sha256$180000$a3NSmo2bu7bl$ZtC/XzPI9fyJQYilsI2aG/ykEKBW/zCAiLKeK60TJCw=', '2020-02-16 14:34:52.009319', 1, 'milirisal', '', '', 'milirisal11@gmail.com', 1, 1, '2020-01-24 08:47:03.583383');

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
-- Table structure for table `contactus_sendmessage`
--

CREATE TABLE `contactus_sendmessage` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactus_sendmessage`
--

INSERT INTO `contactus_sendmessage` (`id`, `name`, `email`, `subject`, `message`) VALUES
(1, 'ram', 'ram@gmail.com', 'About website', 'woww');

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
(1, '2020-02-05 11:02:11.039745', '1', 'aboutus object (1)', 1, '[{"added": {}}]', 7, 1),
(2, '2020-02-06 06:16:58.625092', '1', 'aboutus object (1)', 3, '', 7, 1),
(3, '2020-02-06 06:18:47.058444', '2', 'aboutus object (2)', 1, '[{"added": {}}]', 7, 1),
(4, '2020-02-09 07:30:36.324266', '1', 'expert object (1)', 1, '[{"added": {}}]', 10, 1),
(5, '2020-02-09 07:33:48.870776', '2', 'expert object (2)', 1, '[{"added": {}}]', 10, 1),
(6, '2020-02-10 10:04:54.251470', '4', 'Robert', 1, '[{"added": {}}]', 12, 1),
(7, '2020-02-12 11:23:14.304197', '3', 'expert object (3)', 1, '[{"added": {}}]', 10, 1),
(8, '2020-02-14 08:14:13.201570', '4', 'expert object (4)', 1, '[{"added": {}}]', 10, 1),
(9, '2020-02-14 08:27:29.674040', '5', 'expert object (5)', 1, '[{"added": {}}]', 10, 1),
(10, '2020-02-14 08:32:32.046160', '6', 'expert object (6)', 1, '[{"added": {}}]', 10, 1),
(11, '2020-02-15 17:43:55.595587', '1', 'loans object (1)', 1, '[{"added": {}}]', 14, 1),
(12, '2020-02-15 17:45:56.978420', '2', 'loans object (2)', 1, '[{"added": {}}]', 14, 1),
(13, '2020-02-15 17:48:11.344313', '3', 'loans object (3)', 1, '[{"added": {}}]', 14, 1),
(14, '2020-02-15 18:19:53.875799', '4', 'loans object (4)', 1, '[{"added": {}}]', 14, 1),
(15, '2020-02-15 18:20:07.234273', '3', 'loans object (3)', 3, '', 14, 1),
(16, '2020-02-15 18:20:07.317066', '2', 'loans object (2)', 3, '', 14, 1),
(17, '2020-02-15 18:20:07.356948', '1', 'loans object (1)', 3, '', 14, 1),
(18, '2020-02-15 18:25:21.211908', '5', 'loans object (5)', 1, '[{"added": {}}]', 14, 1),
(19, '2020-02-15 18:26:42.933659', '6', 'loans object (6)', 1, '[{"added": {}}]', 14, 1);

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
(7, 'aboutus', 'aboutus'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(9, 'contactus', 'sendmessage'),
(5, 'contenttypes', 'contenttype'),
(8, 'expert', 'expert'),
(10, 'experts', 'expert'),
(11, 'experts', 'msg'),
(12, 'experts', 'sendmessage'),
(13, 'loanApply', 'apply'),
(14, 'loans', 'loans'),
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
(1, 'contenttypes', '0001_initial', '2020-01-24 08:43:51.566391'),
(2, 'auth', '0001_initial', '2020-01-24 08:43:53.834121'),
(3, 'admin', '0001_initial', '2020-01-24 08:44:04.073651'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-01-24 08:44:06.450677'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-01-24 08:44:06.510184'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-01-24 08:44:08.143635'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-01-24 08:44:09.762848'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-01-24 08:44:11.095284'),
(9, 'auth', '0004_alter_user_username_opts', '2020-01-24 08:44:11.155503'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-01-24 08:44:11.917145'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-01-24 08:44:11.965979'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-01-24 08:44:12.029313'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-01-24 08:44:13.071439'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-01-24 08:44:14.145397'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-01-24 08:44:15.292267'),
(16, 'auth', '0011_update_proxy_permissions', '2020-01-24 08:44:15.351629'),
(17, 'sessions', '0001_initial', '2020-01-24 08:44:15.679564'),
(18, 'aboutus', '0001_initial', '2020-02-05 10:52:18.229197'),
(19, 'expert', '0001_initial', '2020-02-05 10:52:18.609560'),
(20, 'contactus', '0001_initial', '2020-02-06 07:14:29.292711'),
(21, 'experts', '0001_initial', '2020-02-09 06:46:14.319639'),
(22, 'experts', '0002_msg_user', '2020-02-10 08:38:50.326449'),
(23, 'experts', '0003_auto_20200210_1536', '2020-02-10 09:52:11.839786'),
(24, 'loanApply', '0001_initial', '2020-02-11 09:13:48.010037'),
(25, 'loanApply', '0002_apply_user', '2020-02-11 11:16:26.612643'),
(26, 'loans', '0001_initial', '2020-02-15 17:42:02.291287'),
(27, 'loans', '0002_loans_extend', '2020-02-15 18:04:51.105129'),
(28, 'loanApply', '0003_auto_20200216_1439', '2020-02-16 08:54:16.542391');

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
('17wcy48pkuaeg6wvr5ejec287zn2ibg4', 'MDNlMmUzYzU0MDc3NThjMTI3YzNmYzE1ZGUyMzA0NWRjMmE0Y2YwYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YmFlZWZhYzYxYmRhZjE0MDNlOThkNDFiNzM1NDliMjlmOWUzZjZhIn0=', '2020-02-07 08:47:51.758194'),
('l2rtd3zih3qdkmpxaeo74xa6fnvyfxij', 'MDNlMmUzYzU0MDc3NThjMTI3YzNmYzE1ZGUyMzA0NWRjMmE0Y2YwYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YmFlZWZhYzYxYmRhZjE0MDNlOThkNDFiNzM1NDliMjlmOWUzZjZhIn0=', '2020-03-01 09:56:33.174931');

-- --------------------------------------------------------

--
-- Table structure for table `experts_expert`
--

CREATE TABLE `experts_expert` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `des` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `experts_expert`
--

INSERT INTO `experts_expert` (`id`, `image`, `name`, `des`) VALUES
(1, 'expert2.jpg', 'Robert Scoot', 'Startup Adviser'),
(2, 'expert1.jpg', 'Mrs.Oli Roberts', 'Startup Adviser'),
(3, 'expert3.jpg', 'Patricia Bright', 'Career Adviser'),
(4, 'expert7.jpg', 'Noah Cyrus', 'Finance advicer'),
(5, 'expert4.jpg', 'William Smith', 'Investment adviser'),
(6, 'expert10.jpg', 'Rosh Jonas', 'Insurance Adviser');

-- --------------------------------------------------------

--
-- Table structure for table `experts_sendmessage`
--

CREATE TABLE `experts_sendmessage` (
  `id` int(11) NOT NULL,
  `receipt` varchar(100) NOT NULL,
  `msg` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `experts_sendmessage`
--

INSERT INTO `experts_sendmessage` (`id`, `receipt`, `msg`, `user_id`) VALUES
(1, 'Mrs.Oli', 'hi my name is mili', 1),
(2, 'William', 'hi my name mili', 1);

-- --------------------------------------------------------

--
-- Table structure for table `loanapply_apply`
--

CREATE TABLE `loanapply_apply` (
  `id` int(11) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `zipCode` varchar(50) NOT NULL,
  `amount` varchar(30) NOT NULL,
  `businessType` varchar(200) NOT NULL,
  `LoanType` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `loans_loans`
--

CREATE TABLE `loans_loans` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `title` longtext NOT NULL,
  `des` longtext NOT NULL,
  `extend` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loans_loans`
--

INSERT INTO `loans_loans` (`id`, `image`, `title`, `des`, `extend`) VALUES
(4, '1_uVR5a2j.jpg', 'Teamwork', 'Teamwork is the collaborative effort of a group to achieve a common goal or to complete a task in the most effective and efficient way. This concept is seen within the greater framework of a team, which is a group of interdependent individuals who work together towards a common goal.', 'We guide and create various events which can bring entrepreneurs close from all around the world.'),
(5, '5_AEG4l8k.jpg', 'Leadership', 'Leaders help themselves and others to do the right things. They set direction, build an inspiring vision, and create something new. Leadership is about mapping out where you need to go to "win" as a team or an organization; and it is dynamic, exciting, and inspiring.', 'Yet, while leaders set the direction, they must also use management skills to guide their people to'),
(6, '2_U7nxtvK.jpg', 'Investments', 'Buying shares of stock means taking on an ownership stake in the company you purchase stock in. This means that investing in the stock market also brings benefits that are part of being one of a business''s owners. Shareholders vote on corporate board members and certain business decisions.', 'They also receive annual reports to learn more about the company. Owning stock in the company you wo');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aboutus_aboutus`
--
ALTER TABLE `aboutus_aboutus`
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
-- Indexes for table `contactus_sendmessage`
--
ALTER TABLE `contactus_sendmessage`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `experts_expert`
--
ALTER TABLE `experts_expert`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experts_sendmessage`
--
ALTER TABLE `experts_sendmessage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `experts_sendmessage_user_id_0a0a663c_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `loanapply_apply`
--
ALTER TABLE `loanapply_apply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loanApply_apply_user_id_eec45ced_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `loans_loans`
--
ALTER TABLE `loans_loans`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aboutus_aboutus`
--
ALTER TABLE `aboutus_aboutus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
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
-- AUTO_INCREMENT for table `contactus_sendmessage`
--
ALTER TABLE `contactus_sendmessage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `experts_expert`
--
ALTER TABLE `experts_expert`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `experts_sendmessage`
--
ALTER TABLE `experts_sendmessage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `loanapply_apply`
--
ALTER TABLE `loanapply_apply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `loans_loans`
--
ALTER TABLE `loans_loans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
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
-- Constraints for table `experts_sendmessage`
--
ALTER TABLE `experts_sendmessage`
  ADD CONSTRAINT `experts_sendmessage_user_id_0a0a663c_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
