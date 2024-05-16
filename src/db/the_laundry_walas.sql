-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 24, 2023 at 08:53 AM
-- Server version: 8.0.31
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `the_laundry_walas`
--

-- --------------------------------------------------------

--
-- Table structure for table `assign_module`
--

CREATE TABLE `assign_module` (
  `id` int NOT NULL,
  `role` int NOT NULL,
  `module` int NOT NULL,
  `position` int DEFAULT NULL,
  `status` varchar(1) NOT NULL DEFAULT 'Y',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assign_module`
--

INSERT INTO `assign_module` (`id`, `role`, `module`, `position`, `status`, `date`) VALUES
(178, 6, 1, 1, 'Y', '2023-03-03 06:05:51'),
(179, 6, 18, 2, 'Y', '2023-03-03 06:05:51'),
(180, 6, 13, 3, 'Y', '2023-03-03 06:05:51'),
(181, 6, 26, 4, 'Y', '2023-03-03 06:05:51'),
(182, 6, 25, 5, 'Y', '2023-03-03 06:05:51'),
(183, 6, 28, 6, 'Y', '2023-03-03 06:05:51'),
(184, 6, 27, 7, 'Y', '2023-03-03 06:05:51'),
(238, 5, 1, 21, 'Y', '2023-10-02 11:44:58'),
(239, 5, 26, 22, 'Y', '2023-10-02 11:44:58'),
(240, 5, 2, 23, 'Y', '2023-10-02 11:44:58'),
(241, 5, 5, 24, 'Y', '2023-10-02 11:44:58'),
(242, 5, 6, 25, 'Y', '2023-10-02 11:44:58'),
(243, 5, 13, 26, 'Y', '2023-10-02 11:44:58'),
(244, 5, 18, 27, 'Y', '2023-10-02 11:44:58'),
(245, 5, 29, 28, 'Y', '2023-10-02 11:44:58'),
(246, 5, 30, 29, 'Y', '2023-10-02 11:44:58'),
(247, 5, 20, 30, 'Y', '2023-10-02 11:44:58'),
(248, 5, 27, 31, 'Y', '2023-10-02 11:44:58'),
(249, 5, 28, 32, 'Y', '2023-10-02 11:44:58'),
(250, 5, 25, 33, 'Y', '2023-10-02 11:44:58'),
(251, 5, 31, 34, 'Y', '2023-10-02 11:44:58'),
(252, 5, 32, 35, 'Y', '2023-10-02 11:44:58'),
(253, 5, 33, 36, 'Y', '2023-10-02 11:44:58'),
(319, 3, 1, 37, 'Y', '2023-11-21 08:56:23'),
(320, 3, 13, 38, 'Y', '2023-11-21 08:56:23'),
(321, 3, 38, 39, 'Y', '2023-11-21 08:56:23'),
(322, 3, 20, 45, 'Y', '2023-11-21 08:56:23'),
(323, 3, 28, 40, 'Y', '2023-11-21 08:56:23'),
(324, 3, 34, 41, 'Y', '2023-11-21 08:56:23'),
(325, 3, 35, 42, 'Y', '2023-11-21 08:56:23'),
(326, 3, 37, 44, 'Y', '2023-11-21 08:56:23'),
(327, 3, 36, 43, 'Y', '2023-11-21 08:56:23');

-- --------------------------------------------------------

--
-- Table structure for table `bank_details`
--

CREATE TABLE `bank_details` (
  `id` int NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `account_number` varchar(200) NOT NULL,
  `IFSC_code` varchar(200) NOT NULL,
  `bank_name` varchar(200) NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT 'Y',
  `action` varchar(200) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int NOT NULL,
  `address` varchar(500) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `status` varchar(1) NOT NULL DEFAULT 'N',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `address`, `phone`, `status`, `date`) VALUES
(1, 'C-34 Lajpat Marg, Panch Batti, C Scheme, Ashok Nagar, Jaipur, Rajasthan 302001', '9001348998', 'Y', '2023-11-09 06:57:29'),
(2, 'D-3 krishnapuri Rakdi, sodala, near NVN School, Jaipur, Rajasthan 302006', '9001348998', 'Y', '2023-11-09 07:19:19');

-- --------------------------------------------------------

--
-- Table structure for table `deposit`
--

CREATE TABLE `deposit` (
  `id` int NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `balance` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `transaction_id` varchar(50) NOT NULL,
  `payment` varchar(50) NOT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Pending',
  `reason` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '.',
  `Approved_declined_By` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Not Approved',
  `paymethod_id` int NOT NULL,
  `coupan` varchar(100) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `deposit`
--

INSERT INTO `deposit` (`id`, `user_name`, `balance`, `image`, `transaction_id`, `payment`, `status`, `reason`, `Approved_declined_By`, `paymethod_id`, `coupan`, `date`) VALUES
(30, '9794368090', '200', 'd_image-1696061423264-489474946.png', 'A5w7357d738d', 'Phone Pe', 'Success', '.', 'Superadmin', 36, NULL, '2023-09-30 08:10:23'),
(32, '9794368091', '250', 'd_image-1696230974590-620067451.png', 'TLSHNCUMD432423', 'Phone Pe', 'Success', '.', 'Superadmin', 36, NULL, '2023-10-02 07:16:14'),
(33, '9794368092', '300', 'd_image-1696233957744-261937840.png', 'Tudhdjd398934', 'Phone Pe', 'Success', '.', 'Superadmin', 36, NULL, '2023-10-02 08:05:57'),
(34, '9794368090', '200', 'd_image-1696326540950-722368989.png', 'TDJMDKFJF56378378', 'Phone Pe', 'Success', '.', 'Superadmin', 36, NULL, '2023-10-03 09:49:00'),
(38, '9794368090', '550', 'd_image-1696486692492-799577383.png', 'TDHDGD2472792', 'Phone Pe', 'Pending', '.', 'Not Approved', 36, NULL, '2023-10-05 06:18:12');

-- --------------------------------------------------------

--
-- Table structure for table `items_catagory`
--

CREATE TABLE `items_catagory` (
  `id` int NOT NULL,
  `item_catagory` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT 'Y',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `items_catagory`
--

INSERT INTO `items_catagory` (`id`, `item_catagory`, `status`, `date`) VALUES
(11, 'Washing Fold and Iron', 'Y', '2023-11-09 08:09:51'),
(12, 'Dry Cleaning', 'Y', '2023-11-09 08:13:52'),
(13, 'Laundry Stream Iron', 'Y', '2023-11-09 08:14:10'),
(14, 'Leather Items', 'Y', '2023-11-09 08:14:19');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int NOT NULL,
  `name` varchar(10) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `is_active` varchar(1) NOT NULL DEFAULT 'N',
  `status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Y',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `name`, `username`, `password`, `is_active`, `status`, `date`) VALUES
(14, 'Kumar Ji', 'Superadmin', '$2b$12$JZZL/FuFOD.ibnxlComhVuWe7YzDq1zswgezphrzLk.Auq1wLuqGW', 'Y', 'Y', '2022-07-29 00:02:44'),
(15, 'testing', 'test', '$2b$10$mh/WZV1LwVEnxzoTa5rKiuUOZT2urb81itGLIV73yiJ/rAgmwSHDi', 'N', 'Y', '2023-03-03 06:05:15');

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `id` int NOT NULL,
  `module_name` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT 'Y',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`id`, `module_name`, `url`, `status`, `date`) VALUES
