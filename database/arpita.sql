-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2023 at 03:34 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arpita`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `password`, `status`) VALUES
(1, 'Arpita', 'arpitabeachresort@gmail.com', 'Pass@2022', 1);

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `add_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `amenities`
--

INSERT INTO `amenities` (`id`, `title`, `add_on`) VALUES
(2, 'Housekeeping', '2022-01-06 14:33:49'),
(3, 'Hangers', '2022-01-06 14:33:49'),
(4, 'Hot water', '2022-01-06 14:33:49'),
(5, 'Bath Kit', '2022-01-06 14:33:49'),
(13, 'Air conditioning', '0000-00-00 00:00:00'),
(14, 'Storage space', '0000-00-00 00:00:00'),
(15, 'Complimentary Wi-Fi internet connectivity', '0000-00-00 00:00:00'),
(16, 'Tea/coffee maker', '0000-00-00 00:00:00'),
(17, 'Fruit basket, chocolates and cookies', '0000-00-00 00:00:00'),
(19, 'Wardrobe and luggage rack', '0000-00-00 00:00:00'),
(23, 'Executive work desk', '0000-00-00 00:00:00'),
(24, 'Newspaper of your choice delivered upon request', '0000-00-00 00:00:00'),
(25, 'Satellite television and set up box', '0000-00-00 00:00:00'),
(26, 'Direct-dialling facilities', '0000-00-00 00:00:00'),
(27, 'Electronic Mini Bar', '0000-00-00 00:00:00'),
(28, 'Safe Deposit locker', '0000-00-00 00:00:00'),
(34, 'Uses of Swimming Pool', '0000-00-00 00:00:00'),
(35, 'Car and travel services', '0000-00-00 00:00:00'),
(36, 'Currency exchange', '0000-00-00 00:00:00'),
(37, 'Doctor on call', '0000-00-00 00:00:00'),
(38, 'Same day laundry  and dry cleaning', '0000-00-00 00:00:00'),
(39, 'Wheel chair handicapped room', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `category` varchar(250) NOT NULL,
  `img` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `addOn` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `title`, `category`, `img`, `description`, `addOn`) VALUES
(3, 'Sudarshan Museum', 'Best For Visiting.', '464156.jpg', '', '2022-11-08 12:07:52'),
(6, 'Pratyush Ocean World', 'Best For Visiting.', '950526.jpg', '', '2022-11-15 18:52:49'),
(7, 'Lokanath Temple', 'Best For Visiting.', '636441.jpg', '', '2022-12-15 00:51:44'),
(8, 'Jagannath temple', 'Best For Visiting.', '855224.jpg', '', '2023-04-08 18:22:04');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `bookinId` varchar(250) NOT NULL,
  `booking_type` int(11) NOT NULL DEFAULT 1,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `company_name` varchar(250) DEFAULT NULL,
  `comGst` varchar(50) DEFAULT NULL,
  `grossCharge` float NOT NULL,
  `userPay` float NOT NULL,
  `partial` varchar(250) NOT NULL,
  `payAtHotel` int(11) NOT NULL DEFAULT 0,
  `partialPercentage` int(11) DEFAULT NULL,
  `couponCode` varchar(250) NOT NULL,
  `pickUp` float NOT NULL,
  `payment_status` varchar(250) NOT NULL,
  `payment_id` varchar(250) DEFAULT NULL,
  `add_on` datetime NOT NULL DEFAULT current_timestamp(),
  `checkInStatus` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bookingdetail`
--

CREATE TABLE `bookingdetail` (
  `id` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `roomId` int(11) NOT NULL,
  `roomDId` int(11) NOT NULL,
  `noRoom` int(11) NOT NULL DEFAULT 1,
  `adult` int(11) NOT NULL,
  `child` int(11) NOT NULL,
  `night` int(11) NOT NULL,
  `checkIn` date NOT NULL,
  `checkout` date NOT NULL,
  `roomPrice` float NOT NULL,
  `adultPrice` float NOT NULL,
  `childPrice` float NOT NULL,
  `gstPer` int(11) NOT NULL,
  `totalPrice` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `img` varchar(250) NOT NULL,
  `rate` float NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `counter`
--

CREATE TABLE `counter` (
  `id` int(11) NOT NULL,
  `guests` float NOT NULL,
  `rooms` float NOT NULL,
  `staffs` float NOT NULL,
  `destination` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `counter_table`
--

CREATE TABLE `counter_table` (
  `id` int(11) NOT NULL,
  `visiter_ip` varchar(250) NOT NULL,
  `visiter_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `counter_table`
--

INSERT INTO `counter_table` (`id`, `visiter_ip`, `visiter_date`) VALUES
(1, '::1', '2023-04-23 10:00:27');

-- --------------------------------------------------------

--
-- Table structure for table `couponcode`
--

