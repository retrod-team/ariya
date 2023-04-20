-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2022 at 09:47 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `guest_house`
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
(1, 'Jamindars Palace', 'reservation@jamindarspalace.com', 'Pass@2022', 1);

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
(15, 'Temperature check', '0000-00-00 00:00:00'),
(16, 'Bath Kit', '0000-00-00 00:00:00'),
(17, 'Sanitizers', '0000-00-00 00:00:00'),
(19, 'Mask', '0000-00-00 00:00:00'),
(20, 'Pool', '0000-00-00 00:00:00');

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

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `bookinId` varchar(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `company_name` varchar(250) DEFAULT NULL,
  `comGst` varchar(50) DEFAULT NULL,
  `grossCharge` float NOT NULL,
  `userPay` float NOT NULL,
  `partial` varchar(250) NOT NULL,
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

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`id`, `name`, `img`, `rate`, `status`) VALUES
(1, 'car1', '597371.jpg', 150, 1),
(2, 'car2', '2.jpg', 250, 1),
(3, 'car1', '3.jpg', 350, 1),
(4, 'car', '267992.jpg', 45, 1);

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
(1, '::1', '2022-10-14 12:47:27');

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
  `add_on` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `herosection`
--

CREATE TABLE `herosection` (
  `id` int(11) NOT NULL,
  `img` varchar(250) NOT NULL,
  `title` varchar(250) NOT NULL,
  `subTitle` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `herosection`
--

INSERT INTO `herosection` (`id`, `img`, `title`, `subTitle`, `description`, `status`) VALUES
(6, '650762.jpg', 'fdgdf', '', '', 1);

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

--
-- Dumping data for table `live`
--

INSERT INTO `live` (`id`, `status`) VALUES
(1, 1);

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
  `url` varchar(550) NOT NULL,
  `checkIn` varchar(250) NOT NULL,
  `checkOut` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `name`, `email`, `primaryphone`, `address`, `district`, `pincode`, `gst`, `description`, `logo`, `url`, `checkIn`, `checkOut`) VALUES
(1, 'Jamindars Palace', 'reservation@jamindarspalace.com', '7682830917', 'BLUE FLAG BEACH, CHAKRATIRTHA ROAD, PURI', 'PURI', '752002', '21AABCH4042H1Z6', 'Jamindar Palace is one among the best luxury sea-view hotel in Puri and has stunning views of the ocean from various parts of the property. Being absolutely one in all the pleasant luxury sea-view hotel in Puri', 'logo.png', 'https://jamindarspalace.com', '10.00 AM', '08.00 AM');

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
  `booking` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `room_amenities`
--

CREATE TABLE `room_amenities` (
  `id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `amenitie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

-- --------------------------------------------------------

--
-- Table structure for table `room_img`
--

CREATE TABLE `room_img` (
  `id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `payByRoom` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `maxRoomCapacity`, `advancePay`, `pckupDropPrice`, `pckupDropCaption`, `PartialPaymentPrice`, `partialPaymentCaption`, `pckupDropStatus`, `partialPaymentStatus`, `payByRoom`) VALUES
(1, 6, 7499, 1000, '                          ', 50, '', 0, 1, 0);

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
(3, 'refund', 'Refund Policy', '<p>Reservation payments are non <strong>refundable </strong>but it can be adjusted in the next visit of yours within one year.</p>\r\n<p>Provided you must confirm us before 07 days in advance from the date of arrival. Entire advance shall be forfeited if the reservation is cancelled within one week of the scheduled arrival or the guest fails to check in one due date. All disputes shall strictly be subjects to the <strong>jurisdiction of Puri Court</strong> only.</p>\r\n<p>Cheques are accepted subject to realisation.</p>', 1);

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
-- Indexes for table `herosection`
--
ALTER TABLE `herosection`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `herosection`
--
ALTER TABLE `herosection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `live`
--
ALTER TABLE `live`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `room_amenities`
--
ALTER TABLE `room_amenities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `room_detail`
--
ALTER TABLE `room_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `room_img`
--
ALTER TABLE `room_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
