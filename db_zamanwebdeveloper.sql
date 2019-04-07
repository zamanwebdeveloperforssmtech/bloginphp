-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2019 at 04:31 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_zamanwebdeveloper`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `name`) VALUES
(1, 'HTML'),
(2, 'CSS'),
(3, 'JAVASCRIPT'),
(4, 'BOOTSTRAP Framework '),
(6, 'LARAVEL'),
(7, 'Object Oriented PHP'),
(8, 'SQL Queries with PhpMyAdmin'),
(9, 'Health'),
(10, 'Laravel');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `firstname`, `lastname`, `email`, `body`, `status`, `date`) VALUES
(1, 'Syed Zaman', 'Mostafiz', 'zamanwebdeveloper@gmail.com', 'This is my test message.', 1, '2018-12-31 11:40:17'),
(2, 'Syed Zaman', 'Mostafiz', 'zamanwebdeveloper@gmail.com', 'This is our test message. This is our test message.This is our test message.This is our test message.This is our test message.This is our test message.This is our test message.This is our test message.This is our test message.This is our test message.This is our test message.This is our test message.', 1, '2018-12-31 12:15:17'),
(4, 'Syed Zaman', 'Mostafiz', 'zamanwebdeveloper@gmail.com', 'Testing Purpose', 1, '2019-01-01 09:09:19'),
(5, 'Syed Zaman', 'Mostafiz', 'zamancsediue44@gmail.com', 'Testing Purpose', 0, '2019-01-01 09:35:12'),
(7, 'Syed Zaman', 'Mostafiz', 'zamancsediue44@gmail.com', 'This is for testing purpose', 1, '2019-03-08 09:36:57');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_footer`
--

