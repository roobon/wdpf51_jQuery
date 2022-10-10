-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 10, 2022 at 07:42 PM
-- Server version: 8.0.29
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpjquery`
--

-- --------------------------------------------------------

--
-- Table structure for table `functions`
--

CREATE TABLE `functions` (
  `id` int NOT NULL,
  `languageId` int NOT NULL,
  `functionName` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `summary` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `example` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `functions`
--

INSERT INTO `functions` (`id`, `languageId`, `functionName`, `summary`, `example`) VALUES
(1, 1, 'WHILE', 'The while loop - Loops through a block of code as long as the specified condition is true.', '$x = 0;\r\n\r\nwhile($x <= 100) {\r\n  echo \"The number is: $x <br>\";\r\n  $x+=10;\r\n}\r\n'),
(2, 1, 'PHP $_POST', 'PHP $_POST is a PHP super global variable which is used to collect form data after submitting an HTML form with method=\"post\"', 'if ($_SERVER[\"REQUEST_METHOD\"] == \"POST\") {\r\n  // collect value of input field\r\n  $name = $_POST[\'fname\'];\r\n  if (empty($name)) {\r\n    echo \"Name is empty\";\r\n  } else {\r\n    echo $name;\r\n  }\r\n}'),
(3, 2, 'jQuery hide() and show()', 'With jQuery, you can hide and show HTML elements with the hide() and show() methods:', '$(\"#hide\").click(function(){\r\n  $(\"p\").hide();\r\n});\r\n\r\n$(\"#show\").click(function(){\r\n  $(\"p\").show();\r\n});'),
(4, 2, 'jQuery remove() Method', 'The jQuery remove() method removes the selected element(s) and its child elements.', '$(document).ready(function(){\r\n  $(\"button\").click(function(){\r\n    $(\"#div1\").remove();\r\n  });\r\n});\r\n'),
(5, 3, 'JavaScript Arrays', 'An array is a special variable, which can hold more than one value:', 'const cars = [\"Saab\", \"Volvo\", \"BMW\"];');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int NOT NULL,
  `languageName` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `languageName`) VALUES
(1, 'PHP'),
(2, 'jQuery'),
(3, 'JavaScript'),
(4, 'ReactJS');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `functions`
--
ALTER TABLE `functions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `functions`
--
ALTER TABLE `functions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
