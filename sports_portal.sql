-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2017 at 09:31 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sports_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `delegate_reg`
--

CREATE TABLE IF NOT EXISTS `delegate_reg` (
`Del_num` int(10) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `Reg_num` varchar(30) DEFAULT NULL,
  `College` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `Gender` text NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=131 ;

--
-- Dumping data for table `delegate_reg`
--

INSERT INTO `delegate_reg` (`Del_num`, `Name`, `Reg_num`, `College`, `Email`, `Phone`, `Gender`, `time_stamp`) VALUES
(5, 'utkarsh', '150905112', 'mit', 'abc@gmail.com', '2147483647', 'female', '0000-00-00 00:00:00'),
(6, 'Utkarsh', '150905112', 'MIT', 'abcd@gmail.com', '2147483647', 'female', '0000-00-00 00:00:00'),
(7, 'Utkarsh', '150905112', 'MIT', 'abcd@gmail.com', '2147483647', 'female', '0000-00-00 00:00:00'),
(8, 'utkarshq', '150905112', 'mit', 'abcd@gmail.com', '123456789098765', 'female', '0000-00-00 00:00:00'),
(9, 'jh', '7896', 'uiy', '876', '765', '', '0000-00-00 00:00:00'),
(10, 'utkarsh', '7896', 'mit', 'abc@gmail.com', '1234567', 'female', '0000-00-00 00:00:00'),
(11, 'utkarsh', '1589767', 'abc', 'fh', '9876543210', 'male', '0000-00-00 00:00:00'),
(12, 'utkarsh', '1589767', 'abc', 'fhjhg', '9876543210', 'male', '0000-00-00 00:00:00'),
(13, 'iouy', '789695', ';ui', '876@gmail.com', '765', 'female', '0000-00-00 00:00:00'),
(14, 'Suvigya', '1509055678', 'MIT.jks', 'suvigya1st@gamil.com', '916745367543', 'male', '0000-00-00 00:00:00'),
(15, 'Suvigya', '1509055678', 'MIT.jks', 'suvigya1st@gamil.com', '916745367543', 'male', '0000-00-00 00:00:00'),
(16, 'Suvigya', '1509055678', 'MIT.jks', 'suvigya1st@gamil.com', '916745367543', 'male', '2017-02-01 19:48:35'),
(17, 'Suvigya', '1509055678', 'MIT.jks', 'suvigya1st@gamil.com', '3456', 'male', '2017-02-01 19:52:12'),
(18, 'Utkarsh', '150905112', 'hgf', 'gkc@jhkg.com', '876453', 'male', '2017-02-01 23:55:14'),
(19, 'Utkarsh', '15yugfUY', 'hgf', 'gkc@jhkg.com', '876453', 'male', '2017-02-02 00:26:16'),
(20, 'Utkarsh''', '15yugfUY', 'hgf', 'gkc@jhkg.com', '876453', 'male', '2017-02-02 00:26:50'),
(21, 'Utkarsh''.', '15yugfUY', 'hgf', 'gkc@jhkg.com', '876453', 'male', '2017-02-02 00:26:55'),
(100, 'U. Agarwals''', '150905112tuv', 'M .i. T''s', 'uhgv@jhg.com', '919648055344', 'Male', '2017-02-02 00:33:07'),
(101, 'kjh', 'jhkg', 'iugy', 'uhgv@jhg.com', '7896', 'male', '2017-02-03 17:49:09'),
(102, 'kjh', 'jhkg', 'iugy', 'uhgv@jhg.com', '7896', 'male', '2017-02-03 17:50:11'),
(103, 'gfd', '5678', 'jfg', 'wefr@gmail.com', '89765', '', '2017-02-03 17:50:44'),
(104, 'gfd', '5678', 'jfg', 'wefr@gmail.com', '89765', '', '2017-02-03 17:50:54'),
(105, 'gyu', 'yhuji', 'ghk', 'gkc@jhkg.com', '76890', 'male', '2017-02-03 17:51:26'),
(106, 'uyfdgs', '4567yujhk', 'fghbn', 'ytfgjh@fghg.com', '786543', 'female', '2017-02-03 17:53:42'),
(107, 'uyfdgs', '4567yujhk', 'fghbn', 'ytfgjh@fghg.com', '786543', 'female', '2017-02-03 17:53:55'),
(108, 'uyfdgs', '4567yujhk', 'fghbn', 'ytfgjh@fghg.com', '786543', 'female', '2017-02-03 17:54:12'),
(109, 'gjhk', 'yu', 'gj', 'gkc@jhkg.com', '34556', 'male', '2017-02-03 17:54:26'),
(110, 'hkugyjh', '7685ty', 'yuythg', 'gkc@jhkg.com', '7687765437', 'male', '2017-02-03 17:57:09'),
(111, 'jh', 'jh', 'uy', 'ytfgjh@fghg.com', '981908240', 'male', '2017-02-03 17:59:00'),
(112, 'yugf', 'gyf', 'uhg', 'gkc@jhkg.com', '123456789', 'male', '2017-02-03 18:03:26'),
(113, 'yugf', 'gyf', 'uhg', 'gkc@jhkg.com', '123456789', 'male', '2017-02-03 18:03:32'),
(114, 'yugf', 'gyf', 'uhg', 'gkc@jhkg.com', '12345678910', 'male', '2017-02-03 18:03:37'),
(115, 'yugf', 'gyf', 'uhg', 'gkc@jhkg.com', '123456789', 'male', '2017-02-03 18:03:52'),
(116, 'yugf', 'gyf', 'uhg', 'gkc@jhkg.com', '123456789', 'male', '2017-02-03 18:04:16'),
(117, 'yugf', 'gyf', 'uhg', 'gkc@jhkg.com', '123456789', 'male', '2017-02-03 18:04:32'),
(118, 'h', 'jh', 'j', 'gkc@jhkg.com', '1234567890', 'male', '2017-02-03 18:05:34'),
(119, 'h', 'jh', 'j', 'gkc@jhkg.com', '1234567890', 'male', '2017-02-03 18:05:44'),
(120, 'jh', 'kj', 'j', 'gkc@jhkg.com', '1234567890', 'male', '2017-02-03 18:06:24'),
(121, 'jh', 'kj', 'j', 'gkc@jhkg.com', '12345678901234', 'male', '2017-02-03 18:06:34'),
(122, 'jh', 'kj', 'j', 'gkc@jhkg.com', '123456789012345', 'male', '2017-02-03 18:06:38'),
(123, 'jh', 'kj', 'j', 'gkc@jhkg.com', '12345678901234', 'male', '2017-02-03 18:06:47'),
(124, 'jh', 'kj', 'j', 'gkc@jhkg.com', '919648055344', 'male', '2017-02-03 18:07:05'),
(125, 'jh', 'kj', 'j', 'gkc@jhkg.com', '1234567890', 'male', '2017-02-03 18:12:33'),
(126, 'Kshitij Khuarana''s', '12345678987654hg', 'icfxjhgvuhg', 'gkc@jhkg.com', '9876543210', 'male', '2017-02-03 18:14:56'),
(127, 'Kshitij Khuarana''s', '12345678987654hg', 'icfxjhgvuhg', 'gkc@jhkg.com', '9876543210', 'male', '2017-02-03 18:16:32'),
(128, 'Kshitij Khuarana''s', '12345678987654hg', 'icfxjhgv.''uhg', 'gkc@jhkg.com', '9876543210', 'male', '2017-02-03 18:16:37'),
(129, 'Kshitij Khuar.ana''s', '12345678987654hg', 'icfxjhgv.''uhg', 'gkc@jhkg.com', '9876543210', 'male', '2017-02-03 18:16:43'),
(130, 'utkarsh', '4567890', 'dnujc', 'knc@f.com', '7376543535', 'male', '2017-02-06 20:21:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `delegate_reg`
--
ALTER TABLE `delegate_reg`
 ADD PRIMARY KEY (`Del_num`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `delegate_reg`
--
ALTER TABLE `delegate_reg`
MODIFY `Del_num` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=131;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