(1, 'Dashboard', '/home/dashboard', 'Y', '2022-07-26 05:55:10'),
(2, 'Game Mapping', '/home/game-mapping', 'Y', '2022-07-26 05:56:37'),
(5, 'Game Color', '/home/game-color', 'Y', '2022-07-26 05:55:42'),
(6, 'Game Type', '/home/game-type', 'Y', '2022-07-26 05:56:03'),
(13, 'module', '/home/module', 'Y', '2022-07-26 05:55:10'),
(18, 'role', '/home/role', 'Y', '2022-08-03 00:44:23'),
(20, 'activity mapping', '/home/activity-mapping', 'Y', '2022-08-05 00:35:20'),
(25, 'Withdrawal', '/home/withdrawal', 'Y', '2022-10-10 11:56:54'),
(26, 'Deposit', '/home/deposit', 'Y', '2022-10-10 11:57:34'),
(27, 'Payment Details', '/home/payment-details', 'Y', '2022-10-12 07:45:17'),
(28, 'User Details', '/home/user-details', 'Y', '2022-10-19 05:26:14'),
(29, 'User Bank Details', '/home/user-bank-details', 'Y', '2022-11-09 09:43:52'),
(30, 'Sub-Admin', '/home/sub-admin', 'Y', '2023-02-16 09:55:26'),
(31, 'Shopping Details', 'add-shopping-details', 'Y', '2023-03-16 10:46:29'),
(32, 'timer', '/home/timer', 'Y', '2023-09-06 06:15:22'),
(33, 'Bonus-tables', '/home/bonus-tables', 'Y', '2023-10-02 11:44:42'),
(34, 'Contact details', '/home/contact-details', 'Y', '2023-11-09 06:02:35'),
(35, 'Price list', '/home/price-list', 'Y', '2023-11-09 07:34:18'),
(36, 'Item Catagory', '/home/item-catagory', 'Y', '2023-11-09 07:36:53'),
(37, 'Billing Page', '/home/billing-page', 'Y', '2023-11-09 10:44:17'),
(38, 'Order Page', '/home/order-page', 'Y', '2023-11-09 10:57:09');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `order_type` varchar(100) NOT NULL,
  `order_no` varchar(100) NOT NULL,
  `order_date` varchar(100) NOT NULL,
  `order_time` varchar(100) NOT NULL,
  `pickup_addess` varchar(1000) DEFAULT NULL,
  `total_bill` varchar(100) DEFAULT NULL,
  `advanced_a` varchar(100) DEFAULT NULL,
  `due` varchar(100) DEFAULT NULL,
  `final_total` varchar(100) DEFAULT NULL,
  `discount` varchar(100) DEFAULT NULL,
  `gst` varchar(1) NOT NULL DEFAULT 'N',
  `payment_status` varchar(1) NOT NULL DEFAULT 'N',
  `bill_genrate` varchar(1) NOT NULL DEFAULT 'N',
  `status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'N',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `user_id`, `order_type`, `order_no`, `order_date`, `order_time`, `pickup_addess`, `total_bill`, `advanced_a`, `due`, `final_total`, `discount`, `gst`, `payment_status`, `bill_genrate`, `status`, `date`) VALUES
(1, 34, 'Laundry Pickup', '1', '2023-11-08T10:59:50.991Z', '4:29:50 PM', 'Phoolbagh Colony, Near Bharat gas agency Amer Jaipur 302021 India', NULL, NULL, NULL, NULL, NULL, 'N', 'N', 'Y', 'Y', '2023-11-08 11:06:48'),
(34, 11, 'Laundry Pickup', '2', '2023-11-08T11:54:25.138Z', '5:24:25 PM', 'Phoolbagh Colony, Near Bharat gas agency Amer Jaipur 302021 India', NULL, NULL, NULL, NULL, NULL, 'N', 'N', 'C', 'C', '2023-11-08 11:56:03'),
(38, 11, 'Dry Clean', '3', '2023-11-09T12:45:20.581Z', '7:15:20 PM', 'Phoolbagh Colony, Near Bharat gas agency Amer Jaipur 302021 India', NULL, NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'Y', '2023-11-09 12:45:33'),
(40, 11, 'Dry Clean', '4', '2023-11-07T13:39:39', '13:39:39', 'Phoolbagh Colony, Near Bharat gas agency Amer Jaipur 302021 India', NULL, NULL, NULL, NULL, NULL, 'N', 'N', 'N', 'Y', '2023-11-05 08:09:35'),
(41, 11, 'Dry Clean', '6', '2023-11-08T15:14:20', '15:14:20', 'Phoolbagh Colony, Near Bharat gas agency Amer Jaipur 302021 India', NULL, NULL, NULL, NULL, NULL, 'N', 'N', 'Y', 'Y', '2023-11-06 09:44:15');

-- --------------------------------------------------------

--
-- Table structure for table `order_bill`
--

CREATE TABLE `order_bill` (
  `id` int NOT NULL,
  `order_no` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `price_list_id` int NOT NULL,
  `price` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `total` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_bill`
