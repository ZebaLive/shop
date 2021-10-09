-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 09, 2021 at 02:10 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_bin NOT NULL,
  `type` text COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  `filename` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT 'default.png',
  `price` float NOT NULL,
  `rating` float NOT NULL DEFAULT '0',
  `total_rated` int(11) NOT NULL DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=161 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `type`, `description`, `filename`, `price`, `rating`, `total_rated`, `created`, `modified`) VALUES
(160, 'Cake2.0', 'pastry', 'Better cakePHP cake', 'default.png', 199.99, 5, 1, '2021-10-09 13:55:02', '2021-10-09 13:55:02'),
(12, 'Raw legums', 'vegetable', 'Raw legums on the wooden table', '4.jpg', 17.11, 2, 1, '2021-10-08 13:12:49', '2021-10-08 13:12:49'),
(13, 'Baking cake', 'dairy', 'Baking cake in rural kitchen - dough  recipe ingredients (eggs, flour, sugar) on vintage wooden table from above.', '5.jpg', 11.14, 4, 1, '2021-10-08 13:12:49', '2021-10-08 13:12:49'),
(14, 'Pesto with basil', 'vegetable', 'Italian traditional pesto with basil, chesse and oil', '6.jpg', 18.19, 2, 1, '2021-10-08 13:12:49', '2021-10-08 13:12:49'),
(15, 'Hazelnut in black ceramic bowl', 'vegetable', 'Hazelnut in black ceramic bowl on old wooden background. forest wealth. rustic style. selective focus', '7.jpg', 27.35, 2.5, 2, '2021-10-08 13:12:49', '2021-10-09 13:52:43'),
(16, 'Fresh stawberry', 'fruit', 'Sweet fresh stawberry on the wooden table', '8.jpg', 28.59, 4, 1, '2021-10-08 13:12:49', '2021-10-08 13:12:49'),
(17, 'Lemon and salt', 'fruit', 'Rosemary, lemon and salt on the table', '9.jpg', 15.79, 5, 1, '2021-10-08 13:12:49', '2021-10-08 13:12:49'),
(18, 'Homemade bread', 'bakery', 'Homemade bread', '10.jpg', 17.48, 3, 1, '2021-10-08 13:12:49', '2021-10-08 13:12:49'),
(59, 'Brown eggs', 'dairy', 'Raw organic brown eggs in a basket', '0.jpg', 28.1, 4, 1, '2021-10-08 13:57:29', '2021-10-08 13:57:29'),
(20, 'Fresh tomato', 'vegetable', 'Fresh tomato juice with basil', '12.jpg', 16.3, 2, 1, '2021-10-08 13:12:49', '2021-10-08 13:12:49'),
(21, 'Healthy breakfast', 'fruit', 'Healthy breakfast set. rice cereal or porridge with berries and honey over rustic wood background', '13.jpg', 13.02, 2, 1, '2021-10-08 13:12:49', '2021-10-08 13:12:49'),
(22, 'Green beans', 'vegetable', 'Raw organic green beans ready to eat', '14.jpg', 28.79, 1, 1, '2021-10-08 13:12:49', '2021-10-08 13:12:49'),
(23, 'Baked stuffed portabello mushrooms', 'bakery', 'Homemade baked stuffed portabello mushrooms with spinach and cheese', '15.jpg', 20.31, 1, 1, '2021-10-08 13:12:49', '2021-10-08 13:12:49'),
(24, 'Strawberry jelly', 'fruit', 'Homemade organic strawberry jelly in a jar', '16.jpg', 14.18, 1, 1, '2021-10-08 13:12:49', '2021-10-08 13:12:49'),
(159, 'Cake', 'Pastry', 'cakePHP kind of cake, one of the kind', 'default.png', 0.01, 5, 1, '2021-10-09 13:49:05', '2021-10-09 13:49:05'),
(26, 'Fresh pears', 'fruit', 'Sweet fresh pears on the wooden table', '18.jpg', 15.12, 5, 1, '2021-10-08 13:12:49', '2021-10-08 13:12:49'),
(27, 'Caprese salad', 'vegetable', 'Homemade healthy caprese salad with tomato mozzarella and basil', '19.jpg', 16.76, 3.5, 2, '2021-10-08 13:12:49', '2021-10-09 13:52:30'),
(28, 'Oranges', 'fruit', 'Orange popsicle ice cream bars made from fresh oranges.  a refreshing summer treat.', '20.jpg', 21.48, 4, 1, '2021-10-08 13:12:49', '2021-10-08 13:12:49'),
(29, 'Vegan food', 'vegetable', 'Concept of vegan food', '21.jpg', 29.66, 4, 1, '2021-10-08 13:12:49', '2021-10-08 13:12:49'),
(30, 'Breakfast with muesli', 'dairy', 'Concept of healthy breakfast with muesli', '22.jpg', 22.7, 2, 1, '2021-10-08 13:12:49', '2021-10-08 13:12:49'),
(31, 'Honey', 'bakery', 'Honey and honeycell on the table', '23.jpg', 17.01, 2, 1, '2021-10-08 13:12:49', '2021-10-08 13:12:49'),
(32, 'Breakfast with cottage', 'fruit', 'Healthy breakfast with cottage cheese and strawberry', '24.jpg', 14.05, 1, 1, '2021-10-08 13:12:49', '2021-10-08 13:12:49'),
(33, 'Strawberry smoothie', 'fruit', 'Glass of red strawberry smoothie with chia seeds, served with retro cocktail tube, fresh mint and strawberries over dark background', '25.jpg', 28.86, 2, 1, '2021-10-08 13:12:49', '2021-10-08 13:12:49'),
(34, 'Strawberry and mint', 'fruit', 'Homemade muesli with strawberry and mint', '26.jpg', 26.21, 4, 1, '2021-10-08 13:12:49', '2021-10-08 13:12:49'),
(35, 'Ricotta', 'dairy', 'Ricotta with berry and mint', '27.jpg', 27.81, 5, 1, '2021-10-08 13:12:49', '2021-10-08 13:12:49'),
(36, 'Cuban sandwiche', 'bakery', 'Homemade traditional cuban sandwiches with ham pork and cheese', '28.jpg', 18.5, 4, 1, '2021-10-08 13:12:49', '2021-10-08 13:12:49'),
(37, 'Granola', 'dairy', 'Glass jar with homemade granola and yogurt with nuts, raspberries and blackberries on wooden cutting board over white textile in day light', '29.jpg', 29.97, 3, 1, '2021-10-08 13:12:49', '2021-10-08 13:12:49'),
(38, 'Smoothie with chia seeds', 'fruit', 'Glass of red strawberry smoothie with chia seeds, served with retro cocktail tube, fresh mint and strawberries over wooden table', '30.jpg', 25.26, 5, 1, '2021-10-08 13:12:49', '2021-10-08 13:12:49'),
(39, 'Yogurt', 'dairy', 'Homemade yogurt with raspberry and mint', '31.jpg', 27.61, 4, 1, '2021-10-08 13:12:49', '2021-10-08 13:12:49'),
(40, 'Sandwich with salad', 'vegetable', 'Vegan sandwich with salad, tomato and radish', '32.jpg', 22.48, 5, 1, '2021-10-08 13:12:49', '2021-10-08 13:12:49'),
(41, 'Cherry', 'fruit', 'Cherry with sugar on old table', '33.jpg', 14.35, 5, 1, '2021-10-08 13:12:49', '2021-10-08 13:12:49'),
(42, 'Raw asparagus', 'vegetable', 'Raw fresh asparagus salad with cheese and dressing', '34.jpg', 22.97, 4, 1, '2021-10-08 13:12:49', '2021-10-08 13:12:49'),
(43, 'Corn', 'vegetable', 'Grilled corn on the cob with salt and butter', '35.jpg', 13.55, 2, 1, '2021-10-08 13:12:49', '2021-10-08 13:12:49'),
(44, 'Vegan', 'vegan', 'Concept of healthy vegan eating', '36.jpg', 28.96, 5, 1, '2021-10-08 13:12:49', '2021-10-08 13:12:49'),
(45, 'Fresh blueberries', 'fruit', 'Healthy breakfast. berry crumble with fresh blueberries, raspberries, strawberries, almond, walnuts, pecans, yogurt, and mint in ceramic plates over white wooden surface, top view', '37.jpg', 21.01, 4, 1, '2021-10-08 13:12:49', '2021-10-08 13:12:49'),
(46, 'Smashed avocado', 'fruit', 'Vegan sandwiches with smashed avocado, tomatoes and radish. top view', '38.jpg', 25.88, 0, 1, '2021-10-08 13:12:49', '2021-10-08 13:12:49'),
(47, 'Italian ciabatta', 'bakery', 'Italian ciabatta bread cut in slices on wooden chopping board with herbs, garlic and olives over dark grunge backdrop, top view', '39.jpg', 15.18, 1, 1, '2021-10-08 13:12:49', '2021-10-08 13:12:49'),
(48, 'Rustic breakfast', 'dairy', 'Rustic healthy breakfast set. cooked buckwheat groats with milk and honey on dark grunge backdrop. top view, copy space', '40.jpg', 21.32, 0, 1, '2021-10-08 13:12:49', '2021-10-08 13:12:49'),
(49, 'Sliced lemons', 'fruit', 'Heap of whole and sliced lemons and limes with mint in vintage metal grid box over old wooden table with turquoise wooden background. dark rustic style.', '41.jpg', 27.14, 2, 1, '2021-10-08 13:12:49', '2021-10-08 13:12:49'),
(50, 'Plums', 'fruit', 'Yellow and red sweet plums', '42.jpg', 19.18, 1, 1, '2021-10-08 13:12:49', '2021-10-08 13:12:49'),
(51, 'French fries', 'bakery', 'Homemade oven baked french fries with ketchup', '43.jpg', 18.32, 3, 1, '2021-10-08 13:12:49', '2021-10-08 13:12:49'),
(52, 'Strawberries', 'fruit', 'Healthy breakfast set. rice cereal or porridge with fresh strawberry, apricots, almond and honey over white rustic wood backdrop, top view, \0', '44.jpg', 15.13, 3, 1, '2021-10-08 13:12:49', '2021-10-08 13:12:49'),
(53, 'Ground beef meat burger', 'meat', 'Raw ground beef meat burger steak cutlets with seasoning on vintage wooden boards, black background', '45.jpg', 11.73, 5, 1, '2021-10-08 13:12:49', '2021-10-08 13:12:49'),
(54, 'Tomatoes', 'fruit', 'Organic tomatoes made with love', '46.jpg', 26.03, 4, 1, '2021-10-08 13:12:49', '2021-10-08 13:12:49'),
(55, 'Basil', 'vegetable', 'Concept of vegan food with basil', '47.jpg', 15.19, 4, 1, '2021-10-08 13:12:49', '2021-10-08 13:12:49'),
(56, 'Fruits bouquet', 'fruit', 'Abstract citrus fruits bouquet on blue background', '48.jpg', 18.18, 1, 1, '2021-10-08 13:12:49', '2021-10-08 13:12:49'),
(57, 'Peaches on branch', 'fruit', 'Peaches on branch with leaves and glasses with peach juice and limonade with ice cubes in aluminum tray over old metal table. dark rustic style. top view.', '49.jpg', 25.62, 3, 1, '2021-10-08 13:12:49', '2021-10-08 13:12:49'),
(60, 'Sweet fresh stawberry', 'fruit', 'Sweet fresh stawberry on the wooden table', '1.jpg', 29.45, 4, 1, '2021-10-08 13:57:29', '2021-10-08 13:57:29'),
(61, 'Asparagus', 'vegetable', 'Asparagus with ham on the wooden table', '2.jpg', 18.95, 3, 1, '2021-10-08 13:57:29', '2021-10-08 13:57:29'),
(62, 'Green smoothie', 'dairy', 'Glass of green smoothie with quail egg\'s yolk, served with cocktail tube, green apple and baby spinach leaves over tin surface.', '3.jpg', 17.68, 4, 1, '2021-10-08 13:57:29', '2021-10-08 13:57:29'),
(63, 'Raw legums', 'vegetable', 'Raw legums on the wooden table', '4.jpg', 17.11, 2, 1, '2021-10-08 13:57:29', '2021-10-08 13:57:29'),
(64, 'Baking cake', 'dairy', 'Baking cake in rural kitchen - dough  recipe ingredients (eggs, flour, sugar) on vintage wooden table from above.', '5.jpg', 11.14, 4, 1, '2021-10-08 13:57:29', '2021-10-08 13:57:29'),
(65, 'Pesto with basil', 'vegetable', 'Italian traditional pesto with basil, chesse and oil', '6.jpg', 18.19, 2, 1, '2021-10-08 13:57:29', '2021-10-08 13:57:29'),
(66, 'Hazelnut in black ceramic bowl', 'vegetable', 'Hazelnut in black ceramic bowl on old wooden background. forest wealth. rustic style. selective focus', '7.jpg', 27.35, 0, 1, '2021-10-08 13:57:29', '2021-10-08 13:57:29'),
(67, 'Fresh stawberry', 'fruit', 'Sweet fresh stawberry on the wooden table', '8.jpg', 28.59, 4, 1, '2021-10-08 13:57:29', '2021-10-08 13:57:29'),
(68, 'Lemon and salt', 'fruit', 'Rosemary, lemon and salt on the table', '9.jpg', 15.79, 5, 1, '2021-10-08 13:57:29', '2021-10-08 13:57:29'),
(69, 'Homemade bread', 'bakery', 'Homemade bread', '10.jpg', 17.48, 3, 1, '2021-10-08 13:57:29', '2021-10-08 13:57:29'),
(70, 'Legums', 'vegetable', 'Cooked legums on the wooden table', '11.jpg', 14.77, 0, 1, '2021-10-08 13:57:29', '2021-10-08 13:57:29'),
(71, 'Fresh tomato', 'vegetable', 'Fresh tomato juice with basil', '12.jpg', 16.3, 2, 1, '2021-10-08 13:57:29', '2021-10-08 13:57:29'),
(72, 'Healthy breakfast', 'fruit', 'Healthy breakfast set. rice cereal or porridge with berries and honey over rustic wood background', '13.jpg', 13.02, 2, 1, '2021-10-08 13:57:29', '2021-10-08 13:57:29'),
(73, 'Green beans', 'vegetable', 'Raw organic green beans ready to eat', '14.jpg', 28.79, 1, 1, '2021-10-08 13:57:29', '2021-10-08 13:57:29'),
(74, 'Baked stuffed portabello mushrooms', 'bakery', 'Homemade baked stuffed portabello mushrooms with spinach and cheese', '15.jpg', 20.31, 1, 1, '2021-10-08 13:57:29', '2021-10-08 13:57:29'),
(75, 'Strawberry jelly', 'fruit', 'Homemade organic strawberry jelly in a jar', '16.jpg', 14.18, 1, 1, '2021-10-08 13:57:29', '2021-10-08 13:57:29'),
(76, 'Pears juice', 'fruit', 'Fresh pears juice on the wooden table', '17.jpg', 19.49, 4, 1, '2021-10-08 13:57:29', '2021-10-08 13:57:29'),
(77, 'Fresh pears', 'fruit', 'Sweet fresh pears on the wooden table', '18.jpg', 15.12, 5, 1, '2021-10-08 13:57:29', '2021-10-08 13:57:29'),
(78, 'Caprese salad', 'vegetable', 'Homemade healthy caprese salad with tomato mozzarella and basil', '19.jpg', 16.76, 5, 1, '2021-10-08 13:57:29', '2021-10-08 13:57:29'),
(79, 'Oranges', 'fruit', 'Orange popsicle ice cream bars made from fresh oranges.  a refreshing summer treat.', '20.jpg', 21.48, 4, 1, '2021-10-08 13:57:29', '2021-10-08 13:57:29'),
(80, 'Vegan food', 'vegetable', 'Concept of vegan food', '21.jpg', 29.66, 4, 1, '2021-10-08 13:57:29', '2021-10-08 13:57:29'),
(81, 'Breakfast with muesli', 'dairy', 'Concept of healthy breakfast with muesli', '22.jpg', 22.7, 2, 1, '2021-10-08 13:57:29', '2021-10-08 13:57:29'),
(82, 'Honey', 'bakery', 'Honey and honeycell on the table', '23.jpg', 17.01, 2, 1, '2021-10-08 13:57:29', '2021-10-08 13:57:29'),
(83, 'Breakfast with cottage', 'fruit', 'Healthy breakfast with cottage cheese and strawberry', '24.jpg', 14.05, 1, 1, '2021-10-08 13:57:29', '2021-10-08 13:57:29'),
(84, 'Strawberry smoothie', 'fruit', 'Glass of red strawberry smoothie with chia seeds, served with retro cocktail tube, fresh mint and strawberries over dark background', '25.jpg', 28.86, 2, 1, '2021-10-08 13:57:29', '2021-10-08 13:57:29'),
(85, 'Strawberry and mint', 'fruit', 'Homemade muesli with strawberry and mint', '26.jpg', 26.21, 4, 1, '2021-10-08 13:57:29', '2021-10-08 13:57:29'),
(86, 'Ricotta', 'dairy', 'Ricotta with berry and mint', '27.jpg', 27.81, 5, 1, '2021-10-08 13:57:29', '2021-10-08 13:57:29'),
(87, 'Cuban sandwiche', 'bakery', 'Homemade traditional cuban sandwiches with ham pork and cheese', '28.jpg', 18.5, 4, 1, '2021-10-08 13:57:29', '2021-10-08 13:57:29'),
(88, 'Granola', 'dairy', 'Glass jar with homemade granola and yogurt with nuts, raspberries and blackberries on wooden cutting board over white textile in day light', '29.jpg', 29.97, 3, 1, '2021-10-08 13:57:29', '2021-10-08 13:57:29'),
(89, 'Smoothie with chia seeds', 'fruit', 'Glass of red strawberry smoothie with chia seeds, served with retro cocktail tube, fresh mint and strawberries over wooden table', '30.jpg', 25.26, 5, 1, '2021-10-08 13:57:29', '2021-10-08 13:57:29'),
(90, 'Yogurt', 'dairy', 'Homemade yogurt with raspberry and mint', '31.jpg', 27.61, 4, 1, '2021-10-08 13:57:29', '2021-10-08 13:57:29'),
(91, 'Sandwich with salad', 'vegetable', 'Vegan sandwich with salad, tomato and radish', '32.jpg', 22.48, 5, 1, '2021-10-08 13:57:29', '2021-10-08 13:57:29'),
(92, 'Cherry', 'fruit', 'Cherry with sugar on old table', '33.jpg', 14.35, 5, 1, '2021-10-08 13:57:29', '2021-10-08 13:57:29'),
(93, 'Raw asparagus', 'vegetable', 'Raw fresh asparagus salad with cheese and dressing', '34.jpg', 22.97, 4, 1, '2021-10-08 13:57:29', '2021-10-08 13:57:29'),
(94, 'Corn', 'vegetable', 'Grilled corn on the cob with salt and butter', '35.jpg', 13.55, 2, 1, '2021-10-08 13:57:29', '2021-10-08 13:57:29'),
(95, 'Vegan', 'vegan', 'Concept of healthy vegan eating', '36.jpg', 28.96, 5, 1, '2021-10-08 13:57:29', '2021-10-08 13:57:29'),
(96, 'Fresh blueberries', 'fruit', 'Healthy breakfast. berry crumble with fresh blueberries, raspberries, strawberries, almond, walnuts, pecans, yogurt, and mint in ceramic plates over white wooden surface, top view', '37.jpg', 21.01, 4, 1, '2021-10-08 13:57:29', '2021-10-08 13:57:29'),
(97, 'Smashed avocado', 'fruit', 'Vegan sandwiches with smashed avocado, tomatoes and radish. top view', '38.jpg', 25.88, 0, 1, '2021-10-08 13:57:29', '2021-10-08 13:57:29'),
(98, 'Italian ciabatta', 'bakery', 'Italian ciabatta bread cut in slices on wooden chopping board with herbs, garlic and olives over dark grunge backdrop, top view', '39.jpg', 15.18, 1, 1, '2021-10-08 13:57:29', '2021-10-08 13:57:29'),
(99, 'Rustic breakfast', 'dairy', 'Rustic healthy breakfast set. cooked buckwheat groats with milk and honey on dark grunge backdrop. top view, copy space', '40.jpg', 21.32, 0, 1, '2021-10-08 13:57:29', '2021-10-08 13:57:29'),
(100, 'Sliced lemons', 'fruit', 'Heap of whole and sliced lemons and limes with mint in vintage metal grid box over old wooden table with turquoise wooden background. dark rustic style.', '41.jpg', 27.14, 2, 1, '2021-10-08 13:57:29', '2021-10-08 13:57:29'),
(101, 'Plums', 'fruit', 'Yellow and red sweet plums', '42.jpg', 19.18, 1, 1, '2021-10-08 13:57:29', '2021-10-08 13:57:29'),
(102, 'French fries', 'bakery', 'Homemade oven baked french fries with ketchup', '43.jpg', 18.32, 3, 1, '2021-10-08 13:57:29', '2021-10-08 13:57:29'),
(103, 'Strawberries', 'fruit', 'Healthy breakfast set. rice cereal or porridge with fresh strawberry, apricots, almond and honey over white rustic wood backdrop, top view, \0', '44.jpg', 15.13, 3, 1, '2021-10-08 13:57:29', '2021-10-08 13:57:29'),
(104, 'Ground beef meat burger', 'meat', 'Raw ground beef meat burger steak cutlets with seasoning on vintage wooden boards, black background', '45.jpg', 11.73, 5, 1, '2021-10-08 13:57:29', '2021-10-08 13:57:29'),
(105, 'Tomatoes', 'fruit', 'Organic tomatoes made with love', '46.jpg', 26.03, 4, 1, '2021-10-08 13:57:29', '2021-10-08 13:57:29'),
(106, 'Basil', 'vegetable', 'Concept of vegan food with basil', '47.jpg', 15.19, 4, 1, '2021-10-08 13:57:29', '2021-10-08 13:57:29'),
(107, 'Fruits bouquet', 'fruit', 'Abstract citrus fruits bouquet on blue background', '48.jpg', 18.18, 1, 1, '2021-10-08 13:57:29', '2021-10-08 13:57:29'),
(108, 'Peaches on branch', 'fruit', 'Peaches on branch with leaves and glasses with peach juice and limonade with ice cubes in aluminum tray over old metal table. dark rustic style. top view.', '49.jpg', 25.62, 3, 1, '2021-10-08 13:57:29', '2021-10-08 13:57:29'),
(109, 'Brown eggs', 'dairy', 'Raw organic brown eggs in a basket', '0.jpg', 28.1, 4, 1, '2021-10-08 13:58:00', '2021-10-08 13:58:00'),
(110, 'Sweet fresh stawberry', 'fruit', 'Sweet fresh stawberry on the wooden table', '1.jpg', 29.45, 4, 1, '2021-10-08 13:58:00', '2021-10-08 13:58:00'),
(111, 'Asparagus', 'vegetable', 'Asparagus with ham on the wooden table', '2.jpg', 18.95, 3, 1, '2021-10-08 13:58:00', '2021-10-08 13:58:00'),
(112, 'Green smoothie', 'dairy', 'Glass of green smoothie with quail egg\'s yolk, served with cocktail tube, green apple and baby spinach leaves over tin surface.', '3.jpg', 17.68, 4, 1, '2021-10-08 13:58:00', '2021-10-08 13:58:00'),
(113, 'Raw legums', 'vegetable', 'Raw legums on the wooden table', '4.jpg', 17.11, 2, 1, '2021-10-08 13:58:00', '2021-10-08 13:58:00'),
(114, 'Baking cake', 'dairy', 'Baking cake in rural kitchen - dough  recipe ingredients (eggs, flour, sugar) on vintage wooden table from above.', '5.jpg', 11.14, 4, 1, '2021-10-08 13:58:00', '2021-10-08 13:58:00'),
(115, 'Pesto with basil', 'vegetable', 'Italian traditional pesto with basil, chesse and oil', '6.jpg', 18.19, 2, 1, '2021-10-08 13:58:00', '2021-10-08 13:58:00'),
(116, 'Hazelnut in black ceramic bowl', 'vegetable', 'Hazelnut in black ceramic bowl on old wooden background. forest wealth. rustic style. selective focus', '7.jpg', 27.35, 0, 1, '2021-10-08 13:58:00', '2021-10-08 13:58:00'),
(117, 'Fresh stawberry', 'fruit', 'Sweet fresh stawberry on the wooden table', '8.jpg', 28.59, 4, 1, '2021-10-08 13:58:00', '2021-10-08 13:58:00'),
(118, 'Lemon and salt', 'fruit', 'Rosemary, lemon and salt on the table', '9.jpg', 15.79, 5, 1, '2021-10-08 13:58:00', '2021-10-08 13:58:00'),
(119, 'Homemade bread', 'bakery', 'Homemade bread', '10.jpg', 17.48, 3, 1, '2021-10-08 13:58:00', '2021-10-08 13:58:00'),
(120, 'Legums', 'vegetable', 'Cooked legums on the wooden table', '11.jpg', 14.77, 0, 1, '2021-10-08 13:58:00', '2021-10-08 13:58:00'),
(121, 'Fresh tomato', 'vegetable', 'Fresh tomato juice with basil', '12.jpg', 16.3, 2, 1, '2021-10-08 13:58:00', '2021-10-08 13:58:00'),
(122, 'Healthy breakfast', 'fruit', 'Healthy breakfast set. rice cereal or porridge with berries and honey over rustic wood background', '13.jpg', 13.02, 2, 1, '2021-10-08 13:58:00', '2021-10-08 13:58:00'),
(123, 'Green beans', 'vegetable', 'Raw organic green beans ready to eat', '14.jpg', 28.79, 1, 1, '2021-10-08 13:58:00', '2021-10-08 13:58:00'),
(124, 'Baked stuffed portabello mushrooms', 'bakery', 'Homemade baked stuffed portabello mushrooms with spinach and cheese', '15.jpg', 20.31, 1, 1, '2021-10-08 13:58:00', '2021-10-08 13:58:00'),
(125, 'Strawberry jelly', 'fruit', 'Homemade organic strawberry jelly in a jar', '16.jpg', 14.18, 1, 1, '2021-10-08 13:58:00', '2021-10-08 13:58:00'),
(126, 'Pears juice', 'fruit', 'Fresh pears juice on the wooden table', '17.jpg', 19.49, 4, 1, '2021-10-08 13:58:00', '2021-10-08 13:58:00'),
(127, 'Fresh pears', 'fruit', 'Sweet fresh pears on the wooden table', '18.jpg', 15.12, 5, 1, '2021-10-08 13:58:00', '2021-10-08 13:58:00'),
(128, 'Caprese salad', 'vegetable', 'Homemade healthy caprese salad with tomato mozzarella and basil', '19.jpg', 16.76, 5, 1, '2021-10-08 13:58:00', '2021-10-08 13:58:00'),
(129, 'Oranges', 'fruit', 'Orange popsicle ice cream bars made from fresh oranges.  a refreshing summer treat.', '20.jpg', 21.48, 4, 1, '2021-10-08 13:58:00', '2021-10-08 13:58:00'),
(130, 'Vegan food', 'vegetable', 'Concept of vegan food', '21.jpg', 29.66, 4, 1, '2021-10-08 13:58:00', '2021-10-08 13:58:00'),
(131, 'Breakfast with muesli', 'dairy', 'Concept of healthy breakfast with muesli', '22.jpg', 22.7, 2, 1, '2021-10-08 13:58:00', '2021-10-08 13:58:00'),
(132, 'Honey', 'bakery', 'Honey and honeycell on the table', '23.jpg', 17.01, 2, 1, '2021-10-08 13:58:00', '2021-10-08 13:58:00'),
(133, 'Breakfast with cottage', 'fruit', 'Healthy breakfast with cottage cheese and strawberry', '24.jpg', 14.05, 1, 1, '2021-10-08 13:58:00', '2021-10-08 13:58:00'),
(134, 'Strawberry smoothie', 'fruit', 'Glass of red strawberry smoothie with chia seeds, served with retro cocktail tube, fresh mint and strawberries over dark background', '25.jpg', 28.86, 2, 1, '2021-10-08 13:58:00', '2021-10-08 13:58:00'),
(135, 'Strawberry and mint', 'fruit', 'Homemade muesli with strawberry and mint', '26.jpg', 26.21, 4, 1, '2021-10-08 13:58:00', '2021-10-08 13:58:00'),
(136, 'Ricotta', 'dairy', 'Ricotta with berry and mint', '27.jpg', 27.81, 5, 1, '2021-10-08 13:58:00', '2021-10-08 13:58:00'),
(137, 'Cuban sandwiche', 'bakery', 'Homemade traditional cuban sandwiches with ham pork and cheese', '28.jpg', 18.5, 4, 1, '2021-10-08 13:58:01', '2021-10-08 13:58:01'),
(138, 'Granola', 'dairy', 'Glass jar with homemade granola and yogurt with nuts, raspberries and blackberries on wooden cutting board over white textile in day light', '29.jpg', 29.97, 3, 1, '2021-10-08 13:58:01', '2021-10-08 13:58:01'),
(139, 'Smoothie with chia seeds', 'fruit', 'Glass of red strawberry smoothie with chia seeds, served with retro cocktail tube, fresh mint and strawberries over wooden table', '30.jpg', 25.26, 5, 1, '2021-10-08 13:58:01', '2021-10-08 13:58:01'),
(140, 'Yogurt', 'dairy', 'Homemade yogurt with raspberry and mint', '31.jpg', 27.61, 4, 1, '2021-10-08 13:58:01', '2021-10-08 13:58:01'),
(141, 'Sandwich with salad', 'vegetable', 'Vegan sandwich with salad, tomato and radish', '32.jpg', 22.48, 5, 1, '2021-10-08 13:58:01', '2021-10-08 13:58:01'),
(142, 'Cherry', 'fruit', 'Cherry with sugar on old table', '33.jpg', 14.35, 5, 1, '2021-10-08 13:58:01', '2021-10-08 13:58:01'),
(143, 'Raw asparagus', 'vegetable', 'Raw fresh asparagus salad with cheese and dressing', '34.jpg', 22.97, 4, 1, '2021-10-08 13:58:01', '2021-10-08 13:58:01'),
(144, 'Corn', 'vegetable', 'Grilled corn on the cob with salt and butter', '35.jpg', 13.55, 2, 1, '2021-10-08 13:58:01', '2021-10-08 13:58:01'),
(145, 'Vegan', 'vegan', 'Concept of healthy vegan eating', '36.jpg', 28.96, 5, 1, '2021-10-08 13:58:01', '2021-10-08 13:58:01'),
(146, 'Fresh blueberries', 'fruit', 'Healthy breakfast. berry crumble with fresh blueberries, raspberries, strawberries, almond, walnuts, pecans, yogurt, and mint in ceramic plates over white wooden surface, top view', '37.jpg', 21.01, 4, 1, '2021-10-08 13:58:01', '2021-10-08 13:58:01'),
(147, 'Smashed avocado', 'fruit', 'Vegan sandwiches with smashed avocado, tomatoes and radish. top view', '38.jpg', 25.88, 0, 1, '2021-10-08 13:58:01', '2021-10-08 13:58:01'),
(148, 'Italian ciabatta', 'bakery', 'Italian ciabatta bread cut in slices on wooden chopping board with herbs, garlic and olives over dark grunge backdrop, top view', '39.jpg', 15.18, 1, 1, '2021-10-08 13:58:01', '2021-10-08 13:58:01'),
(149, 'Rustic breakfast', 'dairy', 'Rustic healthy breakfast set. cooked buckwheat groats with milk and honey on dark grunge backdrop. top view, copy space', '40.jpg', 21.32, 0, 1, '2021-10-08 13:58:01', '2021-10-08 13:58:01'),
(150, 'Sliced lemons', 'fruit', 'Heap of whole and sliced lemons and limes with mint in vintage metal grid box over old wooden table with turquoise wooden background. dark rustic style.', '41.jpg', 27.14, 2, 1, '2021-10-08 13:58:01', '2021-10-08 13:58:01'),
(151, 'Plums', 'fruit', 'Yellow and red sweet plums', '42.jpg', 19.18, 1, 1, '2021-10-08 13:58:01', '2021-10-08 13:58:01'),
(152, 'French fries', 'bakery', 'Homemade oven baked french fries with ketchup', '43.jpg', 18.32, 3, 1, '2021-10-08 13:58:01', '2021-10-08 13:58:01'),
(153, 'Strawberries', 'fruit', 'Healthy breakfast set. rice cereal or porridge with fresh strawberry, apricots, almond and honey over white rustic wood backdrop, top view, \0', '44.jpg', 15.13, 3, 1, '2021-10-08 13:58:01', '2021-10-08 13:58:01'),
(154, 'Ground beef meat burger', 'meat', 'Raw ground beef meat burger steak cutlets with seasoning on vintage wooden boards, black background', '45.jpg', 11.73, 5, 1, '2021-10-08 13:58:01', '2021-10-08 13:58:01'),
(155, 'Tomatoes', 'fruit', 'Organic tomatoes made with love', '46.jpg', 26.03, 4, 1, '2021-10-08 13:58:01', '2021-10-08 13:58:01'),
(156, 'Basil', 'vegetable', 'Concept of vegan food with basil', '47.jpg', 15.19, 4, 1, '2021-10-08 13:58:01', '2021-10-08 13:58:01'),
(157, 'Fruits bouquet', 'fruit', 'Abstract citrus fruits bouquet on blue background', '48.jpg', 18.18, 1, 1, '2021-10-08 13:58:01', '2021-10-08 13:58:01'),
(158, 'Peaches on branch', 'fruit', 'Peaches on branch with leaves and glasses with peach juice and limonade with ice cubes in aluminum tray over old metal table. dark rustic style. top view.', '49.jpg', 25.62, 3, 1, '2021-10-08 13:58:01', '2021-10-08 13:58:01');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
