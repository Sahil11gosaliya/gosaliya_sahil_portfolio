-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 18, 2023 at 03:44 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: gosaliya_sahil_portfolio_db
--

-- --------------------------------------------------------

--
-- Table structure for table about
--

CREATE TABLE about (
  author_id int NOT NULL,
  author_name varchar(50) NOT NULL,
  author_info text NOT NULL,
  author_image varchar(255) NOT NULL,
  author_resume text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table about
--

INSERT INTO about (author_id, author_name, author_info, author_image, author_resume) VALUES
(1, 'Sahil Gosaliya', 'Front Web Developer', 'sg.jpg', 'Resume');

-- --------------------------------------------------------

--
-- Table structure for table contact
--

CREATE TABLE contact (
  user_id int NOT NULL,
  user_name varchar(100) NOT NULL,
  user_email varchar(50) NOT NULL,
  user_workplace varchar(50) NOT NULL,
  user_feedback text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table contact
--

INSERT INTO contact (user_id, user_name, user_email, user_workplace, user_feedback) VALUES
(1, 'John Doe', 'john.doe@example.com', 'Company A', 'Great service!'),
(2, 'Jane Smith', 'jane.smith@example.com', 'Company B', 'Excellent support team.'),
(3, 'Bob Johnson', 'bob.johnson@example.com', 'Company C', 'Very satisfied with the product.'),
(4, 'Alice Williams', 'alice.williams@example.com', 'Company D', 'Quick response and helpful.'),
(5, 'Charlie Brown', 'charlie.brown@example.com', 'Company E', 'The website looks amazing!'),
(6, 'User 96', 'user96@example.com', 'Company X', 'Impressed with the professionalism.'),
(7, 'User 97', 'user97@example.com', 'Company Y', 'Easy to navigate website.'),
(8, 'User 98', 'user98@example.com', 'Company Z', 'Prompt communication.'),
(9, 'User 99', 'user99@example.com', 'Company W', 'Highly recommend their services.'),
(10, 'User 100', 'user100@example.com', 'Company V', 'Top-notch support and quality.'),
(11, 'User 101', 'user101@example.com', 'Company U', 'Great overall experience.');

-- --------------------------------------------------------

--
-- Table structure for table content_writing
--

CREATE TABLE content_writing (
  cw_id int NOT NULL,
  cw_name varchar(50) NOT NULL,
  cw_desc text NOT NULL,
  genre varchar(50) NOT NULL,
  work_id int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table content_writing
--

INSERT INTO content_writing (cw_id, cw_name, cw_desc, genre, work_id) VALUES
(1, 'SEO-Optimized Blog Series', 'A series of blogs focused on SEO strategies.', 'SEO', 2),
(2, 'Technology Whitepapers', 'In-depth whitepapers on the latest tech trends.', 'Technology', 6),
(3, 'Creative Copywriting', 'Compelling copy for product descriptions and ads.', 'Copywriting', 10),
(4, 'Social Media Content Creation', 'Engaging content for various social media platforms.', 'Social Media', 14);

-- --------------------------------------------------------

--
-- Table structure for table illustrations
--

CREATE TABLE illustrations (
  ill_id int NOT NULL,
  ill_name varchar(50) NOT NULL,
  ill_img varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  ill_desc text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  genre varchar(50) NOT NULL,
  work_id int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table illustrations
--

INSERT INTO illustrations (ill_id, ill_name, ill_img, ill_desc, genre, work_id) VALUES
(1, 'Fantasy World Illustration', 'fantasy_ill.jpg', 'Imaginative illustrations for a fantasy book.', 'Fantasy', 3),
(2, 'Children\'s Book Characters', 'childrens_ill.jpg', 'Whimsical characters for a children\'s book.', 'Children\'s Book', 7),
(3, 'Nature-themed Digital Art', 'nature_ill.jpg', 'Digital art depicting nature scenes.', 'Digital Art', 11),
(4, 'Sci-Fi Book Cover Art', 'scifi_ill.jpg', 'Futuristic illustrations for a sci-fi book cover.', 'Sci-Fi', 15);

-- --------------------------------------------------------

--
-- Table structure for table motion_design
--

CREATE TABLE motion_design (
  md_id int NOT NULL,
  md_name varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  md_vid varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  md_desc text NOT NULL,
  genre varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  work_id int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table motion_design
--

INSERT INTO motion_design (md_id, md_name, md_vid, md_desc, genre, work_id) VALUES
(1, 'Product Explainer Animation', 'product_animation.mp4', 'An animation showcasing product features.', 'Product Animation', 4),
(2, 'Educational Animation Series', 'edu_animation.mp4', 'Animated series for educational content.', 'Educational Animation', 8),
(3, 'Health App Promo Animation', 'health_app_animation.mp4', 'Promotional animation for a health app.', 'Health App Promo', 12),
(4, 'Music App Interface Animation', 'music_app_animation.mp4', 'Animation showcasing a music app interface.', 'Music App Interface', 16);

-- --------------------------------------------------------

--
-- Table structure for table websites
--

CREATE TABLE websites (
  web_id int NOT NULL,
  web_name varchar(50) NOT NULL,
  web_image varchar(500) NOT NULL,
  web_desc text NOT NULL,
  genre varchar(100) NOT NULL,
  work_id int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table websites
--

INSERT INTO websites (web_id, web_name, web_image, web_desc, genre, work_id) VALUES
(1, 'Portfolio Website Redesign', 'portfolio_web.jpg', 'Redesigning a portfolio website for a creative professional.', 'Portfolio', 1),
(2, 'E-commerce Platform Development', 'ecommerce_web.jpg', 'Developing an e-commerce platform for online sales.', 'E-commerce', 5),
(3, 'Corporate Website Revamp', 'corporate_web.jpg', 'Revamping the corporate website for a business.', 'Corporate', 9),
(4, 'Personal Blog Development', 'personal_blog.jpg', 'Creating a personal blog with customized features.', 'Personal Blog', 13);

-- --------------------------------------------------------

--
-- Table structure for table work_showcase
--

CREATE TABLE work_showcase (
  work_id int NOT NULL,
  work_name varchar(50) NOT NULL,
  work_genre varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table work_showcase
--

INSERT INTO work_showcase (work_id, work_name, work_genre) VALUES
(1, 'Portfolio Website Redesign', 'Web Development'),
(2, 'SEO Blog Series', 'Content Writing'),
(3, 'Fantasy Book Illustrations', 'Illustrations'),
(4, 'Product Explainer Animation', 'Motion Design'),
(5, 'E-commerce Platform Development', 'Web Development'),
(6, 'Travel Destination Guides', 'Content Writing'),
(7, 'Children\'s Book Illustrations', 'Illustrations'),
(8, 'Health App Promo Animation', 'Motion Design'),
(9, 'Corporate Website Revamp', 'Web Development'),
(10, 'Technology Whitepapers', 'Content Writing'),
(11, 'Sci-Fi Book Cover Illustrations', 'Illustrations'),
(12, 'Educational Animation Series', 'Motion Design'),
(13, 'Personal Blog Development', 'Web Development'),
(14, 'Social Media Content Creation', 'Content Writing'),
(15, 'Nature-themed Illustrations', 'Illustrations'),
(16, 'Music App Interface Animation', 'Motion Design');

--
-- Indexes for dumped tables
--

--
-- Indexes for table about
--
ALTER TABLE about
  ADD PRIMARY KEY (author_id);

--
-- Indexes for table contact
--
ALTER TABLE contact
  ADD PRIMARY KEY (user_id);

--
-- Indexes for table content_writing
--
ALTER TABLE content_writing
  ADD PRIMARY KEY (cw_id),
  ADD KEY fk_content_writing_work_showcase (work_id);

--
-- Indexes for table illustrations
--
ALTER TABLE illustrations
  ADD PRIMARY KEY (ill_id),
  ADD KEY fk_illustrations_work_showcase (work_id);

--
-- Indexes for table motion_design
--
ALTER TABLE motion_design
  ADD PRIMARY KEY (md_id),
  ADD KEY fk_motion_design_work_showcase (work_id);

--
-- Indexes for table websites
--
ALTER TABLE websites
  ADD PRIMARY KEY (web_id),
  ADD KEY fk_websites_work_showcase (work_id);

--
-- Indexes for table work_showcase
--
ALTER TABLE work_showcase
  ADD PRIMARY KEY (work_id);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table about
--
ALTER TABLE about
  MODIFY author_id int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table contact
--
ALTER TABLE contact
  MODIFY user_id int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table content_writing
--
ALTER TABLE content_writing
  MODIFY cw_id int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table illustrations
--
ALTER TABLE illustrations
  MODIFY ill_id int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table motion_design
--
ALTER TABLE motion_design
  MODIFY md_id int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table websites
--
ALTER TABLE websites
  MODIFY web_id int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table work_showcase
--
ALTER TABLE work_showcase
  MODIFY work_id int NOT NULL AUTO_INCREMENT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
