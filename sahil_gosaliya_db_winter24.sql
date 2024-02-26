-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 26, 2024 at 09:48 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sahil_gosaliya_db_winter24`
--

-- --------------------------------------------------------

--
-- Table structure for table `case_study`
--

DROP TABLE IF EXISTS `case_study`;
CREATE TABLE IF NOT EXISTS `case_study` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `cs_name` varchar(100) NOT NULL,
  `cs_image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `c_link` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `case_study`
--

INSERT INTO `case_study` (`id`, `cs_name`, `cs_image`, `c_link`) VALUES
(1, 'STAR WARS', 'sw.png', 'https://github.com/Sahil11gosaliya/gosaliya_yabes_star_wars.git\r\n\r\n'),
(2, 'SONIC ZEN', 'earbuds.jpg', 'https://github.com/Sahil11gosaliya/gosaliya_sahil_sonic_zen_promo.git'),
(3, 'MUSIC MIXER', 'mm.jpg', 'https://github.com/Sahil11gosaliya/gosaliya_sahil_music_mixer.git');

-- --------------------------------------------------------

--
-- Table structure for table `case_study_media`
--

DROP TABLE IF EXISTS `case_study_media`;
CREATE TABLE IF NOT EXISTS `case_study_media` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `c_id` int NOT NULL,
  `c_img` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `c_desc` varchar(10000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `c_desc2` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `c_desc3` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `case_study_media`
--

INSERT INTO `case_study_media` (`id`, `c_id`, `c_img`, `c_desc`, `c_desc2`, `c_desc3`) VALUES
(1, 1, 'star_wars1.png', 'This is a one-page collaborative web application that allows you to explore the data of star wars characters by calling out JSON from Star Wars API using basic HTML, CSS, and JavaScript. It uses minify css with SaaS modules, IIFE as Javascript with defer and many more interactive features like Greensock (GSAP) animation, API Calls, Dynamic Content and Audio Elements from Mobile to Desktop Screen Layout.', 'When you click on a character it pulls the data from its API and with the specified grid css and js it organizes content with animation.', 'Making it responsive for mobile made it challenging to resize and apply css due to API calls but after limiting and addressing the actual number of movies it works smoothly.'),
(2, 1, 'star_wars2.png', '', '', ''),
(3, 1, 'star_wars3.png', '', '', ''),
(4, 1, 'star_wars4.png', '', '', ''),
(5, 1, 'star_wars5.png', '', '', ''),
(6, 2, 'sz1.png', 'This is a single page interactive earbuds marketing site. It combined with html, css and js with IIFE functionality. Sonic Zen is a fictional brand with an interactive 3d Model, customized logo, parallax scrolling and much more.', 'Parallax Scroll: Enjoy a visually engaging experience with parallax scrolling as you explore the Sonic Zen promo page.\r\n\r\nX-ray Model Viewer on Scroll:\r\nVersion 1.1: As you scroll through the X-ray section, discover hidden layers revealing the intricate details of Sonic Zen earbuds.\r\nVersion 1.2: Enhance your X-ray experience with additional scroll-triggered animations, providing a dynamic and interactive view.\r\n', 'AR Viewer:\r\n\r\nVersion 2.0: Immerse yourself in an augmented reality experience by clicking the \"View in your space\" button in the model viewer section.\r\nVersion 2.1: Explore enhanced AR functionalities triggered by specific scroll actions, bringing the Sonic Zen earbuds into your surroundings.'),
(7, 2, 'sz2.png', '', '', ''),
(8, 2, 'sz3.png', '', '', ''),
(9, 2, 'sz4.png', '', '', ''),
(10, 2, 'sz5.png', '', '', ''),
(11, 3, 'mm1.png', 'This is a simple one page web application to explore and manipulate the tunes with basic html, css and js functionality by implementing drag and drop.', 'You can drag the music files and drop them onto the drop zones to start playing the music with event handlers in js along with play, pause and reset functionality. It also has a volume bar to control the volume and a nice css animation of beats.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum'),
(12, 3, 'mm2.png', '', '', ''),
(13, 3, 'mm3.png', '', '', ''),
(14, 3, 'mm4.png', '', '', ''),
(15, 3, 'mm.webp', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `category_id` smallint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `name`) VALUES
(1, 'Illustrations'),
(2, 'Motion Graphics'),
(3, 'Websites'),
(4, 'Content Writing');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` text NOT NULL,
  `company` varchar(200) NOT NULL,
  `phone` int NOT NULL,
  `msg` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `company`, `phone`, `msg`) VALUES
(1, 'James Wan', 'hillhouse344@horro.mail.com', '', 87465225, 'Get back to me as soon as possible'),
(2, 'Sahilkumar Gosaliya', 'gosaliya1112000@gmail.com', '', 2147483647, 'Hello World'),
(3, 'Jack black', 'kingkong@hotmail.com', '', 8545566, 'Godzilla is king'),
(4, 'Sahilkumar Gosaliya', 'gosaliya1112000@gmail.com', 'sdfsdgsdg', 2147483647, 'Hello World');

-- --------------------------------------------------------

--
-- Table structure for table `info_tbl`
--

DROP TABLE IF EXISTS `info_tbl`;
CREATE TABLE IF NOT EXISTS `info_tbl` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `text` text NOT NULL,
  `img` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
CREATE TABLE IF NOT EXISTS `projects` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `cat_id` int NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `proj_desc` text NOT NULL,
  `link` varchar(100) NOT NULL,
  `video` varchar(100) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `cat_id`, `title`, `image`, `proj_desc`, `link`, `video`, `text`) VALUES
(1, 1, 'Human Portrait', 'artwork.png', 'This project showcases my expertise in Adobe Illustrator. Starting with the pen tool, I intricately trace the original image, utilizing tools like the shape builder, pencil, and brush for crafting diverse elements.\r\n\r\nEach component undergoes a creative process, featuring gradient patterns and\r\nstrategic arrangements for faithful replication. The background is enhanced with vibrant butterflies using tools, puppet settings, and mesh adjustments, creating a dynamic and visually appealing result.', '', '', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
