-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2023 at 08:39 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bestmovies`
--

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE `awards` (
  `awardId` int(11) NOT NULL,
  `movieId` varchar(5) NOT NULL,
  `award_year` int(11) NOT NULL,
  `award_name` varchar(50) NOT NULL CHECK (`award_name` <> ''),
  `category` varchar(50) NOT NULL,
  `winner` varchar(25) NOT NULL CHECK (`winner` <> '')
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `awards`
--

INSERT INTO `awards` (`awardId`, `movieId`, `award_year`, `award_name`, `category`, `winner`) VALUES
(7, '04', 2012, 'Academy Awards', 'Best Director', 'Life of Pi'),
(8, '04', 2012, 'Golden Globes', 'Best Original Score', 'Life of Pi'),
(9, '05', 2012, 'Academy Awards', 'Best Production Design', 'The Hobbit: An Unexpected'),
(10, '05', 2012, 'BAFTA Awards', 'Best Special Visual Effects', 'The Hobbit: An Unexpected'),
(11, '06', 2013, 'Academy Awards', 'Best Actor in a Leading Role', 'The Wolf of Wall Street'),
(12, '06', 2013, 'Golden Globes', 'Best Motion Picture – Musical or Comedy', 'The Wolf of Wall Street'),
(13, '01', 2012, 'Academy Awards', 'Best Original Screenplay', 'Django'),
(14, '01', 2012, 'Golden Globes', 'Best Supporting Actor', 'Django'),
(15, '02', 2012, 'Academy Awards', 'Best Visual Effects', 'The Dark Knight Rises'),
(16, '11', 2015, 'Academy Awards', 'Best Actor in a Leading Role', 'The Martian'),
(17, '11', 2015, 'Golden Globes', 'Best Motion Picture – Musical or Comedy', 'The Martian'),
(18, '12', 2016, 'Academy Awards', 'Best Director', 'La La Land'),
(19, '12', 2016, 'Golden Globes', 'Best Motion Picture – Musical or Comedy', 'La La Land'),
(20, '13', 2017, 'Academy Awards', 'Best Original Screenplay', 'Get Out'),
(21, '13', 2017, 'Golden Globes', 'Best Motion Picture – Musical or Comedy', 'Get Out'),
(22, '14', 2017, 'Academy Awards', 'Best Animated Feature Film', 'Coco'),
(23, '14', 2017, 'Golden Globes', 'Best Animated Feature Film', 'Coco'),
(24, '15', 2018, 'Academy Awards', 'Best Original Score', 'Black Panther'),
(25, '15', 2018, 'Golden Globes', 'Best Motion Picture – Drama', 'Black Panther'),
(27, '04', 2012, 'Academy Awards', 'Best Director', 'Life of Pi'),
(28, '04', 2012, 'Golden Globes', 'Best Original Score', 'Life of Pi'),
(29, '05', 2012, 'Academy Awards', 'Best Production Design', 'The Hobbit: An Unexpected'),
(30, '05', 2012, 'BAFTA Awards', 'Best Special Visual Effects', 'The Hobbit: An Unexpected'),
(31, '06', 2013, 'Academy Awards', 'Best Actor in a Leading Role', 'The Wolf of Wall Street'),
(32, '06', 2013, 'Golden Globes', 'Best Motion Picture – Musical or Comedy', 'The Wolf of Wall Street'),
(33, '01', 2012, 'Academy Awards', 'Best Original Screenplay', 'Django'),
(34, '01', 2012, 'Golden Globes', 'Best Supporting Actor', 'Django'),
(35, '02', 2012, 'Academy Awards', 'Best Visual Effects', 'The Dark Knight Rises'),
(36, '11', 2015, 'Academy Awards', 'Best Actor in a Leading Role', 'The Martian'),
(37, '11', 2015, 'Golden Globes', 'Best Motion Picture – Musical or Comedy', 'The Martian'),
(38, '12', 2016, 'Academy Awards', 'Best Director', 'La La Land'),
(39, '12', 2016, 'Golden Globes', 'Best Motion Picture – Musical or Comedy', 'La La Land'),
(40, '13', 2017, 'Academy Awards', 'Best Original Screenplay', 'Get Out'),
(41, '13', 2017, 'Golden Globes', 'Best Motion Picture – Musical or Comedy', 'Get Out'),
(42, '14', 2017, 'Academy Awards', 'Best Animated Feature Film', 'Coco'),
(43, '14', 2017, 'Golden Globes', 'Best Animated Feature Film', 'Coco'),
(44, '15', 2018, 'Academy Awards', 'Best Original Score', 'Black Panther'),
(45, '15', 2018, 'Golden Globes', 'Best Motion Picture – Drama', 'Black Panther'),
(47, '01', 2012, 'Academy Awards', 'Best Original Screenplay', 'Django'),
(48, '01', 2012, 'Golden Globes', 'Best Supporting Actor', 'Django'),
(49, '02', 2012, 'Academy Awards', 'Best Visual Effects', 'The Dark Knight Rises'),
(50, '11', 2015, 'Academy Awards', 'Best Actor in a Leading Role', 'The Martian'),
(51, '11', 2015, 'Golden Globes', 'Best Motion Picture – Musical or Comedy', 'The Martian'),
(52, '12', 2016, 'Academy Awards', 'Best Director', 'La La Land'),
(53, '12', 2016, 'Golden Globes', 'Best Motion Picture – Musical or Comedy', 'La La Land'),
(54, '13', 2017, 'Academy Awards', 'Best Original Screenplay', 'Get Out'),
(55, '13', 2017, 'Golden Globes', 'Best Motion Picture – Musical or Comedy', 'Get Out'),
(56, '14', 2017, 'Academy Awards', 'Best Animated Feature Film', 'Coco'),
(57, '14', 2017, 'Golden Globes', 'Best Animated Feature Film', 'Coco'),
(58, '15', 2018, 'Academy Awards', 'Best Original Score', 'Black Panther'),
(59, '15', 2018, 'Golden Globes', 'Best Motion Picture – Drama', 'Black Panther'),
(61, '12', 2016, 'Academy Awards', 'Best Director', 'La La Land'),
(62, '12', 2016, 'Golden Globes', 'Best Motion Picture – Musical or Comedy', 'La La Land'),
(63, '13', 2017, 'Academy Awards', 'Best Original Screenplay', 'Get Out'),
(64, '13', 2017, 'Golden Globes', 'Best Motion Picture – Musical or Comedy', 'Get Out'),
(65, '14', 2017, 'Academy Awards', 'Best Animated Feature Film', 'Coco'),
(66, '14', 2017, 'Golden Globes', 'Best Animated Feature Film', 'Coco'),
(67, '15', 2018, 'Academy Awards', 'Best Original Score', 'Black Panther'),
(68, '15', 2018, 'Golden Globes', 'Best Motion Picture – Drama', 'Black Panther'),
(70, '12', 2016, 'Academy Awards', 'Best Director', 'La La Land'),
(71, '12', 2016, 'Golden Globes', 'Best Motion Picture – Musical or Comedy', 'La La Land'),
(72, '13', 2017, 'Academy Awards', 'Best Original Screenplay', 'Get Out'),
(73, '13', 2017, 'Golden Globes', 'Best Motion Picture – Musical or Comedy', 'Get Out'),
(74, '14', 2017, 'Academy Awards', 'Best Animated Feature Film', 'Coco'),
(75, '14', 2017, 'Golden Globes', 'Best Animated Feature Film', 'Coco'),
(76, '15', 2018, 'Academy Awards', 'Best Original Score', 'Black Panther'),
(77, '15', 2018, 'Golden Globes', 'Best Motion Picture – Drama', 'Black Panther');

--
-- Triggers `awards`
--
DELIMITER $$
CREATE TRIGGER `award_winner_check` BEFORE INSERT ON `awards` FOR EACH ROW BEGIN
    DECLARE cast_role VARCHAR(50);

    -- Get the role of the winner from the cast table
    SELECT role INTO cast_role
    FROM cast
    WHERE movieId = NEW.movieId
    AND release_year = NEW.award_year
    AND actor_name = NEW.winner;

    -- Check if the winner has a corresponding role in the cast
    IF cast_role IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Invalid award winner. The specified winner does not have a corresponding role in the cast for the movie.';
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `director_award_check` BEFORE INSERT ON `awards` FOR EACH ROW BEGIN
    DECLARE director_name VARCHAR(50);
    DECLARE director_award_count INT;

    -- Get the director's name for the movie associated with the award
    SELECT director INTO director_name
    FROM movie
    WHERE movieId = NEW.movieId AND release_year = NEW.award_year;

    -- Check if the director has received any awards
    SELECT COUNT(*) INTO director_award_count
    FROM awards
    WHERE winner = director_name AND category = 'Best Director';

    -- If the director has received an award, raise an error
    IF director_award_count > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Directors cannot receive awards for Best Director.';
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `cast`
--

CREATE TABLE `cast` (
  `cast_id` int(11) NOT NULL,
  `actor_name` varchar(25) NOT NULL,
  `role` varchar(50) NOT NULL,
  `release_year` int(11) DEFAULT NULL,
  `movieId` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cast`
