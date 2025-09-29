-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 29, 2025 at 07:16 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `camera_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `brand` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `brand`, `price`, `stock`, `category`, `image_url`, `description`, `created_at`) VALUES
(1, 'Canon EOS R10', 'Canon', 28990.00, 15, 'Mirrorless', 'images/canon_r10.jpg', 'กล้องมิเรอร์เลส APS-C รุ่นใหม่ เบาและคมชัด', '2025-09-29 05:15:51'),
(2, 'Canon EOS R7', 'Canon', 45990.00, 10, 'Mirrorless', 'images/canon_r7.jpg', 'กล้องมิเรอร์เลส APS-C สำหรับมืออาชีพ', '2025-09-29 05:15:51'),
(3, 'Canon EOS 90D', 'Canon', 38990.00, 12, 'DSLR', 'images/canon_90d.jpg', 'DSLR ความละเอียดสูง 32.5MP', '2025-09-29 05:15:51'),
(4, 'Canon EOS 6D Mark II', 'Canon', 52900.00, 8, 'DSLR', 'images/canon_6d2.jpg', 'Full-frame DSLR ราคาคุ้มค่า', '2025-09-29 05:15:51'),
(5, 'Canon EOS M50 Mark II', 'Canon', 24990.00, 20, 'Mirrorless', 'images/canon_m50ii.jpg', 'กล้องเล็กพกพาง่าย Vlog ก็ได้', '2025-09-29 05:15:51'),
(6, 'Nikon Z50', 'Nikon', 29900.00, 20, 'Mirrorless', 'images/nikon_z50.jpg', 'กล้องมิเรอร์เลส DX-format', '2025-09-29 05:15:51'),
(7, 'Nikon Z5', 'Nikon', 42900.00, 12, 'Mirrorless', 'images/nikon_z5.jpg', 'Full-frame mirrorless ระดับเริ่มต้น', '2025-09-29 05:15:51'),
(8, 'Nikon D7500', 'Nikon', 34900.00, 10, 'DSLR', 'images/nikon_d7500.jpg', 'DSLR คุณภาพสูงในราคาประหยัด', '2025-09-29 05:15:51'),
(9, 'Nikon D5600', 'Nikon', 23900.00, 15, 'DSLR', 'images/nikon_d5600.jpg', 'กล้อง DSLR สำหรับผู้เริ่มต้น', '2025-09-29 05:15:51'),
(10, 'Nikon Zfc', 'Nikon', 31900.00, 9, 'Mirrorless', 'images/nikon_zfc.jpg', 'ดีไซน์เรโทร ฟีเจอร์ล้ำ', '2025-09-29 05:15:51'),
(11, 'Sony A6400', 'Sony', 31900.00, 18, 'Mirrorless', 'images/sony_a6400.jpg', 'APS-C mirrorless โฟกัสไว', '2025-09-29 05:15:51'),
(12, 'Sony A7 IV', 'Sony', 79900.00, 7, 'Mirrorless', 'images/sony_a7iv.jpg', 'Full-frame รุ่นใหม่ ความละเอียดสูง', '2025-09-29 05:15:51'),
(13, 'Sony A7C', 'Sony', 56900.00, 9, 'Mirrorless', 'images/sony_a7c.jpg', 'Full-frame mirrorless ขนาดเล็ก', '2025-09-29 05:15:51'),
(14, 'Sony ZV-E10', 'Sony', 22990.00, 16, 'Mirrorless', 'images/sony_zve10.jpg', 'กล้องเน้นสายวิดีโอ Vlogger', '2025-09-29 05:15:51'),
(15, 'Sony FX3', 'Sony', 145000.00, 2, 'Cinema', 'images/sony_fx3.jpg', 'กล้องระดับ Cinema Line สำหรับภาพยนตร์', '2025-09-29 05:15:51'),
(16, 'Fujifilm X-T30 II', 'Fujifilm', 27900.00, 15, 'Mirrorless', 'images/fuji_xt30ii.jpg', 'APS-C mirrorless ดีไซน์เรโทร', '2025-09-29 05:15:51'),
(17, 'Fujifilm X-S10', 'Fujifilm', 34900.00, 11, 'Mirrorless', 'images/fuji_xs10.jpg', 'มีกันสั่นในตัว ใช้งานง่าย', '2025-09-29 05:15:51'),
(18, 'Fujifilm X-T4', 'Fujifilm', 48900.00, 6, 'Mirrorless', 'images/fuji_xt4.jpg', 'รุ่นท็อป APS-C มีกันสั่น 5 แกน', '2025-09-29 05:15:51'),
(19, 'Fujifilm X-H2', 'Fujifilm', 69900.00, 4, 'Mirrorless', 'images/fuji_xh2.jpg', 'APS-C ความละเอียดสูง 40MP', '2025-09-29 05:15:51'),
(20, 'Fujifilm X100V', 'Fujifilm', 44900.00, 3, 'Compact', 'images/fuji_x100v.jpg', 'คอมแพครุ่นฮิต ถ่ายสตรีทเทพ', '2025-09-29 05:15:51'),
(21, 'Panasonic Lumix G100', 'Panasonic', 19900.00, 16, 'Mirrorless', 'images/pana_g100.jpg', 'กล้องเล็กถ่ายวิดีโอสำหรับ Vlog', '2025-09-29 05:15:51'),
(22, 'Panasonic Lumix GH5 II', 'Panasonic', 44900.00, 5, 'Mirrorless', 'images/pana_gh5ii.jpg', 'เหมาะสำหรับสายวิดีโอมืออาชีพ', '2025-09-29 05:15:51'),
(23, 'Panasonic Lumix S5', 'Panasonic', 64900.00, 3, 'Mirrorless', 'images/pana_s5.jpg', 'Full-frame สำหรับถ่ายงานจริงจัง', '2025-09-29 05:15:51'),
(24, 'Olympus OM-D E-M10 Mark IV', 'Olympus', 23900.00, 14, 'Mirrorless', 'images/olympus_em10.jpg', 'กล้องเล็ก เบา สำหรับเดินทาง', '2025-09-29 05:15:51'),
(25, 'Olympus OM-D E-M5 Mark III', 'Olympus', 36900.00, 9, 'Mirrorless', 'images/olympus_em5.jpg', 'รุ่นกลาง ระบบกันสั่นดี', '2025-09-29 05:15:51'),
(26, 'GoPro Hero 12', 'GoPro', 15900.00, 25, 'Action', 'images/gopro12.jpg', 'กล้องแอคชัน กันน้ำ กันสั่นเทพ', '2025-09-29 05:15:51'),
(27, 'Insta360 X3', 'Insta360', 18900.00, 15, 'Action', 'images/insta360x3.jpg', 'กล้อง 360 องศา สำหรับสายเที่ยว', '2025-09-29 05:15:51'),
(28, 'Leica Q2', 'Leica', 199000.00, 2, 'Compact', 'images/leica_q2.jpg', 'กล้องคอมแพค Full-frame คุณภาพสูง', '2025-09-29 05:15:51'),
(29, 'Ricoh GR III', 'Ricoh', 29900.00, 10, 'Compact', 'images/ricoh_gr3.jpg', 'กล้องคอมแพค APS-C สำหรับ Street', '2025-09-29 05:15:51'),
(30, 'DJI Osmo Pocket 3', 'DJI', 18900.00, 20, 'Compact', 'images/dji_pocket3.jpg', 'กล้องพกพามีกันสั่น เหมาะสำหรับ Content Creator', '2025-09-29 05:15:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
