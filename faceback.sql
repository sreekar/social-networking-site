

-- --------------------------------------------------------

--
-- Table structure for table `year`
--


--
-- Host: localhost
-- Generation Time: Apr 28, 2014 at 01:57 PM
-- Server version: 5.5.25a
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `faceback`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--

CREATE TABLE IF NOT EXISTS `admin_info` (
  `Username` varchar(200) NOT NULL,
  `Password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_info`
--

INSERT INTO `admin_info` (`Username`, `Password`) VALUES
('e11543f2bca901ba1eb5836f36fd73e6', '8f84f98771ffd568b6e26c27ab83a4d3');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `feedback_id` int(7) NOT NULL AUTO_INCREMENT,
  `user_id` int(7) NOT NULL,
  `feedback_txt` varchar(120) NOT NULL,
  `star` varchar(1) NOT NULL,
  `Date` varchar(30) NOT NULL,
  PRIMARY KEY (`feedback_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `user_id`, `feedback_txt`, `star`, `Date`) VALUES
(1, 18, 'i think that the faceback was awesome.', '5', '20-9-2013 16:51'),
(2, 8, 'Thanks Rohan', '5', '30-9-2013 11:34');

-- --------------------------------------------------------

--
-- Table structure for table `group_chat`
--

CREATE TABLE IF NOT EXISTS `group_chat` (
  `chat_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(7) NOT NULL,
  `chat_txt` text NOT NULL,
  `time` varchar(30) NOT NULL,
  PRIMARY KEY (`chat_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `group_chat`
--

INSERT INTO `group_chat` (`chat_id`, `user_id`, `chat_txt`, `time`) VALUES
(1, 8, 'Hello Friends How are you ? ', '30-9-2013 11:35'),
(2, 18, 'i am fine you ?', '30-9-2013 11:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(7) NOT NULL AUTO_INCREMENT,
  `Name` varchar(25) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `Birthday_Date` varchar(11) NOT NULL,
  `FB_Join_Date` varchar(30) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1000 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `Name`, `Email`, `Password`, `Gender`, `Birthday_Date`, `FB_Join_Date`) VALUES
(8, 'Amit Dodiya', 'amit.ad1i4@yahoo.com', 'myfaceback', 'Male', '14-1-1994', '18-9-2013 22:10'),
(10, 'ronit patel', 'ronitpatel22@yahoo.com', '123456789', 'Male', '24-5-1994', '20-9-2013 15:39'),
(12, 'vadher vivek', 'vadher.viv@gmail.com', '123456789', 'Male', '17-3-1993', '20-9-2013 15:52'),
(13, 'umesh bavariya', 'umeshbavariya2020@yahoo.in', '@)@)@)', 'Male', '8-10-1993', '20-9-2013 15:59'),
(14, 'ashwin rathod', 'rathodashwin7894@gmail.com', '789478', 'Male', '1-11-1993', '20-9-2013 16:5'),
(16, 'subhash gohel', 'subhash.gohel@gmail.com', 'abcdef', 'Male', '1-9-1993', '20-9-2013 16:22'),
(18, 'Rohan Vora', 'vrrohan143@gmail.com', '123456', 'Male', '20-6-1994', '20-9-2013 16:42'),
(19, 'nitin chauhan', 'chauhannitin255@yahoo.com', '123456', 'Male', '1-7-1993', '20-9-2013 16:53'),
(20, 'Piyush Zora', 'Piyushzora@yahoo.com', '123456', 'Male', '17-8-1993', '20-9-2013 19:57'),
(21, 'Kishan Ranpara', 'Kishan113@yahoo.com', 'kishan', 'Male', '17-10-1992', '20-9-2013 20:24'),
(22, 'Himanshu Parmar', 'Parmarh@yahoo.com', 'parmar', 'Male', '16-4-1991', '20-9-2013 20:28'),
(23, 'Akshay Ranpara', 'Akshay222@yahoo.com', 'akhi123', 'Male', '13-6-1994', '20-9-2013 20:36'),
(24, 'Abhishek Mandaliya', 'Abhi166@yahoo.com', '007007', 'Male', '14-7-1992', '20-9-2013 20:42');

-- --------------------------------------------------------

--
-- Table structure for table `users_notice`
--

CREATE TABLE IF NOT EXISTS `users_notice` (
  `notice_id` int(7) NOT NULL AUTO_INCREMENT,
  `user_id` int(7) NOT NULL,
  `notice_txt` varchar(120) NOT NULL,
  `notice_time` varchar(30) NOT NULL,
  PRIMARY KEY (`notice_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_cover_pic`
--

CREATE TABLE IF NOT EXISTS `user_cover_pic` (
  `cover_id` int(7) NOT NULL AUTO_INCREMENT,
  `user_id` int(7) NOT NULL,
  `image` varchar(150) NOT NULL,
  PRIMARY KEY (`cover_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1000;

--
-- Dumping data for table `user_cover_pic`
--

INSERT INTO `user_cover_pic` (`cover_id`, `user_id`, `image`) VALUES
(7, 8, '999584_496501817111249_1587007043_n.jpg'),
(8, 10, 'MazeLock_background_f.jpg'),
(10, 12, 'Love-300x300.jpg'),
(11, 13, 'images_q=tbn_ANd9GcT5VYRlQlm8W1YuU-zhKr3DThH2klFBNR70LCLxDPjRoX7tyDRKIbT2084.jpg'),
(12, 14, 'Hydrangeas.jpg'),
(14, 16, 'MazeLock_background_f.jpg'),
(16, 18, 'Chrysanthemum.jpg'),
(17, 19, 'Penguins.jpg'),
(18, 20, '1185181_634381446583053_275074332_n.jpg'),
(19, 21, 'images (3).jpg'),
(20, 22, 'beautiful_nature_landscape_01_hd_pictures_166207.jpg'),
(21, 23, '1239652_4732359646434_1188096315_n.jpg'),
(22, 24, 'Sunset_2007-1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE IF NOT EXISTS `user_info` (
  `user_id` int(7) NOT NULL,
  `job` varchar(100) NOT NULL,
  `school_or_collage` varchar(100) NOT NULL,
  `current_city` varchar(100) NOT NULL,
  `hometown` varchar(100) NOT NULL,
  `relationship_status` varchar(30) NOT NULL,
  `mobile_no` varchar(15) NOT NULL,
  `mobile_no_priority` varchar(10) NOT NULL,
  `website` varchar(100) NOT NULL,
  `Facebook_ID` varchar(100) NOT NULL,
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `job`, `school_or_collage`, `current_city`, `hometown`, `relationship_status`, `mobile_no`, `mobile_no_priority`, `website`, `Facebook_ID`) VALUES
(8, '', 'vccm', 'Rajkot', 'Rajkot', 'Single', '7600898210', 'Public', 'www.wix.com/amitad1i4/amit', 'www.facebook.com/Amit.000002'),
(10, '', 'murlidhar', 'rajkot', 'mumbai', 'In a relationship', '7383241939', 'Public', '', ''),
(12, '', 'vivekanand college', 'rajkot', '', '', '', '', '', ''),
(13, 'nirama college', 'vccm', 'rajkot', 'rajkot', '', '8460087700', 'Public', 'www.efitness.com', 'umeshbavariya2020@yahoo.in'),
(14, 'nirama college', 'vccm', 'rajkot', 'rajkot', '', '8866669285', 'Public', 'www.galaxy*cinema.com', ''),
(16, 'self employ at DISK JOCKEY', 'L.B.S.', 'RAJKOT', 'RAJKOT', 'Its complicated', '9737900032', 'Public', 'WWW.DJSBH.COM', 'DJSBH@FACEBOOK.COM'),
(18, 'student', 'vccm', 'Rajkot', 'Rajkot', 'Single', '9427160998', 'Public', 'www.matchmakers.com', ''),
(19, '', 'vccm', 'rajkot', 'Rajkot', 'In a relationship', '9727560453', 'Private', '', ''),
(20, '', 'vccm', 'Rajkot', 'Junagadh', 'In a relationship', '', 'Private', '', ''),
(21, '', 'vccm', 'Rajkot', 'Rajkot', 'Its complicated', '', '', '', ''),
(22, '', 'vccm', 'Rajkot', 'Rajkot', 'Single', '', '', '', ''),
(23, '', 'vccm', 'Rajkot', 'Rajkot', 'Single', '', '', '', ''),
(24, '', 'vccm', 'Rajkot', 'Rajkot', 'Single', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_post`
--

CREATE TABLE IF NOT EXISTS `user_post` (
  `post_id` int(7) NOT NULL AUTO_INCREMENT,
  `user_id` int(7) NOT NULL,
  `post_txt` text NOT NULL,
  `post_pic` varchar(150) NOT NULL,
  `post_time` varchar(30) NOT NULL,
  `priority` varchar(8) NOT NULL,
  PRIMARY KEY (`post_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=81 ;

--
-- Dumping data for table `user_post`
--

INSERT INTO `user_post` (`post_id`, `user_id`, `post_txt`, `post_pic`, `post_time`, `priority`) VALUES
(46, 8, 'Join Faceback', '', '18-9-2013 22:10', 'Public'),
(47, 10, 'Join Faceback', '', '20-9-2013 15:39', 'Public'),
(50, 12, 'Join Faceback', '', '20-9-2013 15:52', 'Public'),
(51, 13, 'Join Faceback', '', '20-9-2013 15:59', 'Public'),
(53, 14, 'Join Faceback', '', '20-9-2013 16:5', 'Public'),
(54, 14, 'hi friends........', '', '20-9-2013 16:9', 'Public'),
(57, 16, 'Join Faceback', '', '20-9-2013 16:22', 'Public'),
(58, 16, 'contact me for any tyoe of events...', '', '20-9-2013 16:26', 'Public'),
(61, 18, 'Join Faceback', '', '20-9-2013 16:42', 'Public'),
(63, 18, 'yahoo...', '', '20-9-2013 16:50', 'Public'),
(64, 19, 'Join Faceback', '', '20-9-2013 16:53', 'Public'),
(65, 20, 'Join Faceback', '', '20-9-2013 19:57', 'Public'),
(66, 20, 'added a new photo.', '918980893960-1375891337.jpg', '20-9-2013 20:8', 'Public'),
(67, 8, 'Good Knight Enjoy Faceback...!!!', '', '20-9-2013 20:20', 'Public'),
(68, 21, 'Join Faceback', '', '20-9-2013 20:24', 'Public'),
(69, 21, 'Wah..!! new Faceback', '', '20-9-2013 20:25', 'Public'),
(70, 22, 'Join Faceback', '', '20-9-2013 20:28', 'Public'),
(71, 23, 'Join Faceback', '', '20-9-2013 20:36', 'Public'),
(72, 24, 'Join Faceback', '', '20-9-2013 20:42', 'Public'),
(73, 8, 'Good Morning..!!!', '', '21-9-2013 9:15', 'Public'),
(79, 8, 'Welcome To My Faceback ', '2379IMG_20131218_144234.jpg', '28-4-2014 17:22', 'Public'),
(80, 8, 'How are you All ??', '', '28-4-2014 17:23', 'Public');

-- --------------------------------------------------------

--
-- Table structure for table `user_post_comment`
--

CREATE TABLE IF NOT EXISTS `user_post_comment` (
  `comment_id` int(7) NOT NULL AUTO_INCREMENT,
  `post_id` int(7) NOT NULL,
  `user_id` int(7) NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `user_id` (`user_id`),
  KEY `post_id` (`post_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user_post_comment`
--

INSERT INTO `user_post_comment` (`comment_id`, `post_id`, `user_id`, `comment`) VALUES
(1, 66, 13, 'VCCM Team won the Match....');

-- --------------------------------------------------------

--
-- Table structure for table `user_post_status`
--

CREATE TABLE IF NOT EXISTS `user_post_status` (
  `status_id` int(7) NOT NULL AUTO_INCREMENT,
  `post_id` int(7) NOT NULL,
  `user_id` int(7) NOT NULL,
  `status` varchar(7) NOT NULL,
  PRIMARY KEY (`status_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1000;

--
-- Dumping data for table `user_post_status`
--

INSERT INTO `user_post_status` (`status_id`, `post_id`, `user_id`, `status`) VALUES
(4, 48, 12, 'Like'),
(6, 54, 14, 'Like'),
(8, 58, 16, 'Like'),
(11, 66, 20, 'Like'),
(12, 46, 13, 'Like'),
(13, 61, 13, 'Like'),
(14, 66, 13, 'Like'),
(15, 65, 13, 'Like'),
(16, 63, 13, 'Like'),
(17, 59, 13, 'Like'),
(18, 47, 13, 'Like'),
(19, 46, 18, 'Like'),
(20, 67, 19, 'Like'),
(21, 46, 19, 'Like'),
(22, 67, 23, 'Like'),
(23, 66, 23, 'Like'),
(24, 47, 23, 'Like'),
(25, 46, 23, 'Like'),
(26, 67, 24, 'Like'),
(27, 46, 24, 'Like'),
(28, 66, 24, 'Like');

-- --------------------------------------------------------

--
-- Table structure for table `user_profile_pic`
--

CREATE TABLE IF NOT EXISTS `user_profile_pic` (
  `profile_id` int(7) NOT NULL AUTO_INCREMENT,
  `user_id` int(7) NOT NULL,
  `image` varchar(150) NOT NULL,
  PRIMARY KEY (`profile_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1000 ;

--
-- Dumping data for table `user_profile_pic`
--

INSERT INTO `user_profile_pic` (`profile_id`, `user_id`, `image`) VALUES
(6, 8, 'my.jpg'),
(7, 10, '917383241939.jpg'),
(9, 12, '919913938777-1376018120.jpg'),
(10, 13, 'umesh.jpg'),
(11, 14, 'Love-300x300.jpg'),
(13, 16, '918866236632.jpg'),
(15, 18, '919427160998.jpg'),
(16, 19, '919727560453.jpg'),
(17, 20, '917878871443.jpg'),
(18, 21, '917405481093.jpg'),
(19, 22, '919558480078.jpg'),
(20, 23, '918866031922.jpg'),
(21, 24, '918866210061.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_secret_quotes`
--

CREATE TABLE IF NOT EXISTS `user_secret_quotes` (
  `user_id` int(7) NOT NULL,
  `Question1` varchar(50) NOT NULL,
  `Answer1` varchar(20) NOT NULL,
  `Question2` varchar(50) NOT NULL,
  `Answer2` varchar(20) NOT NULL,
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_secret_quotes`
--

INSERT INTO `user_secret_quotes` (`user_id`, `Question1`, `Answer1`, `Question2`, `Answer2`) VALUES
(8, 'what is the first name of your oldest nephew?', 'OneRaj', 'who is your all-time favorite movie character?', 'Amir Khan'),
(10, 'what is your oldest childs nickname?', 'rony', 'what is the name of your favorite book?', 'java'),
(12, 'what is your oldest childs nickname?', 'lali', 'what was the make of your fist car?', 'BMW car'),
(13, 'what is your oldest childs nickname?', 'omis', 'what is the name of your favorite book?', 'General Knowlege'),
(14, 'what is your youngest childs nickname?', 'ajay', 'what was the make of your first motorcycle?', 'hardly devidson'),
(16, 'what is the first name of your favorite uncle?', 'mama', 'what was your favorite food as a child?', 'pizza'),
(18, 'what is your oldest childs nickname?', 'ronnie', 'what is the name of your favorite sports team?', 'barcelona'),
(19, 'what is your youngest childs nickname?', 'abcd', 'what was your favorite food as a child?', 'xyzs'),
(20, 'what is your youngest childs nickname?', 'pilu', 'what is the name of your favorite sports team?', 'india'),
(21, 'what is your oldest childs nickname?', 'gilo', 'what is the name of your favorite sports team?', 'india'),
(22, 'what is your oldest childs nickname?', 'sibu', 'what was your favorite food as a child?', 'pizza'),
(23, 'what is your youngest childs nickname?', 'akhi', 'what is the name of your favorite book?', 'java'),
(24, 'what is your youngest childs nickname?', 'abhi', 'what was your favorite food as a child?', 'pizza');

-- --------------------------------------------------------

--
-- Table structure for table `user_status`
--

CREATE TABLE IF NOT EXISTS `user_status` (
  `user_id` int(7) NOT NULL,
  `status` varchar(8) NOT NULL,
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_status`
--

INSERT INTO `user_status` (`user_id`, `status`) VALUES
(8, 'Offline'),
(10, 'Offline'),
(12, 'Offline'),
(13, 'Offline'),
(14, 'Offline'),
(16, 'Offline'),
(18, 'Offline'),
(19, 'Offline'),
(20, 'Offline'),
(21, 'Offline'),
(22, 'Offline'),
(23, 'Offline'),
(24, 'Offline');

-- --------------------------------------------------------

--
-- Table structure for table `user_warning`
--

CREATE TABLE IF NOT EXISTS `user_warning` (
  `user_id` int(7) NOT NULL,
  `warning_txt` varchar(200) NOT NULL,
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;













ALTER TABLE `group_chat`
  ADD CONSTRAINT `group_chat_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `users_notice`
--
ALTER TABLE `users_notice`
  ADD CONSTRAINT `users_notice_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_cover_pic`
--
ALTER TABLE `user_cover_pic`
  ADD CONSTRAINT `user_cover_pic_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_info`
--
ALTER TABLE `user_info`
  ADD CONSTRAINT `user_info_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_post`
--
ALTER TABLE `user_post`
  ADD CONSTRAINT `user_post_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_post_comment`
--
ALTER TABLE `user_post_comment`
  ADD CONSTRAINT `user_post_comment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_post_comment_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `user_post` (`post_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_post_status`
--
ALTER TABLE `user_post_status`
  ADD CONSTRAINT `user_post_status_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_post_status_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user_post` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_profile_pic`
--
ALTER TABLE `user_profile_pic`
  ADD CONSTRAINT `user_profile_pic_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_secret_quotes`
--
ALTER TABLE `user_secret_quotes`
  ADD CONSTRAINT `user_secret_quotes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_status`
--
ALTER TABLE `user_status`
  ADD CONSTRAINT `user_status_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_status_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_warning`
--
ALTER TABLE `user_warning`
  ADD CONSTRAINT `user_warning_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
