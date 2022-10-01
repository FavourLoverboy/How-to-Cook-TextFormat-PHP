-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2022 at 01:06 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food`
--

-- --------------------------------------------------------

--
-- Table structure for table `meals`
--

CREATE TABLE `meals` (
  `id` int(11) NOT NULL,
  `userId` varchar(10) NOT NULL,
  `mealId` varchar(10) NOT NULL,
  `mealName` varchar(30) NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meals`
--

INSERT INTO `meals` (`id`, `userId`, `mealId`, `mealName`, `image`, `date`) VALUES
(1, '2', '1649636053', 'Beans', 'beans.jpg', '2022-04-11'),
(2, '2', '1649636085', 'Fried Rice', 'rice.jpg', '2022-04-11'),
(3, '2', '1649939475', 'Toasted Bread', 'bread.jpg', '2022-04-14'),
(4, '2', '1649939501', 'Plantain', 'plantain.jpg', '2022-04-14'),
(5, '2', '1649939536', 'Eguzi Soup', 'soup.jpg', '2022-04-14'),
(6, '2', '1649939559', 'Tea', 'tea.jpg', '2022-04-14'),
(7, '2', '1649939593', 'Yam And Egg Source', 'yam.jfif', '2022-04-14');

-- --------------------------------------------------------

--
-- Table structure for table `meal_steps`
--

CREATE TABLE `meal_steps` (
  `id` int(11) NOT NULL,
  `userId` varchar(10) NOT NULL,
  `mealId` varchar(10) NOT NULL,
  `step` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meal_steps`
--

INSERT INTO `meal_steps` (`id`, `userId`, `mealId`, `step`, `date`) VALUES
(1, '2', '1649636053', '<p>this is how to prepare beans.</p>\r\n\r\n<p>thank you sir</p>\r\n', '2022-04-11'),
(2, '2', '1649636085', '<h2><strong>Ingredients:</strong>&nbsp;</h2>\r\n\r\n<ul>\r\n	<li><strong>White long grain rice-&nbsp;</strong><em>Day old and cold rice help to keep it from being mushy.</em></li>\r\n	<li><strong>Small white onion &nbsp;</strong></li>\r\n	<li><strong>Vegetables- Peas and Carrots.</strong>&nbsp;&nbsp;<em>You can also add in other veggies such as bell pepper, broccoli, cauliflower, asparagus, snow peas and cabbage.</em></li>\r\n	<li><strong>Eggs</strong></li>\r\n	<li><strong>Sesame Oil&nbsp;</strong></li>\r\n	<li><strong>Soy Sauce</strong></li>\r\n	<li><strong>Green Onions-&nbsp;</strong><em>Garnish with adding in sliced green onions right at the end!&nbsp;</em></li>\r\n	<li><!-- LINT.IfChange --><!-- LINT.ThenChange(//depot/google3/javascript/ads/interactivemedia/rendering/templates/gpid_overlay_template.soy) --></li>\r\n</ul>\r\n\r\n<h2><strong>How to make Fried Rice</strong></h2>\r\n\r\n<p><strong>Preheat Skillet.&nbsp;</strong>Turn your skillet to medium high heat and pour sesame oil into the bottom of your skillet and add the onion, peas and carrots. Fry this until they are tender.</p>\r\n\r\n<p><strong>Slide the veggies to the side.&nbsp;</strong>Pour the beaten eggs onto the other side. Use a spatula to scramble the eggs. Mix them together with the veggies.</p>\r\n\r\n<p><strong>Add the rice.&nbsp;</strong>Combine it with the veggie and egg mixture. Pour the soy sauce on top and stir until it is heated throughout. Garnish with green onions.</p>\r\n', '2022-04-11'),
(3, '2', '1649939475', '<p>bring the bread</p>\r\n', '2022-04-14'),
(4, '2', '1649939501', '<p>fry the plaintain</p>\r\n', '2022-04-14'),
(5, '2', '1649939536', '<p>boil the meat</p>\r\n', '2022-04-14'),
(6, '2', '1649939559', '<p>boil the water</p>\r\n', '2022-04-14'),
(7, '2', '1649939593', '<p>boil the yam and cook the egg like source</p>\r\n', '2022-04-14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fn` varchar(30) NOT NULL,
  `ln` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pn` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `state` varchar(30) NOT NULL,
  `branch` varchar(30) NOT NULL,
  `location` varchar(50) NOT NULL,
  `ms` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `level` varchar(7) NOT NULL,
  `sex` varchar(7) NOT NULL,
  `picture` text NOT NULL,
  `last_login` date NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fn`, `ln`, `email`, `pn`, `password`, `state`, `branch`, `location`, `ms`, `date`, `level`, `sex`, `picture`, `last_login`, `status`) VALUES
(1, 'Favour', 'Nwokamma', 'favourehio2019@gmail.com', '09097048450', 'loverboy', 'Rivers', 'Rumuokwuta Branch', 'Rumuokwuta, Port Harcourt', 'Single', '2022-04-10', 'Cook', 'Male', '3.png', '2022-04-15', 'Active'),
(2, 'Kelly', 'John', 'kelly@gmail.com', '08172721023', 'kelly123', 'Rivers', 'Rumuokwuta', 'Rumuokwuta', 'Single', '2022-04-10', 'Admin', 'Male', 'illustrator.png', '2022-04-15', 'Active'),
(3, 'Success', 'Luiz', 'luiz@gmail.com', '08172721023', 'manman', 'Enugu', 'Fingr Lick delicacy', 'Enugu', 'Single', '2022-04-10', 'Cook', 'Female', 'profile.png', '2022-04-10', 'Active'),
(4, 'Lovina', 'Joy', 'Joy@gmail.com', '12345678909', 'manman', 'Imo', 'Owerri Branch', 'Owerri', 'Single', '2022-04-10', 'Cook', 'Female', 'profile.png', '2022-04-10', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `meals`
--
ALTER TABLE `meals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meal_steps`
--
ALTER TABLE `meal_steps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `meals`
--
ALTER TABLE `meals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `meal_steps`
--
ALTER TABLE `meal_steps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