--

INSERT INTO `order_bill` (`id`, `order_no`, `price_list_id`, `price`, `qty`, `total`, `date`) VALUES
(9, '1', 2, '40', '30', '1200', '2023-11-20 14:11:11'),
(10, '1', 6, '40', '4', '160', '2023-11-20 14:11:11'),
(11, '1', 1, '70', '2.3', '161', '2023-11-20 14:11:11'),
(12, '1', 5, '50', '1.45', '72.5', '2023-11-21 14:11:11'),
(13, '6', 3, '40', '2', '80', '2023-11-21 10:50:39'),
(14, '6', 7, '20', '4', '80', '2023-11-21 10:50:39'),
(15, '6', 1, '70', '1.3', '91', '2023-11-21 10:50:39'),
(16, '6', 5, '50', '1.4', '70', '2023-11-21 10:50:39');

-- --------------------------------------------------------

--
-- Table structure for table `otp`
--

CREATE TABLE `otp` (
  `id` int NOT NULL,
  `otp` varchar(200) NOT NULL,
  `number` varchar(200) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `otp`
--

INSERT INTO `otp` (`id`, `otp`, `number`, `date`) VALUES
(1, '$2b$12$TglLt6z92f96hdA9GIyLjek8Qbj40NBSrh0ddm3WIVH07kodGEXxO', '763048935345', '2022-09-03 04:15:02'),
(2, '$2b$12$ckXI902TvWih/CapMTjfFOXu0jRFP.U3YdnKzIXatM5UnzKOCNHC2', '855485896365', '2022-09-20 00:16:24');

-- --------------------------------------------------------

--
-- Table structure for table `payment_bonus`
--

CREATE TABLE `payment_bonus` (
  `id` int NOT NULL,
  `offer_name` varchar(100) NOT NULL,
  `amount_start` varchar(100) NOT NULL,
  `amount_end` varchar(100) NOT NULL,
  `percentage` varchar(50) NOT NULL,
  `times` varchar(100) NOT NULL,
  `status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'N',
  `end_date` date NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_bonus`
--

INSERT INTO `payment_bonus` (`id`, `offer_name`, `amount_start`, `amount_end`, `percentage`, `times`, `status`, `end_date`, `date`) VALUES
(1, 'jsks', '200', '1000', '20', '1', 'N', '2023-10-05', '2023-10-04 07:04:19'),
(2, 'jskss', '1001', '2000', '30', '3', 'Y', '2023-10-22', '2023-10-04 09:37:50'),
(3, 'First', '500', '1000', '10', '2', 'Y', '2023-10-12', '2023-10-05 05:37:22');

-- --------------------------------------------------------

--
-- Table structure for table `payment_details`
--

CREATE TABLE `payment_details` (
  `id` int NOT NULL,
  `paymethod_id` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `mobile_no` varchar(20) DEFAULT NULL,
  `UPI_id` varchar(45) DEFAULT NULL,
  `QR_code` varchar(45) DEFAULT NULL,
  `icons` varchar(50) DEFAULT NULL,
  `bank_name` varchar(45) DEFAULT NULL,
  `account_no` varchar(45) DEFAULT NULL,
  `ifsc_code` varchar(45) DEFAULT NULL,
  `account_type` varchar(45) DEFAULT NULL,
  `status` varchar(1) NOT NULL DEFAULT 'N',
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_details`
--

INSERT INTO `payment_details` (`id`, `paymethod_id`, `name`, `mobile_no`, `UPI_id`, `QR_code`, `icons`, `bank_name`, `account_no`, `ifsc_code`, `account_type`, `status`, `Date`) VALUES
(27, 1, 'XYZ', NULL, NULL, NULL, NULL, 'ABC', '12389792042', 'XYZa0rwr24', 'Saving', 'Y', '2023-04-25 09:27:51'),
(29, 1, 'BCA', NULL, NULL, NULL, NULL, 'ABC Bank', '8623489829478', 'ABCo0w34w4', 'Saving', 'Y', '2023-04-25 10:54:46'),
(30, 1, 'XYZ', NULL, NULL, NULL, NULL, 'XYZYZ', '12324234', 'wesr024324', 'Saving', 'N', '2023-04-27 05:14:01'),
(35, 5, 'sudhanshu', '972387249776', 'ewrew@fdsf', 'qr_code-1682587977208-140059357.png', 'paytm.png', NULL, NULL, NULL, NULL, 'Y', '2023-04-27 09:32:57'),
(36, 2, 'Sparrow', '9794368090', 'sparrow@upi', 'qr_code-1682588580441-398407720.png', 'paytm.png', NULL, NULL, NULL, NULL, 'Y', '2023-04-27 09:43:00'),
(37, 3, 'Sparrow', '9779282784', 'Sparrow@paytm', 'qr_code-1682588650144-432219599.png', 'paytm.png', NULL, NULL, NULL, NULL, 'Y', '2023-04-27 09:44:10'),
(38, 5, 'Sparrow', '86382784234', 'Sparrow@gpay', 'qr_code-1682588702689-921871185.png', 'paytm.png', NULL, NULL, NULL, NULL, 'Y', '2023-04-27 09:45:02'),
(40, 6, 'sudhanshu', '234234', 'sdfkjdsf@sdf', 'qr_code-1682661589949-26109854.png', 'paytm.png', NULL, NULL, NULL, NULL, 'Y', '2023-04-28 05:59:49'),
(42, 6, 'sudhanshu Maurya', NULL, 'UPisudhanshu@upi', NULL, 'upi.png', NULL, NULL, NULL, NULL, 'Y', '2023-05-02 09:28:20');

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

CREATE TABLE `payment_method` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT 'Y',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_method`
--

INSERT INTO `payment_method` (`id`, `name`, `icon`, `status`, `date`) VALUES
(1, 'Bank Transfer', 'imps.png', 'Y', '2022-10-15 07:21:45'),
(2, 'Phone Pe', 'phonepe.png', 'Y', '2022-10-15 07:21:45'),
(3, 'Paytm', 'paytm.png', 'Y', '2022-10-15 07:21:45'),
(5, 'Google Pay', 'googlepay.png', 'Y', '2022-10-15 07:21:45'),
(6, 'UPI', 'upi.png', 'Y', '2023-04-28 05:40:50');

-- --------------------------------------------------------

--
-- Table structure for table `price_list`
--

CREATE TABLE `price_list` (
  `id` int NOT NULL,
  `item_catagory` int NOT NULL,
  `item_name` varchar(200) NOT NULL,
  `price` varchar(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT 'N',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `price_list`
--

INSERT INTO `price_list` (`id`, `item_catagory`, `item_name`, `price`, `unit`, `status`, `date`) VALUES
(1, 11, 'Washing iron', '70', 'Kg', 'Y', '2023-11-09 09:55:25'),
(2, 12, 'All Shirts', '40', 'Pc', 'Y', '2023-11-09 10:07:56'),
(3, 13, 'Sheets', '40', 'Pc', 'Y', '2023-11-09 10:08:57'),
(4, 14, 'All Leather Items', '150', 'Pc', 'Y', '2023-11-09 10:09:45'),
(5, 11, 'Washing fold', '50', 'Kg', 'Y', '2023-11-09 10:10:43'),
(6, 12, 'Pants, Jeans, Skirt', '40', 'Pc', 'Y', '2023-11-09 10:11:25'),
(7, 13, 'Pillowcases', '20', 'Pc', 'Y', '2023-11-09 10:12:01'),
(8, 12, 'Saree Normal', '100 to 180', 'Pc', 'Y', '2023-11-09 10:12:44');

-- --------------------------------------------------------

--
-- Table structure for table `reffer_bonus`
--

CREATE TABLE `reffer_bonus` (
  `id` int NOT NULL,
  `referral` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `applier` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT 'N',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reffer_bonus`
--

INSERT INTO `reffer_bonus` (`id`, `referral`, `applier`, `status`, `date`) VALUES
(1, '250', '200', 'Y', '2023-09-30 08:52:42'),
(2, '250', '250', 'N', '2023-10-04 06:52:43');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `display_name` varchar(100) NOT NULL,
  `view` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `delete_d` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `update_d` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `play_btn` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `role_assign` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'N',
  `status` varchar(1) NOT NULL DEFAULT 'N',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`, `display_name`, `view`, `delete_d`, `update_d`, `play_btn`, `role_assign`, `status`, `date`) VALUES
(3, 'Super Admin', 'Super Administration', 'true', 'true', 'true', 'true', 'Y', 'N', '2022-07-23 00:43:22'),
(5, 'Developer', 'For developer', 'true', 'true', 'true', 'true', 'Y', 'N', '2023-02-17 06:14:26'),
(6, 'View Admin', 'View Only', 'true', 'false', 'false', 'false', 'Y', 'N', '2023-03-01 10:36:21');

-- --------------------------------------------------------

--
-- Table structure for table `role_assign`
--

CREATE TABLE `role_assign` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `role_id` int NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT 'Y',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role_assign`
--

INSERT INTO `role_assign` (`id`, `user_id`, `role_id`, `status`, `date`) VALUES
(4, 14, 3, 'Y', '2023-02-16 09:07:07'),
(5, 15, 5, 'Y', '2023-03-03 06:05:15');

-- --------------------------------------------------------

--
-- Table structure for table `timer`
--

CREATE TABLE `timer` (
  `id` int NOT NULL,
  `time` varchar(100) NOT NULL,
  `unit` varchar(1) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `timer`
--

INSERT INTO `timer` (`id`, `time`, `unit`, `date`) VALUES
(1, '30', 'S', '2023-09-06 06:29:51'),
(2, '1', 'M', '2023-09-06 06:29:51'),
(3, '2', 'M', '2023-09-06 06:31:10'),
(4, '3', 'M', '2023-09-06 06:31:10');

-- --------------------------------------------------------

--
-- Table structure for table `userbankdeatils`
--

CREATE TABLE `userbankdeatils` (
  `id` int NOT NULL,
  `username` varchar(250) NOT NULL,
  `account_no` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ifsc_code` varchar(100) DEFAULT NULL,
  `account_holder_name` varchar(100) NOT NULL,
  `bankname` varchar(100) DEFAULT NULL,
  `account_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Pending',
  `approved_or_denied_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'Not Approved',
  `reason` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userbankdeatils`
--

INSERT INTO `userbankdeatils` (`id`, `username`, `account_no`, `ifsc_code`, `account_holder_name`, `bankname`, `account_type`, `status`, `approved_or_denied_by`, `reason`, `date`) VALUES
(11, '9794368090', '280101000000185', 'IOBO0280111', 'Sudhanshu maurya', 'Indian Overserse bank', 'Saving', 'Pending', 'Not Approved', NULL, '2023-04-21 06:35:56');

-- --------------------------------------------------------

--
-- Table structure for table `usernumberdetails`
--

CREATE TABLE `usernumberdetails` (
  `id` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `number` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usernumberdetails`
--

INSERT INTO `usernumberdetails` (`id`, `username`, `name`, `number`, `type`, `date`) VALUES
(6, '9794368090', 'sudhanshu maurya', '9794368090', 'Phone Pe', '2023-04-21 06:37:30');

-- --------------------------------------------------------

--
-- Table structure for table `userupidetails`
--

CREATE TABLE `userupidetails` (
  `id` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `UPI_id` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userupidetails`
--

INSERT INTO `userupidetails` (`id`, `username`, `name`, `UPI_id`, `date`) VALUES
(4, '9794368090', 'sudhanshu Maurya', '9794368090@upi', '2023-04-21 06:36:39');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` int NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `street` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `zipcode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_active` varchar(1) NOT NULL DEFAULT 'N',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(1) DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `name`, `email`, `password`, `phone`, `street`, `city`, `zipcode`, `country`, `is_active`, `date`, `status`) VALUES
(11, 'Sudhanshu Maurya', 'Sudhanshumauryaspn@gmail.com', '$2b$12$CqZWrvttdGBRLSvXrwmcpexv1hoIf8/THh8zzEAkimq7vLS8fEW6C', '9794368090', 'Phoolbagh Colony, Near Bharat gas agency Amer', 'Jaipur', '302021', 'India', 'Y', '2023-02-23 06:08:07', 'N'),
(34, 'Himanshu Maurya', 'himanshumaurya01@gmail.com', NULL, '9794368090', 'Phoolbagh Colony, Near Bharat gas agency Amer, Jaipur, Rajasthan', 'Jaipur', '302028', 'India', 'Y', '2023-11-08 05:33:55', 'Y'),
(36, 'dfds!', 'sdsdf@sddfs.csd', '$2b$12$nnb31WfMBbTezPaPTvmSjOzugs/hCDz11aVVA6ZFhB2k2cBrxomxO', NULL, NULL, NULL, NULL, NULL, 'N', '2023-11-08 05:38:33', 'Y'),
(37, 'sfdsd', 'sfd@sds.cds', '$2b$12$mBEGCM5SMuh/GK20GoRoqOY4sZ7TBbH2ibXbyrvRjxrGxhaB2dpiW', NULL, NULL, NULL, NULL, NULL, 'N', '2023-11-08 05:39:47', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

CREATE TABLE `wallet` (
  `id` int NOT NULL,
  `email` varchar(200) NOT NULL,
  `wallet_balance` varchar(200) NOT NULL,
  `Winning_wallet` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `Bonus_wallet` varchar(50) NOT NULL DEFAULT '0',
  `status` varchar(1) NOT NULL DEFAULT 'Y',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wallet`
--

INSERT INTO `wallet` (`id`, `email`, `wallet_balance`, `Winning_wallet`, `Bonus_wallet`, `status`, `date`) VALUES
(10, 'sudhanshumauryaspn@gmail.com', '970', '290', '750', 'Y', '2023-02-23 06:08:07'),
(29, 'himanshumaurya01@gmail.com', '0', '0', '0', 'Y', '2023-11-08 05:33:55'),
(30, 'dsa@sdc.cs', '0', '0', '0', 'Y', '2023-11-08 05:37:25'),
(31, 'sdsdf@sddfs.csd', '0', '0', '0', 'Y', '2023-11-08 05:38:33'),
(32, 'sfd@sds.cds', '0', '0', '0', 'Y', '2023-11-08 05:39:47'),
(33, 'dafsd@gn.com', '0', '0', '0', 'Y', '2023-11-21 06:32:05'),
(34, 'Sudhanshumauryaspn2@gmail.com', '0', '0', '0', 'Y', '2023-11-21 06:35:33'),
(35, 'sfd@sds.cds1', '0', '0', '0', 'Y', '2023-11-21 06:36:58');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawal`
--

CREATE TABLE `withdrawal` (
  `id` int NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `balance` varchar(200) NOT NULL,
  `Approved_declined_By` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Not Approved',
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Pending',
  `paymethod_id` int NOT NULL,
  `paytype` varchar(50) NOT NULL,
  `reason` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `withdrawal`
--

INSERT INTO `withdrawal` (`id`, `user_name`, `balance`, `Approved_declined_By`, `status`, `paymethod_id`, `paytype`, `reason`, `date`) VALUES
(13, '9794368090', '300', 'Superadmin', 'Success', 4, 'UPI Id', NULL, '2023-08-19 11:15:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assign_module`
--
ALTER TABLE `assign_module`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module` (`module`),
  ADD KEY `role_x` (`role`);

--
-- Indexes for table `bank_details`
--
ALTER TABLE `bank_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_number` (`account_number`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposit`
--
ALTER TABLE `deposit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paymethod_id` (`paymethod_id`);

--
-- Indexes for table `items_catagory`
--
ALTER TABLE `items_catagory`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `item_name` (`item_catagory`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user` (`username`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `module_name` (`module_name`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_no` (`order_no`),
  ADD KEY `user_iddd` (`user_id`);

--
-- Indexes for table `order_bill`
--
ALTER TABLE `order_bill`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order` (`order_no`),
  ADD KEY `list` (`price_list_id`);

--
-- Indexes for table `otp`
--
ALTER TABLE `otp`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `number` (`number`);

--
-- Indexes for table `payment_bonus`
--
ALTER TABLE `payment_bonus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `offer_name` (`offer_name`);

--
-- Indexes for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_no` (`account_no`),
  ADD UNIQUE KEY `UPI_id` (`UPI_id`),
  ADD KEY `payid` (`paymethod_id`);

--
-- Indexes for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `price_list`
--
ALTER TABLE `price_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_catagory` (`item_catagory`);

--
-- Indexes for table `reffer_bonus`
--
ALTER TABLE `reffer_bonus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `display_name` (`display_name`);

--
-- Indexes for table `role_assign`
--
ALTER TABLE `role_assign`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `role` (`role_id`);

--
-- Indexes for table `timer`
--
ALTER TABLE `timer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userbankdeatils`
--
ALTER TABLE `userbankdeatils`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_no` (`account_no`);

--
-- Indexes for table `usernumberdetails`
--
ALTER TABLE `usernumberdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userupidetails`
--
ALTER TABLE `userupidetails`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UPI_id` (`UPI_id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `wallet`
--
ALTER TABLE `wallet`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `withdrawal`
--
ALTER TABLE `withdrawal`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assign_module`
--
ALTER TABLE `assign_module`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=328;

--
-- AUTO_INCREMENT for table `bank_details`
--
ALTER TABLE `bank_details`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `deposit`
--
ALTER TABLE `deposit`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `items_catagory`
--
ALTER TABLE `items_catagory`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `module`
--
ALTER TABLE `module`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `order_bill`
--
ALTER TABLE `order_bill`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `otp`
--
ALTER TABLE `otp`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment_bonus`
--
ALTER TABLE `payment_bonus`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment_details`
--
ALTER TABLE `payment_details`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `price_list`
--
ALTER TABLE `price_list`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `reffer_bonus`
--
ALTER TABLE `reffer_bonus`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `role_assign`
--
ALTER TABLE `role_assign`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `timer`
--
ALTER TABLE `timer`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `userbankdeatils`
--
ALTER TABLE `userbankdeatils`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `usernumberdetails`
--
ALTER TABLE `usernumberdetails`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `userupidetails`
--
ALTER TABLE `userupidetails`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `wallet`
--
ALTER TABLE `wallet`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `withdrawal`
--
ALTER TABLE `withdrawal`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assign_module`
--
ALTER TABLE `assign_module`
  ADD CONSTRAINT `module` FOREIGN KEY (`module`) REFERENCES `module` (`id`),
  ADD CONSTRAINT `role_x` FOREIGN KEY (`role`) REFERENCES `role` (`id`);

--
-- Constraints for table `deposit`
--
ALTER TABLE `deposit`
  ADD CONSTRAINT `paymethod_id` FOREIGN KEY (`paymethod_id`) REFERENCES `payment_details` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `order_bill`
--
ALTER TABLE `order_bill`
  ADD CONSTRAINT `list` FOREIGN KEY (`price_list_id`) REFERENCES `price_list` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `order` FOREIGN KEY (`order_no`) REFERENCES `order` (`order_no`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD CONSTRAINT `payid` FOREIGN KEY (`paymethod_id`) REFERENCES `payment_method` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `price_list`
--
ALTER TABLE `price_list`
  ADD CONSTRAINT `item_catagory` FOREIGN KEY (`item_catagory`) REFERENCES `items_catagory` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `role_assign`
--
ALTER TABLE `role_assign`
  ADD CONSTRAINT `role` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `login` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