CREATE TABLE `tbl_footer` (
  `id` int(11) NOT NULL,
  `note` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_footer`
--

INSERT INTO `tbl_footer` (`id`, `note`) VALUES
(1, 'Copyright  Zaman Web Developer');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `name`, `body`) VALUES
(1, 'About Us', '<p>Hi , I am Professional Web Developer.</p>'),
(2, 'MyCompletedProjects List', '<p><a title=\"Booststrap Skills\" href=\"completedprojects/08.BuildingWebsiteWithBootstrap/\" target=\"_blank\">08.BuildingWebsiteWithBootstrap</a></p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `id` int(11) NOT NULL,
  `cat` int(11) NOT NULL,
  `title` varchar(2555) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`id`, `cat`, `title`, `body`, `image`, `author`, `tags`, `date`, `userid`) VALUES
(22, 2, 'CSS post title here', '<p>CSS post text will go here.&nbsp;CSS post text will go here.&nbsp;CSS post text will go here.&nbsp;CSS post text will go here.&nbsp;CSS post text will go here.&nbsp;CSS post text will go here.&nbsp;CSS post text will go here.&nbsp;CSS post text will go here.&nbsp;CSS post text will go here.&nbsp;CSS post text will go here.&nbsp;CSS post text will go here.&nbsp;CSS post text will go here.&nbsp;CSS post text will go here.&nbsp;CSS post text will go here.&nbsp;CSS post text will go here.&nbsp;CSS post text will go here.&nbsp;CSS post text will go here.&nbsp;</p>\r\n<p>CSS post text will go here.&nbsp;CSS post text will go here.&nbsp;CSS post text will go here.&nbsp;CSS post text will go here.&nbsp;CSS post text will go here.&nbsp;CSS post text will go here.&nbsp;CSS post text will go here.&nbsp;CSS post text will go here.&nbsp;CSS post text will go here.&nbsp;CSS post text will go here.&nbsp;CSS post text will go here.&nbsp;CSS post text will go here.&nbsp;CSS post text will go here.&nbsp;CSS post text will go here.&nbsp;CSS post text will go here.&nbsp;CSS post text will go here.&nbsp;CSS post text will go here.&nbsp;CSS post text will go here.&nbsp;CSS post text will go here.&nbsp;CSS post text will go here.&nbsp;CSS post text will go here.&nbsp;CSS post text will go here.&nbsp;CSS post text will go here.&nbsp;CSS post text will go here.&nbsp;CSS post text will go here.&nbsp;CSS post text will go here.&nbsp;CSS post text will go here.&nbsp;CSS post text will go here.&nbsp;CSS post text will go here.&nbsp;CSS post text will go here.&nbsp;CSS post text will go here.&nbsp;CSS post text will go here.&nbsp;CSS post text will go here.&nbsp;CSS post text will go here.&nbsp;</p>', 'upload/4cdc78b33d.png', 'Zaman', 'CSS, Css, CSS3, Css3, Css3 Learning', '2018-12-29 19:52:01', 1),
(23, 1, 'HTML post title here', '<p>HTML text will go here.&nbsp;HTML text will go here.&nbsp;HTML text will go here.&nbsp;HTML text will go here.&nbsp;HTML text will go here.&nbsp;HTML text will go here.&nbsp;HTML text will go here.&nbsp;HTML text will go here.&nbsp;HTML text will go here.&nbsp;HTML text will go here.&nbsp;HTML text will go here.&nbsp;HTML text will go here.&nbsp;HTML text will go here.&nbsp;HTML text will go here.&nbsp;HTML text will go here.&nbsp;HTML text will go here.&nbsp;HTML text will go here.&nbsp;HTML text will go here.&nbsp;HTML text will go here.&nbsp;HTML text will go here.&nbsp;</p>\r\n<p>HTML text will go here.&nbsp;HTML text will go here.&nbsp;HTML text will go here.&nbsp;HTML text will go here.&nbsp;HTML text will go here.&nbsp;HTML text will go here.&nbsp;HTML text will go here.&nbsp;HTML text will go here.&nbsp;HTML text will go here.&nbsp;HTML text will go here.&nbsp;HTML text will go here.&nbsp;HTML text will go here.&nbsp;HTML text will go here.&nbsp;HTML text will go here.&nbsp;HTML text will go here.&nbsp;HTML text will go here.&nbsp;HTML text will go here.&nbsp;HTML text will go here.&nbsp;HTML text will go here.&nbsp;HTML text will go here.&nbsp;</p>\r\n<p>HTML text will go here.&nbsp;HTML text will go here.&nbsp;HTML text will go here.&nbsp;HTML text will go here.&nbsp;HTML text will go here.&nbsp;HTML text will go here.&nbsp;HTML text will go here.&nbsp;HTML text will go here.&nbsp;HTML text will go here.&nbsp;HTML text will go here.&nbsp;HTML text will go here.&nbsp;HTML text will go here.&nbsp;HTML text will go here.&nbsp;HTML text will go here.&nbsp;HTML text will go here.&nbsp;HTML text will go here.&nbsp;HTML text will go here.&nbsp;HTML text will go here.&nbsp;HTML text will go here.&nbsp;HTML text will go here.&nbsp;</p>', 'upload/7104fe26bd.jpg', 'EditorZaman', 'HTML, Html, HTML5, Html5, Html Learning', '2018-12-30 03:57:40', 3),
(24, 3, 'JavaScript Learning', '<p>JavaScript text will go here.&nbsp;JavaScript text will go here.&nbsp;JavaScript text will go here.&nbsp;JavaScript text will go here.&nbsp;JavaScript text will go here.&nbsp;JavaScript text will go here.&nbsp;JavaScript text will go here.&nbsp;JavaScript text will go here.&nbsp;JavaScript text will go here.&nbsp;JavaScript text will go here.&nbsp;JavaScript text will go here.&nbsp;JavaScript text will go here.&nbsp;JavaScript text will go here.&nbsp;JavaScript text will go here.&nbsp;JavaScript text will go here.&nbsp;JavaScript text will go here.&nbsp;</p>\r\n<p>JavaScript text will go here.&nbsp;JavaScript text will go here.&nbsp;JavaScript text will go here.&nbsp;JavaScript text will go here.&nbsp;JavaScript text will go here.&nbsp;JavaScript text will go here.&nbsp;JavaScript text will go here.&nbsp;JavaScript text will go here.&nbsp;JavaScript text will go here.&nbsp;JavaScript text will go here.&nbsp;JavaScript text will go here.&nbsp;JavaScript text will go here.&nbsp;JavaScript text will go here.&nbsp;JavaScript text will go here.&nbsp;JavaScript text will go here.&nbsp;JavaScript text will go here.&nbsp;</p>\r\n<p>JavaScript text will go here.&nbsp;JavaScript text will go here.&nbsp;JavaScript text will go here.&nbsp;JavaScript text will go here.&nbsp;JavaScript text will go here.&nbsp;JavaScript text will go here.&nbsp;JavaScript text will go here.&nbsp;JavaScript text will go here.&nbsp;JavaScript text will go here.&nbsp;JavaScript text will go here.&nbsp;JavaScript text will go here.&nbsp;JavaScript text will go here.&nbsp;JavaScript text will go here.&nbsp;JavaScript text will go here.&nbsp;JavaScript text will go here.&nbsp;JavaScript text will go here.&nbsp;</p>\r\n<p>JavaScript text will go here.&nbsp;JavaScript text will go here.&nbsp;JavaScript text will go here.&nbsp;JavaScript text will go here.&nbsp;JavaScript text will go here.&nbsp;JavaScript text will go here.&nbsp;JavaScript text will go here.&nbsp;JavaScript text will go here.&nbsp;JavaScript text will go here.&nbsp;JavaScript text will go here.&nbsp;JavaScript text will go here.&nbsp;JavaScript text will go here.&nbsp;JavaScript text will go here.&nbsp;JavaScript text will go here.&nbsp;JavaScript text will go here.&nbsp;JavaScript text will go here.&nbsp;</p>', 'upload/349df8fed2.jpeg', 'Author', 'JavaScript', '2019-01-01 13:25:04', 2),
(25, 5, 'PHP Learning', '<p>PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;</p>\r\n<p>PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;</p>\r\n<p>PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;</p>\r\n<p>PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;PHP Test will go here.&nbsp;</p>', 'upload/94d9d64fb4.png', 'Syed Zaman Mostafiz', 'PHP', '2019-01-01 13:30:02', 0),
(28, 6, 'Laravel', '<p>Laravel post will go here</p>', 'upload/29c6c51ebc.png', 'Editor', 'Laravel', '2019-01-02 07:24:38', 0),
(29, 1, 'HTML post title here', '<p>ddsfds</p>', 'upload/06751e8223.png', 'EditorZaman', 'HTML, Html, HTML5, Html5, Html Learning', '2019-01-02 07:49:42', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `title`, `image`) VALUES
(9, 'First Slider will be go here', 'upload/slider/582a1c2fb7.jpg'),
(10, 'Second Slider will be go here', 'upload/slider/2894698162.jpg'),
(11, 'Third Slider will be go here', 'upload/slider/cbcc0cf9d8.jpg'),
(12, 'Fourth Slider will be go here', 'upload/slider/9e0a283090.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social`
--

CREATE TABLE `tbl_social` (
  `id` int(11) NOT NULL,
  `fb` varchar(255) NOT NULL,
  `tw` varchar(255) NOT NULL,
  `ln` varchar(255) NOT NULL,
  `gp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_social`
--

INSERT INTO `tbl_social` (`id`, `fb`, `tw`, `ln`, `gp`) VALUES
(1, 'https://web.facebook.com/ZamanFullStackWebDeveloper', 'https://twitter.com/zamanwebdevelo1', 'https://www.linkedin.com/in/syed-zaman-5b0a95178/', 'https://plus.google.com/110246944251376232963');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_theme`
--

CREATE TABLE `tbl_theme` (
  `id` int(11) NOT NULL,
  `theme` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_theme`
--

INSERT INTO `tbl_theme` (`id`, `theme`) VALUES
(1, 'green');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name`, `username`, `password`, `email`, `details`, `role`) VALUES
(1, 'Syed Zaman Mostafiz', 'ZamanWebDeveloper', 'bb64bf8b36f0d75224da0db3e2b81dbd', 'zamanwebdeveloper@gmail.com', '<p>Hey! I am Syed Zaman Mostafiz from Bangladesh.</p>', 0),
(4, '', 'zamancsediue44', 'ac02cafa03cf522264a271c35053418f', 'zamancsediue44@gmail.com', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `title_slogan`
--

CREATE TABLE `title_slogan` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slogan` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `title_slogan`
--

INSERT INTO `title_slogan` (`id`, `title`, `slogan`, `logo`) VALUES
(1, 'Zaman Web Developer', 'I Learned HTML. CSS, JavaScript, Bootstrap, PHP, Object Oriented PHP, Database, Laravel of PHP Framework', 'upload/logo.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_theme`
--
ALTER TABLE `tbl_theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `title_slogan`
--
ALTER TABLE `title_slogan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_theme`
--
ALTER TABLE `tbl_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `title_slogan`
--
ALTER TABLE `title_slogan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
