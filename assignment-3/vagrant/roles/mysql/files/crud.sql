SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Table structure for table `order`
--

CREATE TABLE `orders` (
  `orderid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`);

ALTER TABLE `orders`
  MODIFY `orderid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `name`, `item`, `phone`) VALUES
(1001, 'Veer', 'fridge', '009378976767'),
(1002, 'John Doe', 'cooler', '999999999'),
(1003, 'Karimja', 'vaccine', '7333392'),
(1004, 'Jamal', 'virus', '3434343');

-- ---------------------------------------------------------------


CREATE TABLE `price` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

ALTER TABLE `price`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Dumping data for table `price`
--

INSERT INTO `price` (`id`, `name`, `price`) VALUES
(5001, 'fridge', '100000'),
(5002, 'cooler', '50000'),
(5003, 'vaccine', '10000'),
(5004, 'virus', '100000000000000000000000');



