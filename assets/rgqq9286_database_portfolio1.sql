-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 26, 2024 at 02:42 PM
-- Server version: 10.6.16-MariaDB-cll-lve-log
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rgqq9286_database_portfolio1`
--

-- --------------------------------------------------------

--
-- Table structure for table `casestudy`
--

CREATE TABLE `casestudy` (
  `id` int(11) NOT NULL,
  `project_name` varchar(111) NOT NULL,
  `img` varchar(255) NOT NULL,
  `overview` varchar(555) NOT NULL,
  `dev_history` varchar(555) NOT NULL,
  `competitive_landscape` varchar(555) NOT NULL,
  `chalanges` varchar(555) NOT NULL,
  `strategies` varchar(555) NOT NULL,
  `results` varchar(555) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `casestudy`
--

INSERT INTO `casestudy` (`id`, `project_name`, `img`, `overview`, `dev_history`, `competitive_landscape`, `chalanges`, `strategies`, `results`) VALUES
(1, 'BlogZoid', './images/case-study-2.png', 'Blogzoid is a dynamic website launched in April, 2023 to cater to Readers.\n            Its main objective is to provide insightful content, reviews, and tutorials.', 'Started as a passion project in 2023, Blogzoid has grown into a comprehensive platform with a broad content range.', 'In the vast sea of blogging websites, Blogzoid aimed to differentiate itself through in-depth analysis, user-frIn the vast sea of blogging websites, Blogzoid aimed to differentiate itself through in-depth analysis, user-friendly tutorials.', 'Struggled initially with consistent content production due to resource constraints. Faced challenges in ranking for high-competition keywords.Retaining user engagement and reducing the bounce rate in the first quarter.', 'Collaborated with guest writers and influencers in the niche to maintain content flow.Leveraged social media platforms, especially [e.g., Pinterest], for content promotion.Introduced a monthly newsletter and interactive quizzes to enhance user engagement.', '\nAchieved a steady 30% growth in traffic.\nSuccessfully ranked for [X number of] high-competition keywords.\nRecorded a 10% increase in monthly newsletter sign-ups.');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `contact_name` varchar(200) NOT NULL,
  `contact_email` varchar(200) NOT NULL,
  `contact_phone` int(11) NOT NULL,
  `contact_message` varchar(5000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `contact_name`, `contact_email`, `contact_phone`, `contact_message`) VALUES
(1, 'Hit Patel', 'hitpatelca@gmail.com', 2147483647, 'hhjhjh'),
(2, 'Hit Patel', 'hitpatelca@gmail.com', 2147483647, 'vfsvssxvxvcv'),
(3, 'Hit Patel', 'h_patel161481@fanshaweonline.ca', 2147483647, 'finallllllyyyyyy done !\r\n'),
(4, 'Hit Patel', 'hitpatelca@gmail.com', 2147483647, 'dipoo unghto nahi'),
(5, 'Hit Patel', 'hitpatelca@gmail.com', 2147483647, 'sdcscsec'),
(6, 'Hit Patel', 'hitpatelca@gmail.com', 2147483647, 'csecdxdzcsdc'),
(7, 'Gubkkm jn', 'Binil', 0, 'Chin'),
(8, 'Hit Patel', 'hitpatelca@gmail.com', 2147483647, 'dvxv'),
(9, 'Harsh Patel', 'harshp4477@gmail.com', 2147483647, 'Hi Mr. Patel');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `popup_id` varchar(255) DEFAULT NULL,
  `project_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `description`, `image_path`, `popup_id`, `project_type`) VALUES
(1, 'Quatro', 'Introducing the reimagined Quatro—a beacon of exuberance and flavor that sets the stage for a whole new level of beverage enjoyment. Embarking on a journey of reinvention, Quatro emerges as the quintessence of taste, marrying innovation with a touch of chic elegance. Our revamped brand is a celebration of refined craftsmanship, promising a symphony of flavors that redefine the art of refreshment.   Complementing the website, our motion reel embodies the spirit of the rebranded Quatro in a mesmerizing visual narrative. From the inception of an idea to the final pour into a signature bottle, the motion reel offers a glimpse into the meticulous artistry behind every sip. Through seamless animations and evocative transitions, viewers are invited into the heart of our brand evolution, leaving them captivated and eager to experience the redefined essence of Quatro.\n\n\nThis isn\'t merely a rebranding; it\'s a testament to our commitment to crafting an unparalleled drinking experience. Quatro invites you to embrace this transformation—a fusion of innovation and sophistication, encapsulated in every bottle. Join us on a journey where taste transcends boundaries and refreshment is redefined. Welcome to the reimagined world of Quatro—where every sip narrates a tale of refined indulgence.', './images/quatro-ss.jpg', 'quatro-popup', 'Web Design'),
(2, 'CyberTruck', 'Introducing the mesmerizing Tesla Cybertruck animation—an avant-garde fusion of artistry and technological prowess created within the realm of Cinema 4D. Crafted under the guidance of my esteemed professor, this project was a testament to pushing the boundaries of innovation and design. In this stunning cinematic experience, witness the transformation of the iconic red Tesla Cybertruck as it dynamically morphs into a sleek obsidian black, showcasing the power of Box Field in Cinema 4D.', './images/tesla-cybertruck-web.png', 'cybertruck-popup', 'Animation'),
(3, 'Sportsnet Animation', 'In the realm of sports, where passion meets precision, my journey into the world of motion graphics came to life through a captivating assignment. Leveraging the dynamic capabilities of Cinema 4D, I embarked on a riveting venture to craft a triumphant sports motion graphic video. Divided into three distinct aspects, this project encapsulated the essence of athleticism, adrenaline, and dedication through a visual storytelling medium.The first facet delved into the art of motion, encapsulating the fluidity and grace inherent in athletes\' movements. Using Cinema 4D\'s versatile tools, I meticulously choreographed a symphony of agility, translating the raw energy of sports into a visual spectacle. From the graceful arc of a basketball shot to the powerful stride of a runner, each sequence was a testament to precision and meticulous detailing, embodying the essence of motion within the sports arena.\n\n\n\nThis sports motion graphic video, born from the fusion of creative vision and technical prowess within Cinema 4D, stands as a testament to the power of visual storytelling. It encapsulates the essence of motion, competition, and teamwork, serving as an homage to the spirit of sportsmanship that unites athletes and fans alike', './images/sportsnet-ss.png', 'sportsnet-popup', 'Motion Graphics'),
(4, NULL, NULL, './images/blogzoid-ss.png', 'casestudy', 'casestudy');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `casestudy`
--
ALTER TABLE `casestudy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `casestudy`
--
ALTER TABLE `casestudy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