--

INSERT INTO `cast` (`cast_id`, `actor_name`, `role`, `release_year`, `movieId`) VALUES
(20, 'Jamie Foxx', 'Protagonist', 2012, '01'),
(23, 'Tom Hanks', 'Protagonist', 2012, '02'),
(24, 'Barkhad Abdi', 'Antagonist', 2012, '02'),
(25, 'Catherine Keener', 'Supporting', 2012, '02'),
(26, 'Sandra Bullock', 'Protagonist', 2013, '08'),
(27, 'George Clooney', 'Protagonist', 2013, '08'),
(28, 'Chadwick Boseman', 'Protagonist', 2013, '09'),
(29, 'Harrison Ford', 'Supporting', 2013, '09'),
(30, 'Nicole Beharie', 'Supporting', 2013, '09'),
(31, 'Matthew McConaughey', 'Protagonist', 2014, '10'),
(32, 'Anne Hathaway', 'Protagonist', 2014, '10'),
(33, 'Emma Stone', 'Protagonist', 2016, '12'),
(34, 'Daniel Kaluuya', 'Protagonist', 2017, '13'),
(35, 'Michael B. Jordan', 'Antagonist', 2018, '15');

--
-- Triggers `cast`
--
DELIMITER $$
CREATE TRIGGER `actor_role_check` BEFORE INSERT ON `cast` FOR EACH ROW BEGIN
    DECLARE valid_roles VARCHAR(100);
    DECLARE actor_role VARCHAR(50);

    -- Define a comma-separated list of valid roles
    SET valid_roles = 'Protagonist, Antagonist, Supporting';

    -- Get the role for the new cast entry
    SET actor_role = NEW.role;

    -- Check if the actor's role is valid
    IF POSITION(actor_role IN valid_roles) = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Invalid actor role. Please use a valid role from the predefined list.';
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `genre_id` int(11) NOT NULL,
  `genre_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`genre_id`, `genre_name`) VALUES
(1, 'Drama'),
(2, 'Action'),
(3, 'Comedy'),
(4, 'Sci-Fi'),
(5, 'Thriller'),
(6, 'Animation'),
(7, 'Horror'),
(8, 'Mystery'),
(9, 'Biography'),
(10, 'Documentary');

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `movieId` varchar(5) NOT NULL,
  `moviename` varchar(50) NOT NULL,
  `release_year` int(11) NOT NULL CHECK (`release_year` between 1000 and 9999),
  `DATE` date NOT NULL,
  `rating` decimal(2,1) NOT NULL,
  `content_rating` varchar(5) DEFAULT NULL,
  `director` varchar(50) DEFAULT NULL,
  `genre_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`movieId`, `moviename`, `release_year`, `DATE`, `rating`, `content_rating`, `director`, `genre_id`) VALUES
