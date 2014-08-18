-- phpMyAdmin SQL Dump
-- version 4.3.0-dev
-- http://www.phpmyadmin.net
--
-- Host: mattrubin.db
-- Generation Time: Aug 18, 2014 at 02:45 AM
-- Server version: 5.3.12-MariaDB
-- PHP Version: 5.3.28-nfsn3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `glitch`
--

-- --------------------------------------------------------

--
-- Table structure for table `buffs`
--

CREATE TABLE IF NOT EXISTS `buffs` (
`id` int(11) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `buffs`
--

INSERT INTO `buffs` (`id`, `name`) VALUES
(1, 'Apple a Day'),
(2, 'Bubble-Enhanced Meditation'),
(3, 'Buzzed'),
(4, 'Caffeine Buzz'),
(5, 'Carrot Zing'),
(6, 'Chocolate High'),
(7, 'Crab State of Mind'),
(8, 'Crumb of Knowledge'),
(9, 'Easy Animalia'),
(10, 'Emberried Hiccups'),
(11, 'Flaming Grinder'),
(12, 'Floating on a Cloud'),
(13, 'Gandlevery Boost'),
(14, 'Garlic Breath'),
(15, 'Hairball Rally'),
(16, 'Hearty Feeling'),
(17, 'High Jumper'),
(18, 'Impervious Miner'),
(19, 'Levitation'),
(20, 'Luck of the Rube'),
(21, 'Pleasant Equilibrium'),
(22, 'Purple Junk'),
(23, 'Remembering...'),
(24, 'Savoring Experience'),
(25, 'Silverytongued Charmer'),
(26, 'Sky Cruisin'''),
(27, 'Slow Gin'),
(28, 'Small Enlightenment'),
(29, 'Smashed'),
(30, 'Sophisticated Feeling'),
(31, 'Steady as a Rook');

-- --------------------------------------------------------

--
-- Table structure for table `ingredients`
--

CREATE TABLE IF NOT EXISTS `ingredients` (
  `recipe_id` int(11) unsigned NOT NULL,
  `item_id` int(11) unsigned NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ingredients`
--

INSERT INTO `ingredients` (`recipe_id`, `item_id`, `quantity`) VALUES
(39, 2, 9),
(39, 29, 9),
(39, 87, 9),
(54, 66, 5),
(3, 33, 3),
(6, 33, 6),
(21, 33, 2),
(37, 33, 1),
(83, 33, 4),
(86, 33, 7),
(104, 33, 3),
(109, 33, 5),
(114, 33, 1),
(138, 33, 3),
(152, 33, 2),
(15, 111, 1),
(71, 111, 5),
(144, 111, 3),
(29, 22, 1),
(137, 29, 1),
(148, 137, 1),
(149, 148, 1),
(22, 159, 1),
(162, 78, 1),
(162, 95, 1),
(162, 161, 1),
(162, 173, 1),
(161, 6, 1),
(161, 37, 11),
(161, 75, 1),
(161, 159, 1),
(174, 83, 5),
(82, 20, 1),
(82, 29, 1),
(82, 76, 1),
(82, 87, 1),
(82, 145, 1),
(20, 54, 1),
(20, 108, 1),
(108, 2, 1),
(94, 2, 1),
(77, 2, 1),
(76, 46, 1),
(76, 77, 1),
(76, 94, 1),
(76, 144, 1),
(10, 37, 3),
(10, 138, 1),
(10, 152, 4),
(40, 17, 1),
(40, 26, 1),
(40, 45, 1),
(40, 115, 1),
(132, 9, 5),
(132, 23, 1),
(132, 41, 1),
(68, 50, 1),
(68, 135, 1),
(72, 41, 2),
(72, 87, 1),
(72, 115, 2),
(175, 36, 1),
(175, 159, 1),
(175, 163, 1),
(175, 173, 1),
(48, 20, 1),
(48, 29, 1),
(48, 87, 1),
(48, 107, 1),
(73, 20, 1),
(73, 76, 1),
(73, 87, 1),
(126, 20, 1),
(126, 87, 1),
(31, 20, 1),
(31, 29, 1),
(81, 29, 1),
(81, 145, 2),
(35, 93, 4),
(35, 106, 1),
(35, 145, 1),
(35, 156, 1),
(8, 29, 1),
(8, 50, 3),
(155, 13, 1),
(155, 36, 1),
(155, 96, 1),
(155, 108, 1),
(155, 144, 5),
(97, 13, 1),
(97, 50, 2),
(97, 96, 1),
(34, 9, 30),
(34, 46, 1),
(34, 77, 1),
(34, 87, 2),
(34, 102, 1),
(34, 157, 1),
(55, 75, 1),
(55, 96, 2),
(55, 152, 6),
(55, 159, 2),
(123, 77, 1),
(123, 87, 3),
(123, 94, 1),
(123, 102, 1),
(123, 147, 1),
(56, 76, 1),
(56, 96, 1),
(56, 108, 1),
(56, 144, 5),
(88, 77, 1),
(88, 87, 2),
(88, 101, 1),
(88, 102, 1),
(88, 124, 1),
(88, 145, 1),
(107, 45, 1),
(107, 101, 1),
(107, 108, 1),
(141, 22, 1),
(141, 83, 1),
(141, 112, 1),
(143, 112, 1),
(143, 154, 1),
(89, 87, 2),
(89, 93, 1),
(89, 112, 1),
(89, 142, 1),
(27, 83, 1),
(27, 101, 1),
(27, 113, 2),
(27, 125, 1),
(67, 20, 1),
(67, 22, 2),
(80, 14, 1),
(80, 87, 2),
(80, 101, 1),
(80, 108, 1),
(80, 135, 1);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE IF NOT EXISTS `items` (
`id` int(11) unsigned NOT NULL,
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `name` varchar(255) DEFAULT NULL,
  `street_price` int(11) DEFAULT NULL,
  `stack_height` int(11) unsigned DEFAULT NULL,
  `consume_energy` int(11) DEFAULT NULL,
  `consume_mood` int(11) DEFAULT NULL,
  `consume_xp` int(11) DEFAULT NULL,
  `consume_buff` int(11) unsigned DEFAULT NULL,
  `category` int(11) unsigned DEFAULT NULL,
  `subcategory` int(11) unsigned DEFAULT NULL,
  `thumb_url` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) unsigned DEFAULT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=183 ;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `active`, `name`, `street_price`, `stack_height`, `consume_energy`, `consume_mood`, `consume_xp`, `consume_buff`, `category`, `subcategory`, `thumb_url`, `confirmed`) VALUES
(1, 1, 'Abbasid Ribs', 88, 12, NULL, NULL, NULL, NULL, 1, 10, 'http://c2.glitch.bz/items/2010-01-06/553_1262844517_iconic.png', NULL),
(2, 1, 'Allspice', 3, 250, NULL, NULL, NULL, NULL, 1, 4, 'http://c2.glitch.bz/items/2009-12-05/115_1260041417_iconic.png', NULL),
(3, 1, 'Apple', 5, 100, 5, 0, 0, 1, 1, 2, 'http://c2.glitch.bz/items/2009-12-22/441_1261531656_iconic.png', NULL),
(4, 1, 'Applejack', 25, 40, NULL, NULL, NULL, NULL, 1, 8, 'http://c2.glitch.bz/items/2010-02-09/741_1265769056_iconic.png', NULL),
(5, 1, 'Awesome Stew', 200, 12, NULL, NULL, NULL, NULL, 1, 11, 'http://c2.glitch.bz/items/2010-11-25/1659_1290708809_iconic.png', NULL),
(6, 1, 'Banana', 10, 100, 10, 0, 0, NULL, 1, 2, 'http://c2.glitch.bz/items/2009-12-22/415_1261531623_iconic.png', NULL),
(7, 1, 'Banana No-Names', 32, 20, NULL, NULL, NULL, NULL, 1, 8, 'http://c2.glitch.bz/items/2010-02-12/770_1265964055_iconic.png', NULL),
(8, 1, 'Basic Omlet', 33, 20, NULL, NULL, NULL, NULL, 1, 8, 'http://c2.glitch.bz/items/2009-12-22/396_1261531597_iconic.png', NULL),
(9, 1, 'Bean', 1, 250, 1, 0, 0, NULL, 1, 1, 'http://c2.glitch.bz/items/2010-04-19/1073_1271743980_iconic.png', NULL),
(10, 1, 'Berry Bowl', 46, 20, NULL, NULL, NULL, NULL, 1, 7, 'http://c2.glitch.bz/items/2010-02-08/728_1265663921_iconic.png', NULL),
(11, 1, 'Best Bean Dip', 38, NULL, NULL, NULL, NULL, NULL, 1, 8, 'http://c2.glitch.bz/items/2009-12-22/314_1261531480_iconic.png', NULL),
(12, 1, 'Big Salad', 58, NULL, NULL, NULL, NULL, NULL, 1, 7, 'http://c2.glitch.bz/items/2009-12-22/473_1261531700_iconic.png', NULL),
(13, 1, 'Birch Syrup', 4, NULL, NULL, NULL, NULL, NULL, 1, 13, 'http://c2.glitch.bz/items/2009-12-22/469_1261531693_iconic.png', NULL),
(14, 1, 'Black Pepper', 4, NULL, NULL, NULL, NULL, NULL, 1, 4, 'http://c2.glitch.bz/items/2009-12-22/451_1261531664_iconic.png', NULL),
(15, 1, 'Blue Bubble', 5, 100, 5, 0, 0, NULL, 1, 5, 'http://c2.glitch.bz/items/2009-12-22/485_1261544541_iconic.png', 1),
(16, 1, 'Blue Sno Cone', 75, 10, 0, 0, 44, NULL, 1, 12, 'http://c2.glitch.bz/items/2010-01-06/571_1262849249_iconic.png', NULL),
(17, 1, 'Broccoli', 5, NULL, NULL, NULL, NULL, NULL, 1, 3, 'http://c2.glitch.bz/items/2009-12-22/413_1261531617_iconic.png', NULL),
(18, 1, 'Bubble and Squeak', 60, NULL, NULL, NULL, NULL, NULL, 1, 8, 'http://c2.glitch.bz/items/2010-02-12/771_1265964096_iconic.png', NULL),
(19, 0, 'Bugsbury Creme Egg', 150, 1, NULL, NULL, NULL, NULL, 1, 14, 'http://c2.glitch.bz/items/2011-04-05/2001_1302028131_iconic.png', NULL),
(20, 1, 'Bun', 9, 40, 9, 0, 0, NULL, 1, 8, 'http://c2.glitch.bz/items/2009-12-22/376_1261531570_iconic.png', 1),
(21, 1, 'Bunch of Grapes', 4, 100, 4, 0, 0, NULL, 1, 2, 'http://c2.glitch.bz/items/2009-12-22/374_1261531567_iconic.png', NULL),
(22, 1, 'Butterfly Butter', 6, 40, 6, 0, 0, NULL, 1, 6, 'http://c2.glitch.bz/items/2009-12-22/351_1261531536_iconic.png', 1),
(23, 1, 'Cabbage', 7, NULL, NULL, NULL, NULL, NULL, 1, 3, 'http://c2.glitch.bz/items/2011-03-16/1979_1300313910_iconic.png', NULL),
(24, 1, 'Camphor', 20, NULL, NULL, NULL, NULL, NULL, 1, 4, 'http://c2.glitch.bz/items/2009-12-22/323_1261531494_iconic.png', NULL),
(25, 1, 'Cardamom', 12, NULL, NULL, NULL, NULL, NULL, 1, 4, 'http://c2.glitch.bz/items/2009-12-22/474_1261531701_iconic.png', NULL),
(26, 1, 'Carrot', 6, NULL, NULL, NULL, NULL, NULL, 1, 3, 'http://c2.glitch.bz/items/2009-12-22/464_1261531687_iconic.png', NULL),
(27, 1, 'Cedar Plank Salmon', 70, NULL, NULL, NULL, NULL, NULL, 1, 10, 'http://c2.glitch.bz/items/2009-12-22/479_1261543993_iconic.png', NULL),
(28, 0, 'Certified Organic Chocolate Egg', 150, 1, NULL, NULL, NULL, NULL, 1, 14, 'http://c2.glitch.bz/items/2011-04-05/2004_1302028520_iconic.png', NULL),
(29, 1, 'Cheese', 6, 20, 6, 0, 0, NULL, 1, 6, 'http://c2.glitch.bz/items/2009-12-22/410_1261531612_iconic.png', 1),
(30, 1, 'Cheese Plate', 36, NULL, NULL, NULL, NULL, NULL, 1, 7, 'http://c2.glitch.bz/items/2009-12-22/455_1261531669_iconic.png', NULL),
(31, 1, 'Cheezy Sammich', 18, NULL, NULL, NULL, NULL, NULL, 1, 7, 'http://c2.glitch.bz/items/2010-02-08/729_1265663940_iconic.png', NULL),
(32, 1, 'Cheezy Sauce', 26, NULL, NULL, NULL, NULL, NULL, 1, 9, 'http://c2.glitch.bz/items/2009-12-30/529_1262241327_iconic.png', NULL),
(33, 1, 'Cherry', 1, 250, 1, 0, 0, NULL, 1, 2, 'http://c2.glitch.bz/items/2010-04-19/1069_1271742891_iconic.png', 1),
(34, 1, 'Chilly-Busting Chili', 142, NULL, NULL, NULL, NULL, NULL, 1, 11, 'http://c2.glitch.bz/items/2009-12-30/521_1262198786_iconic.png', NULL),
(35, 1, 'Choice Crudites', 42, NULL, NULL, NULL, NULL, NULL, 1, 7, 'http://c2.glitch.bz/items/2009-12-22/369_1261531560_iconic.png', NULL),
(36, 1, 'Cinnamon', 8, NULL, NULL, NULL, NULL, NULL, 1, 4, 'http://c2.glitch.bz/items/2009-12-22/359_1261531544_iconic.png', NULL),
(37, 1, 'Cloudberry', 2, 100, 2, 0, 0, NULL, 1, 2, 'http://c2.glitch.bz/items/2010-03-11/882_1268323694_iconic.png', NULL),
(38, 1, 'Cloudberry Jam', 39, NULL, NULL, NULL, NULL, NULL, 1, 9, 'http://c2.glitch.bz/items/2009-12-30/530_1262241348_iconic.png', NULL),
(39, 1, 'Cold Taco', 53, NULL, NULL, NULL, NULL, NULL, 1, 7, 'http://c2.glitch.bz/items/2010-02-08/730_1265663954_iconic.png', NULL),
(40, 1, 'Common Crudites', 33, NULL, NULL, NULL, NULL, NULL, 1, 7, 'http://c2.glitch.bz/items/2009-12-22/459_1261531681_iconic.png', NULL),
(41, 1, 'Corn', 6, NULL, NULL, NULL, NULL, NULL, 1, 3, 'http://c2.glitch.bz/items/2010-08-12/1397_1281647834_iconic.png', NULL),
(42, 1, 'Corn-off-the-Cob', 47, NULL, NULL, NULL, NULL, NULL, 1, 8, 'http://c2.glitch.bz/items/2010-02-09/744_1265769168_iconic.png', NULL),
(43, 1, 'Corny Fritter', 39, NULL, NULL, NULL, NULL, NULL, 1, 8, 'http://c2.glitch.bz/items/2010-07-27/1389_1280261442_iconic.png', NULL),
(44, 1, 'Creamy Catsup', 64, NULL, NULL, NULL, NULL, NULL, 1, 9, 'http://c2.glitch.bz/items/2009-12-30/531_1262241389_iconic.png', NULL),
(45, 1, 'Cucumber', 4, NULL, NULL, NULL, NULL, NULL, 1, 3, 'http://c2.glitch.bz/items/2009-12-22/448_1261531662_iconic.png', NULL),
(46, 1, 'Cumin', 8, NULL, NULL, NULL, NULL, NULL, 1, 4, 'http://c2.glitch.bz/items/2009-12-22/418_1261531627_iconic.png', NULL),
(47, 1, 'Curry', 5, NULL, NULL, NULL, NULL, NULL, 1, 4, 'http://c2.glitch.bz/items/2009-12-22/405_1261531606_iconic.png', NULL),
(48, 1, 'Deluxe Sammich', 70, NULL, NULL, NULL, NULL, NULL, 1, 7, 'http://c2.glitch.bz/items/2009-12-22/383_1261531580_iconic.png', NULL),
(49, 1, 'Divine Crepe', 69, NULL, NULL, NULL, NULL, NULL, 1, 8, 'http://c2.glitch.bz/items/2009-12-22/398_1261531599_iconic.png', NULL),
(50, 1, 'Egg', 5, 250, 5, 0, 0, NULL, 1, 1, 'http://c2.glitch.bz/items/2009-12-22/366_1261531554_iconic.png', NULL),
(51, 1, 'Eggy Scramble', 25, NULL, NULL, NULL, NULL, NULL, 1, 8, 'http://c2.glitch.bz/items/2010-02-10/757_1265795662_iconic.png', NULL),
(52, 1, 'Exotic Fruit Salad', 33, NULL, NULL, NULL, NULL, NULL, 1, 7, 'http://c2.glitch.bz/items/2010-02-08/731_1265663969_iconic.png', NULL),
(53, 1, 'Expensive Grilled Cheese', 173, NULL, NULL, NULL, NULL, NULL, 1, 10, 'http://c2.glitch.bz/items/2009-12-22/318_1261531486_iconic.png', NULL),
(54, 1, 'Flour', 8, NULL, NULL, NULL, NULL, NULL, 1, 7, 'http://c2.glitch.bz/items/2009-12-22/452_1261531665_iconic.png', NULL),
(55, 1, 'Flummery', 99, NULL, NULL, NULL, NULL, NULL, 1, 11, 'http://c2.glitch.bz/items/2010-07-26/1364_1280176277_iconic.png', NULL),
(56, 1, 'Fortifying Gruel', 191, NULL, NULL, NULL, NULL, NULL, 1, 11, 'http://c2.glitch.bz/items/2009-12-30/522_1262201303_iconic.png', NULL),
(57, 1, 'Fried Egg', 11, NULL, NULL, NULL, NULL, NULL, 1, 8, 'http://c2.glitch.bz/items/2010-04-19/1068_1271742866_iconic.png', NULL),
(58, 1, 'Fried Noodles', 28, NULL, NULL, NULL, NULL, NULL, 1, 8, 'http://c2.glitch.bz/items/2010-02-09/747_1265769307_iconic.png', NULL),
(59, 1, 'Fried Rice', 77, NULL, NULL, NULL, NULL, NULL, 1, 8, 'http://c2.glitch.bz/items/2009-12-22/424_1261531633_iconic.png', NULL),
(60, 1, 'Frog-in-a-Hole', 35, NULL, NULL, NULL, NULL, NULL, 1, 10, 'http://c2.glitch.bz/items/2010-02-10/748_1265794773_iconic.png', NULL),
(61, 1, 'Fruit Salad', 29, NULL, NULL, NULL, NULL, NULL, 1, 7, 'http://c2.glitch.bz/items/2009-11-24/53_1259114605_iconic.png', NULL),
(62, 1, 'Gamma''s Pancakes', 47, NULL, NULL, NULL, NULL, NULL, 1, 8, 'http://c2.glitch.bz/items/2009-12-12/182_1260659181_iconic.png', NULL),
(63, 1, 'Garlic', 4, NULL, NULL, NULL, NULL, NULL, 1, 4, 'http://c2.glitch.bz/items/2009-12-22/371_1261531563_iconic.png', NULL),
(64, 1, 'Ginger', 4, NULL, NULL, NULL, NULL, NULL, 1, 4, 'http://c2.glitch.bz/items/2009-12-22/367_1261531556_iconic.png', NULL),
(65, 0, 'Golden Egg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 14, 'http://c2.glitch.bz/items/2011-04-05/2008_1302028853_iconic.png', NULL),
(66, 1, 'Grain', 1, 250, 1, 0, 0, NULL, 1, 1, 'http://c2.glitch.bz/items/2011-03-17/1980_1300387215_iconic.png', NULL),
(67, 1, 'Greasy Frybread', 37, NULL, NULL, NULL, NULL, NULL, 1, 10, 'http://c2.glitch.bz/items/2010-02-12/772_1265964119_iconic.png', NULL),
(68, 1, 'Green Egg', 12, NULL, NULL, NULL, NULL, NULL, 1, 8, 'http://c2.glitch.bz/items/2010-02-10/750_1265794824_iconic.png', NULL),
(69, 1, 'Green Sno Cone', 150, 10, 0, 0, 90, NULL, 1, 12, 'http://c2.glitch.bz/items/2010-01-06/572_1262849261_iconic.png', NULL),
(70, 1, 'Grilled Cheese', 53, NULL, NULL, NULL, NULL, NULL, 1, 10, 'http://c2.glitch.bz/items/2010-01-06/558_1262845082_iconic.png', NULL),
(71, 1, 'Hard Bubble', 15, NULL, NULL, NULL, NULL, NULL, 1, 5, 'http://c2.glitch.bz/items/2009-12-22/487_1261544657_iconic.png', NULL),
(72, 1, 'Hash', 57, NULL, NULL, NULL, NULL, NULL, 1, 8, 'http://c2.glitch.bz/items/2010-04-18/1055_1271658865_iconic.png', NULL),
(73, 1, 'Hearty Groddle Sammich', 93, NULL, NULL, NULL, NULL, NULL, 1, 7, 'http://c2.glitch.bz/items/2009-12-22/397_1261531598_iconic.png', NULL),
(74, 1, 'Hearty Omlet', 102, NULL, NULL, NULL, NULL, NULL, 1, 8, 'http://c2.glitch.bz/items/2009-12-22/387_1261531584_iconic.png', NULL),
(75, 1, 'Honey', 4, NULL, NULL, NULL, NULL, NULL, 1, 13, 'http://c2.glitch.bz/items/2009-12-22/365_1261531554_iconic.png', NULL),
(76, 1, 'Hot ''n'' Fizzy Sauce', 42, 20, 42, 0, 0, NULL, 1, 9, 'http://c2.glitch.bz/items/2009-12-22/331_1261531506_iconic.png', 1),
(77, 1, 'Hot Pepper', 4, 200, 1, 0, 0, NULL, 1, 4, 'http://c2.glitch.bz/items/2009-12-22/327_1261531500_iconic.png', 1),
(78, 1, 'Ice', 2, 40, 2, 0, 0, NULL, 1, 13, 'http://c2.glitch.bz/items/2009-12-22/481_1261544349_iconic.png', NULL),
(79, 1, 'Ix-Style Braised Meat', 162, NULL, NULL, NULL, NULL, NULL, 1, 11, 'http://c2.glitch.bz/items/2009-12-30/523_1262201350_iconic.png', NULL),
(80, 1, 'Juicy Carpaccio', 56, NULL, NULL, NULL, NULL, NULL, 1, 7, 'http://c2.glitch.bz/items/2009-12-22/409_1261531611_iconic.png', NULL),
(81, 1, 'Lazy Salad', 24, NULL, NULL, NULL, NULL, NULL, 1, 7, 'http://c2.glitch.bz/items/2010-02-12/768_1265963421_iconic.png', NULL),
(82, 1, 'Lemburger', 127, 12, 127, 0, 0, NULL, 1, 10, 'http://c2.glitch.bz/items/2009-12-22/453_1261531666_iconic.png', 1),
(83, 1, 'Lemon', 5, 100, 5, 0, 0, NULL, 1, 2, 'http://c2.glitch.bz/items/2009-12-22/434_1261531644_iconic.png', NULL),
(84, 1, 'Licorice', 8, NULL, NULL, NULL, NULL, NULL, 1, 4, 'http://c2.glitch.bz/items/2009-12-22/412_1261531614_iconic.png', NULL),
(85, 1, 'Losta Lox', 29, NULL, NULL, NULL, NULL, NULL, 1, 7, 'http://c2.glitch.bz/items/2010-02-08/733_1265664003_iconic.png', NULL),
(86, 1, 'Mangosteen', 10, 100, 10, 0, 0, NULL, 1, 2, 'http://c2.glitch.bz/items/2009-12-22/368_1261531558_iconic.png', NULL),
(87, 1, 'Meat', 10, 60, 10, 0, 0, NULL, 1, 1, 'http://c2.glitch.bz/items/2009-12-22/349_1261531534_iconic.png', NULL),
(88, 1, 'Meat Gumbo', 93, NULL, NULL, NULL, NULL, NULL, 1, 11, 'http://c2.glitch.bz/items/2009-12-30/524_1262241195_iconic.png', NULL),
(89, 1, 'Meat Tetrazzini', 192, 12, NULL, NULL, NULL, NULL, 1, 11, 'http://c2.glitch.bz/items/2009-12-30/525_1262241218_iconic.png', NULL),
(90, 1, 'Messy Fry-up', 52, NULL, NULL, NULL, NULL, NULL, 1, 8, 'http://c2.glitch.bz/items/2010-02-10/751_1265794876_iconic.png', NULL),
(91, 1, 'Mexicali Eggs', 60, NULL, NULL, NULL, NULL, NULL, 1, 8, 'http://c2.glitch.bz/items/2010-02-10/752_1265794899_iconic.png', NULL),
(92, 1, 'Mild Sauce', 26, 12, 26, 0, 0, NULL, 1, 9, 'http://c2.glitch.bz/items/2009-12-30/532_1262241406_iconic.png', NULL),
(93, 1, 'Mushroom', 4, NULL, NULL, NULL, NULL, NULL, 1, 13, 'http://c2.glitch.bz/items/2009-12-22/425_1261531634_iconic.png', NULL),
(94, 1, 'Mustard', 4, 200, 1, 0, 0, NULL, 1, 4, 'http://c2.glitch.bz/items/2009-12-22/440_1261531654_iconic.png', 1),
(95, 1, 'Nutmeg', 12, NULL, NULL, NULL, NULL, NULL, 1, 4, 'http://c2.glitch.bz/items/2009-12-22/316_1261531483_iconic.png', NULL),
(96, 1, 'Oats', 8, NULL, NULL, NULL, NULL, NULL, 1, 13, 'http://c2.glitch.bz/items/2009-12-22/482_1261544370_iconic.png', NULL),
(97, 1, 'Oaty Cake', 32, NULL, NULL, NULL, NULL, NULL, 1, 11, 'http://c2.glitch.bz/items/2010-02-10/756_1265795631_iconic.png', NULL),
(98, 1, 'Obvious Panini', 92, NULL, NULL, NULL, NULL, NULL, 1, 10, 'http://c2.glitch.bz/items/2009-12-22/392_1261531591_iconic.png', NULL),
(99, 1, 'Oily Dressing', 3, NULL, NULL, NULL, NULL, NULL, 1, 13, 'http://c2.glitch.bz/items/2009-12-22/417_1261531626_iconic.png', NULL),
(100, 1, 'Old(er) Spice', 20, NULL, NULL, NULL, NULL, NULL, 1, 4, 'http://c2.glitch.bz/items/2009-12-22/433_1261531643_iconic.png', NULL),
(101, 1, 'Olive Oil', 5, NULL, NULL, NULL, NULL, NULL, 1, 13, 'http://c2.glitch.bz/items/2009-12-22/462_1261531684_iconic.png', NULL),
(102, 1, 'Onion', 4, NULL, NULL, NULL, NULL, NULL, 1, 3, 'http://c2.glitch.bz/items/2009-12-22/489_1261544701_iconic.png', NULL),
(103, 1, 'Onion Sauce', 56, NULL, NULL, NULL, NULL, NULL, 1, 9, 'http://c2.glitch.bz/items/2009-12-30/533_1262241426_iconic.png', NULL),
(104, 1, 'Orange', 5, 100, 5, 0, 0, NULL, 1, 2, 'http://c2.glitch.bz/items/2009-12-22/463_1261531686_iconic.png', NULL),
(105, 1, 'Orange Sno Cone', 300, 10, 0, 0, 180, NULL, 1, 12, 'http://c2.glitch.bz/items/2010-01-06/573_1262849280_iconic.png', NULL),
(106, 1, 'Parsnip', 6, NULL, NULL, NULL, NULL, NULL, 1, 3, 'http://c2.glitch.bz/items/2009-12-22/435_1261531645_iconic.png', NULL),
(107, 1, 'Pickle', 21, 40, 21, 0, 0, NULL, 1, 11, 'http://c2.glitch.bz/items/2009-12-22/438_1261531651_iconic.png', NULL),
(108, 1, 'Pinch of Salt', 2, 200, 1, 0, 0, NULL, 1, 4, 'http://c2.glitch.bz/items/2009-12-22/361_1261531546_iconic.png', 1),
(109, 1, 'Pineapple', 7, 100, 7, 0, 0, NULL, 1, 2, 'http://c2.glitch.bz/items/2009-12-22/319_1261531488_iconic.png', NULL),
(110, 1, 'Pineapple Upside-Down Pizza', 53, NULL, NULL, NULL, NULL, NULL, 1, 10, 'http://c2.glitch.bz/items/2010-01-06/560_1262845148_iconic.png', NULL),
(111, 1, 'Plain Bubble', 2, 250, 2, 0, 0, NULL, 1, 5, 'http://c2.glitch.bz/items/2009-12-22/321_1261531491_iconic.png', NULL),
(112, 1, 'Plain Noodles', 13, NULL, NULL, NULL, NULL, NULL, 1, 8, 'http://c2.glitch.bz/items/2009-12-22/483_1261544388_iconic.png', NULL),
(113, 1, 'Plank', 5, 250, 2, 0, 0, NULL, 1, 1, 'http://c2.glitch.bz/items/2010-09-20/1504_1285030039_iconic.png', NULL),
(114, 1, 'Plum', 3, 100, 3, 0, 0, NULL, 1, 2, 'http://c2.glitch.bz/items/2009-12-22/339_1261531518_iconic.png', NULL),
(115, 1, 'Potato', 7, NULL, NULL, NULL, NULL, NULL, 1, 3, 'http://c2.glitch.bz/items/2009-12-22/446_1261531660_iconic.png', NULL),
(116, 1, 'Potato Patty', 26, NULL, NULL, NULL, NULL, NULL, 1, 7, 'http://c2.glitch.bz/items/2010-02-12/773_1265964141_iconic.png', NULL),
(117, 1, 'Proper Rice', 26, NULL, NULL, NULL, NULL, NULL, 1, 11, 'http://c2.glitch.bz/items/2009-12-22/378_1261531573_iconic.png', NULL),
(118, 1, 'Purple Sno Cone', 1100, 10, 0, 0, 660, NULL, 1, 12, 'http://c2.glitch.bz/items/2010-01-06/575_1262849312_iconic.png', NULL),
(119, 0, 'Pysanka', NULL, NULL, NULL, NULL, NULL, NULL, 1, 14, 'http://c2.glitch.bz/items/2011-04-05/2006_1302028823_iconic.png', NULL),
(120, 1, 'Radish', 5, NULL, NULL, NULL, NULL, NULL, 1, 3, 'http://c2.glitch.bz/items/2009-12-30/513_1262195190_iconic.png', NULL),
(121, 1, 'Red Sno Cone', 600, 10, 0, 0, 360, NULL, 1, 12, 'http://c2.glitch.bz/items/2010-01-06/574_1262849297_iconic.png', NULL),
(122, 1, 'Rice', 4, NULL, NULL, NULL, NULL, NULL, 1, 3, 'http://c2.glitch.bz/items/2009-12-22/356_1261531541_iconic.png', NULL),
(123, 1, 'Rich Tagine', 101, NULL, NULL, NULL, NULL, NULL, 1, 11, 'http://c2.glitch.bz/items/2009-12-30/526_1262241241_iconic.png', NULL),
(124, 1, 'Saffron', 12, NULL, NULL, NULL, NULL, NULL, 1, 4, 'http://c2.glitch.bz/items/2009-12-22/370_1261531562_iconic.png', NULL),
(125, 1, 'Salmon', 15, NULL, NULL, NULL, NULL, NULL, 1, 13, 'http://c2.glitch.bz/items/2009-12-30/515_1262195472_iconic.png', NULL),
(126, 1, 'Sammich', 29, NULL, NULL, NULL, NULL, NULL, 1, 7, 'http://c2.glitch.bz/items/2009-12-22/403_1261531604_iconic.png', NULL),
(127, 1, 'Scrumptious Frittata', 46, NULL, NULL, NULL, NULL, NULL, 1, 8, 'http://c2.glitch.bz/items/2009-12-22/381_1261531577_iconic.png', NULL),
(128, 1, 'Secret Sauce', 28, NULL, NULL, NULL, NULL, NULL, 1, 9, 'http://c2.glitch.bz/items/2009-12-30/534_1262241445_iconic.png', NULL),
(129, 0, 'Secular Holiday Egg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 14, 'http://c2.glitch.bz/items/2011-04-05/2007_1302028846_iconic.png', NULL),
(130, 1, 'Sesame Oil', 4, NULL, NULL, NULL, NULL, NULL, 1, 13, 'http://c2.glitch.bz/items/2009-12-30/517_1262195529_iconic.png', NULL),
(131, 1, 'Simple BBQ', 86, 12, 14, 0, 0, NULL, 1, 10, 'http://c2.glitch.bz/items/2010-01-06/561_1262845184_iconic.png', NULL),
(132, 1, 'Simple Slaw', 27, 20, 27, 0, 0, NULL, 1, 7, 'http://c2.glitch.bz/items/2009-12-22/437_1261531650_iconic.png', NULL),
(133, 1, 'Snack Pack', 49, NULL, NULL, NULL, NULL, NULL, 1, 7, 'http://c2.glitch.bz/items/2010-02-08/734_1265664022_iconic.png', NULL),
(134, 1, 'Spicy Quesadilla', 68, NULL, NULL, NULL, NULL, NULL, 1, 8, 'http://c2.glitch.bz/items/2009-12-22/432_1261531642_iconic.png', NULL),
(135, 1, 'Spinach', 3, NULL, NULL, NULL, NULL, NULL, 1, 3, 'http://c2.glitch.bz/items/2011-05-09/2123_1304980776_iconic.png', NULL),
(136, 1, 'Spinach Salad', 18, NULL, 18, 0, 0, NULL, 1, 7, 'http://c2.glitch.bz/items/2010-02-08/735_1265664039_iconic.png', NULL),
(137, 1, 'Stinky Cheese', 12, 10, 12, 0, 0, NULL, 1, 6, 'http://c2.glitch.bz/items/2009-12-22/436_1261531647_iconic.png', 1),
(138, 1, 'Strawberry', 4, 100, 4, 0, 0, NULL, 1, 2, 'http://c2.glitch.bz/items/2009-12-22/334_1261531512_iconic.png', NULL),
(139, 1, 'Super Veggie Kebab', 58, NULL, NULL, NULL, NULL, NULL, 1, 10, 'http://c2.glitch.bz/items/2010-01-06/562_1262845203_iconic.png', NULL),
(140, 1, 'Sweet ''n'' Sour Sauce', 29, NULL, NULL, NULL, NULL, NULL, 1, 9, 'http://c2.glitch.bz/items/2009-12-30/535_1262242324_iconic.png', NULL),
(141, 1, 'Tangy Noodles', 45, NULL, NULL, NULL, NULL, NULL, 1, 11, 'http://c2.glitch.bz/items/2010-02-10/755_1265795068_iconic.png', NULL),
(142, 1, 'Tangy Sauce', 67, NULL, NULL, NULL, NULL, NULL, 1, 9, 'http://c2.glitch.bz/items/2009-12-30/518_1262195556_iconic.png', NULL),
(143, 1, 'Tasty Pasta', 134, NULL, NULL, NULL, NULL, NULL, 1, 11, 'http://c2.glitch.bz/items/2009-12-30/527_1262241257_iconic.png', NULL),
(144, 1, 'Tiny Bubble', 10, 100, 10, 0, 0, NULL, 1, 5, 'http://c2.glitch.bz/items/2010-02-05/723_1265433980_iconic.png', 1),
(145, 1, 'Tomato', 5, 80, 5, 0, 0, NULL, 1, 3, 'http://c2.glitch.bz/items/2009-12-22/420_1261531629_iconic.png', 1),
(146, 1, 'Tortilla', 19, NULL, NULL, NULL, NULL, NULL, 1, 8, 'http://c2.glitch.bz/items/2009-12-22/411_1261531613_iconic.png', NULL),
(147, 1, 'Turmeric', 12, NULL, NULL, NULL, NULL, NULL, 1, 4, 'http://c2.glitch.bz/items/2009-12-22/325_1261531497_iconic.png', NULL),
(148, 1, 'Very Stinky Cheese', 18, 10, 18, 0, 0, NULL, 1, 6, 'http://c2.glitch.bz/items/2009-12-22/431_1261531640_iconic.png', 1),
(149, 1, 'Very, Very Stinky Cheese', 24, 10, 24, 0, 0, NULL, 1, 6, 'http://c2.glitch.bz/items/2009-12-22/419_1261531628_iconic.png', 1),
(150, 1, 'Waffle', 49, 12, NULL, NULL, NULL, NULL, 1, 10, 'http://c2.glitch.bz/items/2010-01-06/563_1262845224_iconic.png', NULL),
(151, 1, 'Wavy Gravy', 75, 12, NULL, NULL, NULL, NULL, 1, 9, 'http://c2.glitch.bz/items/2009-12-30/536_1262242343_iconic.png', NULL),
(152, 1, 'Whortleberry', 5, 100, 5, 0, 0, NULL, 1, 2, 'http://c2.glitch.bz/items/2009-12-22/375_1261531568_iconic.png', NULL),
(153, 1, 'Whortleberry Jelly', 75, 12, NULL, NULL, NULL, NULL, 1, 9, 'http://c2.glitch.bz/items/2009-12-30/537_1262242358_iconic.png', NULL),
(154, 1, 'Wicked Bolognese Sauce', 59, 12, NULL, NULL, NULL, NULL, 1, 9, 'http://c2.glitch.bz/items/2009-12-30/538_1262242373_iconic.png', NULL),
(155, 1, 'Yummy Gruel', 134, 12, NULL, NULL, NULL, NULL, 1, 11, 'http://c2.glitch.bz/items/2009-12-30/528_1262241272_iconic.png', NULL),
(156, 1, 'Zucchini', 5, 80, NULL, NULL, NULL, NULL, 1, 3, 'http://c2.glitch.bz/items/2009-12-22/315_1261531482_iconic.png', NULL),
(157, 1, 'Beer', 10, NULL, NULL, NULL, NULL, NULL, 2, 1, 'http://c2.glitch.bz/items/2009-12-22/332_1261531507_iconic.png', NULL),
(158, 1, 'Bubble Tea', 172, NULL, NULL, NULL, NULL, NULL, 2, 2, 'http://c2.glitch.bz/items/2009-12-22/395_1261531596_iconic.png', NULL),
(159, 1, 'Butterfly Milk', 8, 80, 0, 6, 0, NULL, 2, 1, 'http://c2.glitch.bz/items/2009-12-22/439_1261531653_iconic.png', NULL),
(160, 1, 'Carrot Margarita', 90, NULL, NULL, NULL, NULL, NULL, 2, 3, 'http://c2.glitch.bz/items/2009-12-12/163_1260658173_iconic.png', NULL),
(161, 1, 'Cloud 11 Smoothie', 69, 24, 0, 5, 4, 26, 2, 2, 'http://c2.glitch.bz/items/2009-12-22/355_1261531540_iconic.png', 1),
(162, 1, 'Cloudberry Daiquiri', 142, 24, 10, 15, 7, 12, 2, 3, 'http://c2.glitch.bz/items/2009-12-12/164_1260658194_iconic.png', 1),
(163, 1, 'Coffee', 5, NULL, NULL, NULL, NULL, NULL, 2, 1, 'http://c2.glitch.bz/items/2009-12-22/326_1261531499_iconic.png', NULL),
(164, 1, 'Cosma-politan', 131, NULL, NULL, NULL, NULL, NULL, 2, 3, 'http://c2.glitch.bz/items/2009-12-12/165_1260658219_iconic.png', NULL),
(165, 1, 'Crabato Juice', 50, NULL, NULL, NULL, NULL, NULL, 2, 1, 'http://c2.glitch.bz/items/2010-03-05/864_1267796340_iconic.png', NULL),
(166, 1, 'Creamy Martini', 60, NULL, NULL, NULL, NULL, NULL, 2, 3, 'http://c2.glitch.bz/items/2009-12-12/166_1260658242_iconic.png', NULL),
(167, 1, 'Cup of Water', 1, NULL, NULL, NULL, NULL, NULL, 2, 1, 'http://c2.glitch.bz/items/2011-02-04/1908_1296877953_iconic.png', NULL),
(168, 1, 'Earthshaker', 152, NULL, NULL, NULL, NULL, NULL, 2, 2, 'http://c2.glitch.bz/items/2009-12-22/352_1261531538_iconic.png', NULL),
(169, 1, 'Exotic Juice', 54, NULL, NULL, NULL, NULL, NULL, 2, 2, 'http://c2.glitch.bz/items/2009-12-22/322_1261531492_iconic.png', NULL),
(170, 1, 'Flaming Humbaba', 168, NULL, NULL, NULL, NULL, NULL, 2, 3, 'http://c2.glitch.bz/items/2009-12-22/486_1261544563_iconic.png', NULL),
(171, 1, 'Fruity Juice', 24, NULL, NULL, NULL, NULL, NULL, 2, 2, 'http://c2.glitch.bz/items/2009-12-12/178_1260658808_iconic.png', NULL),
(172, 1, 'Gurly Drink', 160, NULL, NULL, NULL, NULL, NULL, 2, 3, 'http://c2.glitch.bz/items/2009-12-12/167_1260658255_iconic.png', NULL),
(173, 1, 'Hooch', 10, NULL, NULL, NULL, NULL, NULL, 2, 1, 'http://c2.glitch.bz/items/2009-12-22/353_1261531538_iconic.png', NULL),
(174, 1, 'Lemon Juice', 39, 24, 10, -5, 12, NULL, 2, 2, 'http://c2.glitch.bz/items/2009-12-22/458_1261531679_iconic.png', NULL),
(175, 1, 'Mabbish Coffee', 54, NULL, NULL, NULL, NULL, NULL, 2, 3, 'http://c2.glitch.bz/items/2009-12-12/168_1260658269_iconic.png', NULL),
(176, 1, 'Mega Healthy Veggie Juice', 46, NULL, NULL, NULL, NULL, NULL, 2, 2, 'http://c2.glitch.bz/items/2009-12-22/317_1261531484_iconic.png', NULL),
(177, 1, 'Orange Juice', 39, NULL, NULL, NULL, NULL, NULL, 2, 2, 'http://c2.glitch.bz/items/2009-12-22/340_1261531519_iconic.png', NULL),
(178, 1, 'Pungent Sunrise', 197, NULL, NULL, NULL, NULL, NULL, 2, 3, 'http://c2.glitch.bz/items/2009-12-12/169_1260658290_iconic.png', NULL),
(179, 1, 'Savory Smoothie', 96, NULL, NULL, NULL, NULL, NULL, 2, 2, 'http://c2.glitch.bz/items/2009-12-22/443_1261531658_iconic.png', NULL),
(180, 1, 'Slow Gin Fizz', 76, NULL, NULL, NULL, NULL, NULL, 2, 3, 'http://c2.glitch.bz/items/2009-12-12/170_1260658309_iconic.png', NULL),
(181, 1, 'Spicy Grog', 51, NULL, NULL, NULL, NULL, NULL, 2, 3, 'http://c2.glitch.bz/items/2009-12-12/171_1260658327_iconic.png', NULL),
(182, 1, 'Too-Berry Shake', 76, NULL, NULL, NULL, NULL, NULL, 2, 2, 'http://c2.glitch.bz/items/2009-12-12/177_1260658682_iconic.png', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `item_categories`
--

CREATE TABLE IF NOT EXISTS `item_categories` (
`id` int(11) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `item_categories`
--

INSERT INTO `item_categories` (`id`, `name`, `order`) VALUES
(1, 'Food', 1),
(2, 'Drink', 2);

-- --------------------------------------------------------

--
-- Table structure for table `item_subcategories`
--

CREATE TABLE IF NOT EXISTS `item_subcategories` (
  `cat_id` int(11) unsigned NOT NULL,
  `sub_id` int(11) unsigned NOT NULL,
  `name` varchar(155) NOT NULL DEFAULT '',
  `order` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_subcategories`
--

INSERT INTO `item_subcategories` (`cat_id`, `sub_id`, `name`, `order`) VALUES
(1, 1, 'Basics', 1),
(1, 2, 'Fruit', 2),
(1, 3, 'Produce', 3),
(1, 4, 'Spices', 7),
(1, 5, 'Bubbles', 6),
(1, 6, 'Dairy', 5),
(1, 7, 'Knife & Board', 8),
(1, 8, 'Frying Pan', 9),
(1, 9, 'Saucepan', 10),
(1, 10, 'Famous Pugilist Grill', 11),
(1, 11, 'Awesome Pot', 12),
(1, 12, 'Sno Cones', 13),
(1, 13, 'Groceries', 4),
(1, 14, 'Special', 14),
(2, 1, 'Basics', 1),
(2, 2, 'Blended Drinks', 2),
(2, 3, 'Cocktails', 3);

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE IF NOT EXISTS `recipes` (
`id` int(11) unsigned NOT NULL,
  `product_id` int(11) unsigned DEFAULT NULL,
  `cost_energy` int(11) NOT NULL DEFAULT '0',
  `cost_mood` int(11) NOT NULL DEFAULT '0',
  `cost_xp` int(11) NOT NULL DEFAULT '0',
  `cost_currants` int(11) NOT NULL DEFAULT '0',
  `yield` int(11) NOT NULL DEFAULT '1',
  `harvest` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=183 ;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`id`, `product_id`, `cost_energy`, `cost_mood`, `cost_xp`, `cost_currants`, `yield`, `harvest`) VALUES
(1, 1, 0, 0, 0, 0, 1, 0),
(2, 2, -5, 1, 2, 0, 6, 1),
(3, 3, -3, 0, 0, 0, 1, 0),
(4, 4, 0, 0, 0, 0, 1, 0),
(5, 5, 0, 0, 0, 0, 1, 0),
(6, 6, -5, 0, 0, 0, 1, 0),
(7, 7, 0, 0, 0, 0, 1, 0),
(8, 8, -4, 0, 0, 0, 1, 0),
(9, 9, -5, 1, 2, 0, 6, 1),
(10, 10, -5, 0, 0, 0, 1, 0),
(11, 11, 0, 0, 0, 0, 1, 0),
(12, 12, 0, 0, 0, 0, 1, 0),
(13, 13, 0, 0, 0, 0, 1, 0),
(14, 14, 0, 0, 0, 0, 1, 0),
(15, 15, -4, 0, 0, 0, 1, 0),
(16, 16, 0, 0, 0, 0, 1, 0),
(17, 17, 0, 0, 0, 0, 1, 0),
(18, 18, 0, 0, 0, 0, 1, 0),
(19, 19, 0, 0, 0, 0, 1, 0),
(20, 20, -2, 0, 0, 0, 1, 0),
(21, 21, -3, 0, 0, 0, 1, 0),
(22, 22, -2, 0, 0, 0, 1, 0),
(23, 23, 0, 0, 0, 0, 1, 0),
(24, 24, 0, 0, 0, 0, 1, 0),
(25, 25, 0, 0, 0, 0, 1, 0),
(26, 26, 0, 0, 0, 0, 1, 0),
(27, 27, 7, 0, 0, 0, 1, 0),
(28, 28, 0, 0, 0, 0, 1, 0),
(29, 29, -5, 0, 0, 0, 1, 0),
(30, 30, 0, 0, 0, 0, 1, 0),
(31, 31, -3, 0, 0, 0, 1, 0),
(32, 32, 0, 0, 0, 0, 1, 0),
(33, 33, -5, 1, 2, 0, 6, 1),
(34, 34, -13, 0, 0, 0, 1, 0),
(35, 35, -4, 0, 0, 0, 1, 0),
(36, 36, 0, 0, 0, 0, 1, 0),
(37, 37, -2, 0, 0, 0, 1, 0),
(38, 38, 0, 0, 0, 0, 1, 0),
(39, 39, -7, 0, 0, 1, 2, 0),
(40, 40, -4, 0, 0, 0, 1, 0),
(41, 41, 0, 0, 0, 0, 1, 0),
(42, 42, 0, 0, 0, 0, 1, 0),
(43, 43, 0, 0, 0, 0, 1, 0),
(44, 44, 0, 0, 0, 0, 1, 0),
(45, 45, 0, 0, 0, 0, 1, 0),
(46, 46, 0, 0, 0, 0, 1, 0),
(47, 47, 0, 0, 0, 0, 1, 0),
(48, 48, -8, 0, 0, 0, 1, 0),
(49, 49, 0, 0, 0, 0, 1, 0),
(50, 50, -5, 1, 2, 0, 6, 1),
(51, 51, 0, 0, 0, 0, 1, 0),
(52, 52, 0, 0, 0, 0, 1, 0),
(53, 53, 0, 0, 0, 0, 1, 0),
(54, 54, -1, 0, 0, 0, 1, 0),
(55, 55, -11, 0, 0, 0, 1, 0),
(56, 56, -17, 0, 0, 0, 1, 0),
(57, 57, 0, 0, 0, 0, 1, 0),
(58, 58, 0, 0, 0, 0, 1, 0),
(59, 59, 0, 0, 0, 0, 1, 0),
(60, 60, 0, 0, 0, 0, 1, 0),
(61, 61, 0, 0, 0, 0, 1, 0),
(62, 62, 0, 0, 0, 0, 1, 0),
(63, 63, 0, 0, 0, 0, 1, 0),
(64, 64, 0, 0, 0, 0, 1, 0),
(65, 65, 0, 0, 0, 0, 1, 0),
(66, 66, -2, 1, 0, 0, 5, 1),
(67, 67, 4, 0, 0, 0, 1, 0),
(68, 68, -1, 0, 0, 0, 1, 0),
(69, 69, 0, 0, 0, 0, 1, 0),
(70, 70, 0, 0, 0, 0, 1, 0),
(71, 71, -6, 0, 0, 0, 1, 0),
(72, 72, -6, 0, 0, 0, 1, 0),
(73, 73, -10, 0, 0, 0, 1, 0),
(74, 74, 0, 0, 0, 0, 1, 0),
(75, 75, 0, 0, 0, 0, 1, 0),
(76, 76, -4, 0, 0, 0, 1, 0),
(77, 77, -2, 0, 0, 0, 1, 0),
(78, 78, 0, 0, 0, 0, 1, 0),
(79, 79, 0, 0, 0, 0, 1, 0),
(80, 80, 6, 0, 0, 0, 1, 0),
(81, 81, -3, 0, 0, 0, 1, 0),
(82, 82, -12, 0, 0, 0, 1, 0),
(83, 83, -2, 0, 0, 0, 1, 0),
(84, 84, 0, 0, 0, 0, 1, 0),
(85, 85, 0, 0, 0, 0, 1, 0),
(86, 86, -4, 0, 0, 0, 1, 0),
(87, 87, -4, 4, 10, 0, 3, 1),
(88, 88, -8, 0, 0, 0, 1, 0),
(89, 89, -17, 0, 0, 0, 1, 0),
(90, 90, 0, 0, 0, 0, 1, 0),
(91, 91, 0, 0, 0, 0, 1, 0),
(92, 92, 0, 0, 0, 0, 1, 0),
(93, 93, 0, 0, 0, 0, 1, 0),
(94, 94, -2, 0, 0, 0, 1, 0),
(95, 95, 0, 0, 0, 0, 1, 0),
(96, 96, 0, 0, 0, 0, 1, 0),
(97, 97, -4, 0, 0, 0, 1, 0),
(98, 98, 0, 0, 0, 0, 1, 0),
(99, 99, 0, 0, 0, 0, 1, 0),
(100, 100, 0, 0, 0, 0, 1, 0),
(101, 101, 0, 0, 0, 0, 1, 0),
(102, 102, 0, 0, 0, 0, 1, 0),
(103, 103, 0, 0, 0, 0, 1, 0),
(104, 104, -3, 0, 0, 0, 1, 0),
(105, 105, 0, 0, 0, 0, 1, 0),
(106, 106, 0, 0, 0, 0, 1, 0),
(107, 107, -2, 0, 0, 0, 1, 0),
(108, 108, -1, 0, 0, 0, 1, 0),
(109, 109, -4, 0, 0, 0, 1, 0),
(110, 110, 0, 0, 0, 0, 1, 0),
(111, 111, -5, 1, 2, 0, 6, 1),
(112, 112, 0, 0, 0, 0, 1, 0),
(113, 113, 0, 0, 0, 0, 1, 1),
(114, 114, -3, 0, 0, 0, 1, 0),
(115, 115, 0, 0, 0, 0, 1, 0),
(116, 116, 0, 0, 0, 0, 1, 0),
(117, 117, 0, 0, 0, 0, 1, 0),
(118, 118, 0, 0, 0, 0, 1, 0),
(119, 119, 0, 0, 0, 0, 1, 0),
(120, 120, 0, 0, 0, 0, 1, 0),
(121, 121, 0, 0, 0, 0, 1, 0),
(122, 122, 0, 0, 0, 0, 1, 0),
(123, 123, -9, 0, 0, 0, 1, 0),
(124, 124, 0, 0, 0, 0, 1, 0),
(125, 125, 0, 0, 0, 0, 1, 0),
(126, 126, -3, 0, 0, 0, 1, 0),
(127, 127, 0, 0, 0, 0, 1, 0),
(128, 128, 0, 0, 0, 0, 1, 0),
(129, 129, 0, 0, 0, 0, 1, 0),
(130, 130, 0, 0, 0, 0, 1, 0),
(131, 131, 0, 0, 0, 0, 1, 0),
(132, 132, -3, 0, 0, 0, 1, 0),
(133, 133, 0, 0, 0, 0, 1, 0),
(134, 134, 0, 0, 0, 0, 1, 0),
(135, 135, 0, 0, 0, 0, 1, 0),
(136, 136, 0, 0, 0, 0, 1, 0),
(137, 137, -5, -5, 0, 0, 1, 0),
(138, 138, -2, 0, 0, 0, 1, 0),
(139, 139, 0, 0, 0, 0, 1, 0),
(140, 140, 0, 0, 0, 0, 1, 0),
(141, 141, -4, 0, 0, 0, 1, 0),
(142, 142, 0, 0, 0, 0, 1, 0),
(143, 143, -12, 0, 0, 0, 1, 0),
(144, 144, -5, 0, 0, 0, 1, 0),
(145, 145, 0, 0, 0, 0, 1, 0),
(146, 146, 0, 0, 0, 0, 1, 0),
(147, 147, 0, 0, 0, 0, 1, 0),
(148, 148, -10, 0, 0, 0, 1, 0),
(149, 149, -20, -20, 0, 0, 1, 0),
(150, 150, 0, 0, 0, 0, 1, 0),
(151, 151, 0, 0, 0, 0, 1, 0),
(152, 152, -4, 0, 0, 0, 1, 0),
(153, 153, 0, 0, 0, 0, 1, 0),
(154, 154, 0, 0, 0, 0, 1, 0),
(155, 155, -12, 0, 0, 0, 1, 0),
(156, 156, 0, 0, 0, 0, 1, 0),
(157, 157, 0, 0, 0, 0, 1, 0),
(158, 158, 0, 0, 0, 0, 1, 0),
(159, 159, -10, 0, 0, 0, 3, 1),
(160, 160, 0, 0, 0, 0, 1, 0),
(161, 161, -7, 0, 0, 0, 1, 0),
(162, 162, -16, 0, 0, 0, 1, 0),
(163, 163, 0, 0, 0, 0, 1, 0),
(164, 164, 0, 0, 0, 0, 1, 0),
(165, 165, 0, 0, 0, 0, 1, 0),
(166, 166, 0, 0, 0, 0, 1, 0),
(167, 167, 0, 0, 0, 0, 1, 0),
(168, 168, 0, 0, 0, 0, 1, 0),
(169, 169, 0, 0, 0, 0, 1, 0),
(170, 170, 0, 0, 0, 0, 1, 0),
(171, 171, 0, 0, 0, 0, 1, 0),
(172, 172, 0, 0, 0, 0, 1, 0),
(173, 173, 0, 0, 0, 0, 1, 0),
(174, 174, -4, 0, 0, 0, 1, 0),
(175, 175, -6, 0, 0, 0, 1, 0),
(176, 176, 0, 0, 0, 0, 1, 0),
(177, 177, 0, 0, 0, 0, 1, 0),
(178, 178, 0, 0, 0, 0, 1, 0),
(179, 179, 0, 0, 0, 0, 1, 0),
(180, 180, 0, 0, 0, 0, 1, 0),
(181, 181, 0, 0, 0, 0, 1, 0),
(182, 182, 0, 0, 0, 0, 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buffs`
--
ALTER TABLE `buffs`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ingredients`
--
ALTER TABLE `ingredients`
 ADD PRIMARY KEY (`recipe_id`,`item_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_categories`
--
ALTER TABLE `item_categories`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_subcategories`
--
ALTER TABLE `item_subcategories`
 ADD PRIMARY KEY (`cat_id`,`sub_id`);

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buffs`
--
ALTER TABLE `buffs`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=183;
--
-- AUTO_INCREMENT for table `item_categories`
--
ALTER TABLE `item_categories`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=183;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