CREATE TABLE `couponcode` (
  `id` int(11) NOT NULL,
  `coupon_code` varchar(250) NOT NULL,
  `coupon_type` enum('P','F') NOT NULL,
  `min_value` float NOT NULL,
  `coupon_value` float NOT NULL,
  `expire_on` date NOT NULL,
  `add_on` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `facing`
--

CREATE TABLE `facing` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `img` varchar(150) NOT NULL,
  `addOn` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `facing`
--

INSERT INTO `facing` (`id`, `title`, `img`, `addOn`) VALUES
(1, 'See Facing', 'seeFaching.png', '2022-05-22');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `text` varchar(250) NOT NULL,
  `img` varchar(250) NOT NULL,
  `type` varchar(150) NOT NULL,
  `add_on` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `gallerytype`
--

CREATE TABLE `gallerytype` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallerytype`
--

INSERT INTO `gallerytype` (`id`, `name`) VALUES
(1, 'Rooms'),
(2, 'Restaurant'),
(3, 'Hotel'),
(4, 'halls');

-- --------------------------------------------------------

--
-- Table structure for table `herosection`
--

CREATE TABLE `herosection` (
  `id` int(11) NOT NULL,
  `page` int(11) NOT NULL,
  `img` varchar(250) NOT NULL,
  `title` varchar(250) NOT NULL,
  `subTitle` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hotelservice`
--

CREATE TABLE `hotelservice` (
  `id` int(11) NOT NULL,
  `slag` varchar(10) NOT NULL,
  `short` varchar(5) NOT NULL,
  `serviceName` varchar(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotelservice`
--

INSERT INTO `hotelservice` (`id`, `slag`, `short`, `serviceName`, `status`) VALUES
(1, 'booking', 'BE', 'Booking', 0),
(2, 'quickPay', 'QP', 'Quick Pay', 0),
(3, 'walkIn', 'WI', 'Walk In', 0),
(4, 'wb', 'wb', 'Web Builder', 0);

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `room_detail_id` int(11) DEFAULT NULL,
  `add_date` date NOT NULL,
  `room` int(11) DEFAULT NULL,
  `price` varchar(250) DEFAULT NULL,
  `price2` float NOT NULL DEFAULT 0,
  `eAdult` float NOT NULL,
  `eChild` float NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `live`
--

CREATE TABLE `live` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `offersection`
--

CREATE TABLE `offersection` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `price` float NOT NULL,
  `img` varchar(250) NOT NULL,
  `percentage` float NOT NULL,
  `code` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `id` int(11) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `img` varchar(250) NOT NULL,
  `car` int(11) NOT NULL,
  `duration` float NOT NULL,
  `description` text NOT NULL,
  `room` int(11) NOT NULL,
  `rdid` int(11) NOT NULL,
  `discount` float NOT NULL,
  `pickup` varchar(250) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `addOn` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `packageactivity`
--

CREATE TABLE `packageactivity` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `package_policy`
--

CREATE TABLE `package_policy` (
  `id` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `primaryphone` varchar(150) NOT NULL,
  `address` text NOT NULL,
  `district` varchar(250) NOT NULL,
  `pincode` varchar(250) NOT NULL,
  `gst` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `logo` varchar(250) NOT NULL,
  `logo2` varchar(250) NOT NULL,
  `favicon` varchar(250) NOT NULL,
  `url` varchar(550) NOT NULL,
  `checkIn` varchar(250) NOT NULL,
  `checkOut` varchar(250) NOT NULL,
  `waNo` varchar(15) DEFAULT NULL,
  `fbLink` varchar(250) NOT NULL,
  `inLink` varchar(250) NOT NULL,
  `twLink` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `name`, `email`, `primaryphone`, `address`, `district`, `pincode`, `gst`, `description`, `logo`, `logo2`, `favicon`, `url`, `checkIn`, `checkOut`, `waNo`, `fbLink`, `inLink`, `twLink`) VALUES
(1, 'Arpita', 'mail@hotelnewmarrion.com', '6742380850', 'Janpath, Bhubaneswar-751001', 'Bhubaneswar', '751001', '21ABYFA6534GIZB', 'Management consulting includes a broad range of activities, and the many firms and their members often define these practices.', 'logo-light.png', 'logo-dark.png', 'site-favicon.png', 'https://niladriinn.com', '10.00 Am', '10.00 Am', '6742380850', 'https://www.facebook.com/HotelNewMarrionBBSR/', 'https://www.instagram.com/hotelnewmarrion', 'https://twitter.com/newmarrion');

-- --------------------------------------------------------

--
-- Table structure for table `quickpay`
--

CREATE TABLE `quickpay` (
  `id` int(11) NOT NULL,
  `orderId` varchar(250) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(250) NOT NULL,
  `room` int(11) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `nOfRoom` int(11) NOT NULL DEFAULT 1,
  `roomPrice` float NOT NULL,
  `qickPayNote` text NOT NULL,
  `totalAmount` float NOT NULL DEFAULT 0,
  `amount` float NOT NULL,
  `checkIn` date NOT NULL,
  `checkOut` date NOT NULL,
  `paymentId` varchar(250) DEFAULT NULL,
  `paymentStatus` varchar(250) NOT NULL,
  `addOn` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `id` int(11) NOT NULL,
  `pId` int(11) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `header` varchar(250) NOT NULL,
  `bedtype` varchar(250) NOT NULL,
  `totalroom` int(11) NOT NULL,
  `roomcapacity` int(11) NOT NULL,
  `description` text NOT NULL,
  `noAdult` int(11) NOT NULL,
  `noChild` int(11) NOT NULL,
  `add_on` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `mrp` float NOT NULL,
  `roomArea` varchar(150) DEFAULT NULL,
  `noBed` varchar(150) DEFAULT NULL,
  `noBathroom` varchar(150) DEFAULT NULL,
  `faceId` int(11) NOT NULL DEFAULT 0,
  `view` int(11) NOT NULL DEFAULT 0,
  `booking` int(11) NOT NULL DEFAULT 0,
  `area` int(11) NOT NULL,
  `bed` int(11) NOT NULL,
  `bathroom` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id`, `pId`, `slug`, `header`, `bedtype`, `totalroom`, `roomcapacity`, `description`, `noAdult`, `noChild`, `add_on`, `status`, `mrp`, `roomArea`, `noBed`, `noBathroom`, `faceId`, `view`, `booking`, `area`, `bed`, `bathroom`) VALUES
(1, 0, 'classic-deluxe', 'Classic Deluxe', 'King', 0, 3, '', 2, 0, '2023-04-23 10:34:08', 1, 2000, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0),
(2, 0, 'super-deluxe', 'Super Deluxe', 'King', 0, 3, '', 2, 0, '2023-04-23 10:34:51', 1, 2500, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0),
(3, 0, 'premium', 'Premium', 'King', 0, 3, '', 2, 0, '2023-04-23 10:35:27', 1, 2500, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `room_amenities`
--

CREATE TABLE `room_amenities` (
  `id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `amenitie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_amenities`
--

INSERT INTO `room_amenities` (`id`, `room_id`, `amenitie_id`) VALUES
(1, 1, 2),
(2, 1, 3),
(3, 2, 2),
(4, 2, 3),
(5, 3, 2),
(6, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `room_detail`
--

CREATE TABLE `room_detail` (
  `id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `singlePrice` float NOT NULL,
  `doublePrice` float NOT NULL DEFAULT 0,
  `price` float NOT NULL,
  `extra_adult` float NOT NULL,
  `extra_child` float NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_detail`
--

INSERT INTO `room_detail` (`id`, `room_id`, `title`, `singlePrice`, `doublePrice`, `price`, `extra_adult`, `extra_child`, `status`) VALUES
(1, 1, 'Room Only', 1500, 1500, 0, 150, 300, 1),
(2, 2, 'Room Only', 2199, 2199, 0, 150, 300, 1),
(3, 3, 'Room Only', 2749, 2749, 0, 150, 300, 1);

-- --------------------------------------------------------

--
-- Table structure for table `room_img`
--

CREATE TABLE `room_img` (
  `id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_img`
--

INSERT INTO `room_img` (`id`, `room_id`, `image`) VALUES
(1, 1, '667448.jpg'),
(2, 2, '943472.jpg'),
(3, 3, '151228.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `maxRoomCapacity` int(11) NOT NULL,
  `advancePay` float NOT NULL,
  `pckupDropPrice` float NOT NULL,
  `pckupDropCaption` text NOT NULL,
  `PartialPaymentPrice` float NOT NULL,
  `partialPaymentCaption` text NOT NULL,
  `pckupDropStatus` int(11) NOT NULL,
  `partialPaymentStatus` int(11) NOT NULL,
  `payByRoom` int(11) NOT NULL,
  `payAtHotel` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `maxRoomCapacity`, `advancePay`, `pckupDropPrice`, `pckupDropCaption`, `PartialPaymentPrice`, `partialPaymentCaption`, `pckupDropStatus`, `partialPaymentStatus`, `payByRoom`, `payAtHotel`) VALUES
(1, 6, 7499, 550, '                              ', 50, '', 1, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `term`
--

CREATE TABLE `term` (
  `id` int(11) NOT NULL,
  `policy` varchar(250) NOT NULL,
  `title` varchar(250) NOT NULL,
  `termContent` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `term`
--

INSERT INTO `term` (`id`, `policy`, `title`, `termContent`, `status`) VALUES
(1, 'hotel', 'Hotel Policy', '<p>Please make advance reservations via telephone or book online to assure room availability.</p>\r\n<p>A deposit is required to obtain a confirmed reservation.</p>\r\n<p>Please note the cancellation policy before committing to a reservation. Rates may change without notice and may vary for special events except for confirmed reservation (deposit taken).</p>', 1),
(2, 'cancel', 'Cancelation Policy', '<p>Once the <strong>Booking done</strong>.</p>\r\n<p>No <strong>Refund Policy</strong>.</p>\r\n<p>If you want to <strong>cancel </strong>you can avail the <strong>same amount of booking</strong> with in one <em>year</em>.</p>', 1),
(3, 'refund', 'Refund Policy', '<p>Reservation payments are non <strong>refundable </strong>but it can be adjusted in the next visit of yours within one year.</p>\r\n<p>Provided you must confirm us before 07 days in advance from the date of arrival. Entire advance shall be forfeited if the reservation is cancelled within one week of the scheduled arrival or the guest fails to check in one due date. All disputes shall strictly be subjects to the <strong>jurisdiction of Bhubaneswar Court</strong> only.</p>\r\n<p>Cheques are accepted subject to realisation.</p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wb_nav`
--

CREATE TABLE `wb_nav` (
  `id` int(11) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `name` varchar(250) NOT NULL,
  `addOn` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wb_nav`
--

INSERT INTO `wb_nav` (`id`, `slug`, `name`, `addOn`) VALUES
(1, 'index', 'Home', '2023-04-10 18:03:40'),
(2, 'about', 'About Us', '2023-04-10 18:04:02'),
(3, 'restaurant', 'Restaurant', '2023-04-10 18:05:59'),
(4, 'meetng', 'Meetings & Events', '2023-04-10 18:05:59'),
(5, 'gallery', 'Gallery', '2023-04-10 18:06:35'),
(6, 'contact', 'Contact', '2023-04-10 18:06:35');

-- --------------------------------------------------------

--
-- Table structure for table `wb_page`
--

CREATE TABLE `wb_page` (
  `id` int(11) NOT NULL,
  `navId` int(11) NOT NULL,
  `headerBg` varchar(250) NOT NULL,
  `pageName` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `addOn` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wb_page`
--

INSERT INTO `wb_page` (`id`, `navId`, `headerBg`, `pageName`, `description`, `addOn`) VALUES
(1, 2, 'lcjBg.jpg', 'LCJ', '', '2023-04-10 18:10:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `amenities`
--
ALTER TABLE `amenities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookingdetail`
--
ALTER TABLE `bookingdetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counter`
--
ALTER TABLE `counter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counter_table`
--
ALTER TABLE `counter_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `couponcode`
--
ALTER TABLE `couponcode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facing`
--
ALTER TABLE `facing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallerytype`
--
ALTER TABLE `gallerytype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `herosection`
--
ALTER TABLE `herosection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotelservice`
--
ALTER TABLE `hotelservice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_inventory` (`room_id`);

--
-- Indexes for table `live`
--
ALTER TABLE `live`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offersection`
--
ALTER TABLE `offersection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packageactivity`
--
ALTER TABLE `packageactivity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_policy`
--
ALTER TABLE `package_policy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quickpay`
--
ALTER TABLE `quickpay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_amenities`
--
ALTER TABLE `room_amenities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_detail`
--
ALTER TABLE `room_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rom_detail_id` (`room_id`);

--
-- Indexes for table `room_img`
--
ALTER TABLE `room_img`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rom_image_id` (`room_id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `term`
--
ALTER TABLE `term`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wb_nav`
--
ALTER TABLE `wb_nav`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wb_page`
--
ALTER TABLE `wb_page`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `amenities`
--
ALTER TABLE `amenities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bookingdetail`
--
ALTER TABLE `bookingdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `car`
--
ALTER TABLE `car`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `counter`
--
ALTER TABLE `counter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `counter_table`
--
ALTER TABLE `counter_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `couponcode`
--
ALTER TABLE `couponcode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `facing`
--
ALTER TABLE `facing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gallerytype`
--
ALTER TABLE `gallerytype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `herosection`
--
ALTER TABLE `herosection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hotelservice`
--
ALTER TABLE `hotelservice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `live`
--
ALTER TABLE `live`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offersection`
--
ALTER TABLE `offersection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `packageactivity`
--
ALTER TABLE `packageactivity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `package_policy`
--
ALTER TABLE `package_policy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `quickpay`
--
ALTER TABLE `quickpay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `room_amenities`
--
ALTER TABLE `room_amenities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `room_detail`
--
ALTER TABLE `room_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `room_img`
--
ALTER TABLE `room_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `term`
--
ALTER TABLE `term`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wb_nav`
--
ALTER TABLE `wb_nav`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wb_page`
--
ALTER TABLE `wb_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