('01', 'Django Unchained', 2012, '2012-12-25', 8.5, 'R', 'Quentin Tarantino', 2),
('02', 'The Dark Knight Rises', 2012, '2012-12-11', 8.4, 'PG-13', 'Christopher Nolan', 2),
('03', 'The Avengers', 2012, '2012-05-04', 8.0, 'PG-13', 'Joss Whedon', 2),
('04', 'Life of Pi', 2012, '2012-11-21', 7.9, 'PG', 'Ang Lee', 1),
('05', 'The Hobbit: An Unexpected Journey', 2012, '2012-12-06', 7.8, 'PG-13', 'Peter Jackson', 8),
('06', 'The Wolf of Wall Street', 2013, '2013-12-25', 8.2, 'R', 'Martin Scorsese', 9),
('07', 'Captain Phillips', 2013, '2013-10-11', 7.8, 'PG-13', 'Paul Greengrass', 5),
('08', 'Gravity', 2013, '2013-10-04', 7.7, 'PG-13', 'Alfonso Cuarón', 4),
('09', '42', 2013, '2013-04-12', 7.5, 'PG-13', 'Brian Helgeland', 9),
('10', 'Interstellar', 2014, '2014-11-07', 8.6, 'PG-13', 'Christopher Nolan', 4),
('11', 'The Martian', 2015, '2015-10-02', 8.0, 'PG-13', 'Ridley Scott', 4),
('12', 'La La Land', 2016, '2016-12-09', 8.0, 'PG-13', 'Damien Chazelle', 1),
('13', 'Get Out', 2017, '2017-02-24', 7.7, 'R', 'Jordan Peele', 7),
('14', 'Coco', 2017, '2017-11-22', 8.4, 'PG', 'Lee Unkrich', 6),
('15', 'Black Panther', 2018, '2018-02-16', 7.3, 'PG-13', 'Ryan Coogler', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`awardId`),
  ADD KEY `movieId` (`movieId`,`award_year`);

--
-- Indexes for table `cast`
--
ALTER TABLE `cast`
  ADD PRIMARY KEY (`cast_id`),
  ADD KEY `movieId` (`movieId`,`release_year`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`movieId`,`release_year`),
  ADD KEY `genre_id` (`genre_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `awards`
--
ALTER TABLE `awards`
  MODIFY `awardId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `cast`
--
ALTER TABLE `cast`
  MODIFY `cast_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `genre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `awards`
--
ALTER TABLE `awards`
  ADD CONSTRAINT `awards_ibfk_1` FOREIGN KEY (`movieId`,`award_year`) REFERENCES `movie` (`movieId`, `release_year`);

--
-- Constraints for table `cast`
--
ALTER TABLE `cast`
  ADD CONSTRAINT `cast_ibfk_1` FOREIGN KEY (`movieId`,`release_year`) REFERENCES `movie` (`movieId`, `release_year`);

--
-- Constraints for table `movie`
--
ALTER TABLE `movie`
  ADD CONSTRAINT `movie_ibfk_1` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`genre_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
