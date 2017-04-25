-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 20, 2017 at 02:03 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `team_performance`
--

-- --------------------------------------------------------

--
-- Table structure for table `match`
--

CREATE TABLE IF NOT EXISTS `match` (
  `match_id` int(11) NOT NULL AUTO_INCREMENT,
  `tour_id` int(11) NOT NULL,
  `match_time` datetime NOT NULL,
  `match_venue` text NOT NULL,
  `total_overs` float NOT NULL,
  `opponent` text NOT NULL,
  `opp_logo` text NOT NULL,
  `toss` enum('W','L') NOT NULL DEFAULT 'W' COMMENT 'W=Won,L=Lost',
  `elected_to` enum('BT','BL') NOT NULL DEFAULT 'BT' COMMENT 'BT=Bat,BL=Bowl',
  `runs_scored` int(11) NOT NULL,
  `overs_played` float NOT NULL,
  `wickets_lost` int(11) NOT NULL,
  `runs_conceded` int(11) NOT NULL,
  `overs_bowled` float NOT NULL,
  `wickets_taken` int(11) NOT NULL,
  `match_result` enum('W','L','T','NR') NOT NULL DEFAULT 'NR' COMMENT 'W=Won,L=Lost,T=Tied,NR=No Result',
  `man_of_match` int(11) NOT NULL,
  PRIMARY KEY (`match_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `match`
--

INSERT INTO `match` (`match_id`, `tour_id`, `match_time`, `match_venue`, `total_overs`, `opponent`, `opp_logo`, `toss`, `elected_to`, `runs_scored`, `overs_played`, `wickets_lost`, `runs_conceded`, `overs_bowled`, `wickets_taken`, `match_result`, `man_of_match`) VALUES
(1, 1, '2016-11-12 09:30:00', 'Kataria', 20, 'Sungard', 'Sungard_logo.jpg', 'W', 'BT', 153, 20, 7, 87, 13, 10, 'W', 1),
(2, 2, '2016-11-13 13:00:00', 'Deccan', 20, 'Maersk', 'Maersk_logo.jpg', 'W', 'BT', 194, 20, 5, 125, 19, 10, 'W', 1),
(3, 2, '2016-11-19 13:00:00', 'Nehru', 20, 'Tieto', 'Tieto_logo.jpg', 'W', 'BT', 181, 20, 6, 83, 18, 10, 'W', 2),
(4, 1, '2016-11-26 09:30:00', 'Kataria', 20, 'Sell2World', 'Sell2World_logo.jpg', 'L', 'BT', 187, 20, 5, 148, 20, 7, 'W', 3),
(5, 2, '2016-12-03 09:30:00', 'Deccan', 20, 'Johnson Control', 'JohnsonControl_logo.jpg', 'L', 'BL', 116, 9.4, 1, 115, 19.4, 10, 'W', 2),
(6, 3, '2016-12-04 09:30:00', 'Poona Club', 20, 'Veritas', 'Veritas_logo.jpg', 'L', 'BT', 174, 20, 6, 97, 20, 6, 'W', 5),
(7, 1, '2016-12-10 09:30:00', 'Poona Club', 20, 'Springer Nature', 'SpringerNature_logo.jpg', 'L', 'BL', 123, 17.2, 2, 122, 20, 9, 'W', 19),
(8, 1, '2016-12-17 09:30:00', 'Varroc', 20, 'Veritas', 'Veritas_logo.jpg', 'W', 'BL', 108, 15.1, 3, 103, 20, 9, 'W', 8),
(9, 3, '2016-12-18 13:00:00', 'Poona Club', 20, 'Jade', 'Jade_logo.jpg', 'W', 'BT', 218, 20, 5, 118, 20, 9, 'W', 3),
(10, 1, '2016-12-25 13:00:00', 'Poona Club', 20, 'Capgemini', 'Capgemini_logo.jpg', 'L', 'BL', 107, 12.4, 2, 103, 20, 8, 'W', 2),
(11, 1, '2016-12-31 13:00:00', 'Varroc', 20, 'Yardi', 'Yardi_logo.jpg', 'W', 'BT', 208, 20, 2, 174, 20, 4, 'W', 1),
(12, 3, '2017-01-01 13:00:00', 'Varroc', 20, 'Atos', 'Atos_logo.jpg', 'W', 'BT', 183, 20, 4, 166, 17.5, 10, 'W', 7),
(13, 1, '2017-01-07 13:00:00', 'D.Y.Patil', 20, 'Cognizant', 'Cognizant_logo.jpg', 'L', 'BL', 137, 16.1, 6, 135, 20, 5, 'W', 1),
(14, 4, '2017-01-22 09:30:00', 'Mulshi', 20, 'Hives Lab', 'HivesLab_logo.jpg', 'L', 'BL', 134, 18.4, 6, 132, 20, 7, 'W', 4),
(15, 3, '2017-01-28 13:00:00', 'Poona Club', 20, 'Cybage', 'Cybage_logo.jpg', 'W', 'BT', 148, 20, 8, 51, 10.5, 10, 'W', 2),
(16, 3, '2017-01-29 13:00:00', 'Poona Club', 20, 'Infosys', 'Infosys_logo.jpg', 'L', 'BL', 101, 17.2, 10, 173, 20, 3, 'L', 0),
(17, 4, '2017-02-05 13:00:00', 'Mulshi', 20, 'Pune CA', 'PuneCA_logo.jpg', 'W', 'BT', 177, 20, 4, 124, 20, 8, 'W', 6),
(18, 2, '2017-02-11 13:00:00', 'Nehru', 20, 'Amdocs', 'Amdocs_logo.jpg', 'W', 'BT', 180, 20, 4, 151, 19.1, 10, 'W', 5),
(19, 4, '2017-01-12 09:30:00', 'Mulshi', 20, 'Tranter', 'Tranter_logo.jpg', 'W', 'BT', 248, 20, 4, 61, 14.5, 10, 'W', 1),
(20, 2, '2017-02-18 13:00:00', 'Nehru', 20, 'Sungard', 'Sungard_logo.jpg', 'W', 'BT', 203, 20, 4, 175, 20, 4, 'W', 2),
(21, 4, '2017-01-25 09:30:00', 'Mulshi', 20, 'Pune CA', 'PuneCA_logo.jpg', 'L', 'BL', 123, 18.5, 5, 122, 20, 6, 'W', 6),
(22, 4, '2017-03-04 13:30:00', 'Mulshi', 20, 'ReGreen', 'ReGreen_logo.jpg', 'L', 'BT', 153, 20, 7, 123, 20, 8, 'W', 1),
(23, 4, '2017-03-05 09:30:00', 'Mulshi', 20, 'Aspire', 'Aspire_logo.jpg', 'W', 'BT', 178, 20, 6, 100, 15.5, 10, 'W', 1),
(24, 2, '2017-03-11 13:00:00', 'Neharu Stadium', 20, 'Cybage', 'Cybage_logo.jpg', 'W', 'BT', 175, 20, 7, 138, 18.3, 10, 'W', 1),
(25, 2, '2017-03-12 09:30:00', 'Neharu Stadium', 20, 'Infosys', 'Infosys_logo.jpg', 'W', 'BT', 160, 20, 3, 163, 18.5, 2, 'L', 0),
(26, 5, '2017-03-12 13:30:00', 'Flame University Ground', 20, 'Maersk', 'Maersk_logo.jpg', 'W', 'BT', 179, 20, 5, 156, 20, 5, 'W', 5);

-- --------------------------------------------------------

--
-- Table structure for table `match_info`
--

CREATE TABLE IF NOT EXISTS `match_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` int(11) NOT NULL,
  `match_id` int(11) NOT NULL,
  `innings_played` enum('Y','N') NOT NULL DEFAULT 'N' COMMENT 'Y=Played,N=Not Played',
  `runs_scored` int(11) NOT NULL,
  `balls_faced` int(11) NOT NULL,
  `not_out` enum('Y','N') NOT NULL DEFAULT 'Y' COMMENT '''Y''=Yes,''N''=No',
  `overs` float NOT NULL,
  `maidens` int(11) NOT NULL,
  `runs_given` int(11) NOT NULL,
  `wickets_taken` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=284 ;

--
-- Dumping data for table `match_info`
--

INSERT INTO `match_info` (`id`, `player_id`, `match_id`, `innings_played`, `runs_scored`, `balls_faced`, `not_out`, `overs`, `maidens`, `runs_given`, `wickets_taken`) VALUES
(1, 1, 1, 'Y', 44, 42, 'N', 4, 0, 15, 1),
(2, 1, 8, 'Y', 10, 8, 'N', 4, 0, 14, 0),
(3, 1, 10, 'Y', 32, 18, 'N', 4, 0, 20, 1),
(4, 1, 11, 'Y', 95, 54, 'N', 4, 0, 17, 1),
(5, 1, 13, 'Y', 29, 11, 'N', 4, 0, 22, 0),
(6, 2, 1, 'Y', 1, 4, 'N', 0, 0, 0, 0),
(7, 2, 4, 'Y', 18, 11, 'N', 4, 0, 21, 3),
(8, 2, 7, 'N', 0, 0, 'N', 4, 0, 19, 2),
(9, 2, 8, 'Y', 22, 20, 'N', 4, 0, 15, 2),
(10, 2, 10, 'Y', 53, 40, 'Y', 4, 0, 20, 2),
(11, 2, 11, 'Y', 86, 55, 'N', 4, 0, 49, 1),
(12, 2, 13, 'Y', 47, 31, 'N', 0.1, 0, 0, 0),
(13, 3, 1, 'Y', 17, 8, 'N', 0, 0, 0, 0),
(14, 3, 4, 'Y', 62, 47, 'N', 0, 0, 0, 0),
(15, 3, 7, 'Y', 5, 3, 'N', 0, 0, 0, 0),
(16, 3, 8, 'Y', 14, 10, 'N', 0, 0, 0, 0),
(17, 3, 10, 'Y', 5, 4, 'N', 0, 0, 0, 0),
(18, 3, 13, 'Y', 0, 9, 'N', 0, 0, 0, 0),
(19, 4, 1, 'Y', 10, 11, 'N', 2, 0, 8, 3),
(20, 4, 4, 'Y', 44, 29, 'Y', 2, 0, 7, 1),
(21, 4, 10, 'N', 0, 0, 'N', 0, 0, 0, 0),
(22, 4, 11, 'N', 0, 0, 'N', 0, 0, 0, 0),
(23, 4, 13, 'Y', 18, 15, 'Y', 3.5, 0, 21, 0),
(24, 5, 1, 'Y', 40, 32, 'N', 0, 0, 0, 0),
(25, 5, 4, 'Y', 1, 3, 'N', 0, 0, 0, 0),
(26, 5, 7, 'Y', 53, 50, 'Y', 0, 0, 0, 0),
(27, 5, 8, 'Y', 20, 37, 'Y', 0, 0, 0, 0),
(28, 5, 10, 'Y', 13, 14, 'Y', 0, 0, 0, 0),
(29, 5, 11, 'Y', 6, 5, 'Y', 0, 0, 0, 0),
(30, 5, 13, 'Y', 17, 23, 'N', 0, 0, 0, 0),
(31, 6, 1, 'Y', 21, 18, 'N', 0, 0, 0, 0),
(32, 6, 4, 'Y', 28, 20, 'Y', 0, 0, 0, 0),
(33, 6, 8, 'Y', 34, 16, 'N', 0, 0, 0, 0),
(34, 6, 10, 'N', 0, 0, 'Y', 0, 0, 0, 0),
(35, 6, 11, 'Y', 15, 7, 'N', 0, 0, 0, 0),
(36, 6, 13, 'Y', 1, 4, 'Y', 0, 0, 0, 0),
(37, 7, 1, 'Y', 1, 1, 'N', 2, 0, 18, 1),
(38, 7, 7, 'N', 0, 0, 'N', 4, 0, 18, 1),
(39, 7, 8, 'N', 0, 0, 'N', 4, 0, 31, 2),
(40, 7, 10, 'N', 0, 0, 'N', 3, 0, 17, 1),
(41, 7, 11, 'N', 0, 0, 'N', 2, 0, 36, 0),
(42, 7, 13, 'N', 0, 0, 'N', 4, 0, 24, 1),
(43, 8, 8, 'N', 0, 0, 'N', 4, 0, 16, 4),
(44, 8, 10, 'N', 0, 0, 'N', 2, 0, 13, 0),
(45, 8, 11, 'N', 0, 0, 'N', 4, 0, 18, 1),
(46, 8, 13, 'Y', 6, 4, 'Y', 4, 0, 31, 2),
(47, 9, 1, 'Y', 3, 1, 'N', 0, 0, 0, 0),
(48, 10, 1, 'N', 0, 0, 'N', 2.5, 0, 10, 2),
(49, 10, 4, 'N', 0, 0, 'N', 3, 0, 32, 1),
(50, 10, 7, 'N', 0, 0, 'N', 3, 0, 31, 0),
(51, 10, 8, 'N', 0, 0, 'N', 2, 0, 6, 0),
(52, 10, 10, 'N', 0, 0, 'N', 4, 0, 17, 2),
(53, 10, 11, 'N', 0, 0, 'N', 4, 0, 32, 0),
(54, 10, 13, 'N', 0, 0, 'N', 2, 0, 15, 0),
(55, 11, 1, 'Y', 1, 1, 'Y', 0, 0, 0, 0),
(56, 11, 10, 'N', 0, 0, 'N', 3, 0, 11, 0),
(57, 11, 11, 'N', 0, 0, 'N', 2, 0, 17, 1),
(58, 11, 13, 'N', 0, 0, 'N', 2, 0, 17, 0),
(59, 12, 10, 'Y', 0, 0, 'N', 0, 0, 0, 0),
(60, 12, 11, 'Y', 0, 0, 'N', 0, 0, 0, 0),
(61, 14, 1, 'N', 0, 0, 'N', 0, 0, 0, 0),
(62, 15, 4, 'N', 0, 0, 'N', 2, 0, 13, 0),
(63, 16, 7, 'Y', 38, 33, 'Y', 0, 0, 0, 0),
(64, 16, 8, 'Y', 0, 0, 'N', 0, 0, 0, 0),
(65, 17, 7, 'N', 0, 0, 'N', 3, 0, 18, 1),
(66, 18, 4, 'N', 0, 0, 'N', 4, 0, 28, 1),
(67, 18, 7, 'N', 0, 0, 'N', 3, 0, 11, 3),
(68, 18, 8, 'N', 0, 0, 'N', 1, 0, 7, 0),
(69, 19, 2, 'N', 0, 0, 'N', 2, 0, 19, 0),
(70, 20, 4, 'Y', 13, 9, 'N', 0, 0, 0, 0),
(71, 21, 4, 'Y', 1, 1, 'Y', 3, 0, 25, 0),
(72, 21, 7, 'N', 0, 0, 'N', 3, 0, 19, 1),
(73, 21, 8, 'N', 0, 0, 'N', 1, 0, 7, 0),
(74, 22, 7, 'N', 0, 0, 'N', 0, 0, 0, 0),
(75, 22, 11, 'N', 0, 0, 'N', 0, 0, 0, 0),
(76, 22, 13, 'Y', 1, 1, 'N', 0, 0, 0, 0),
(77, 23, 7, 'Y', 6, 19, 'N', 0, 0, 0, 0),
(78, 1, 2, 'Y', 76, 31, 'N', 1, 0, 2, 1),
(79, 1, 3, 'Y', 51, 31, 'N', 3, 0, 10, 2),
(80, 1, 18, 'Y', 47, 34, 'N', 4, 0, 34, 1),
(81, 1, 20, 'Y', 58, 36, 'N', 3, 0, 19, 0),
(82, 2, 3, 'Y', 51, 39, 'Y', 4, 1, 8, 6),
(83, 2, 5, 'Y', 59, 31, 'N', 4, 0, 18, 3),
(84, 2, 18, 'Y', 0, 1, 'N', 3, 0, 24, 2),
(85, 2, 20, 'Y', 47, 38, 'N', 4, 0, 20, 2),
(86, 3, 2, 'Y', 51, 34, 'N', 1, 0, 5, 0),
(87, 3, 3, 'Y', 12, 8, 'N', 0, 0, 0, 0),
(88, 3, 5, 'N', 0, 0, 'N', 0, 0, 0, 0),
(89, 3, 20, 'Y', 0, 0, 'Y', 0, 0, 0, 0),
(90, 4, 2, 'Y', 22, 19, 'Y', 1.4, 0, 8, 2),
(91, 4, 3, 'Y', 7, 10, 'N', 0, 0, 0, 0),
(92, 4, 18, 'Y', 21, 9, 'N', 3, 0, 31, 1),
(93, 4, 20, 'Y', 16, 9, 'N', 3, 0, 32, 1),
(94, 5, 2, 'N', 0, 0, 'N', 0, 0, 0, 0),
(95, 5, 3, 'Y', 42, 30, 'N', 0, 0, 0, 0),
(96, 5, 5, 'Y', 39, 27, 'Y', 0, 0, 0, 0),
(97, 5, 18, 'Y', 60, 47, 'Y', 0, 0, 0, 0),
(98, 5, 20, 'Y', 68, 35, 'N', 0, 0, 0, 0),
(99, 6, 2, 'Y', 0, 1, 'N', 2, 0, 19, 1),
(100, 6, 3, 'N', 0, 0, 'N', 2, 0, 5, 0),
(101, 6, 5, 'N', 0, 0, 'N', 0, 0, 0, 0),
(102, 6, 18, 'Y', 3, 3, 'Y', 0, 0, 0, 0),
(103, 6, 20, 'Y', 2, 1, 'Y', 0, 0, 0, 0),
(104, 7, 2, 'N', 0, 0, 'N', 2, 0, 14, 1),
(105, 7, 3, 'N', 0, 0, 'N', 3, 0, 20, 0),
(106, 7, 5, 'N', 0, 0, 'N', 3.4, 0, 20, 3),
(107, 7, 18, 'N', 0, 0, 'N', 1.1, 0, 16, 0),
(108, 7, 20, 'N', 0, 0, 'N', 3, 0, 31, 0),
(109, 8, 5, 'N', 0, 0, 'N', 4, 0, 19, 1),
(110, 8, 20, 'N', 0, 0, 'N', 4, 0, 37, 0),
(111, 9, 2, 'Y', 14, 17, 'N', 0, 0, 0, 0),
(112, 9, 18, 'N', 0, 0, 'N', 0, 0, 0, 0),
(113, 9, 20, 'N', 0, 0, 'N', 0, 0, 0, 0),
(114, 10, 3, 'N', 0, 0, 'N', 3.1, 1, 13, 1),
(115, 10, 5, 'N', 0, 0, 'N', 3, 0, 17, 1),
(116, 10, 18, 'N', 0, 0, 'N', 4, 0, 14, 2),
(117, 10, 20, 'N', 0, 0, 'N', 2, 0, 21, 0),
(118, 11, 2, 'Y', 2, 5, 'Y', 3, 1, 23, 0),
(119, 11, 3, 'N', 0, 0, 'N', 2, 1, 8, 0),
(120, 11, 5, 'N', 0, 0, 'N', 1, 0, 11, 0),
(121, 11, 18, 'N', 0, 0, 'N', 4, 0, 31, 1),
(122, 11, 20, 'N', 0, 0, 'N', 1, 0, 8, 0),
(123, 12, 2, 'Y', 21, 14, 'N', 1, 0, 10, 0),
(124, 12, 3, 'Y', 3, 3, 'N', 0, 0, 0, 0),
(125, 12, 18, 'N', 0, 0, 'N', 0, 0, 0, 0),
(126, 13, 18, 'Y', 35, 18, 'N', 0, 0, 0, 0),
(127, 14, 2, 'N', 0, 0, 'N', 2, 0, 16, 1),
(128, 15, 5, 'N', 0, 0, 'N', 2, 0, 13, 0),
(129, 22, 5, 'N', 0, 0, 'N', 2, 0, 10, 1),
(130, 23, 3, 'N', 0, 0, 'Y', 1, 0, 14, 0),
(131, 23, 5, 'N', 0, 0, 'N', 0, 0, 0, 0),
(132, 1, 9, 'Y', 13, 8, 'N', 0, 0, 0, 0),
(133, 1, 15, 'Y', 16, 8, 'N', 4, 0, 17, 2),
(134, 1, 16, 'Y', 26, 13, 'N', 4, 0, 26, 0),
(135, 2, 6, 'Y', 0, 1, 'N', 4, 0, 15, 2),
(136, 2, 9, 'Y', 57, 30, 'N', 4, 0, 17, 0),
(137, 2, 12, 'Y', 37, 25, 'N', 0, 0, 0, 0),
(138, 2, 15, 'Y', 45, 43, 'N', 1, 1, 0, 2),
(139, 2, 16, 'Y', 6, 2, 'N', 4, 0, 52, 0),
(140, 3, 6, 'Y', 26, 14, 'N', 0, 0, 0, 0),
(141, 3, 9, 'Y', 51, 33, 'N', 2, 1, 9, 5),
(142, 3, 12, 'Y', 27, 12, 'N', 0, 0, 0, 0),
(143, 3, 15, 'Y', 22, 9, 'Y', 0, 0, 0, 0),
(144, 3, 16, 'Y', 7, 4, 'N', 0, 0, 0, 0),
(145, 4, 12, 'Y', 48, 31, 'N', 3, 0, 29, 1),
(146, 4, 15, 'Y', 28, 24, 'N', 0, 0, 0, 0),
(147, 4, 16, 'Y', 16, 17, 'N', 3, 0, 12, 2),
(148, 5, 6, 'Y', 72, 52, 'Y', 0, 0, 0, 0),
(149, 5, 9, 'Y', 59, 34, 'Y', 0, 0, 0, 0),
(150, 5, 12, 'Y', 42, 29, 'Y', 0, 0, 0, 0),
(151, 5, 15, 'Y', 24, 25, 'N', 0, 0, 0, 0),
(152, 5, 16, 'Y', 26, 28, 'N', 0, 0, 0, 0),
(153, 6, 6, 'Y', 42, 28, 'N', 2, 0, 15, 1),
(154, 6, 9, 'Y', 2, 2, 'Y', 0, 0, 0, 0),
(155, 6, 12, 'Y', 20, 17, 'N', 3, 0, 24, 1),
(156, 6, 15, 'Y', 1, 2, 'N', 0, 0, 0, 0),
(157, 6, 16, 'Y', 2, 2, 'N', 0, 0, 0, 0),
(158, 7, 6, 'N', 0, 0, 'N', 4, 0, 24, 0),
(159, 7, 9, 'N', 0, 0, 'N', 3, 0, 38, 1),
(160, 7, 12, 'N', 0, 0, 'N', 3.5, 0, 24, 3),
(161, 7, 15, 'N', 0, 0, 'N', 4, 0, 18, 3),
(162, 7, 16, 'Y', 2, 11, 'Y', 4, 0, 35, 1),
(163, 8, 9, 'N', 0, 0, 'N', 3, 0, 22, 0),
(164, 8, 15, 'Y', 2, 3, 'N', 1, 0, 12, 0),
(165, 8, 16, 'Y', 2, 5, 'N', 1, 0, 15, 0),
(166, 10, 6, 'N', 0, 0, 'N', 4, 0, 19, 1),
(167, 10, 9, 'N', 0, 0, 'N', 4, 0, 17, 2),
(168, 10, 12, 'N', 0, 0, 'N', 4, 0, 31, 1),
(169, 10, 15, 'Y', 0, 1, 'N', 0.5, 0, 0, 2),
(170, 10, 16, 'Y', 1, 3, 'N', 4, 0, 30, 0),
(171, 11, 6, 'N', 0, 0, 'N', 2, 0, 11, 1),
(172, 11, 9, 'Y', 6, 3, 'Y', 3, 0, 12, 1),
(173, 11, 15, 'Y', 1, 1, 'Y', 0, 0, 0, 0),
(174, 11, 16, 'Y', 0, 3, 'Y', 0, 0, 0, 0),
(175, 12, 6, 'Y', 7, 4, 'N', 0, 0, 0, 0),
(176, 12, 9, 'Y', 13, 4, 'N', 0, 0, 0, 0),
(177, 14, 12, 'N', 0, 0, 'N', 1, 0, 19, 0),
(178, 16, 12, 'Y', 5, 6, 'N', 0, 0, 0, 0),
(179, 19, 12, 'N', 0, 0, 'N', 3, 0, 39, 1),
(180, 21, 12, 'N', 0, 0, 'N', 0, 0, 0, 0),
(181, 22, 6, 'Y', 3, 3, 'N', 4, 0, 12, 1),
(182, 23, 6, 'Y', 8, 10, 'N', 0, 0, 0, 0),
(183, 23, 15, 'Y', 0, 2, 'N', 0, 0, 0, 0),
(184, 23, 16, 'Y', 7, 13, 'N', 0, 0, 0, 0),
(185, 25, 9, 'Y', 3, 7, 'N', 0, 0, 0, 0),
(186, 27, 6, 'Y', 5, 8, 'N', 0, 0, 0, 0),
(187, 1, 19, 'Y', 148, 58, 'N', 0, 0, 0, 0),
(188, 2, 21, 'Y', 0, 1, 'N', 4, 0, 22, 0),
(189, 3, 14, 'Y', 15, 6, 'N', 0, 0, 0, 0),
(190, 3, 17, 'Y', 0, 1, 'N', 0, 0, 0, 0),
(191, 3, 21, 'Y', 13, 10, 'N', 0, 0, 0, 0),
(192, 4, 14, 'Y', 48, 36, 'Y', 2, 0, 16, 1),
(193, 4, 21, 'Y', 0, 4, 'N', 3, 0, 17, 1),
(194, 5, 14, 'Y', 41, 43, 'N', 0, 0, 0, 0),
(195, 5, 17, 'Y', 10, 10, 'Y', 0, 0, 0, 0),
(196, 5, 21, 'Y', 38, 38, 'N', 0, 0, 0, 0),
(197, 6, 14, 'Y', 0, 0, 'N', 4, 0, 23, 2),
(198, 6, 17, 'Y', 109, 60, 'Y', 2, 0, 12, 1),
(199, 6, 21, 'Y', 50, 45, 'Y', 0, 0, 0, 0),
(200, 8, 21, 'N', 0, 0, 'N', 4, 0, 29, 0),
(201, 9, 14, 'Y', 6, 7, 'N', 0, 0, 0, 0),
(202, 9, 17, 'Y', 45, 45, 'N', 0, 0, 0, 0),
(203, 9, 21, 'Y', 8, 5, 'N', 0, 0, 0, 0),
(204, 10, 21, 'N', 0, 0, 'N', 4, 0, 17, 4),
(205, 12, 17, 'Y', 0, 2, 'N', 0, 0, 0, 0),
(206, 12, 19, 'Y', 8, 7, 'N', 0.5, 0, 2, 1),
(207, 13, 17, 'Y', 0, 0, 'N', 0, 0, 0, 0),
(208, 13, 19, 'Y', 21, 14, 'N', 0, 0, 0, 0),
(209, 14, 14, 'N', 0, 0, 'N', 4, 0, 26, 2),
(210, 15, 14, 'N', 0, 0, 'N', 3, 0, 22, 0),
(211, 15, 17, 'N', 0, 0, 'N', 4, 0, 21, 2),
(212, 15, 19, 'N', 0, 0, 'N', 4, 0, 25, 1),
(213, 15, 21, 'N', 0, 0, 'N', 3, 0, 15, 1),
(214, 16, 14, 'Y', 2, 5, 'N', 0, 0, 0, 0),
(215, 17, 17, 'N', 0, 0, 'N', 4, 0, 15, 2),
(216, 17, 19, 'N', 0, 0, 'N', 4, 0, 9, 3),
(217, 18, 19, 'Y', 7, 6, 'Y', 0, 0, 0, 0),
(218, 19, 14, 'N', 0, 0, 'N', 4, 0, 13, 2),
(219, 19, 17, 'N', 0, 0, 'N', 3, 0, 28, 0),
(220, 19, 21, 'N', 0, 0, 'N', 1, 0, 10, 0),
(221, 20, 14, 'N', 0, 0, 'N', 3, 0, 27, 0),
(222, 21, 14, 'Y', 4, 15, 'N', 0, 0, 0, 0),
(223, 22, 17, 'N', 0, 0, 'N', 3, 0, 21, 0),
(224, 22, 19, 'N', 0, 0, 'N', 2, 0, 8, 0),
(225, 22, 21, 'Y', 12, 10, 'Y', 1, 0, 10, 0),
(226, 23, 17, 'Y', 0, 1, 'N', 2, 0, 11, 1),
(227, 24, 19, 'Y', 1, 1, 'N', 0.1, 0, 3, 0),
(228, 25, 19, 'Y', 51, 35, 'N', 0.5, 0, 0, 1),
(229, 26, 19, 'N', 0, 0, 'N', 3, 0, 12, 3),
(230, 1, 22, 'Y', 35, 23, 'N', 4, 0, 13, 1),
(231, 1, 23, 'Y', 121, 63, 'Y', 4, 0, 16, 2),
(232, 1, 24, 'Y', 90, 51, 'N', 3, 0, 21, 0),
(233, 1, 25, 'Y', 43, 27, 'N', 3, 0, 15, 1),
(234, 1, 26, 'Y', 29, 25, 'Y', 0, 0, 0, 0),
(235, 2, 22, 'Y', 13, 17, 'N', 4, 0, 31, 1),
(236, 2, 23, 'Y', 1, 5, 'N', 1, 0, 6, 0),
(237, 2, 24, 'Y', 1, 12, 'N', 2, 0, 21, 1),
(238, 2, 25, 'Y', 77, 57, 'N', 4, 0, 34, 1),
(239, 3, 24, 'Y', 0, 1, 'N', 0, 0, 0, 0),
(240, 3, 25, 'N', 0, 0, 'N', 0, 0, 0, 0),
(241, 3, 26, 'Y', 46, 31, 'N', 0, 0, 0, 0),
(242, 4, 22, 'Y', 3, 8, 'N', 3, 0, 21, 3),
(243, 4, 23, 'Y', 2, 2, 'N', 3.5, 0, 30, 5),
(244, 4, 24, 'Y', 16, 11, 'Y', 1, 0, 8, 1),
(245, 4, 25, 'Y', 3, 4, 'Y', 4, 0, 26, 0),
(246, 4, 26, 'Y', 0, 3, 'N', 4, 0, 31, 2),
(247, 5, 22, 'Y', 47, 35, 'N', 0, 0, 0, 0),
(248, 5, 23, 'Y', 2, 9, 'N', 0, 0, 0, 0),
(249, 5, 24, 'Y', 4, 2, 'N', 0, 0, 0, 0),
(250, 5, 25, 'Y', 24, 20, 'N', 0, 0, 0, 0),
(251, 5, 26, 'Y', 70, 46, 'Y', 0, 0, 0, 0),
(252, 6, 22, 'Y', 25, 19, 'N', 0, 0, 0, 0),
(253, 6, 23, 'Y', 9, 16, 'N', 0, 0, 0, 0),
(254, 6, 24, 'Y', 45, 32, 'N', 0, 0, 0, 0),
(255, 6, 25, 'Y', 7, 12, 'N', 0, 0, 0, 0),
(256, 6, 26, 'N', 0, 0, 'N', 4, 0, 24, 1),
(257, 7, 24, 'N', 0, 0, 'N', 4, 0, 25, 3),
(258, 7, 25, 'N', 0, 0, 'N', 3, 0, 29, 0),
(259, 8, 22, 'Y', 1, 1, 'Y', 3, 0, 28, 0),
(260, 8, 23, 'N', 0, 0, 'N', 2, 0, 4, 2),
(261, 8, 24, 'Y', 0, 0, 'Y', 2.3, 0, 14, 2),
(262, 8, 25, 'N', 0, 0, 'N', 2.5, 0, 35, 0),
(263, 9, 23, 'N', 14, 14, 'N', 0, 0, 0, 0),
(264, 9, 26, 'Y', 12, 7, 'N', 2, 0, 15, 1),
(265, 10, 22, 'N', 0, 0, 'N', 3, 0, 15, 2),
(266, 10, 23, 'N', 0, 0, 'N', 1, 0, 14, 0),
(267, 10, 24, 'N', 0, 0, 'N', 3, 0, 12, 2),
(268, 10, 25, 'N', 0, 0, 'N', 2, 0, 24, 0),
(269, 11, 26, 'N', 0, 0, 'N', 4, 0, 26, 0),
(270, 12, 26, 'Y', 1, 4, 'N', 1, 0, 12, 0),
(271, 13, 22, 'Y', 4, 4, 'N', 0, 0, 0, 0),
(272, 13, 23, 'Y', 10, 11, 'N', 0, 0, 0, 0),
(273, 13, 24, 'Y', 10, 12, 'N', 0, 0, 0, 0),
(274, 13, 25, 'N', 0, 0, 'N', 0, 0, 0, 0),
(275, 15, 22, 'N', 0, 0, 'N', 3, 0, 12, 1),
(276, 15, 23, 'N', 0, 0, 'N', 4, 0, 28, 0),
(277, 15, 24, 'N', 0, 0, 'N', 3, 0, 33, 0),
(278, 15, 25, 'N', 0, 0, 'N', 0, 0, 0, 0),
(279, 22, 22, 'Y', 1, 2, 'N', 0, 0, 0, 0),
(280, 22, 23, 'Y', 0, 0, 'N', 0, 0, 0, 0),
(281, 22, 26, 'N', 0, 0, 'N', 3, 0, 32, 0),
(282, 23, 26, 'N', 0, 0, 'N', 2, 0, 15, 1),
(283, 27, 26, 'Y', 4, 5, 'N', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `player_info`
--

CREATE TABLE IF NOT EXISTS `player_info` (
  `player_id` int(11) NOT NULL AUTO_INCREMENT,
  `pname` text NOT NULL,
  `gender` enum('M','F') NOT NULL DEFAULT 'M' COMMENT 'M=Male,F=Female',
  `date_of_birth` date NOT NULL,
  `about_player` text NOT NULL,
  `bowling_style` text NOT NULL,
  `batting_style` text NOT NULL,
  `role` enum('BT','BL','AR','WK') NOT NULL COMMENT 'BT=Batsman, BL=Bowler, AR=All Rounder,WK=Wicket Keeper ',
  `photo` varchar(122) NOT NULL,
  PRIMARY KEY (`player_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `player_info`
--

INSERT INTO `player_info` (`player_id`, `pname`, `gender`, `date_of_birth`, `about_player`, `bowling_style`, `batting_style`, `role`, `photo`) VALUES
(1, 'Mayank Jasore', 'M', '1985-04-24', 'A right-handed batsman and right arm off-break bowler. Mayank''s aggressive batting style at any position from an opener to the No.5 slot, handy off-spin bowling & delightful fielding puts him into a mould of a perfect all-rounder. He is also great at judging slower balls and most commonly uses his ‘swivel pull’ to send the ball deep into the stands. The all-rounder shot to fame in 2017 when he scored a record 54-ball 148 runs to lead TCS to victory against Tranter.', 'Right Arm Off Break', 'Right Hand Batsman', 'AR', 'profile_01.jpg'),
(2, 'Gaurav Singh', 'M', '1985-04-24', 'Gaurav Singh is one of the hardest hitters of the cricket ball and is also a useful fast bowler. Gaurav''s feats on the inter IT circuit and his remarkable display in various League T20 made him a nation-wide household name. He is seen by many as an ideal cricketer in the limited-over formats.\r\n\r\nGaurav scores a high proportion of his runs in boundaries, smashing the ball to all corners of the ground. He has produced some stunning innings for TCS and it was during the 2017 Pratham T20 that he grabbed attention of billions around the world with a 55-ball 86 for Tata Consultancy Services.', 'Right Arm Medium Fast', 'Right Hand Batsman', 'AR', 'profile_02.jpg'),
(3, 'Saleem Mohammad', 'M', '1985-04-24', '0', 'Right Arm Off Break', 'Right Hand Batsman and Wicket Keeper', 'WK', 'profile_03.jpg'),
(4, 'Rahul Garg', 'M', '1985-04-24', '0', 'Right Arm Off Break', 'Right Hand Batsman', 'AR', 'profile_04.jpg'),
(5, 'Vikram Randhawa', 'M', '1985-04-24', '0', 'Right Arm Off Break', 'Right Hand Batsman', 'BT', 'profile_05.jpg'),
(6, 'Soumya Ranjan', 'M', '1985-04-24', '0', 'Right Arm Medium Fast', 'Left Hand Batsman', 'AR', 'profile_06.jpg'),
(7, 'Sunil Babar', 'M', '1985-04-24', '0', 'Right Arm Medium Fast', 'Right Hand Batsman', 'BL', 'profile_07.jpg'),
(8, 'Rahul Khandelwal', 'M', '1985-04-24', '0', 'Right Arm Medium Fast', 'Right Hand Batsman', 'BL', 'profile_08.jpg'),
(9, 'Shantanu Nadkarni', 'M', '1985-04-24', '0', 'Right Arm Medium Fast', 'Left Hand Batsman', 'BT', 'profile_09.jpg'),
(10, 'Siddharth Mukharya', 'M', '1985-04-24', '0', 'Right Arm Off Spin', 'Right Hand Batsman', 'BL', 'profile_10.jpg'),
(11, 'Jaggan Gadimme', 'M', '1985-04-24', '0', 'Right Arm Medium Fast', 'Right Hand Batsman', 'BL', 'profile_11.jpg'),
(12, 'Saket Singh', 'M', '1985-04-24', '0', 'Right Arm Leg Spin', 'Right Hand Batsman', 'BT', 'profile_12.jpg'),
(13, 'Suvish Nair', 'M', '1985-04-24', '0', 'Right Arm Off Break', 'Right Hand Batsman and Wicket Keeper', 'WK', 'profile_13.jpg'),
(14, 'Sudhir Sable', 'M', '1985-04-24', '0', 'Right Arm Medium Fast', 'Right Hand Batsman', 'BL', 'profile_14.jpg'),
(15, 'Rutuparan Bhave', 'M', '1985-04-24', '0', 'Left Arm Off Spin', 'Left Hand Batsman', 'BL', 'profile_15.jpg'),
(16, 'Harsh Shah', 'M', '1985-04-24', '0', 'Right Arm Medium', 'Right Hand Batsman', 'BT', 'profile_16.jpg'),
(17, 'Abhay Paithane', 'M', '1985-04-24', '0', 'Right Arm Medium Peace', 'Right Hand Batsman', 'BL', 'profile_17.jpg'),
(18, 'Javeed Walikar', 'M', '1985-04-24', '0', 'Right Arm Medium Fast', 'Right Hand Batsman and Wicket Keeper', 'WK', 'profile_18.jpg'),
(19, 'Hrishikesh Undale', 'M', '1985-04-24', '0', 'Right Arm Off Break', 'Right Hand Batsman', 'BL', 'profile_19.jpg'),
(20, 'Neeraj Sharma', 'M', '1985-04-24', '0', 'Left Arm Medium Fast', 'Right Hand Batsman', 'BL', 'profile_20.jpg'),
(21, 'Rupesh Inpure', 'M', '1985-04-24', '0', 'Right Arm Medium Fast', 'Right Hand Batsman and Wicket Keeper', 'WK', 'profile_21.jpg'),
(22, 'Abhijeet Yadav', 'M', '1985-04-24', '0', 'Left Arm Medium Fast', 'Right Hand Batsman', 'BL', 'profile_22.jpg'),
(23, 'Kanwarjeet Singh', 'M', '1985-04-24', '0', 'Right Arm Leg Spin', 'Right Hand Batsman', 'BT', 'profile_23.jpg'),
(24, 'Sonu John', 'M', '1985-04-24', '0', 'Right Arm Medium Peace', 'Right Hand Batsman', 'BT', 'profile_24.jpg'),
(25, 'Anand Mishra', 'M', '1985-04-24', '0', 'Right Arm Off Break', 'Right Hand Batsman', 'BT', 'profile_25.jpg'),
(26, 'Vinay Kadam', 'M', '1985-04-24', '0', 'Right Arm Off Spin', 'Right Hand Batsman', 'BL', 'profile_26.jpg'),
(27, 'Aniruddha Kelkar', 'M', '1985-04-24', '0', 'Right Arm Medium Peace', 'Right Hand Batsman', 'BT', 'profile_27.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tournament_info`
--

CREATE TABLE IF NOT EXISTS `tournament_info` (
  `tour_id` int(11) NOT NULL AUTO_INCREMENT,
  `tournament_name` varchar(255) NOT NULL,
  PRIMARY KEY (`tour_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tournament_info`
--

INSERT INTO `tournament_info` (`tour_id`, `tournament_name`) VALUES
(1, 'Pratham Inter IT Cricket Championship'),
(2, 'PRITHVI EDIFICE WHITE COPPER INTER IT CHAMPIONSHIP 2016-17'),
(3, 'Ankur Joglekar Memorial Inter IT Cricket Championship 2016-17'),
(4, 'REGREEN T20 CORPORATE CRICKET CHAMPIONSHIP 2017'),
(5, 'FLAME University Corporate Cricket League 2017');

-- --------------------------------------------------------

--
-- Table structure for table `worksheet`
--

CREATE TABLE IF NOT EXISTS `worksheet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` int(2) DEFAULT NULL,
  `match_id` int(1) DEFAULT NULL,
  `innings_played` int(11) NOT NULL,
  `runs_scored` int(2) DEFAULT NULL,
  `balls_faced` int(2) DEFAULT NULL,
  `not_out` varchar(1) DEFAULT NULL,
  `overs` decimal(2,1) DEFAULT NULL,
  `maidens` int(11) NOT NULL,
  `runs_given` int(2) DEFAULT NULL,
  `wickets_taken` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=78 ;

--
-- Dumping data for table `worksheet`
--

INSERT INTO `worksheet` (`id`, `player_id`, `match_id`, `innings_played`, `runs_scored`, `balls_faced`, `not_out`, `overs`, `maidens`, `runs_given`, `wickets_taken`) VALUES
(1, 1, 1, 0, 44, 42, 'N', 4.0, 0, 15, 1),
(2, 1, 4, 0, 10, 8, 'N', 4.0, 0, 14, 0),
(3, 1, 5, 0, 32, 18, 'N', 4.0, 0, 20, 1),
(4, 1, 6, 0, 95, 54, 'N', 4.0, 0, 17, 1),
(5, 1, 7, 0, 29, 11, 'N', 4.0, 0, 22, 0),
(6, 2, 1, 0, 1, 4, 'N', 0.0, 0, 0, 0),
(7, 2, 2, 0, 18, 11, 'N', 4.0, 0, 21, 3),
(8, 2, 3, 0, 0, 0, 'N', 4.0, 0, 19, 2),
(9, 2, 4, 0, 22, 20, 'N', 4.0, 0, 15, 2),
(10, 2, 5, 0, 53, 40, 'Y', 4.0, 0, 20, 2),
(11, 2, 6, 0, 86, 55, 'N', 4.0, 0, 49, 1),
(12, 2, 7, 0, 47, 31, 'N', 0.1, 0, 0, 0),
(13, 3, 1, 0, 17, 8, 'N', 0.0, 0, 0, 0),
(14, 3, 2, 0, 62, 47, 'N', 0.0, 0, 0, 0),
(15, 3, 3, 0, 5, 3, 'N', 0.0, 0, 0, 0),
(16, 3, 4, 0, 14, 10, 'N', 0.0, 0, 0, 0),
(17, 3, 5, 0, 5, 4, 'N', 0.0, 0, 0, 0),
(18, 3, 7, 0, 0, 9, 'N', 0.0, 0, 0, 0),
(19, 4, 1, 0, 10, 11, 'N', 2.0, 0, 8, 3),
(20, 4, 2, 0, 44, 29, 'Y', 2.0, 0, 7, 1),
(21, 4, 5, 0, 0, 0, 'N', 0.0, 0, 0, 0),
(22, 4, 6, 0, 0, 0, 'N', 0.0, 0, 0, 0),
(23, 4, 7, 0, 18, 15, 'Y', 3.5, 0, 21, 0),
(24, 5, 1, 0, 40, 32, 'N', 0.0, 0, 0, 0),
(25, 5, 2, 0, 1, 3, 'N', 0.0, 0, 0, 0),
(26, 5, 3, 0, 53, 50, 'Y', 0.0, 0, 0, 0),
(27, 5, 4, 0, 20, 37, 'Y', 0.0, 0, 0, 0),
(28, 5, 5, 0, 13, 14, 'Y', 0.0, 0, 0, 0),
(29, 5, 6, 0, 6, 5, 'Y', 0.0, 0, 0, 0),
(30, 5, 7, 0, 17, 23, 'N', 0.0, 0, 0, 0),
(31, 6, 1, 0, 21, 18, 'N', 0.0, 0, 0, 0),
(32, 6, 2, 0, 28, 20, 'Y', 0.0, 0, 0, 0),
(33, 6, 4, 0, 34, 16, 'N', 0.0, 0, 0, 0),
(34, 6, 5, 0, 0, 0, 'Y', 0.0, 0, 0, 0),
(35, 6, 6, 0, 15, 7, 'N', 0.0, 0, 0, 0),
(36, 6, 7, 0, 1, 4, 'Y', 0.0, 0, 0, 0),
(37, 7, 1, 0, 1, 1, 'N', 2.0, 0, 18, 1),
(38, 7, 3, 0, 0, 0, 'N', 4.0, 0, 18, 1),
(39, 7, 4, 0, 0, 0, 'N', 4.0, 0, 31, 2),
(40, 7, 5, 0, 0, 0, 'N', 3.0, 0, 17, 1),
(41, 7, 6, 0, 0, 0, 'N', 2.0, 0, 36, 0),
(42, 7, 7, 0, 0, 0, 'N', 4.0, 0, 24, 1),
(43, 8, 4, 0, 0, 0, 'N', 4.0, 0, 16, 4),
(44, 8, 5, 0, 0, 0, 'N', 2.0, 0, 13, 0),
(45, 8, 6, 0, 0, 0, 'N', 4.0, 0, 18, 1),
(46, 8, 7, 0, 6, 4, 'Y', 4.0, 0, 31, 2),
(47, 9, 1, 0, 3, 1, 'N', 0.0, 0, 0, 0),
(48, 10, 1, 0, 0, 0, 'N', 2.5, 0, 10, 2),
(49, 10, 2, 0, 0, 0, 'N', 3.0, 0, 32, 1),
(50, 10, 3, 0, 0, 0, 'N', 3.0, 0, 31, 0),
(51, 10, 4, 0, 0, 0, 'N', 2.0, 0, 6, 0),
(52, 10, 5, 0, 0, 0, 'N', 4.0, 0, 17, 2),
(53, 10, 6, 0, 0, 0, 'N', 4.0, 0, 32, 0),
(54, 10, 7, 0, 0, 0, 'N', 2.0, 0, 15, 0),
(55, 11, 1, 0, 1, 1, 'Y', 0.0, 0, 0, 0),
(56, 11, 5, 0, 0, 0, 'N', 3.0, 0, 11, 0),
(57, 11, 6, 0, 0, 0, 'N', 2.0, 0, 17, 1),
(58, 11, 7, 0, 0, 0, 'N', 2.0, 0, 17, 0),
(59, 12, 5, 0, 0, 0, 'N', 0.0, 0, 0, 0),
(60, 12, 6, 0, 0, 0, 'N', 0.0, 0, 0, 0),
(61, 14, 1, 0, 0, 0, 'N', 0.0, 0, 0, 0),
(62, 15, 2, 0, 0, 0, 'N', 2.0, 0, 13, 0),
(63, 16, 3, 0, 38, 33, 'Y', 0.0, 0, 0, 0),
(64, 16, 4, 0, 0, 0, 'N', 0.0, 0, 0, 0),
(65, 17, 3, 0, 0, 0, 'N', 3.0, 0, 18, 1),
(66, 18, 2, 0, 0, 0, 'N', 4.0, 0, 28, 1),
(67, 18, 3, 0, 0, 0, 'N', 3.0, 0, 11, 3),
(68, 18, 4, 0, 0, 0, 'N', 1.0, 0, 7, 0),
(69, 19, 2, 0, 0, 0, 'N', 2.0, 0, 19, 0),
(70, 20, 2, 0, 13, 9, 'N', 0.0, 0, 0, 0),
(71, 21, 2, 0, 1, 1, 'Y', 3.0, 0, 25, 0),
(72, 21, 3, 0, 0, 0, 'N', 3.0, 0, 19, 1),
(73, 21, 4, 0, 0, 0, 'N', 1.0, 0, 7, 0),
(74, 22, 3, 0, 0, 0, 'N', 0.0, 0, 0, 0),
(75, 22, 6, 0, 0, 0, 'N', 0.0, 0, 0, 0),
(76, 22, 7, 0, 1, 1, 'N', 0.0, 0, 0, 0),
(77, 23, 3, 0, 6, 19, 'N', 0.0, 0, 0, 0);
