-- phpMyAdmin SQL Dump
-- version 3.4.5deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 29, 2012 at 12:47 AM
-- Server version: 5.1.58
-- PHP Version: 5.3.6-13ubuntu3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `team_rage`
--

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE IF NOT EXISTS `members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `rage_id` int(11) NOT NULL,
  `lastUpdated` varchar(45) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `manualImage` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `name`, `rage_id`, `lastUpdated`, `description`, `manualImage`) VALUES
(1, 'Derp', 24, '4/14/2012 - 5:44 AM', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `quotes`
--

CREATE TABLE IF NOT EXISTS `quotes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL,
  `context` varchar(45) DEFAULT NULL,
  `quote` varchar(255) NOT NULL,
  `date` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `quotes`
--

INSERT INTO `quotes` (`id`, `member_id`, `context`, `quote`, `date`) VALUES
(1, 1, 'lol derp.', 'huzzah', '3/29/2012');

-- --------------------------------------------------------

--
-- Table structure for table `rages`
--

CREATE TABLE IF NOT EXISTS `rages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(200) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=83 ;

--
-- Dumping data for table `rages`
--

INSERT INTO `rages` (`id`, `image`, `name`) VALUES
(29, 'clean-all-the-things.png', 'All the Things!'),
(28, 'classy.png', 'Classy'),
(27, 'challenge-accepted-drunk.png', 'Challenge Accepted (Drunk)'),
(26, 'challenge accepted.png', 'Challenge Accepted'),
(25, 'cereal-guy.png', 'Cereal Guy'),
(24, 'cereal_spit', 'Cereal Spit'),
(23, 'awwww yeaaaah.png', 'Awwww Yeaaaah'),
(22, 'are-you-serious.png', 'Are You Serious?'),
(21, 'agog.png', 'Agog'),
(30, 'close_enough.png', 'Close Enough'),
(31, 'crying.png', 'Crying'),
(32, 'evil_genius.png', 'Evil Genius'),
(33, 'f-that.png', 'F That'),
(34, 'fffffuuuu.png', 'FFFFFUUUU'),
(35, 'fuck_yea.png', 'F Yeah'),
(36, 'heck-no.png', 'DO NOT WANT'),
(37, 'i-see-what-you-did-there.png', 'I See What You Did There'),
(38, 'jackie-chan-what.png', 'What!?'),
(39, 'killstare.png', 'Killstare'),
(40, 'lol.png', 'LOL'),
(41, 'look-of-disapproval.png', 'Look of Disapproval'),
(42, 'me_gusta.png', 'Me Gusta'),
(43, 'mother-of-god.png', 'Mother of God...'),
(44, 'no.jpg', 'NO.'),
(45, 'not-bad-obama.png', 'Not bad'),
(46, 'nothing-to-do-here.png', 'Nothing to do here'),
(47, 'oh crap.png', 'OH CRAP'),
(48, 'oh_fuck.png', 'Fuck.'),
(49, 'oh-god-why.jpg', 'Oh God Why'),
(50, 'okay.png', 'Okay...'),
(51, 'point-of-no-return.png', 'POINT OF NO RETURN'),
(52, 'poker_face.png', 'Poker Face'),
(53, 'rage-gas.png', 'Kill it with fire'),
(54, 'smiley.png', 'Smiley / No Status'),
(55, 'so-close.png', 'So close!'),
(56, 'surprised-wait.png', 'Surprised'),
(57, 'sweet-jesus.png', 'Sweet Jesus!'),
(58, 'troll_face.jpeg', 'Trollin'''),
(59, 'whhyyy.png', 'Whyyyyyyyy'),
(60, 'wuuuut.png', 'Wut!'),
(61, 'y_u_no.png', 'Y U NO'),
(62, 'yes-dude.png', 'Yes! (Freddie Mercury)'),
(63, 'colbert-scream.gif', 'Screaming (GIF)'),
(64, 'didnt-read-lol-dance.gif', 'Didn''t read lol (GIF)'),
(65, 'explain-this-bs-lightning.jpg', 'Explain this Bullshit!'),
(66, 'f-this-im-out.gif', 'F this, I''m out (GIF)'),
(67, 'grinch.gif', 'Grinch (GIF)'),
(68, 'i-have-no-idea-what-im-doing.png', 'I have no idea what I''m doing'),
(69, 'i-told-you-so.gif', 'I told you so! (GIF)'),
(70, 'irwha.gif', 'Eating Popcorn'),
(71, 'its-rainin-sideways.jpg', 'It''s rainin'' sideways!'),
(72, 'just-playing-tennis.jpg', 'Just playin'' tennis'),
(73, 'office-space.gif', 'Technology ragequit (GIF)'),
(74, 'oh-snap.gif', 'OH SNAP (GIF)'),
(75, 'paper-throw-ragequit.gif', 'Throw papers ragequit (GIF)'),
(76, 'picard-facepalm.png', 'Facepalm'),
(77, 'tumblr_lso6d2olz21r0byljo1_250.gif', 'I''ve made a huge mistake'),
(78, 'tyson.gif', 'Looks like we got a badass over here (GIF)'),
(79, 'vallino-tableflip.png', 'Vallino tableflip'),
(80, 'wuuuut.gif', 'WUUUUTTTT (GIF)'),
(81, 'chowdertroll.png', 'Chowder Trollololol'),
(82, 'old-spice-nod.gif', 'Oh yeah... (GIF)');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
