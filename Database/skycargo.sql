-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 18, 2023 at 11:14 AM
-- Server version: 8.0.33
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akihvfyj_shippypro`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `country_code` varchar(45) NOT NULL,
  `phone_no` varchar(45) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `first_name`, `last_name`, `email`, `country_code`, `phone_no`, `password`, `role`) VALUES
(1, 'admin', '', 'admin@admin.com', '+91', '1234567890', '$2a$10$0cmTE20xNJaizhrl3DE7wOD9XzIfsXBqGj4uvxWMfa0kNr2Gwwqjq', '1'),
(2, 'ram', 'patel', 'ram@gmail.com', '+91', '1234568795', '$2a$10$X6Jm3cTAbeFyI6jm8YEbCegRMEjbv9zWZvF6LohyYiAiVIQgNy9DO', '3'),
(5, 'vivek', 'patel', 'vivek@gmail.com', '+91', '1234567890', '$2a$10$3NYbaaALeUs1X7Hfg71PK.o4WHT/u.PvRS7ie.4ySqT7fqtKX4Deq', '2'),
(6, 'parsotam', 'patel', 'parsotam@gmail.com', '+91', '1234567890', '$2a$10$9YXFBZtgbqaJCnCYOJ09zujVhCqCbrOfGJpI.EzrQNgvE/btgCe3u', '2'),
(7, 'khushi', 'patel', 'khushi@gmail.com', '+91', '11234567890', '$2a$10$BpE52oMO080T2o0baxXKIOjsc03GwCn4slKtllUS74NUp9kcWHk.6', '3'),
(9, 'kevin', 'patel', 'kevin@gmail.com', '+91', '6352217701', '$2a$10$PIV1pEqOneA0c0V9qFnesO0SvKFWbLabmKMnRpexknTZZtX0AX0xy', '2'),
(10, 'virat', 'kohli', 'virat@gmail.com', '+91', '1234567890', '$2a$10$EESrG7Es2VEK8gXpE7JzQ.KM78FMdA22JZe3OtYeDvb523M1SNHkC', '2'),
(13, 'magan', 'patel', 'magan@gmail.com', '+91', '1234567890', '$2a$10$0/bgtgE3vccFTtOawK4/leiiEI4xOJ/gYl4vq3X99Ee3kDwwlTlia', '3'),
(14, 'Ketan', 'Patel', 'ketan@gmail.com', '+91', '63522124564', '$2a$10$U1PQlEzMpQOQ3.dQersRw.A1x4Jn5ZaGJycpasaMi5gU0HTioZV1.', '2'),
(15, 'Kinjal', 'Patel', 'kinjal@gmail.com', '+91', '9888555666', '$2a$10$BfgO5WYjlGXKs4JAsWL6l.BopiIng8kFVvDBZ9efHTWKFN1ggjArq', '2'),
(16, 'rahul', 'patel', 'rahul@gmail.com', '+91', '1234567890', '$2a$10$7mTOridbQtb5JPAHIig05.6HRzeQReX6Prgj9U3tzSo3xwjI1xdmC', '2'),
(17, 'joy', 'patel', 'joy.patel@gmail.com', '+91', '5454544541', '$2a$10$Ued24aqY8u2ULgD/2q3Ee.iERiaHNPvGv.T6B7T01ePaw.UuPwW3.', '2');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_agency_group`
--

