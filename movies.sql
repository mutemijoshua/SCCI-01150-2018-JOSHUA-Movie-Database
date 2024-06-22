-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2024 at 02:22 PM
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
-- Database: `movies`
--

-- --------------------------------------------------------

--
-- Table structure for table `directors`
--

CREATE TABLE `directors` (
  `directorid` int(11) NOT NULL,
  `name` int(11) NOT NULL,
  `dob` int(11) NOT NULL,
  `passportphoto` varchar(1000) NOT NULL,
  `nationality` varchar(50) NOT NULL,
  `addedby` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `datedeleted` datetime NOT NULL,
  `deletedby` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `genreid` int(11) NOT NULL,
  `genrename` varchar(50) NOT NULL,
  `dateadded` datetime NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `deletedby` int(11) NOT NULL,
  `datedeleted` datetime NOT NULL,
  `addedby` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `languageid` int(11) NOT NULL,
  `languagename` varchar(50) NOT NULL,
  `darteaddded` datetime NOT NULL,
  `addedby` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `deletedby` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `mediaid` int(11) NOT NULL,
  `medianame` int(11) NOT NULL,
  `dateadded` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `deletedby` int(11) NOT NULL,
  `datedeleted` datetime NOT NULL,
  `adddedby` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `moviecast`
--

CREATE TABLE `moviecast` (
  `movieid` int(11) NOT NULL,
  `roleid` int(11) NOT NULL,
  `rolename` varchar(50) NOT NULL,
  `dateadded` datetime NOT NULL,
  `userid` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `deletedby` int(11) NOT NULL,
  `datedeleted` datetime NOT NULL,
  `starid` int(11) NOT NULL,
  `addedby` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `moviegenres`
--

CREATE TABLE `moviegenres` (
  `movieid` int(11) NOT NULL,
  `genreid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `datedeleted` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `movielanguages`
--

CREATE TABLE `movielanguages` (
  `id` int(11) NOT NULL,
  `movieid` int(11) NOT NULL,
  `languageid` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `addedby` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `datedeleted` datetime NOT NULL,
  `deletedeby` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `moviemedia`
--

CREATE TABLE `moviemedia` (
  `movieid` int(11) NOT NULL,
  `mediaid` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `userid` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `datedeleted` datetime NOT NULL,
  `deletedby` int(11) NOT NULL,
  `addedby` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `movieproductioncompanies`
--

CREATE TABLE `movieproductioncompanies` (
  `movieid` int(11) NOT NULL,
  `comapanyid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `dateadded` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `datedeleted` datetime NOT NULL,
  `deletedby` int(11) NOT NULL,
  `addedby` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `movieresolution`
--

CREATE TABLE `movieresolution` (
  `movieid` int(11) NOT NULL,
  `resolutionid` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `deletedby` int(11) NOT NULL,
  `datedeleted` datetime NOT NULL,
  `addedby` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `movieroles`
--

CREATE TABLE `movieroles` (
  `roleid` int(11) NOT NULL,
  `roledescription` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `movieid` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `releasedate` date NOT NULL,
  `runningtime` time NOT NULL,
  `synopsis` varchar(100) NOT NULL,
  `cover` varchar(50) NOT NULL,
  `dateadded` datetime NOT NULL,
  `addedby` int(11) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `deletedby` int(11) DEFAULT NULL,
  `datedeleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nationalities`
--

CREATE TABLE `nationalities` (
  `countryid` int(11) NOT NULL,
  `countryname` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `objects`
--

CREATE TABLE `objects` (
  `objectsid` int(11) NOT NULL,
  `objectname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `previledges`
--

CREATE TABLE `previledges` (
  `userid` int(11) NOT NULL,
  `objectid` int(11) NOT NULL,
  `valid` tinyint(1) NOT NULL,
  `dateadded` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `addedby` int(11) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productioncompanies`
--

CREATE TABLE `productioncompanies` (
  `companyid` int(11) NOT NULL,
  `companyname` varchar(50) NOT NULL,
  `dateadded` datetime NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `datedeleted` datetime NOT NULL,
  `deletedby` int(11) NOT NULL,
  `addedby` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resolution`
--

CREATE TABLE `resolution` (
  `resolutionid` int(11) NOT NULL,
  `resolutionname` varchar(50) NOT NULL,
  `dateadded` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `deletedby` int(11) NOT NULL,
  `datedeleted` datetime NOT NULL,
  `addedby` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `roleid` int(11) NOT NULL,
  `rolename` varchar(50) NOT NULL,
  `dateadded` datetime NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `addedby` int(11) NOT NULL,
  `datedeleted` datetime NOT NULL,
  `deletedby` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stars`
--

CREATE TABLE `stars` (
  `starid` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `nationalid` int(11) NOT NULL,
  `photo` varchar(1000) NOT NULL,
  `alist` int(11) NOT NULL,
  `addedby` int(11) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `datedeleted` datetime DEFAULT NULL,
  `deletedby` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `salt` varchar(50) NOT NULL,
  `systemadmin` tinyint(1) NOT NULL,
  `accountactive` tinyint(1) NOT NULL,
  `dateadded` datetime NOT NULL,
  `addedby` int(11) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `directors`
--
ALTER TABLE `directors`
  ADD PRIMARY KEY (`directorid`),
  ADD KEY `addedby` (`addedby`),
  ADD KEY `deletedby` (`deletedby`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`genreid`),
  ADD KEY `deletedby` (`deletedby`),
  ADD KEY `addedby` (`addedby`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`languageid`),
  ADD KEY `addedby` (`addedby`),
  ADD KEY `deletedby` (`deletedby`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`mediaid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `adddedby` (`adddedby`),
  ADD KEY `deletedby` (`deletedby`);

--
-- Indexes for table `moviecast`
--
ALTER TABLE `moviecast`
  ADD KEY `movieid` (`movieid`),
  ADD KEY `roleid` (`roleid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `deletedby` (`deletedby`),
  ADD KEY `addedby` (`addedby`),
  ADD KEY `starid` (`starid`);

--
-- Indexes for table `movielanguages`
--
ALTER TABLE `movielanguages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movieid` (`movieid`),
  ADD KEY `addedby` (`addedby`),
  ADD KEY `languageid` (`languageid`),
  ADD KEY `deletedeby` (`deletedeby`);

--
-- Indexes for table `moviemedia`
--
ALTER TABLE `moviemedia`
  ADD KEY `movieid` (`movieid`),
  ADD KEY `mediaid` (`mediaid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `deletedby` (`deletedby`),
  ADD KEY `addedby` (`addedby`);

--
-- Indexes for table `movieproductioncompanies`
--
ALTER TABLE `movieproductioncompanies`
  ADD KEY `movieid` (`movieid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `deletedby` (`deletedby`),
  ADD KEY `addedby` (`addedby`),
  ADD KEY `comapanyid` (`comapanyid`);

--
-- Indexes for table `movieresolution`
--
ALTER TABLE `movieresolution`
  ADD KEY `movieid` (`movieid`),
  ADD KEY `resolutionid` (`resolutionid`),
  ADD KEY `deletedby` (`deletedby`),
  ADD KEY `addedby` (`addedby`);

--
-- Indexes for table `movieroles`
--
ALTER TABLE `movieroles`
  ADD PRIMARY KEY (`roleid`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movieid`),
  ADD KEY `addedby` (`addedby`),
  ADD KEY `deletedby` (`deletedby`);

--
-- Indexes for table `nationalities`
--
ALTER TABLE `nationalities`
  ADD PRIMARY KEY (`countryid`);

--
-- Indexes for table `objects`
--
ALTER TABLE `objects`
  ADD PRIMARY KEY (`objectsid`);

--
-- Indexes for table `previledges`
--
ALTER TABLE `previledges`
  ADD KEY `userid` (`userid`),
  ADD KEY `objectid` (`objectid`),
  ADD KEY `addedby` (`addedby`),
  ADD KEY `deletedby` (`deletedby`);

--
-- Indexes for table `productioncompanies`
--
ALTER TABLE `productioncompanies`
  ADD PRIMARY KEY (`companyid`),
  ADD KEY `deletedby` (`deletedby`),
  ADD KEY `addedby` (`addedby`);

--
-- Indexes for table `resolution`
--
ALTER TABLE `resolution`
  ADD PRIMARY KEY (`resolutionid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `deletedby` (`deletedby`),
  ADD KEY `addedby` (`addedby`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`roleid`),
  ADD KEY `addedby` (`addedby`),
  ADD KEY `deletedby` (`deletedby`);

--
-- Indexes for table `stars`
--
ALTER TABLE `stars`
  ADD PRIMARY KEY (`starid`),
  ADD KEY `nationalid` (`nationalid`),
  ADD KEY `addedby` (`addedby`),
  ADD KEY `deletedby` (`deletedby`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `directors`
--
ALTER TABLE `directors`
  MODIFY `directorid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `genreid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `languageid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `mediaid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `movielanguages`
--
ALTER TABLE `movielanguages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `movieroles`
--
ALTER TABLE `movieroles`
  MODIFY `roleid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `movieid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nationalities`
--
ALTER TABLE `nationalities`
  MODIFY `countryid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `objects`
--
ALTER TABLE `objects`
  MODIFY `objectsid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productioncompanies`
--
ALTER TABLE `productioncompanies`
  MODIFY `companyid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resolution`
--
ALTER TABLE `resolution`
  MODIFY `resolutionid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `roleid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stars`
--
ALTER TABLE `stars`
  MODIFY `starid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `directors`
--
ALTER TABLE `directors`
  ADD CONSTRAINT `directors_ibfk_1` FOREIGN KEY (`addedby`) REFERENCES `users` (`userid`),
  ADD CONSTRAINT `directors_ibfk_2` FOREIGN KEY (`deletedby`) REFERENCES `users` (`userid`);

--
-- Constraints for table `genres`
--
ALTER TABLE `genres`
  ADD CONSTRAINT `genres_ibfk_1` FOREIGN KEY (`deletedby`) REFERENCES `users` (`userid`),
  ADD CONSTRAINT `genres_ibfk_2` FOREIGN KEY (`addedby`) REFERENCES `users` (`userid`);

--
-- Constraints for table `languages`
--
ALTER TABLE `languages`
  ADD CONSTRAINT `languages_ibfk_1` FOREIGN KEY (`addedby`) REFERENCES `users` (`userid`),
  ADD CONSTRAINT `languages_ibfk_2` FOREIGN KEY (`deletedby`) REFERENCES `users` (`userid`);

--
-- Constraints for table `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `media_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`),
  ADD CONSTRAINT `media_ibfk_2` FOREIGN KEY (`adddedby`) REFERENCES `users` (`userid`),
  ADD CONSTRAINT `media_ibfk_3` FOREIGN KEY (`deletedby`) REFERENCES `users` (`userid`);

--
-- Constraints for table `moviecast`
--
ALTER TABLE `moviecast`
  ADD CONSTRAINT `moviecast_ibfk_1` FOREIGN KEY (`movieid`) REFERENCES `movies` (`movieid`),
  ADD CONSTRAINT `moviecast_ibfk_2` FOREIGN KEY (`roleid`) REFERENCES `roles` (`roleid`),
  ADD CONSTRAINT `moviecast_ibfk_3` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`),
  ADD CONSTRAINT `moviecast_ibfk_4` FOREIGN KEY (`deletedby`) REFERENCES `users` (`userid`),
  ADD CONSTRAINT `moviecast_ibfk_5` FOREIGN KEY (`addedby`) REFERENCES `users` (`userid`),
  ADD CONSTRAINT `moviecast_ibfk_6` FOREIGN KEY (`starid`) REFERENCES `stars` (`starid`);

--
-- Constraints for table `movielanguages`
--
ALTER TABLE `movielanguages`
  ADD CONSTRAINT `movielanguages_ibfk_1` FOREIGN KEY (`movieid`) REFERENCES `movies` (`movieid`),
  ADD CONSTRAINT `movielanguages_ibfk_2` FOREIGN KEY (`addedby`) REFERENCES `users` (`userid`),
  ADD CONSTRAINT `movielanguages_ibfk_3` FOREIGN KEY (`languageid`) REFERENCES `languages` (`languageid`),
  ADD CONSTRAINT `movielanguages_ibfk_4` FOREIGN KEY (`deletedeby`) REFERENCES `users` (`userid`);

--
-- Constraints for table `moviemedia`
--
ALTER TABLE `moviemedia`
  ADD CONSTRAINT `moviemedia_ibfk_1` FOREIGN KEY (`movieid`) REFERENCES `movies` (`movieid`),
  ADD CONSTRAINT `moviemedia_ibfk_2` FOREIGN KEY (`mediaid`) REFERENCES `media` (`mediaid`),
  ADD CONSTRAINT `moviemedia_ibfk_3` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`),
  ADD CONSTRAINT `moviemedia_ibfk_4` FOREIGN KEY (`deletedby`) REFERENCES `users` (`userid`),
  ADD CONSTRAINT `moviemedia_ibfk_5` FOREIGN KEY (`addedby`) REFERENCES `users` (`userid`);

--
-- Constraints for table `movieproductioncompanies`
--
ALTER TABLE `movieproductioncompanies`
  ADD CONSTRAINT `movieproductioncompanies_ibfk_1` FOREIGN KEY (`movieid`) REFERENCES `movies` (`movieid`),
  ADD CONSTRAINT `movieproductioncompanies_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`),
  ADD CONSTRAINT `movieproductioncompanies_ibfk_3` FOREIGN KEY (`deletedby`) REFERENCES `users` (`userid`),
  ADD CONSTRAINT `movieproductioncompanies_ibfk_4` FOREIGN KEY (`addedby`) REFERENCES `users` (`userid`),
  ADD CONSTRAINT `movieproductioncompanies_ibfk_5` FOREIGN KEY (`comapanyid`) REFERENCES `productioncompanies` (`companyid`);

--
-- Constraints for table `movieresolution`
--
ALTER TABLE `movieresolution`
  ADD CONSTRAINT `movieresolution_ibfk_1` FOREIGN KEY (`movieid`) REFERENCES `movies` (`movieid`),
  ADD CONSTRAINT `movieresolution_ibfk_2` FOREIGN KEY (`resolutionid`) REFERENCES `resolution` (`resolutionid`),
  ADD CONSTRAINT `movieresolution_ibfk_3` FOREIGN KEY (`deletedby`) REFERENCES `users` (`userid`),
  ADD CONSTRAINT `movieresolution_ibfk_4` FOREIGN KEY (`addedby`) REFERENCES `users` (`userid`);

--
-- Constraints for table `movieroles`
--
ALTER TABLE `movieroles`
  ADD CONSTRAINT `movieroles_ibfk_1` FOREIGN KEY (`roleid`) REFERENCES `roles` (`roleid`);

--
-- Constraints for table `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `movies_ibfk_1` FOREIGN KEY (`addedby`) REFERENCES `users` (`userid`),
  ADD CONSTRAINT `movies_ibfk_2` FOREIGN KEY (`deletedby`) REFERENCES `users` (`userid`);

--
-- Constraints for table `previledges`
--
ALTER TABLE `previledges`
  ADD CONSTRAINT `previledges_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`),
  ADD CONSTRAINT `previledges_ibfk_2` FOREIGN KEY (`objectid`) REFERENCES `objects` (`objectsid`),
  ADD CONSTRAINT `previledges_ibfk_3` FOREIGN KEY (`addedby`) REFERENCES `users` (`userid`),
  ADD CONSTRAINT `previledges_ibfk_4` FOREIGN KEY (`deletedby`) REFERENCES `users` (`userid`);

--
-- Constraints for table `productioncompanies`
--
ALTER TABLE `productioncompanies`
  ADD CONSTRAINT `productioncompanies_ibfk_1` FOREIGN KEY (`deletedby`) REFERENCES `users` (`userid`),
  ADD CONSTRAINT `productioncompanies_ibfk_2` FOREIGN KEY (`addedby`) REFERENCES `users` (`userid`);

--
-- Constraints for table `resolution`
--
ALTER TABLE `resolution`
  ADD CONSTRAINT `resolution_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`),
  ADD CONSTRAINT `resolution_ibfk_2` FOREIGN KEY (`deletedby`) REFERENCES `users` (`userid`),
  ADD CONSTRAINT `resolution_ibfk_3` FOREIGN KEY (`addedby`) REFERENCES `users` (`userid`);

--
-- Constraints for table `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roles_ibfk_1` FOREIGN KEY (`addedby`) REFERENCES `users` (`userid`),
  ADD CONSTRAINT `roles_ibfk_2` FOREIGN KEY (`deletedby`) REFERENCES `users` (`userid`);

--
-- Constraints for table `stars`
--
ALTER TABLE `stars`
  ADD CONSTRAINT `stars_ibfk_1` FOREIGN KEY (`nationalid`) REFERENCES `nationalities` (`countryid`),
  ADD CONSTRAINT `stars_ibfk_2` FOREIGN KEY (`addedby`) REFERENCES `users` (`userid`),
  ADD CONSTRAINT `stars_ibfk_3` FOREIGN KEY (`deletedby`) REFERENCES `users` (`userid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
