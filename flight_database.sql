-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 12, 2016 at 11:58 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flightdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `airplane`
--

CREATE TABLE `airplane` (
  `modelNumber` int(255) NOT NULL,
  `capacity` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `airplane`
--

INSERT INTO `airplane` (`modelNumber`, `capacity`) VALUES
(707, 100),
(708, 150),
(709, 200),
(710, 250),
(711, 300),
(713, 100),
(714, 150),
(715, 200),
(716, 250),
(717, 300),
(718, 100),
(719, 150),
(720, 200),
(721, 250),
(722, 300),
(723, 100),
(724, 150),
(725, 200),
(726, 250),
(727, 300),
(728, 100),
(729, 150),
(730, 200);

-- --------------------------------------------------------

--
-- Table structure for table `airport`
--

CREATE TABLE `airport` (
  `school` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `airport`
--

INSERT INTO `airport` (`school`, `city`, `address`) VALUES
('Cal Maritime', 'Vallejo', '200 Maritime Academy Drive, Vallejo, CA 94590'),
('Cal Poly Pomona', 'Pomona', '3801 West Temple Avenue, Pomona, CA 91768'),
('Cal Poly San Luis Obispo', 'San Luis Obispo', '1 Grand Avenue, San Luis Obispo, CA 93407'),
('CSU Bakersfield', 'Bakersfield', '9001 Stockdale Highway, Bakersfield, CA 93311'),
('CSU Channel Islands', 'Camarillo', '1 University Drive, Camarillo, CA 93012'),
('CSU Chico', 'Chico', '400 West First Street, Chico, CA 95929'),
('CSU Dominguez Hills', 'Carson', '1000 East Victoria Street, Carson, CA 90747'),
('CSU East Bay', 'Hayward', '25800 Carlos Bee Boulevard, Hayward, CA 94542'),
('CSU Fresno', 'Fresno', '5150 North Maple Avenue, Fresno, CA 93740'),
('CSU Fullerton', 'Fullerton', '800 North State College Boulevard, Fullerton, CA 92831'),
('CSU Long Beach', 'Long Beach', '1250 Bellflower Boulevard, Long Beach, CA 90840'),
('CSU Los Angeles', 'Los Angeles', '5151 State University Drive, Los Angeles, CA 90032'),
('CSU Monterey Bay', 'Seaside', '100 Campus Center, Seaside, CA 93955'),
('CSU Northridge', 'Northridge', '18111 Nordhoff Street, Northridge, CA 91330'),
('CSU Sacramento', 'Sacramento', '6000 J Street, Sacramento, CA 95819'),
('CSU San Bernardino', 'San Bernardino', '5500 University Parkway, San Bernardino, CA 92407'),
('CSU San Marcos', 'San Marcos', '333 S. Twin Oaks Valley Road, San Marcos, CA 92096'),
('CSU Stanislaus', 'Turlock', '1 University Circle, Turlock, CA 95382'),
('Humboldt State University', 'Arcata', '1 Harpst Street, Arcata, CA 95521'),
('San Diego State University', 'San Diego', '5500 Campanile Drive, San Diego, CA 92182'),
('San Francisco State University', 'San Francisco', '1600 Holloway Avenue, San Francisco, CA 94132'),
('San Jose State University', 'San Jose', '1 Washington Square, San Jose, CA 95192'),
('Sonoma State University', 'Rohnert Park', '1801 East Cotati Avenue, Rohnert Park, CA 94928');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`name`, `address`) VALUES
('University of California Davis', '1 Shields Avenue, Davis, CA 95616'),
('San Jose State University', '1 Washington Square, San Jose, CA 95192'),
('Miramar College', '10440 Black Mountain Road, San Diego, CA 92126'),
('Mt. San Antonio College', '1100 North Grand Avenue, Walnut, CA 91789'),
('Shasta College', '11555 Old Oregon Trail, Redding, CA 96049'),
('California Institute of Technology', '1200 East California Boulevard, Pasadena, CA 91125'),
('Foothill College', '12345 El Monte Road, Los Altos Hills, CA 94022'),
('Glendale Community College', '1500 North Verdugo Road, Glendale, CA 91208'),
('De Anza College', '21250 Stevens Creek Blvd, Cupertino, CA 95014'),
('University of California Berkley', '2227 Piedmont Avenue, Berkeley, Ca 94720'),
('University of California Irvine', '260 Aldrich Hall, Irvine, CA 92697'),
('Saddleback College', '28000 Marguerite Parkway, Mission Viejo, CA 92692'),
('Cerro Coso Community College', '300 College Heights Boulevard, Ridgecrest, CA 93555'),
('Las Positas College', '3000 Campus Hill Drive, Livermore, CA 94551'),
('University of Southern California', '3551 Trousdale Parkway, Los Angeles, CA 90089'),
('Cal Poly Pomona', '3801 West Temple Avenue, Pomona, CA 91768'),
('Sacramento City College', '3835 Freeport Boulevard, Sacramento, CA 95822'),
('University of California Los Angeles', '405 Hilgard Avenue, Los Angeles, Ca 90024'),
('Stanford University', '450 Serra Mall, Stanford, CA 94305'),
('Long Beach City College', '4901 East Carson Street, Long Beach, CA 90808'),
('Gavilan College', '5055 Santa Teresa Boulevard, Gilroy, CA 95020'),
('CSU Los Angeles', '5151 State University Drive, Los Angeles, CA 90032'),
('San Diego State University', '5500 Campanile Drive, San Diego, CA 92182'),
('College of Alameda', '555 Ralph Appezzato Memorial Parkway, Alameda, CA 94501'),
('Cabrillo College', '6500 Soquel Drive, Aptos, CA 95003'),
('San Bernardino Valley College', '701 South Mount Vernon Avenue, San Bernardino, CA 92410'),
('West Los Angeles College', '9000 Overland Avenue, Culver City, CA 90230'),
('University of California San Diego', '9500 Gilman Drive, La Jolla, CA 92093'),
('Monterey Peninsula College', '980 Fremont Street, Monterey, CA 93940'),
('Reedley College', '995 North Reed Avenue, Reedley, CA 93654');

-- --------------------------------------------------------

--
-- Table structure for table `flight1`
--

CREATE TABLE `flight1` (
  `flightNumber` int(255) NOT NULL,
  `duration` int(255) NOT NULL,
  `departureDay` varchar(20) NOT NULL,
  `arrivalDay` varchar(20) NOT NULL,
  `departureTime` varchar(20) NOT NULL,
  `arrivalTime` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `flight2`
--

CREATE TABLE `flight2` (
  `flightNumber` int(255) NOT NULL,
  `modelNumber` int(255) NOT NULL,
  `arrivingAirport` varchar(100) NOT NULL,
  `departingAirport` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nonstaff`
--

CREATE TABLE `nonstaff` (
  `passengerID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nonstaff`
--

INSERT INTO `nonstaff` (`passengerID`) VALUES
(1013510),
(1102526),
(1107205),
(1195508),
(1310297),
(1813865),
(1927715),
(2320878),
(2533415),
(2979887),
(3180154),
(3302587),
(3636605),
(3712104),
(4348255),
(4434562),
(4444103),
(4472571),
(4477132),
(4583743),
(4664961),
(5011219),
(5539639),
(5770242),
(6284476),
(6286762),
(6567649),
(6853060),
(7016253),
(7111296),
(7220784),
(7225841),
(7293656),
(7435021),
(7701197),
(7766811),
(8222692),
(8337993),
(8382579),
(8510065),
(8631774),
(8668927),
(8752999),
(8822572),
(9216435),
(9279517),
(9340516),
(9738881),
(9775613),
(9822327);

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `passengerID` int(255) NOT NULL,
  `passportNo` int(255) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`passengerID`, `passportNo`, `name`) VALUES
(1013510, 293099095, 'Yolanda Fee  '),
(1014734, 963594232, 'Cornelius Bramer  '),
(1034438, 296280235, 'Patrica Mosier  '),
(1041744, 524878853, 'Randa Hopkins  '),
(1047072, 571916382, 'Isidro Cunha  '),
(1102526, 190001753, 'Charise Gaytan  '),
(1107205, 160027550, 'Georgann Malbon  '),
(1195508, 609777663, 'Albert Derringer  '),
(1308856, 239797385, 'Lowell Markland  '),
(1310297, 499090398, 'Milan Laramee  '),
(1437109, 563928589, 'Hattie Carreira  '),
(1466944, 172873780, 'Maragret Beier  '),
(1813865, 940025287, 'Florencio Tomaselli  '),
(1863056, 341919142, 'Letisha Parfait  '),
(1927715, 803459463, 'Carry Siegal  '),
(1949842, 350437833, 'Olympia Souther  '),
(1985862, 865615264, 'Drusilla Gremillion  '),
(2167616, 255186418, 'Domingo Caldera  '),
(2320878, 674435172, 'Fran Singh  '),
(2533415, 157707670, 'Louanne Clewis  '),
(2770418, 695366159, 'Callie Winder  '),
(2929209, 483110175, 'Azucena Maclennan  '),
(2979887, 756863582, 'Hui Stricker  '),
(3157882, 785960401, 'September Villescas  '),
(3180154, 684039224, 'Charisse Barga  '),
(3302587, 855428161, 'Dannie Poynor  '),
(3407646, 292828416, 'Ok Rios  '),
(3463739, 535709628, 'Elenor Munger  '),
(3636605, 616800854, 'Kristina Stotler  '),
(3712104, 263497484, 'Kirstie Glass  '),
(3867073, 183407846, 'China Maio  '),
(3962325, 501029519, 'Therese Klimas  '),
(4003418, 141157359, 'Lady Kepley  '),
(4291966, 655664154, 'Kena Twellman  '),
(4348255, 860918629, 'Zita Mayton  '),
(4368470, 128698381, 'Temple Byron  '),
(4397281, 408319391, 'Lael Shiver  '),
(4434562, 915995653, 'Salena Shi  '),
(4444103, 972379813, 'Jeanie Griffey  '),
(4472571, 498124912, 'Tamar Dreyer  '),
(4477132, 150758199, 'Rochelle Yousef  '),
(4520143, 359472042, 'Veola Mcferron  '),
(4583743, 859208419, 'Brianna Snelling  '),
(4611402, 375522180, 'Katherina Thomas  '),
(4664961, 966987839, 'Margurite Fifield'),
(4916432, 196359564, 'Oswaldo Tilman  '),
(4930217, 951925723, 'Margene Raffield  '),
(5011219, 892827108, 'Patty Haynie  '),
(5262113, 461900312, 'Carie Noguera  '),
(5414681, 357051361, 'Ardell Marzette  '),
(5539639, 125069265, 'Patti Windley  '),
(5585917, 720466921, 'Sunny Heuer  '),
(5635079, 529562500, 'Benito Alvarenga  '),
(5717189, 537735299, 'Chanel Dress  '),
(5770242, 382243906, 'Bernardo Eicher  '),
(5794602, 583369399, 'Alfreda Escareno  '),
(5940791, 198729332, 'Jani Skelton  '),
(6284476, 917366602, 'Garret Kist  '),
(6286762, 950553388, 'Contessa Delay  '),
(6362886, 361499465, 'Tracy Charest  '),
(6401161, 183916010, 'Elyse Rapp  '),
(6563070, 410054886, 'Felecia Mork  '),
(6567649, 504361254, 'Lavonda Kubicek  '),
(6853060, 475327837, 'Myrtle Mabie  '),
(7016253, 623722427, 'Theron Roehr  '),
(7049695, 848620728, 'Melissa Tullis  '),
(7111296, 230808781, 'Vonda Frankum  '),
(7220784, 921626864, 'Meredith Mauricio  '),
(7225841, 384052138, 'Demetrice Direnzo  '),
(7293656, 384556537, 'Ling Hoosier  '),
(7317529, 725620729, 'Wendi Mowrer  '),
(7435021, 710225182, 'Jolie Forgey  '),
(7464594, 426525749, 'Phillip Lauber  '),
(7673326, 316425439, 'Norberto Weddle  '),
(7701197, 107584624, 'Francina Whittington  '),
(7766811, 863000533, 'Faustino Dunleavy  '),
(7863002, 845799153, 'Raymundo Hunte  '),
(8094414, 605511242, 'Shavonne Eckles  '),
(8127105, 107881614, 'Willian Becerril  '),
(8222692, 510458948, 'Shaunda Sledge  '),
(8337993, 522052849, 'Dwana Demaris  '),
(8382579, 632464308, 'Armandina Christofferse  '),
(8510065, 633491938, 'Ja Strine  '),
(8631774, 986194841, 'Jadwiga Brimage  '),
(8668927, 619449586, 'Thalia Mcelhannon  '),
(8752999, 437615224, 'Celestina Hutzler  '),
(8822572, 759952479, 'Kisha Leventhal  '),
(8988036, 446281880, 'Theola Larkins  '),
(9134882, 484627679, 'Audrea Armstong  '),
(9216435, 152518157, 'Beulah Kestler  '),
(9279517, 456870412, 'Horacio Garlow  '),
(9340516, 862557250, 'Milford Callahan  '),
(9529335, 125006373, 'Laree Serio  '),
(9539929, 168178066, 'Deetta Kesselman  '),
(9549465, 801709745, 'Coreen Sak  '),
(9710816, 389000382, 'Doloris Dunker  '),
(9732676, 784858631, 'Margy Walton  '),
(9738881, 349382493, 'Roxie Crompton  '),
(9775613, 241634488, 'Tracee Cryan  '),
(9822327, 894802088, 'Trent Milton  ');

-- --------------------------------------------------------

--
-- Table structure for table `seatbooking1`
--

CREATE TABLE `seatbooking1` (
  `seat` varchar(3) NOT NULL,
  `seatPreference` varchar(2) NOT NULL,
  `serviceClass` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `seatbooking2`
--

CREATE TABLE `seatbooking2` (
  `passengerID` int(255) NOT NULL,
  `flightNumber` int(255) NOT NULL,
  `seat` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff1`
--

CREATE TABLE `staff1` (
  `employeeID` int(255) NOT NULL,
  `employeePosition` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff1`
--

INSERT INTO `staff1` (`employeeID`, `employeePosition`) VALUES
(1183, 'flight attendants'),
(1813, 'security guards'),
(1872, 'gate personnel'),
(2178, 'security guards'),
(2424, 'airport check-in'),
(2487, 'pilots'),
(2625, 'flight attendants'),
(2746, 'flight attendants'),
(3076, 'reservation clerks'),
(3142, 'pilots'),
(3147, 'pilots'),
(3241, 'flight attendants'),
(3502, 'reservation clerks'),
(3548, 'airport check-in'),
(3696, 'airport check-in'),
(3833, 'pilots'),
(4019, 'gate personnel'),
(4573, 'reservation clerks'),
(4661, 'flight attendants'),
(4692, 'airport check-in'),
(4772, 'gate personnel'),
(4951, 'gate personnel'),
(4964, 'security guards'),
(5043, 'security guards'),
(5120, 'reservation clerks'),
(5535, 'security guards'),
(5910, 'pilots'),
(6454, 'security guards'),
(6462, 'flight attendants'),
(6684, 'flight attendants'),
(6801, 'security guards'),
(6821, 'security guards'),
(7112, 'reservation clerks'),
(7846, 'flight attendants'),
(7956, 'pilots'),
(8294, 'reservation clerks'),
(8400, 'reservation clerks'),
(8456, 'airport check-in'),
(8587, 'gate personnel'),
(8603, 'airport check-in'),
(8607, 'pilots'),
(8645, 'flight attendants'),
(8708, 'airport check-in'),
(8810, 'gate personnel'),
(8969, 'gate personnel'),
(9095, 'reservation clerks'),
(9305, 'airport check-in'),
(9532, 'pilots'),
(9727, 'pilots'),
(9966, 'gate personnel');

-- --------------------------------------------------------

--
-- Table structure for table `staff2`
--

CREATE TABLE `staff2` (
  `passengerID` int(255) NOT NULL,
  `employeeID` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff2`
--

INSERT INTO `staff2` (`passengerID`, `employeeID`) VALUES
(9134882, 3833),
(7317529, 7846),
(1466944, 8400),
(5262113, 8456),
(6401161, 8810),
(9732676, 6454),
(5635079, 5910),
(3407646, 1183),
(5940791, 3502),
(4930217, 4692),
(6563070, 8969),
(2929209, 4964),
(5585917, 3142),
(4003418, 4661),
(5794602, 8294),
(7464594, 8708),
(4916432, 1872),
(1949842, 2178),
(7863002, 7956),
(3157882, 6462),
(9549465, 9095),
(1308856, 2424),
(2770418, 4951),
(6362886, 5535),
(1014734, 9532),
(9710816, 2746),
(7673326, 7112),
(1985862, 8603),
(1047072, 9966),
(1041744, 6821),
(9539929, 2487),
(2167616, 3241),
(3867073, 3076),
(9529335, 3696),
(4520143, 8587),
(4611402, 5043),
(4291966, 3147),
(1437109, 8645),
(4397281, 5120),
(1863056, 9305),
(5414681, 4772),
(3463739, 6801),
(1034438, 8607),
(4368470, 2625),
(7049695, 4573),
(3962325, 3548),
(8094414, 4019),
(5717189, 1813),
(8988036, 9727),
(8127105, 6684);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airplane`
--
ALTER TABLE `airplane`
  ADD PRIMARY KEY (`modelNumber`);

--
-- Indexes for table `airport`
--
ALTER TABLE `airport`
  ADD PRIMARY KEY (`school`),
  ADD UNIQUE KEY `address` (`address`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `address` (`address`);

--
-- Indexes for table `flight1`
--
ALTER TABLE `flight1`
  ADD PRIMARY KEY (`flightNumber`);

--
-- Indexes for table `flight2`
--
ALTER TABLE `flight2`
  ADD KEY `modelNumber` (`modelNumber`),
  ADD KEY `flightNumber` (`flightNumber`),
  ADD KEY `arrivingAirport` (`arrivingAirport`),
  ADD KEY `departingAirport` (`departingAirport`);

--
-- Indexes for table `nonstaff`
--
ALTER TABLE `nonstaff`
  ADD KEY `passengerID` (`passengerID`);

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`passengerID`),
  ADD UNIQUE KEY `passportNo` (`passportNo`);

--
-- Indexes for table `seatbooking1`
--
ALTER TABLE `seatbooking1`
  ADD PRIMARY KEY (`seat`);

--
-- Indexes for table `seatbooking2`
--
ALTER TABLE `seatbooking2`
  ADD KEY `passengerID` (`passengerID`),
  ADD KEY `flightNumber` (`flightNumber`),
  ADD KEY `seat` (`seat`);

--
-- Indexes for table `staff1`
--
ALTER TABLE `staff1`
  ADD PRIMARY KEY (`employeeID`);

--
-- Indexes for table `staff2`
--
ALTER TABLE `staff2`
  ADD KEY `passengerID` (`passengerID`),
  ADD KEY `employeeID` (`employeeID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `flight2`
--
ALTER TABLE `flight2`
  ADD CONSTRAINT `flight2_ibfk_1` FOREIGN KEY (`modelNumber`) REFERENCES `airplane` (`modelNumber`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `flight2_ibfk_2` FOREIGN KEY (`flightNumber`) REFERENCES `flight1` (`flightNumber`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `flight2_ibfk_3` FOREIGN KEY (`arrivingAirport`) REFERENCES `airport` (`school`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `flight2_ibfk_4` FOREIGN KEY (`departingAirport`) REFERENCES `airport` (`school`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `nonstaff`
--
ALTER TABLE `nonstaff`
  ADD CONSTRAINT `nonstaff_ibfk_1` FOREIGN KEY (`passengerID`) REFERENCES `passenger` (`passengerID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `seatbooking2`
--
ALTER TABLE `seatbooking2`
  ADD CONSTRAINT `seatbooking2_ibfk_1` FOREIGN KEY (`passengerID`) REFERENCES `passenger` (`passengerID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `seatbooking2_ibfk_2` FOREIGN KEY (`flightNumber`) REFERENCES `flight1` (`flightNumber`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `seatbooking2_ibfk_3` FOREIGN KEY (`seat`) REFERENCES `seatbooking1` (`seat`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `staff2`
--
ALTER TABLE `staff2`
  ADD CONSTRAINT `staff2_ibfk_1` FOREIGN KEY (`passengerID`) REFERENCES `passenger` (`passengerID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `staff2_ibfk_2` FOREIGN KEY (`employeeID`) REFERENCES `staff1` (`employeeID`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