CREATE TABLE `tbl_agency_group` (
  `id` int NOT NULL,
  `agency_name` varchar(45) NOT NULL,
  `agency_address` varchar(45) NOT NULL,
  `agency_city` varchar(45) NOT NULL,
  `agency_mobile` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_agency_group`
--

INSERT INTO `tbl_agency_group` (`id`, `agency_name`, `agency_address`, `agency_city`, `agency_mobile`) VALUES
(1, 'tirupati', 'vesu', 'surat', '1234567890'),
(2, 'vimal', 'jetpur', 'rajkot', '1234567890');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_city`
--

CREATE TABLE `tbl_city` (
  `id` int NOT NULL,
  `countries_id` varchar(45) NOT NULL,
  `state_id` varchar(45) NOT NULL,
  `city_name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_city`
--

INSERT INTO `tbl_city` (`id`, `countries_id`, `state_id`, `city_name`) VALUES
(1, '5', '1', 'Baroda'),
(2, '4', '5', 'Victoria'),
(3, '6', '3', 'North Pole'),
(5, '5', '1', 'Rajkot'),
(6, '4', '2', 'Toronto'),
(7, '4', '10', 'Las Vegas'),
(8, '5', '7', 'Panaji'),
(9, '5', '9', 'Guwahati');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_client`
--

CREATE TABLE `tbl_client` (
  `id` int NOT NULL,
  `customer` varchar(45) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `mobile` varchar(45) NOT NULL,
  `country` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `zipcode` varchar(45) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_client`
--

INSERT INTO `tbl_client` (`id`, `customer`, `first_name`, `last_name`, `email`, `mobile`, `country`, `state`, `city`, `zipcode`, `address`) VALUES
(3, '6', 'jayraj', 'patel', 'jayraj@gmail.com', '123456087656', '5,6', '1,3', '1,3', '385005,56145641', 'Vijay Commercial complex,varachha'),
(4, '7', 'tejas', 'patel', 'tejas@gmail.com', '123456780', '4', '10', '7', '1234567', 'abcdefg'),
(6, '7', 'rohit', 'sharma', 'rohit@gmail.com', '123456987', '6', '3', '3', '7896545', 'rohit Commercial complex'),
(7, '5', 'Punit', 'Patel', 'punit@gmail.com', '9696666555', '5', '1', '1', '395004', '252, Hodi Banglow, A K Road');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_consolidated`
--

CREATE TABLE `tbl_consolidated` (
  `id` int NOT NULL,
  `invoice` varchar(45) NOT NULL,
  `date` date NOT NULL,
  `stamps` varchar(45) NOT NULL,
  `agency` varchar(45) NOT NULL,
  `office_of_origin` varchar(45) NOT NULL,
  `customer` varchar(45) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `client` varchar(45) NOT NULL,
  `client_address` varchar(255) NOT NULL,
  `shipping_mode` varchar(45) NOT NULL,
  `packaging` varchar(45) NOT NULL,
  `courier_company` varchar(45) NOT NULL,
  `service_mode` varchar(45) NOT NULL,
  `payment_type` varchar(45) NOT NULL,
  `delivery_time` varchar(45) NOT NULL,
  `estimated_date` varchar(45) NOT NULL,
  `delivery_status` varchar(45) NOT NULL,
  `assign_driver` varchar(45) NOT NULL,
  `image` varchar(255) NOT NULL,
  `shipment_invoice` varchar(45) NOT NULL,
  `shipment_weight` varchar(45) NOT NULL,
  `shipment_weight_vol` varchar(45) NOT NULL,
  `total_weight` float NOT NULL,
  `total_weight_vol` float NOT NULL,
  `add_price_kg` float NOT NULL,
  `add_discount` float NOT NULL,
  `add_value_assured` float NOT NULL,
  `add_shipping_insurance` float NOT NULL,
  `add_customs_duties` float NOT NULL,
  `add_tax` float NOT NULL,
  `tax_count` float NOT NULL,
  `subtotal` float NOT NULL,
  `discount` float NOT NULL,
  `shipping_insurance` float NOT NULL,
  `customs_duties` float NOT NULL,
  `tax` float NOT NULL,
  `reissue` float NOT NULL,
  `total` float NOT NULL,
  `paid_amount` float NOT NULL DEFAULT '0',
  `due_amount` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_consolidated`
--

INSERT INTO `tbl_consolidated` (`id`, `invoice`, `date`, `stamps`, `agency`, `office_of_origin`, `customer`, `customer_address`, `client`, `client_address`, `shipping_mode`, `packaging`, `courier_company`, `service_mode`, `payment_type`, `delivery_time`, `estimated_date`, `delivery_status`, `assign_driver`, `image`, `shipment_invoice`, `shipment_weight`, `shipment_weight_vol`, `total_weight`, `total_weight_vol`, `add_price_kg`, `add_discount`, `add_value_assured`, `add_shipping_insurance`, `add_customs_duties`, `add_tax`, `tax_count`, `subtotal`, `discount`, `shipping_insurance`, `customs_duties`, `tax`, `reissue`, `total`, `paid_amount`, `due_amount`) VALUES
(1, 'COEE00001', '2023-04-18', '0000001', '1', '1', '7', 'krishna park', '4', 'abcdefg', '1', '1', '1', '1', '1', '1', '04/18/2023', '6', '1', '16818036471571674543742151-041-favorite.png', 'AWB00001,AWB00002', '30,30', '38.71,90.32', 60, 129.03, 3, 20, 150, 12, 15, 19, 1, 387.09, 77.42, 18, 2835.45, 73.55, 100, 3336.67, 0, 3336.67),
(2, 'COEE00002', '2023-04-19', '0000001', '1', '1', '7', 'krishna park', '6', 'rohit Commercial complex', '2', '3', '1', '2', '3', '1', '04/19/2023', '3', '1', '16818979222241673008930987-019-online shopping.png', 'AWB00003', '20', '154.839', 20, 154.84, 2, 10, 100, 100, 10, 19, 1, 309.68, 30.97, 100, 1748.4, 58.84, 100, 2285.95, 0, 2285.95),
(3, 'COEE00002', '2023-04-19', '', '1', '2', '6', 'dwgw4reyh', '3', 'Vijay Commercial complex', '1', '2', '1', '2', '1', '1', '05/02/2023', '3', '4', '1681898555102Group 427320322.png', 'AWB00003', '20', '154.839', 20, 154.84, 1, 200, 0, 100, 20, 25, 1, 154.84, 309.68, 0, 3496.8, 38.71, 200, 3580.67, 0, 3580.67),
(4, 'ABC00004', '2023-05-02', '', '1', '1', '5', 'L. P. Savani road', '7', '252', '1', '1', '1', '1', '1', '1', '05/05/2023', '3', '4', '1683024608555Badges 19.png', 'AWB000011,AWB000012,AWB000016', '10,10,30', '12.5,6.25,25', 50, 43.75, 5, 10, 200, 10, 0, 20, 1, 218.75, 21.88, 20, 0, 43.75, 500, 760.62, 0, 760.62);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_countries`
--

CREATE TABLE `tbl_countries` (
  `id` int NOT NULL,
  `countries_name` varchar(45) NOT NULL,
  `countries_iso` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_countries`
--

INSERT INTO `tbl_countries` (`id`, `countries_name`, `countries_iso`) VALUES
(1, 'Afghanistan', 'afg'),
(3, 'Brazil', 'bra'),
(4, 'Canada', 'can'),
(5, 'India', 'ind'),
(6, 'United States of America', 'usa'),
(7, 'South Africa', 'zaf');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_courier_companies`
--

CREATE TABLE `tbl_courier_companies` (
  `id` int NOT NULL,
  `companies_name` varchar(45) NOT NULL,
  `companies_mobile` varchar(45) NOT NULL,
  `companies_address` varchar(255) NOT NULL,
  `companies_city` varchar(45) NOT NULL,
  `companies_country` varchar(45) NOT NULL,
  `companies_zipcode` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_courier_companies`
--

INSERT INTO `tbl_courier_companies` (`id`, `companies_name`, `companies_mobile`, `companies_address`, `companies_city`, `companies_country`, `companies_zipcode`) VALUES
(1, 'Airway Delivery', '9859898985', 'Heinrichstrasse 243, 8005 Zurich', 'Surat', 'India', '395006'),
(2, 'FedEx', '71455614156', '942 South Shady Grove Road, Memphis', 'Surat', 'India', '2511561'),
(3, 'DHL', '9898595666', 'B1225, Airway building, Longway Road, Near Synd', 'Surat', 'India', '395004');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customers`
--

CREATE TABLE `tbl_customers` (
  `id` int NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `country_code` varchar(45) NOT NULL,
  `mobile` varchar(45) NOT NULL,
  `customers_country` varchar(45) NOT NULL,
  `customers_state` varchar(45) NOT NULL,
  `customers_city` varchar(45) NOT NULL,
  `customers_zipcode` varchar(45) NOT NULL,
  `customers_address` varchar(255) NOT NULL,
  `customer_active` varchar(45) NOT NULL,
  `login_id` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_customers`
--

INSERT INTO `tbl_customers` (`id`, `first_name`, `last_name`, `email`, `country_code`, `mobile`, `customers_country`, `customers_state`, `customers_city`, `customers_zipcode`, `customers_address`, `customer_active`, `login_id`) VALUES
(5, 'vivek', 'patel', 'vivek@gmail.com', '+91', '1234567890', '5,4', '1,5', '5,2', '395006,56145641', 'L. P. Savani road,mahadev nagar mota varachha surat gujarat india', '1', '5'),
(6, 'parsotam', 'patel', 'parsotam@gmail.com', '+91', '1234567890', '4', '5', '2', '5682145', 'dwgw4reyh', '1', '6'),
(7, 'kevin', 'patel', 'kevin@gmail.com', '+91', '6352217701', '5', '1', '1', '395006', 'krishna park', '1', '9'),
(8, 'virat', 'kohli', 'virat@gmail.com', '+91', '1234567890', '5', '7', '8', '3950201', 'bandra', '0', '10'),
(10, 'Ketan', 'Patel', 'ketan@gmail.com', '+91', '63522124564', '5', '1', '1', '395004', 'Jeena House', '1', '14'),
(11, 'Kinjal', 'Patel', 'kinjal@gmail.com', '+91', '9888555666', '6', '3', '3', '666336', 'E202', '1', '15'),
(12, 'rahul', 'patel', 'rahul@gmail.com', '+91', '1234567890', '4', '2', '6', '56145641', 'L. P. Savani road', '1', '16'),
(13, 'joy', 'patel', 'joy.patel@gmail.com', '+91', '5454544541', '5', '1', '1', '394101', 'Nila', '1', '17');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_drivers`
--

CREATE TABLE `tbl_drivers` (
  `id` int NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `mobile` varchar(45) NOT NULL,
  `vehicle_plate` varchar(45) NOT NULL,
  `active` varchar(45) NOT NULL,
  `login_id` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_drivers`
--

INSERT INTO `tbl_drivers` (`id`, `first_name`, `last_name`, `email`, `mobile`, `vehicle_plate`, `active`, `login_id`) VALUES
(1, 'ram', 'patel', 'ram@gmail.com', '1234568795', 'GJ1417', '1', '2'),
(4, 'khushi', 'patel', 'khushi@gmail.com', '11234567890', 'GJ1417', '1', '7'),
(5, 'magan', 'patel', 'magan@gmail.com', '1234567890', 'GJ1418', '1', '13');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_email_settings`
--

CREATE TABLE `tbl_email_settings` (
  `id` int NOT NULL,
  `email_host` varchar(45) NOT NULL,
  `email_port` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `email_password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_email_settings`
--

INSERT INTO `tbl_email_settings` (`id`, `email_host`, `email_port`, `email`, `email_password`) VALUES
(1, 'smtp.hostinger.com', '465', 'vivekchovatiya1179@gmail.com', 'irfylgqwfqaqaxie');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_general_settings`
--

CREATE TABLE `tbl_general_settings` (
  `id` int NOT NULL,
  `site_title` varchar(45) NOT NULL,
  `site_logo` varchar(255) NOT NULL,
  `site_currency` varchar(45) NOT NULL,
  `site_timezone` varchar(45) NOT NULL,
  `currency_placement` varchar(45) NOT NULL,
  `thousands_separator` varchar(45) NOT NULL,
  `onesignal_app_id` varchar(255) NOT NULL,
  `onesignal_api_key` varchar(255) NOT NULL,
  `twilio_sid` varchar(255) NOT NULL,
  `twilio_auth_token` varchar(255) NOT NULL,
  `twilio_phone_no` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_general_settings`
--

INSERT INTO `tbl_general_settings` (`id`, `site_title`, `site_logo`, `site_currency`, `site_timezone`, `currency_placement`, `thousands_separator`, `onesignal_app_id`, `onesignal_api_key`, `twilio_sid`, `twilio_auth_token`, `twilio_phone_no`) VALUES
(1, 'SkyCargo', '1685356600684Shipping 14 - 24px.png', '$', 'Asia/Calcutta', '1', '1', 'key', 'hash', 'sid', 'token', 'mobile_number');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_javascript`
--

CREATE TABLE `tbl_javascript` (
  `id` int NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_length_units`
--

CREATE TABLE `tbl_length_units` (
  `id` int NOT NULL,
  `unit_name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_length_units`
--

INSERT INTO `tbl_length_units` (`id`, `unit_name`) VALUES
(5, 'inch'),
(7, 'foot');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logistics_service`
--

CREATE TABLE `tbl_logistics_service` (
  `id` int NOT NULL,
  `service_name` varchar(45) NOT NULL,
  `service_details` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_logistics_service`
--

INSERT INTO `tbl_logistics_service` (`id`, `service_name`, `service_details`) VALUES
(1, 'Air Freight', 'Air Freight, The Skys the Limit'),
(2, 'Ocean Freight', 'Ocean Freight, The World is Your Oyster'),
(3, 'Rail Freight', 'Rail Freight, On Track with the New Silk Road');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notification`
--

CREATE TABLE `tbl_notification` (
  `id` int NOT NULL,
  `date` date NOT NULL,
  `time` varchar(45) NOT NULL,
  `sender` varchar(45) NOT NULL,
  `notification` varchar(255) NOT NULL,
  `received` varchar(45) NOT NULL,
  `invoice` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_notification`
--



-- --------------------------------------------------------

--
-- Table structure for table `tbl_office_group`
--

CREATE TABLE `tbl_office_group` (
  `id` int NOT NULL,
  `office_name` varchar(45) NOT NULL,
  `office_code` varchar(45) NOT NULL,
  `office_address` varchar(45) NOT NULL,
  `office_city` varchar(45) NOT NULL,
  `office_mobile` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_office_group`
--

INSERT INTO `tbl_office_group` (`id`, `office_name`, `office_code`, `office_address`, `office_city`, `office_mobile`) VALUES
(1, 'Vesu', 'RTG78', 'pal', 'surat', '123456780546'),
(2, 'Parvat Patia', 'CS1018', 'mota varachha', 'surat', '1234567890');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_packaging`
--

CREATE TABLE `tbl_packaging` (
  `id` int NOT NULL,
  `packaging_type` varchar(45) NOT NULL,
  `packaging_details` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_packaging`
--

INSERT INTO `tbl_packaging` (`id`, `packaging_type`, `packaging_details`) VALUES
(1, 'Small', '0 - 5 Kilogram'),
(2, 'Medium', '5.01 - 10 Kilogram'),
(3, 'Large', '10.01 - 15 Kilogram');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `id` int NOT NULL,
  `store_id` varchar(45) NOT NULL,
  `date` date NOT NULL,
  `invoice` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `paid_amount` varchar(45) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_payment`
--



-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment_methods`
--

CREATE TABLE `tbl_payment_methods` (
  `id` int NOT NULL,
  `payment_methods` varchar(45) NOT NULL,
  `payment_days` varchar(45) NOT NULL,
  `active` varchar(45) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_payment_methods`
--

INSERT INTO `tbl_payment_methods` (`id`, `payment_methods`, `payment_days`, `active`) VALUES
(1, 'Prepaid', '0', '1'),
(2, 'Postpaid 5 day', '5', '1'),
(3, 'Postpaid 15 day', '15', '1'),
(4, 'Postpaid 30 day', '30', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment_type`
--

CREATE TABLE `tbl_payment_type` (
  `id` int NOT NULL,
  `payment_type` varchar(45) NOT NULL,
  `description` varchar(45) NOT NULL,
  `active` varchar(45) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_payment_type`
--

INSERT INTO `tbl_payment_type` (`id`, `payment_type`, `description`, `active`) VALUES
(1, 'Cash Payment', 'Cash_payment', '1'),
(2, 'Paypal', 'Paypal', '1'),
(3, 'Paystack', 'Paystack', '1'),
(4, 'Wire transfer', 'Wire transfer', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pickup`
--

CREATE TABLE `tbl_pickup` (
  `id` int NOT NULL,
  `invoice` varchar(45) NOT NULL,
  `date` date NOT NULL,
  `agency` varchar(45) NOT NULL DEFAULT '0',
  `office_of_origin` varchar(45) NOT NULL DEFAULT '0',
  `customer` varchar(45) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `client` varchar(45) NOT NULL,
  `client_address` varchar(255) NOT NULL,
  `shipping_mode` varchar(45) NOT NULL,
  `packaging` varchar(45) NOT NULL,
  `courier_company` varchar(45) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '0',
  `service_mode` varchar(45) NOT NULL DEFAULT '0',
  `delivery_time` varchar(45) NOT NULL DEFAULT '0',
  `payment_type` varchar(45) NOT NULL,
  `payment_methods` varchar(45) NOT NULL DEFAULT '0',
  `delivery_status` varchar(45) NOT NULL DEFAULT '0',
  `assign_driver` varchar(45) NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL,
  `package_name` varchar(45) NOT NULL,
  `package_description` varchar(45) NOT NULL,
  `package_amount` varchar(45) NOT NULL,
  `weight` varchar(45) NOT NULL,
  `length` varchar(45) NOT NULL,
  `width` varchar(45) NOT NULL,
  `height` varchar(45) NOT NULL,
  `weight_vol` varchar(45) NOT NULL,
  `f_charge` varchar(45) NOT NULL,
  `decvalue` varchar(45) NOT NULL,
  `total_weight` float NOT NULL,
  `total_weight_vol` float NOT NULL,
  `total_decvalue` float NOT NULL,
  `add_price_kg` float NOT NULL,
  `add_discount` float NOT NULL,
  `add_value_assured` float NOT NULL,
  `add_shipping_insurance` float NOT NULL,
  `add_customs_duties` float NOT NULL,
  `add_tax` float NOT NULL,
  `tax_count` float NOT NULL,
  `add_declared_value` float NOT NULL,
  `subtotal` float NOT NULL,
  `discount` float NOT NULL,
  `shipping_insurance` float NOT NULL,
  `customs_duties` float NOT NULL,
  `tax` float NOT NULL,
  `declared_value` float NOT NULL,
  `fixed_charge` float NOT NULL,
  `reissue` float NOT NULL,
  `total` float NOT NULL,
  `paid_amount` float NOT NULL DEFAULT '0',
  `due_amount` float NOT NULL DEFAULT '0',
  `store_id` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_pickup`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbl_pre_alert`
--

CREATE TABLE `tbl_pre_alert` (
  `id` int NOT NULL,
  `date` date NOT NULL,
  `courier_company` varchar(45) NOT NULL,
  `tracking` varchar(45) NOT NULL,
  `store_supplier` varchar(45) NOT NULL,
  `purchase_price` varchar(45) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `customer_name` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  `store_id` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_pre_alert`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbl_rates`
--

CREATE TABLE `tbl_rates` (
  `id` int NOT NULL,
  `origin` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `des_country` varchar(45) NOT NULL,
  `des_state` varchar(45) NOT NULL,
  `des_city` varchar(45) NOT NULL,
  `start_weight_range` float NOT NULL,
  `end_weight_range` float NOT NULL,
  `rate_price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_rates`
--

INSERT INTO `tbl_rates` (`id`, `origin`, `state`, `city`, `des_country`, `des_state`, `des_city`, `start_weight_range`, `end_weight_range`, `rate_price`) VALUES
(1, '5', '1', '1', '4', '10', '7', 10, 500, 100),
(2, '5', '1', '1', '6', '3', '3', 1, 1000, 200),
(3, '4', '5', '2', '5', '1', '1', 1, 1000, 200),
(4, '5', '1', '1', '6', '3', '3', 10, 25, 250),
(5, '5', '1', '5', '5', '1', '1', 10, 500, 150),
(6, '5', '1', '1', '6', '3', '3', 250, 2500, 50000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_register_packages`
--

CREATE TABLE `tbl_register_packages` (
  `id` int NOT NULL,
  `invoice` varchar(45) NOT NULL,
  `date` date NOT NULL,
  `agency` varchar(45) NOT NULL,
  `office_of_origin` varchar(45) NOT NULL,
  `customer` varchar(45) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `tracking_no` varchar(45) NOT NULL,
  `supplier` varchar(45) NOT NULL,
  `purchase_price` float NOT NULL,
  `shipping_mode` varchar(45) NOT NULL,
  `packaging` varchar(45) NOT NULL,
  `courier_company` varchar(45) NOT NULL,
  `service_mode` varchar(45) NOT NULL,
  `delivery_time` varchar(45) NOT NULL,
  `assign_driver` varchar(45) NOT NULL DEFAULT '0',
  `status` varchar(45) CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL,
  `image` varchar(255) NOT NULL,
  `package_name` varchar(45) NOT NULL,
  `package_description` varchar(45) NOT NULL,
  `package_amount` varchar(45) NOT NULL,
  `weight` varchar(45) NOT NULL,
  `length` varchar(45) NOT NULL,
  `width` varchar(45) NOT NULL,
  `height` varchar(45) NOT NULL,
  `weight_vol` varchar(45) NOT NULL,
  `f_charge` varchar(45) NOT NULL,
  `decvalue` varchar(45) NOT NULL,
  `total_weight` varchar(45) NOT NULL,
  `total_weight_vol` varchar(45) NOT NULL,
  `total_decvalue` varchar(45) NOT NULL,
  `add_price_kg` float NOT NULL,
  `add_discount` float NOT NULL,
  `add_value_assured` float NOT NULL,
  `add_shipping_insurance` float NOT NULL,
  `add_customs_duties` float NOT NULL,
  `add_tax` float NOT NULL,
  `tax_count` varchar(45) NOT NULL,
  `add_declared_value` float NOT NULL,
  `subtotal` float NOT NULL,
  `discount` float NOT NULL,
  `shipping_insurance` float NOT NULL,
  `customs_duties` float NOT NULL,
  `tax` float NOT NULL,
  `declared_value` float NOT NULL,
  `fixed_charge` float NOT NULL,
  `reissue` float NOT NULL,
  `total` float NOT NULL,
  `paid_amount` float NOT NULL DEFAULT '0',
  `due_amount` float NOT NULL DEFAULT '0',
  `store_id` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_register_packages`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipment`
--

CREATE TABLE `tbl_shipment` (
  `id` int NOT NULL,
  `invoice` varchar(45) NOT NULL,
  `date` date NOT NULL,
  `agency` varchar(45) NOT NULL,
  `office_of_origin` varchar(45) NOT NULL,
  `customer` varchar(45) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `client` varchar(45) NOT NULL,
  `client_address` varchar(255) NOT NULL,
  `shipping_mode` varchar(45) NOT NULL,
  `packaging` varchar(45) NOT NULL,
  `courier_company` varchar(45) NOT NULL,
  `service_mode` varchar(45) NOT NULL,
  `delivery_time` varchar(45) NOT NULL DEFAULT '0',
  `payment_type` varchar(45) NOT NULL,
  `payment_methods` varchar(45) NOT NULL,
  `delivery_status` varchar(45) NOT NULL DEFAULT '4',
  `assign_driver` varchar(45) NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL,
  `package_name` varchar(45) NOT NULL,
  `package_description` varchar(45) NOT NULL,
  `package_amount` varchar(45) NOT NULL,
  `weight` varchar(45) NOT NULL,
  `length` varchar(45) NOT NULL,
  `width` varchar(45) NOT NULL,
  `height` varchar(45) NOT NULL,
  `weight_vol` varchar(45) NOT NULL,
  `f_charge` varchar(45) NOT NULL,
  `decvalue` varchar(45) NOT NULL,
  `total_weight` float NOT NULL,
  `total_weight_vol` float NOT NULL,
  `total_decvalue` float NOT NULL,
  `add_price_kg` float NOT NULL,
  `add_discount` float NOT NULL,
  `add_value_assured` float NOT NULL,
  `add_shipping_insurance` float NOT NULL,
  `add_customs_duties` float NOT NULL,
  `add_tax` float NOT NULL,
  `tax_count` float NOT NULL,
  `add_declared_value` float NOT NULL,
  `subtotal` float NOT NULL,
  `discount` float NOT NULL,
  `shipping_insurance` float NOT NULL,
  `customs_duties` float NOT NULL,
  `tax` float NOT NULL,
  `declared_value` float NOT NULL,
  `fixed_charge` float NOT NULL,
  `reissue` float NOT NULL,
  `total` float NOT NULL,
  `paid_amount` float NOT NULL DEFAULT '0',
  `due_amount` float NOT NULL DEFAULT '0',
  `store_id` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_shipment`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping_modes`
--

CREATE TABLE `tbl_shipping_modes` (
  `id` int NOT NULL,
  `shipping_modes` varchar(45) NOT NULL,
  `shipping_modes_details` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_shipping_modes`
--

INSERT INTO `tbl_shipping_modes` (`id`, `shipping_modes`, `shipping_modes_details`) VALUES
(1, 'Same Day', '1 Day'),
(2, 'After 2 Days', '2 Day'),
(3, 'After 4 Days', '4 Day');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping_prefix`
--

CREATE TABLE `tbl_shipping_prefix` (
  `id` int NOT NULL,
  `prefix` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_shipping_prefix`
--

INSERT INTO `tbl_shipping_prefix` (`id`, `prefix`, `type`) VALUES
(1, 'WIL', '1'),
(2, 'AWB', '2'),
(3, 'ABC', '3'),
(4, 'COEE', '4');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping_status`
--

CREATE TABLE `tbl_shipping_status` (
  `id` int NOT NULL,
  `status_name` varchar(45) NOT NULL,
  `status_details` varchar(45) NOT NULL,
  `status_checkbox` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_shipping_status`
--

INSERT INTO `tbl_shipping_status` (`id`, `status_name`, `status_details`, `status_checkbox`) VALUES
(1, 'Received Office', 'Received Office status', '1'),
(2, 'Cancelled', 'Cancelled', '1'),
(3, 'Pending', 'Pending status', '1'),
(4, 'Pending Approval', 'approval', '1'),
(5, 'Consolidate', 'Consolidate', '1'),
(6, 'Delivered', 'Delivered', '1'),
(7, 'Pick Up', 'Pick Up', '1'),
(8, 'Rejected', 'Rejected', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping_times`
--

CREATE TABLE `tbl_shipping_times` (
  `id` int NOT NULL,
  `shipping_times` varchar(45) NOT NULL,
  `shipping_details` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_shipping_times`
--

INSERT INTO `tbl_shipping_times` (`id`, `shipping_times`, `shipping_details`) VALUES
(1, '24 Hours', '1 Day'),
(2, '12 - 14 Days', '2 Weeks');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sms_settings`
--

CREATE TABLE `tbl_sms_settings` (
  `id` int NOT NULL,
  `add_pre_alert` varchar(45) NOT NULL,
  `register_packages` varchar(45) NOT NULL,
  `assigndriver` varchar(45) NOT NULL,
  `shipment_tracking` varchar(45) NOT NULL,
  `deliver_shipment` varchar(45) NOT NULL,
  `payment` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_sms_settings`
--

INSERT INTO `tbl_sms_settings` (`id`, `add_pre_alert`, `register_packages`, `assigndriver`, `shipment_tracking`, `deliver_shipment`, `payment`) VALUES
(1, 'add pre alert', 'register packages', 'assign driver', 'shipment tracking', 'deliver shipment', 'payment');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_states`
--

CREATE TABLE `tbl_states` (
  `id` int NOT NULL,
  `countries_id` varchar(45) NOT NULL,
  `state_name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_states`
--

INSERT INTO `tbl_states` (`id`, `countries_id`, `state_name`) VALUES
(1, '5', 'Gujarat'),
(2, '4', 'Ontario'),
(3, '6', ' Alaska'),
(5, '4', 'British Columbia'),
(7, '5', 'Goa'),
(8, '7', 'Eastern Cape'),
(9, '5', 'Assam'),
(10, '4', 'New Mexico'),
(11, '7', 'Free State'),
(12, '7', 'North West'),
(13, '6', 'California'),
(14, '6', 'Florida');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_taxes`
--

CREATE TABLE `tbl_taxes` (
  `id` int NOT NULL,
  `min_tax_apply` varchar(45) NOT NULL DEFAULT '0',
  `tax` varchar(45) NOT NULL DEFAULT '0',
  `tax_count` int NOT NULL DEFAULT '0',
  `min_declared_tax` varchar(45) NOT NULL,
  `declared_tax` varchar(45) NOT NULL,
  `shipping_insurance` varchar(45) NOT NULL,
  `custom_duties` varchar(45) NOT NULL,
  `vol_per` varchar(45) NOT NULL,
  `length_units` varchar(45) NOT NULL,
  `weight_val` varchar(45) NOT NULL,
  `weight_units` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_taxes`
--

INSERT INTO `tbl_taxes` (`id`, `min_tax_apply`, `tax`, `tax_count`, `min_declared_tax`, `declared_tax`, `shipping_insurance`, `custom_duties`, `vol_per`, `length_units`, `weight_val`, `weight_units`) VALUES
(1, '0', '19', 1, '0', '0', '0', '0', '160', '5', '1', '3');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tracking_history`
--

CREATE TABLE `tbl_tracking_history` (
  `id` int NOT NULL,
  `invoice` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `location` varchar(45) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `office` varchar(45) DEFAULT NULL,
  `delivery_status` varchar(45) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(45) NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `assign_driver` varchar(45) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `page` varchar(45) NOT NULL DEFAULT '0',
  `person_receives` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_tracking_history`
--



-- --------------------------------------------------------

--
-- Table structure for table `tbl_validate`
--

CREATE TABLE `tbl_validate` (
  `id` int NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_validate`
--

INSERT INTO `tbl_validate` (`id`, `data`) VALUES

-- --------------------------------------------------------

--
-- Table structure for table `tbl_weight_units`
--

CREATE TABLE `tbl_weight_units` (
  `id` int NOT NULL,
  `unit_name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_weight_units`
--

INSERT INTO `tbl_weight_units` (`id`, `unit_name`) VALUES
(3, 'kg'),
(4, 'pound');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_agency_group`
--
ALTER TABLE `tbl_agency_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_city`
--
ALTER TABLE `tbl_city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_client`
--
ALTER TABLE `tbl_client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_consolidated`
--
ALTER TABLE `tbl_consolidated`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_countries`
--
ALTER TABLE `tbl_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_courier_companies`
--
ALTER TABLE `tbl_courier_companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customers`
--
ALTER TABLE `tbl_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_drivers`
--
ALTER TABLE `tbl_drivers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_email_settings`
--
ALTER TABLE `tbl_email_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_general_settings`
--
ALTER TABLE `tbl_general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_length_units`
--
ALTER TABLE `tbl_length_units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_logistics_service`
--
ALTER TABLE `tbl_logistics_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_notification`
--
ALTER TABLE `tbl_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_office_group`
--
ALTER TABLE `tbl_office_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_packaging`
--
ALTER TABLE `tbl_packaging`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_payment_methods`
--
ALTER TABLE `tbl_payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_payment_type`
--
ALTER TABLE `tbl_payment_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pickup`
--
ALTER TABLE `tbl_pickup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pre_alert`
--
ALTER TABLE `tbl_pre_alert`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_rates`
--
ALTER TABLE `tbl_rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_register_packages`
--
ALTER TABLE `tbl_register_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_shipment`
--
ALTER TABLE `tbl_shipment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_shipping_modes`
--
ALTER TABLE `tbl_shipping_modes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_shipping_prefix`
--
ALTER TABLE `tbl_shipping_prefix`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_shipping_status`
--
ALTER TABLE `tbl_shipping_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_shipping_times`
--
ALTER TABLE `tbl_shipping_times`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sms_settings`
--
ALTER TABLE `tbl_sms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_states`
--
ALTER TABLE `tbl_states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_taxes`
--
ALTER TABLE `tbl_taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_tracking_history`
--
ALTER TABLE `tbl_tracking_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_validate`
--
ALTER TABLE `tbl_validate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_weight_units`
--
ALTER TABLE `tbl_weight_units`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_agency_group`
--
ALTER TABLE `tbl_agency_group`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_city`
--
ALTER TABLE `tbl_city`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_client`
--
ALTER TABLE `tbl_client`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_consolidated`
--
ALTER TABLE `tbl_consolidated`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_countries`
--
ALTER TABLE `tbl_countries`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_courier_companies`
--
ALTER TABLE `tbl_courier_companies`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_customers`
--
ALTER TABLE `tbl_customers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_drivers`
--
ALTER TABLE `tbl_drivers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_email_settings`
--
ALTER TABLE `tbl_email_settings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_general_settings`
--
ALTER TABLE `tbl_general_settings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_length_units`
--
ALTER TABLE `tbl_length_units`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_logistics_service`
--
ALTER TABLE `tbl_logistics_service`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_notification`
--
ALTER TABLE `tbl_notification`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

--
-- AUTO_INCREMENT for table `tbl_office_group`
--
ALTER TABLE `tbl_office_group`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_packaging`
--
ALTER TABLE `tbl_packaging`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tbl_payment_methods`
--
ALTER TABLE `tbl_payment_methods`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_payment_type`
--
ALTER TABLE `tbl_payment_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_pickup`
--
ALTER TABLE `tbl_pickup`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_pre_alert`
--
ALTER TABLE `tbl_pre_alert`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_rates`
--
ALTER TABLE `tbl_rates`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_register_packages`
--
ALTER TABLE `tbl_register_packages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_shipment`
--
ALTER TABLE `tbl_shipment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_shipping_modes`
--
ALTER TABLE `tbl_shipping_modes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_shipping_prefix`
--
ALTER TABLE `tbl_shipping_prefix`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_shipping_status`
--
ALTER TABLE `tbl_shipping_status`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_shipping_times`
--
ALTER TABLE `tbl_shipping_times`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_sms_settings`
--
ALTER TABLE `tbl_sms_settings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_states`
--
ALTER TABLE `tbl_states`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_taxes`
--
ALTER TABLE `tbl_taxes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_tracking_history`
--
ALTER TABLE `tbl_tracking_history`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `tbl_validate`
--
ALTER TABLE `tbl_validate`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_weight_units`
--
ALTER TABLE `tbl_weight_units`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;