-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2024 at 05:14 PM
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
-- Database: `user_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `user_id` int(255) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`user_id`, `first_name`, `last_name`, `username`, `email`, `password`, `created_at`) VALUES
(1, 'Gaurab', 'Lohar', 'gaurav', 'gaurav123@gmail.com', '$2y$10$v67oG7E87QVdkMOxFiUa7eDV3qa09gAutlXOTVFynmnHx8iNkgwky', '2024-11-17 15:46:17'),
(2, 'sofia', 'sunar', 'sofia', 'sunarshmiksya@gmail.com', '$2y$10$K2KtsK6xKa4q.g6tlzyOw.FoB7/DwvaYDzsAMxpWF0omiveB/rCCy', '2024-11-17 15:49:43'),
(3, 'Roanna', 'Conrad', 'kobatu', 'sebuce@mailinator.com', '$2y$10$Cl/V/NawFzx2qFNVZIIOI.e8.rgCVv1O9iif2/7ODsqxiy7ETsP7K', '2024-11-17 16:31:24'),
(4, 'bhupal', 'lohar', 'bhupal', 'bhupal123@gmail.com', '$2y$10$Gi33A/UUaOhhS/Qm8XU1huAbV62I8nPCXd8BV0xt.FulVFhhq5oF6', '2024-11-17 16:37:50'),
(5, 'Barry', 'Burke', 'wicizak', 'mysenyj@mailinator.com', '$2y$10$XAxy3mc8lEXZWeDULhFQYOmdY0ixaDzkfXBSJClLOqLchTad9tZYC', '2024-11-18 13:13:05'),
(6, 'Porter', 'Harding', 'ruvekupo', 'pupiqipe@mailinator.com', '$2y$10$tNUudAxjxoDZZJf6soskA.3ScItGnzqvGivwQQzAb08Vpzv1D7mCe', '2024-11-18 13:59:34'),
(7, 'Erin', 'Ayers', 'bagylyt', 'xejacajy@mailinator.com', '$2y$10$Uui6RIwKoWTPOoRtpOm/decJqLf1J2VMYyutAl74GGH/qIYRhvWRu', '2024-11-18 14:00:45'),
(8, 'Owen', 'Noel', 'fafiz', 'wodafiz@mailinator.com', '$2y$10$mD5TpXazt/k.H46DH7hfuuLD.crQ75J3i6j8gsWgireNOEvkGMzjC', '2024-11-18 14:13:43'),
(9, 'Phillip', 'Hansen', 'piteqezo', 'sojys@mailinator.com', '$2y$10$/encIT.HPZkziRNlPEEAr.3MBDbt0ZTLr/ZOmugfWJmhUNDoNedMm', '2024-11-18 14:20:59'),
(10, 'Lareina', 'Morgan', 'xihofali', 'bixydexo@mailinator.com', '$2y$10$huumjJmxHQeJRhlzNzNtTO99oyb9QV/Ud/vYcNd90vqs0ktFq7Wji', '2024-11-18 14:22:16'),
(11, 'Noelani', 'Colon', 'mukip', 'dizety@mailinator.com', '$2y$10$fvDihqatfmtqh2Hwn/YMH.sxHEtng0R.xXZcuXHCmkz2F5dsFa8hi', '2024-11-18 14:26:35'),
(12, 'Maile', 'Blake', 'jusateq', 'cabup@mailinator.com', '$2y$10$rlNgPxA.gSKn5jRng2..wej/VJb23jC8ysJ25Op6snlKHL334SA.q', '2024-11-18 14:28:39'),
(13, 'Rigel', 'Mcguire', 'xuhaky', 'sejysex@mailinator.com', '$2y$10$LLxxBoR.2qbaMyVBOVorZONEe2JCvdMy/4AyCrgUqZR74Yjrx/6O2', '2024-11-18 14:33:01'),
(14, 'Madeson', 'Harris', 'kugufi', 'refixacy@mailinator.com', '$2y$10$q.iKNE1p6SSwJ8azAHDKS.qOoT27L3PVdQOu2q6ztA.g6tTlYbs4O', '2024-11-18 14:36:09'),
(15, 'Freya', 'Wilkins', 'nyvec', 'mufyne@mailinator.com', '$2y$10$bUwdxF6eIdTRrxzvF6LfnuJftaiA2kzbK7A7.JK3aIxTssYmlYBsW', '2024-11-18 14:37:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `50` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `user_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
