-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Oct 19, 2022 at 06:00 AM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_thermo_sec`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_coutry`
--

CREATE TABLE `tbl_coutry` (
  `country_id` mediumint(8) UNSIGNED NOT NULL,
  `country_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_coutry`
--

INSERT INTO `tbl_coutry` (`country_id`, `country_name`) VALUES
(1, 'Canada'),
(2, 'United States');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_interface`
--

CREATE TABLE `tbl_interface` (
  `interface_id` mediumint(8) UNSIGNED NOT NULL,
  `interface_title` text NOT NULL,
  `interface_desc` text NOT NULL,
  `interface_image_desk` varchar(200) NOT NULL,
  `interface_image_mob` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_interface`
--

INSERT INTO `tbl_interface` (`interface_id`, `interface_title`, `interface_desc`, `interface_image_desk`, `interface_image_mob`) VALUES
(1, 'Multiple', 'HouseCom ThermoSecurity System is a fully digital, hardwired and wireless (WiFi, Bluetooth)enabled home personal and secure environment control system. All communications with the central system are accessible and controlled through the wall unit, product app. and the secured portal on the parent website. The system app. is available on both iOS and Android devices.', 'multiple.jpg', 'multiple_mobile.jpg'),
(2, 'Convenient', 'You can adjust the temperature of your home from your Android or iPhone watch. Also you can access the home security system on your phone to check in on the house occupancy through the remote, portable cameras', 'convenient.jpg', 'convenient_mobile.jpg'),
(3, 'Save Your Time', 'You may wish to look for independent room temperatures, smoke and carbon monoxide status or just open windows and unlocked doors for your return home. All of this functionality and more are part of the capabilities of the HouseCom™ ThermoSecurity™ security and environment system.', 'saveTime.jpg', 'saveTime_mobile.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_models`
--

CREATE TABLE `tbl_models` (
  `models_id` mediumint(8) UNSIGNED NOT NULL,
  `models_name` text NOT NULL,
  `models_price` varchar(200) NOT NULL,
  `models_desc` text NOT NULL,
  `models_colors` varchar(200) NOT NULL,
  `models_display` varchar(1000) NOT NULL,
  `models_design` varchar(1000) NOT NULL,
  `models_guided` varchar(1000) NOT NULL,
  `models_control` varchar(1000) NOT NULL,
  `models_compatible` varchar(1000) NOT NULL,
  `models_scheduling` varchar(1000) NOT NULL,
  `models_trimkit` varchar(200) NOT NULL,
  `models_warranty` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_models`
--

INSERT INTO `tbl_models` (`models_id`, `models_name`, `models_price`, `models_desc`, `models_colors`, `models_display`, `models_design`, `models_guided`, `models_control`, `models_compatible`, `models_scheduling`, `models_trimkit`, `models_warranty`) VALUES
(1, 'ThermoSecurity Learning', 'CA$329', 'Advanced comfort and energy-savings.', 'ThermoLearning_color.jpg', 'High-res display with Farsight to show you the time, temperature, or weather', 'Metal ring\r\nTurn the dial and press down to adjust', 'In theThermoSecurity app or webpage', 'In theThermoSecurity app or webpage', 'Works with 95% of systems', 'Automatically creates a schedule by learning your routine and preferences', 'Included', '2 years'),
(2, 'ThermoSecurity', 'CA$179.99', 'Energy-saving essentials at a cozy price.', 'Thermo_color.jpg', 'Crisp display with mirrored glass lens', 'Recycled plastic housing', 'In theThermoSecurity app', 'In theThermoSecurity app', 'Works with 85% of systems\r\nSome systems, including heating-only, cooling-only, zone-controlled, and heat pump systems require a  Power Connector or C wire ', 'Guided schedule setup in theThermoSecurity app', 'Sold separately', '1 year');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rebates`
--

CREATE TABLE `tbl_rebates` (
  `rebates_id` mediumint(8) UNSIGNED NOT NULL,
  `country_id` mediumint(8) UNSIGNED NOT NULL,
  `rebate_province_state` varchar(200) NOT NULL,
  `rebate_value` varchar(1000) NOT NULL,
  `rebate_type` varchar(1000) NOT NULL,
  `model_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_rebates`
--

INSERT INTO `tbl_rebates` (`rebates_id`, `country_id`, `rebate_province_state`, `rebate_value`, `rebate_type`, `model_id`) VALUES
(1, 1, 'British Columbia', '$30OFF /per thermostat up to 5', 'Instant Online Rebate - BC Hydro Power Smart', 1),
(2, 1, 'Newfoundland & Labrador', '$10OFF /per thermostat', 'Instant Online Rebate - Newfoundland', 2),
(3, 1, 'Nova Scotia', '$35OFF /per thermostat up to 5', 'Instant Online Rebate - Nova Scotia', 2),
(4, 2, 'California', '$50OFF/per thermostat up to 1 per year', 'Riverside Public Utilities', 1),
(5, 2, 'Colorado', '50%OFF /per thermostat up to $1000', 'City of Aspen', 1),
(7, 2, 'Iowa', '$50OFF/max 1 thermostat', 'Cedar Falls Utilities', 2),
(8, 2, 'Idaho', '$20OFF/max 5 thermostats', 'Avista', 2),
(9, 2, 'Minnesota', '$50OFF/per thermostat', 'Instant Online Rebate - Minnesota Power', 1),
(10, 2, 'Montana', '$18OFF/per thermostat', 'Missoula Electric Cooperative', 2),
(11, 2, 'New York', '$75OFF/per thermostat up to 2 per year', 'Instant Online Rebate - RG&E ', 1),
(12, 2, 'South Carolina', '$50OFF/per thermostat up to 2 per year', 'Santee Cooper', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_security`
--

CREATE TABLE `tbl_security` (
  `security_id` mediumint(8) UNSIGNED NOT NULL,
  `security_name` varchar(500) NOT NULL,
  `security_definition` varchar(500) NOT NULL,
  `security_title` varchar(500) NOT NULL,
  `security_desc` varchar(500) NOT NULL,
  `security_illustration` varchar(200) NOT NULL,
  `security_image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_security`
--

INSERT INTO `tbl_security` (`security_id`, `security_name`, `security_definition`, `security_title`, `security_desc`, `security_illustration`, `security_image`) VALUES
(1, 'Smart Thermostat Premium', 'The security hub', 'Saving energy is just the beginning.', 'Smart Thermostat Premium offers unparalleled energy savings and unlocks a healthier home with indoor air quality monitoring. It also keeps your family safe by acting as a security hub, sending alerts if a smoke alarm goes off and if motion is detection while you’re away.', 'zoom_livingroom.svg', 'mob_hallway.jpg'),
(2, 'SmartSensor for doors and windows', 'Monitors entryways', 'Cover your home with entry and motion detection.', 'You\'ll receive an alert if a door or window is unexpectedly opened, and sensors also work as motion detectors. To save energy, these sensors will also pause your heating or cooling if a door or window is left open.', 'zoom_kitchen.svg', 'mob_kitchen.jpg'),
(3, 'SmartSensor for rooms', 'Detects motion & occupancy', 'For comfort and peace of mind throughout the home.', 'SmartSensor motion detection extends security coverage throughout the home to ensure every room is protected, and its temperature sensor keeps you comfortable in the rooms you use.', 'zoom_bedroom.svg', 'mob_bedroom.jpg'),
(4, 'SmartCamera with voice control', 'Saves video evidence', 'Check in from anywhere with live video feed.', 'Know your home is safe with live video feed in app. In case of an incident, you\'ll get notified and you\'re covered with clear video evidence.', 'zoom_door.svg', 'mob_door.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_coutry`
--
ALTER TABLE `tbl_coutry`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `tbl_interface`
--
ALTER TABLE `tbl_interface`
  ADD PRIMARY KEY (`interface_id`);

--
-- Indexes for table `tbl_models`
--
ALTER TABLE `tbl_models`
  ADD PRIMARY KEY (`models_id`);

--
-- Indexes for table `tbl_rebates`
--
ALTER TABLE `tbl_rebates`
  ADD PRIMARY KEY (`rebates_id`);

--
-- Indexes for table `tbl_security`
--
ALTER TABLE `tbl_security`
  ADD PRIMARY KEY (`security_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_coutry`
--
ALTER TABLE `tbl_coutry`
  MODIFY `country_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_interface`
--
ALTER TABLE `tbl_interface`
  MODIFY `interface_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_models`
--
ALTER TABLE `tbl_models`
  MODIFY `models_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_rebates`
--
ALTER TABLE `tbl_rebates`
  MODIFY `rebates_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_security`
--
ALTER TABLE `tbl_security`
  MODIFY `security_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
