-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 17, 2019 at 03:55 AM
-- Server version: 5.7.25
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `7901_lu`
--

-- --------------------------------------------------------

--
-- Table structure for table `Bookfor`
--

CREATE TABLE `Bookfor` (
  `Uid` int(11) NOT NULL,
  `Inspect_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Bookfor`
--

INSERT INTO `Bookfor` (`Uid`, `Inspect_id`) VALUES
(1, 1),
(5, 1),
(1, 2),
(2, 2),
(3, 2),
(1, 3),
(5, 3),
(1, 4),
(2, 4),
(1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `Buyer`
--

CREATE TABLE `Buyer` (
  `Uid` int(11) NOT NULL,
  `Budget` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Buyer`
--

INSERT INTO `Buyer` (`Uid`, `Budget`) VALUES
(1, 50000),
(2, 60000),
(3, 99999),
(4, 400000),
(5, 3000000);

-- --------------------------------------------------------

--
-- Table structure for table `Contain`
--

CREATE TABLE `Contain` (
  `Wishid` int(11) NOT NULL,
  `Uid` int(11) NOT NULL,
  `Postid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Contain`
--

INSERT INTO `Contain` (`Wishid`, `Uid`, `Postid`) VALUES
(1, 1, 3),
(2, 2, 6),
(3, 3, 5),
(4, 4, 4),
(5, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `Given`
--

CREATE TABLE `Given` (
  `Uid` int(11) NOT NULL,
  `Rid` int(11) NOT NULL,
  `Gid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Given`
--

INSERT INTO `Given` (`Uid`, `Rid`, `Gid`) VALUES
(2, 1, 2),
(2, 2, 1),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `Inspection`
--

CREATE TABLE `Inspection` (
  `Inspect_id` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Location` varchar(11) NOT NULL,
  `If_booked` tinyint(1) NOT NULL,
  `Postid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Inspection`
--

INSERT INTO `Inspection` (`Inspect_id`, `Date`, `Location`, `If_booked`, `Postid`) VALUES
(1, '2019-04-09', 'brisbane', 1, 5),
(2, '2019-04-12', 'brisbane', 1, 4),
(3, '2019-04-26', 'brisbane', 0, 1),
(4, '2019-07-19', 'brisbane', 1, 2),
(5, '2019-04-11', 'brisbane', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Post`
--

CREATE TABLE `Post` (
  `Postid` int(11) NOT NULL,
  `Date_post` date NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Description` varchar(1000) DEFAULT NULL,
  `Location` varchar(255) DEFAULT NULL,
  `Color` varchar(30) DEFAULT NULL,
  `Car_type` varchar(10) DEFAULT NULL,
  `Brand` varchar(30) DEFAULT NULL,
  `Price` int(11) NOT NULL,
  `manu_year` varchar(30) DEFAULT NULL,
  `Uid` int(11) NOT NULL,
  `Sid` int(11) NOT NULL,
  `Stars` int(1) DEFAULT '0',
  `Imageid` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Post`
--

INSERT INTO `Post` (`Postid`, `Date_post`, `Title`, `Description`, `Location`, `Color`, `Car_type`, `Brand`, `Price`, `manu_year`, `Uid`, `Sid`, `Stars`, `Imageid`) VALUES
(1, '2019-05-17', '2007 Honda Civic', 'Hi all selling this immaculate 2007 Honda civic car which been well looked after all the services been done. Comes with rwgo n rec. Price is negotiable with in reason. Wanted to sell asap. Inspection welcome. Pla don\'t dddddwaste time if u not interested', 'Brisbane', 'white', 'manu', 'Honda', 5000, '2007', 1, 1, 1, '1'),
(2, '2019-02-12', '2004 BMW X5', '2004 BMW X5 \r\n152000kms \r\nAuto \r\nCold a/c\r\nTan leather interior \r\nSunroof \r\n4.4L petrol v8\r\n19” wheels \r\nFactory airbags (rear airbags need replacing, can replace depending on agreed apon price) \r\nNew battery \r\n\r\nOwned by elder lady most it’s life \r\nRegularly serviced ', 'Brisbane', 'blue', 'Auto', 'BMW', 8500, '2004', 2, 2, 3, '2'),
(3, '2019-03-01', '2010 Mercedes-Benz B-Class', '2010 Mercedes Benz B180\r\nAutomatic \r\nPetrol \r\n198000kms \r\nBluetooth\r\nCruise control \r\nFull logbook history with two keys \r\nFront and rear sensors \r\nNew front brake pads \r\nGood tyres \r\nBlack in colour \r\nCold A/C\r\nImmaculate condition inside and out \r\nIt comes with rwc and registration \r\nFor more information please msg me thanks. ', 'Brisbane', 'Black', 'manu', 'Benz', 6500, '2010', 2, 1, 3, '3'),
(4, '2019-01-24', '2009 Hyundai I30', 'Hyundai i30 wagon diesel for sale, low km\'s, good sturdy car with plenty of space for prams/kids. Serviced regularly (oil change done around 1-2 weeks ago) and receipts for all work we\'ve had done, log book entries from previous owner. Pick up in etrie, reasonable offers considered, low ball offers will be ignored.', 'Brisbane', 'White', 'Auto', 'Hyundai', 7500, '2009', 3, 3, 3, '4'),
(5, '2019-03-23', '2007 Toyota Corolla', 'Up for sale my Toyota Corolla 2007 Automatic \r\ncomes with roadworthy certificate and 5 months rego very low km 154346 km everything working perfectly but same dents around the car welcome for inspection location Logan Central', 'Brisbane', 'Gray', 'Auto', 'Toyota', 4000, '2009', 1, 1, 2, '5'),
(6, '2019-04-11', '2010 Mazda 2010', 'NEED TO SELL MY CAR ASAP!!! Selling my Mazda 2 (2010, manual)\r\nIt is in perfect mechanic condition, new tires, service, rego and rwc...\r\nJust selling it cause I\'m moving....\r\nPrice negotiable', 'Brisbane', 'red', 'manu', 'Mazda', 4750, '2010', 4, 1, 3, '6');

-- --------------------------------------------------------

--
-- Table structure for table `Rating`
--

CREATE TABLE `Rating` (
  `Rid` int(11) NOT NULL,
  `Date_post` date NOT NULL,
  `Stars` int(11) NOT NULL,
  `Comment` text NOT NULL,
  `Uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Rating`
--

INSERT INTO `Rating` (`Rid`, `Date_post`, `Stars`, `Comment`, `Uid`) VALUES
(1, '2019-04-02', 5, 'good', 5),
(2, '2019-04-21', 4, 'good', 4),
(3, '2019-04-01', 4, 'perfect', 3),
(4, '2019-01-08', 1, 'bad', 2),
(5, '2019-02-05', 3, 'hahahh', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Seller`
--

CREATE TABLE `Seller` (
  `Uid` int(11) NOT NULL,
  `acc_number` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Seller`
--

INSERT INTO `Seller` (`Uid`, `acc_number`) VALUES
(1, '452486435555524'),
(2, '697521346222467'),
(3, '794572164334795'),
(4, '578412450000654'),
(5, '485298560000365');

-- --------------------------------------------------------

--
-- Table structure for table `Specialist`
--

CREATE TABLE `Specialist` (
  `Sid` int(11) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `work_year` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Specialist`
--

INSERT INTO `Specialist` (`Sid`, `Name`, `work_year`) VALUES
(1, 'Jack', 3),
(2, 'Amber', 5),
(3, 'Jessy', 7);

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `Uid` int(11) NOT NULL,
  `username` char(20) NOT NULL,
  `dob` varchar(22) NOT NULL,
  `Phone` int(20) NOT NULL,
  `email` char(20) NOT NULL,
  `password` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`Uid`, `username`, `dob`, `Phone`, `email`, `password`) VALUES
(1, 'Jack', '1958-07-16', 448134158, '231r52151@gmail.com', 123456),
(2, 'Micheal', '2000-04-05', 149445889, '124141241@qq.com', 1234567),
(3, 'Rose', '2009-04-08', 425113684, '2154676@qq.com', 123456),
(4, 'Aron', '1999-02-12', 432598461, 'asjbfoo@gmail.com', 123456),
(5, 'Hugh', '1975-04-02', 421684816, '25771281@gmail.com', 1234567);

-- --------------------------------------------------------

--
-- Table structure for table `User_Address`
--

CREATE TABLE `User_Address` (
  `Uid` int(11) NOT NULL,
  `Country` char(20) NOT NULL,
  `Number` int(11) NOT NULL,
  `Type(Street,Place...)` int(11) NOT NULL,
  `unitnumber` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `User_Address`
--

INSERT INTO `User_Address` (`Uid`, `Country`, `Number`, `Type(Street,Place...)`, `unitnumber`) VALUES
(1, '21,John Street', 0, 0, NULL),
(2, '22,John Street', 0, 0, NULL),
(3, '23,John Street', 0, 0, NULL),
(4, '24,John Street', 0, 0, NULL),
(5, '25,John Street', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Wishlist`
--

CREATE TABLE `Wishlist` (
  `Wishid` int(11) NOT NULL,
  `Uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Wishlist`
--

INSERT INTO `Wishlist` (`Wishid`, `Uid`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Bookfor`
--
ALTER TABLE `Bookfor`
  ADD PRIMARY KEY (`Uid`,`Inspect_id`),
  ADD KEY `Inspect_id` (`Inspect_id`);

--
-- Indexes for table `Buyer`
--
ALTER TABLE `Buyer`
  ADD PRIMARY KEY (`Uid`);

--
-- Indexes for table `Contain`
--
ALTER TABLE `Contain`
  ADD PRIMARY KEY (`Wishid`,`Uid`,`Postid`),
  ADD KEY `Uid` (`Uid`),
  ADD KEY `Postid` (`Postid`),
  ADD KEY `Wishid` (`Wishid`),
  ADD KEY `Uid_2` (`Uid`);

--
-- Indexes for table `Given`
--
ALTER TABLE `Given`
  ADD PRIMARY KEY (`Uid`,`Rid`),
  ADD KEY `Rid` (`Rid`);

--
-- Indexes for table `Inspection`
--
ALTER TABLE `Inspection`
  ADD PRIMARY KEY (`Inspect_id`),
  ADD KEY `Postid` (`Postid`),
  ADD KEY `Postid_2` (`Postid`);

--
-- Indexes for table `Post`
--
ALTER TABLE `Post`
  ADD PRIMARY KEY (`Postid`),
  ADD KEY `Uid` (`Uid`),
  ADD KEY `Uid_2` (`Uid`),
  ADD KEY `Sid` (`Sid`);

--
-- Indexes for table `Rating`
--
ALTER TABLE `Rating`
  ADD PRIMARY KEY (`Rid`),
  ADD KEY `Uid` (`Uid`);

--
-- Indexes for table `Seller`
--
ALTER TABLE `Seller`
  ADD PRIMARY KEY (`Uid`);

--
-- Indexes for table `Specialist`
--
ALTER TABLE `Specialist`
  ADD PRIMARY KEY (`Sid`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`Uid`);

--
-- Indexes for table `User_Address`
--
ALTER TABLE `User_Address`
  ADD PRIMARY KEY (`Uid`);

--
-- Indexes for table `Wishlist`
--
ALTER TABLE `Wishlist`
  ADD PRIMARY KEY (`Wishid`,`Uid`),
  ADD KEY `Uid` (`Uid`),
  ADD KEY `Wishid` (`Wishid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Bookfor`
--
ALTER TABLE `Bookfor`
  ADD CONSTRAINT `Bookfor_ibfk_1` FOREIGN KEY (`Uid`) REFERENCES `User` (`Uid`) ON DELETE CASCADE,
  ADD CONSTRAINT `Bookfor_ibfk_2` FOREIGN KEY (`Inspect_id`) REFERENCES `Inspection` (`Inspect_id`) ON DELETE CASCADE;

--
-- Constraints for table `Buyer`
--
ALTER TABLE `Buyer`
  ADD CONSTRAINT `Buyer_ibfk_1` FOREIGN KEY (`Uid`) REFERENCES `User` (`Uid`) ON DELETE CASCADE;

--
-- Constraints for table `Contain`
--
ALTER TABLE `Contain`
  ADD CONSTRAINT `Contain_ibfk_2` FOREIGN KEY (`Postid`) REFERENCES `Post` (`Postid`) ON DELETE CASCADE,
  ADD CONSTRAINT `Contain_ibfk_3` FOREIGN KEY (`Uid`) REFERENCES `Wishlist` (`Uid`) ON DELETE CASCADE;

--
-- Constraints for table `Given`
--
ALTER TABLE `Given`
  ADD CONSTRAINT `Given_ibfk_1` FOREIGN KEY (`Uid`) REFERENCES `Seller` (`Uid`) ON DELETE CASCADE,
  ADD CONSTRAINT `Given_ibfk_2` FOREIGN KEY (`Rid`) REFERENCES `Rating` (`Rid`) ON DELETE CASCADE;

--
-- Constraints for table `Inspection`
--
ALTER TABLE `Inspection`
  ADD CONSTRAINT `Inspection_ibfk_1` FOREIGN KEY (`Postid`) REFERENCES `Post` (`Postid`) ON DELETE CASCADE;

--
-- Constraints for table `Post`
--
ALTER TABLE `Post`
  ADD CONSTRAINT `Post_ibfk_2` FOREIGN KEY (`Sid`) REFERENCES `Specialist` (`Sid`),
  ADD CONSTRAINT `Post_ibfk_3` FOREIGN KEY (`Uid`) REFERENCES `Seller` (`Uid`) ON DELETE CASCADE;

--
-- Constraints for table `Rating`
--
ALTER TABLE `Rating`
  ADD CONSTRAINT `Rating_ibfk_1` FOREIGN KEY (`Uid`) REFERENCES `Buyer` (`Uid`) ON DELETE CASCADE;

--
-- Constraints for table `Seller`
--
ALTER TABLE `Seller`
  ADD CONSTRAINT `Seller_ibfk_1` FOREIGN KEY (`Uid`) REFERENCES `User` (`Uid`) ON DELETE CASCADE;

--
-- Constraints for table `User_Address`
--
ALTER TABLE `User_Address`
  ADD CONSTRAINT `User_Address_ibfk_1` FOREIGN KEY (`Uid`) REFERENCES `User` (`Uid`) ON DELETE CASCADE;

--
-- Constraints for table `Wishlist`
--
ALTER TABLE `Wishlist`
  ADD CONSTRAINT `Wishlist_ibfk_1` FOREIGN KEY (`Uid`) REFERENCES `Buyer` (`Uid`) ON DELETE CASCADE;



delimiter //
CREATE TRIGGER ifbookafterinsert BEFORE INSERT ON Inspection
FOR EACH ROW
BEGIN
    IF NEW.If_booked < 1 THEN
        SET NEW.If_booked = 1;
    END IF;
END;//
delimiter ;



delimiter //
CREATE TRIGGER pricecheck BEFORE INSERT ON Post
FOR EACH ROW
BEGIN
    IF NEW.Price < 0 THEN
        SET NEW.Price = 0;
    END IF;
END;//
delimiter ;
