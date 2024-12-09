-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2024 at 04:02 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `corememories`
--

-- --------------------------------------------------------

--
-- Table structure for table `islandcontents`
--

CREATE TABLE `islandcontents` (
  `islandContentID` int(4) NOT NULL,
  `islandOfPersonalityID` int(4) NOT NULL,
  `image` varchar(300) DEFAULT NULL,
  `content` varchar(1000) NOT NULL,
  `color` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `islandcontents`
--

INSERT INTO `islandcontents` (`islandContentID`, `islandOfPersonalityID`, `image`, `content`, `color`) VALUES
(1, 1, 'HomePic1,HomePic2,HomePic3,HomePic4,HomePic5,HomePic6,HomePic7,HomePic8,HomePic9,HomePic10,HomePic11,HomePic12', '', '#e1ff00'),
(2, 2, 'HomePic8,HomePic2', 'Algaba Family,Hi there! Meet the Algaba Family. Our family is a small and loving one made up of four members: my mom Gemma; my dad Gener; my brother David; and me. We live a simple yet meaningful life cherishing the little things that make us happy.,Our furry family members add so much warmth to our home. There\'s Dos our sweet black-haired Aspin; Loki our nonchalant white shih tzu boy; and Uno the charming black offspring of Dos and Bear., Bear is our most beloved Golden Retriever who sadly left us too soon. Though Bear is no longer with us he remains forever in our hearts., In our family both humans and dogs share a bond of love and loyalty. Together we make every day special in our own simple way.', '#ff2bb1,#cb1168, #e12590'),
(3, 3, 'HReading,HPlaying,HListening,HWatching', 'Reading,Playing,Listening to music,Watching,I have a wide range of hobbies that keep me entertained and inspired. I enjoy watching all kinds of drama; anime; series; and movies; and I love diving into stories through manga; manhwa;and Wattpad. Music is a big part of my life—Taylor Swift and Keshi are among my favorite artists. Gaming is another passion; I enjoy playing gacha games; Minecraft; and FPS games. Beyond screen time; I stay active by playing badminton and dancing. Of course; indulging in delicious food is\r\nalways a favorite pastime; along with discovering new activities to love!', '#1fae41,#0b771f,#2bff59'),
(4, 4, 'Friend1,Friend2', 'High School,College,These are my friends. I\'m lucky to have amazing friends from both high school and college. My high school friends and I have shared an incredible bond since Grade 8 making it about eight years of friendship now. Even though we\'ve gone on to pursue different careers we always make time to catch up whether in person or through chats. In college I\'ve made great friends too. We\'ve been close for half a year now and it\'s always fun hanging out with them. Even with our different interests we get along really well which makes every moment together enjoyable.', '#ac22f0,#510b77,#b12bff'),
(5, 5, 'Bear1,Bear2,Bear3', 'My Baby Bear, Bear was a beloved Golden Retriever/Corgi/Shih Tzu mix and a cherished member of the family adopted on January 21 2023. Energetic; loving; and incredibly handsome he brought immense joy. Tragically Bear passed away on September 1 2024 at 3:00 a.m. after suffering a fractured leg caused by an accident with our other dog Dos. Despite plans to take him to the vet that morning Bear passed before help could be reached. Losing Bear was an incredibly heartbreaking experience and his memory is cherished daily. He is deeply missed and lovingly remembered with hopes that he’s at peace in heaven. I miss you my bear.', '#225cf0,#2b47ff,#1411cb');

-- --------------------------------------------------------

--
-- Table structure for table `islandsofpersonality`
--

CREATE TABLE `islandsofpersonality` (
  `islandOfPersonalityID` int(4) NOT NULL,
  `name` varchar(40) NOT NULL,
  `shortDescription` varchar(300) DEFAULT NULL,
  `longDescription` varchar(900) DEFAULT NULL,
  `color` varchar(100) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `islandsofpersonality`
--

INSERT INTO `islandsofpersonality` (`islandOfPersonalityID`, `name`, `shortDescription`, `longDescription`, `color`, `image`, `status`) VALUES
(1, 'Home', 'It shows some pics/snipets of my life.', '', '#e2d307,#5e5b06,#e0da26,#e2d307', '', ''),
(2, 'Family Island', 'All about my family', '', '#cb2282,#9a0e50,#cb1168,#9B3D72', '', ''),
(3, 'Hobbies Island', 'All about my hobbies', '', '#46ca72,#053c0e,#26bd51,#0e9a25', '', ''),
(4, 'Friends Island', 'All about my friends', '', '#8a46ca,#23053c,#8826bd,#510b77', '', ''),
(5, 'Sadness Island', 'About the most saddest thing that happened in my life', '', '#4667ca,#05163c,#2826bd,#0f0b77', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `islandcontents`
--
ALTER TABLE `islandcontents`
  ADD PRIMARY KEY (`islandContentID`);

--
-- Indexes for table `islandsofpersonality`
--
ALTER TABLE `islandsofpersonality`
  ADD PRIMARY KEY (`islandOfPersonalityID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `islandcontents`
--
ALTER TABLE `islandcontents`
  MODIFY `islandContentID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `islandsofpersonality`
--
ALTER TABLE `islandsofpersonality`
  MODIFY `islandOfPersonalityID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
