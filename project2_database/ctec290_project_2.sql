-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2018 at 03:04 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ctec290_project_2`
--

-- --------------------------------------------------------

--
-- Table structure for table `table1`
--

CREATE TABLE `table1` (
  `customer_number` int(10) NOT NULL,
  `date1` varchar(20) NOT NULL,
  `first_name` varchar(4096) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `last_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `city_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `state_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `country_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table1`
--

INSERT INTO `table1` (`customer_number`, `date1`, `first_name`, `last_name`, `city_name`, `state_name`, `country_name`) VALUES
(9999, '11/5/19', 'new', 'record', 'Portland', 'OR', 'USA'),
(13092, '03/20/17', 'Kamek', 'Valenzuela', 'Hamilton', 'NI', 'Peru'),
(13500, '01/05/18', 'Lenore', 'Levy', 'Vienna', 'Wie', 'Svalbard and Jan Mayen Islands'),
(13910, '10/09/18', 'Nissim', 'Mack', 'Balclutha', 'South Island', 'Dominica'),
(14019, '11/30/17', 'Timon', 'Pollard', 'Berlin', 'Berlin', 'Kyrgyzstan'),
(14988, '03/21/17', 'Ralph', 'Joyner', 'Port Lincoln', 'SA', 'Chad'),
(17746, '09/11/18', 'Lucius', 'Bernard', 'Siedlce', 'MA', 'Moldova'),
(18271, '02/26/17', 'Myra', 'Fields', '100 Mile House', 'BC', 'Samoa'),
(19129, '10/27/18', 'Ila', 'Massey', 'Veere', 'Zeeland', 'Guyana'),
(19195, '02/11/19', 'Nerea', 'Perry', 'Hartford', 'CT', 'Nauru'),
(20325, '06/29/17', 'Kameko', 'Hobbs', 'Kano', 'Kano', 'Cuba'),
(20437, '06/01/18', 'Keith', 'Sanders', 'San Rafael', 'A', 'Tajikistan'),
(22540, '05/04/17', 'Rinah', 'Robinson', 'Casper', 'WY', 'Zimbabwe'),
(22822, '07/20/17', 'Ciara', 'Harris', 'Adana', 'Adana', 'Central African Republic'),
(23473, '10/29/18', 'Anthony', 'Myers', 'Berlin', 'BE', 'Uruguay'),
(23804, '11/13/17', 'Chester', 'Salazar', 'Crato', 'Cear?', 'Barbados'),
(24106, '01/07/18', 'Dorian', 'Mullins', 'Coaldale', 'Alberta', 'Greece'),
(24184, '04/19/17', 'Cheryl', 'Newton', 'Hamburg', 'HH', 'Lesotho'),
(24237, '02/01/19', 'Gemma', 'Jackson', 'Gelsenkirchen', 'North Rhine-Westphalia', 'Cook Islands'),
(24470, '12/19/17', 'Norman', 'Rhodes', 'Galbiate', 'Lombardia', 'Saint Lucia'),
(24993, '07/02/18', 'Audra', 'Madden', 'Bilbo', 'Euskadi', 'China'),
(26346, '10/12/18', 'Keegan', 'Finley', 'Hamburg', 'HH', 'Norway'),
(29565, '07/29/18', 'Marshall', 'Boyd', 'Finsp?ng', 'E', 'Finland'),
(29753, '10/07/17', 'Kevyn', 'Mueller', 'Blue Mountains', 'New South Wales', 'Tokelau'),
(32421, '01/25/18', 'Raya', 'Norris', 'Lourdes', 'Manitoba', 'Serbia'),
(33223, '444', '333', '33', '33', '33', '333'),
(33584, '08/25/18', 'Daria', 'Atkinson', 'Anchorage', 'Alaska', 'Comoros'),
(33804, '02/01/19', 'Abraham', 'Berry', 'Jolanda di Savoia', 'ERM', 'Macedonia'),
(35308, '11/26/18', 'Jaden', 'Griffin', 'Falun', 'W', 'Northern Mariana Islands'),
(36681, '11/24/18', 'Palmer', 'Bond', 'Athens', 'Georgia', 'Samoa'),
(37523, '04/15/17', 'Hiram', 'Sweet', 'Puntarenas', 'P', 'Congo, the Democratic Republic of the'),
(37625, '10/02/18', 'Angelica', 'Buckley', 'San Pancrazio Salentino', 'Puglia', 'Bosnia and Herzegovina'),
(37802, '06/10/18', 'Kaden', 'Spears', 'Miraj', 'Maharastra', 'Andorra'),
(38096, '01/08/18', 'Emery', 'Hebert', 'Port Harcourt', 'RI', 'Vanuatu'),
(39325, '12/16/18', 'Jorden', 'Shepherd', 'Dos Hermanas', 'Andaluc?a', 'Senegal'),
(41817, '10/28/18', 'Ursula', 'Briggs', 'Parramatta', 'NSW', 'Latvia'),
(42010, '10/08/18', 'Daquan', 'Hansen', 'Coelemu', 'VII', 'Norway'),
(42226, '03/08/18', 'Chandler', 'Maddox', 'Barcelona', 'Catalunya', 'Belarus'),
(42377, '09/09/17', 'Gloria', 'Adkins', 'Olathe', 'KS', 'Denmark'),
(42723, '08/01/17', 'Bo', 'Humphrey', 'Patalillo', 'San Jos?', 'China'),
(43555, '04/05/18', 'Tyler', 'Sawyer', 'Whitchurch-Stouffville', 'ON', 'Netherlands'),
(43712, '08/25/18', 'Mason', 'Lawrence', 'Parla', 'Madrid', 'Austria'),
(44603, '02/16/18', 'Wylie', 'Murphy', 'Taupo', 'NI', 'Antarctica'),
(45185, '11/15/17', 'Emery', 'Brennan', 'Lagos', 'Lagos', 'Viet Nam'),
(46379, '10/14/18', 'Yetta', 'Hooper', 'Teno', 'VII', 'Belgium'),
(47123, '03/25/18', 'Ryan', 'Delacruz', 'Bragan?a', 'PA', 'Pakistan'),
(47223, '02/15/18', 'Glenna', 'Fitzpatrick', 'Flushing', 'Zl', 'Bouvet Island'),
(47535, '12/29/17', 'Kiara', 'Salinas', 'Cuceglio', 'PIE', 'Uruguay'),
(48714, '01/04/18', 'Vernon', 'Alford', 'Quesada', 'A', 'Ireland'),
(49343, '10/04/17', 'Keith', 'Newman', 'Great Falls', 'MT', 'Pitcairn Islands'),
(49885, '07/30/18', 'Katelyn', 'Harmon', 'Siedlce', 'Mazowieckie', 'Ghana'),
(50955, '03/27/17', 'Dawn', 'Ruiz', 'Palma de Mallorca', 'BA', 'Sao Tome and Principe'),
(51358, '02/13/18', 'Mona', 'Key', 'Bauchi', 'Bauchi', 'Mexico'),
(52511, '08/12/18', 'Damon', 'Tucker', 'T?by', 'Stockholms l?n', 'Albania'),
(53113, '07/14/17', 'Lani', 'Macdonald', 'Owen Sound', 'Ontario', 'Western Sahara'),
(54110, '01/22/19', 'Marah', 'Hobbs', 'Pike Creek', 'DE', 'Tajikistan'),
(54876, '05/24/17', 'Beverly', 'Schmidt', 'Muzaffarnagar', 'UP', 'Mayotte'),
(55201, '02/05/18', 'Xanthus', 'Phillips', 'Suarlee', 'Namen', 'Nicaragua'),
(56224, '08/21/18', 'Lillith', 'Parker', 'Kano', 'Kano', 'Reunion'),
(56316, '10/28/18', 'Melodie', 'Humphrey', 'Alphen aan den Rijn', 'Zuid Holland', 'Malta'),
(56334, '11/15/17', 'Shea', 'Flowers', 'Noisy-le-Grand', '?le-de-France', 'Niger'),
(56903, '06/22/18', 'Caldwell', 'Craig', 'Bremerhaven', 'HB', 'Libya'),
(58129, '03/24/17', 'Chancellor', 'Griffith', 'Campbeltown', 'Argyllshire', 'South Georgia and The South Sandwich Islands'),
(59199, '10/16/17', 'Libby', 'Reeves', 'Vienna', 'Vienna', 'French Polynesia'),
(59315, '02/22/18', 'Sylvia', 'Spencer', 'Cleveland', 'OH', 'Uruguay'),
(59614, '03/29/18', 'Lisandra', 'Mcdaniel', 'Warszawa', 'Mazowieckie', 'Ireland'),
(60265, '08/26/18', 'Demetria', 'Sparks', 'Okpoko', 'Anambra', 'French Southern Territories'),
(63571, '09/27/18', 'Astra', 'Montoya', 'Courbevoie', 'IL', 'Cayman Islands'),
(64274, '01/10/19', 'Aristotle', 'Oneal', 'Dubbo', 'NSW', 'Uzbekistan'),
(64642, '02/07/18', 'Talon', 'White', 'Sapele', 'Delta', 'United States Minor Outlying Islands'),
(65512, '10/03/18', 'Alec', 'Marks', 'Gisborne', 'NI', 'Virgin Islands, British'),
(66242, '02/07/19', 'Kay', 'Steele', 'Guntakal', 'AP', 'Slovenia'),
(67106, '12/04/18', 'Hop', 'Mitchell', 'Torrevieja', 'Comunitat Valenciana', 'Taiwan'),
(67513, '03/22/18', 'Wynne', 'Soto', 'Fort Smith', 'AK', 'Macao'),
(69270, '05/26/17', 'Noble', 'Cabrera', 'Thorembais-les-B?guines', 'Waals-Brabant', 'Ukraine'),
(70490, '10/15/18', 'Malik', 'Joseph', 'Kielce', 'Swi?tokrzyskie', 'Niger'),
(71016, '10/10/17', 'Jerry', 'Ballard', 'Irvine', 'Ayrshire', 'Slovenia'),
(72222, '10/01/17', 'Callie', 'Huff', 'Bathurst', 'NB', 'Marshall Islands'),
(73591, '11/26/17', 'Vanna', 'Bray', 'Ballarat', 'Victoria', 'South Georgia and The South Sandwich Islands'),
(74925, '03/03/17', 'Lance', 'Beach', 'Nedlands', 'WA', 'Guinea-Bissau'),
(75249, '02/28/18', 'Audra', 'Meyer', 'Ospedaletto d''Alpinolo', 'CAM', 'Guinea-Bissau'),
(75513, '06/16/17', 'Josiah', 'Wilder', 'Algeciras', 'AN', 'United States Minor Outlying Islands'),
(76527, '01/05/19', 'Ferdinand', 'Watkins', 'Dave', 'Namen', 'Malta'),
(77229, '03/17/17', 'Jakeem', 'Wilkerson', 'Vienna', 'Vienna', 'Panama'),
(80586, '06/08/17', 'Elliott', 'Sheppard', 'San Diego', 'Cartago', 'Central African Republic'),
(82269, '01/20/19', 'Naida', 'Workman', 'Agra', 'UP', 'Venezuela'),
(82978, '08/13/17', 'Ima', 'Lyons', 'Pemuco', 'VII', 'Saint Kitts and Nevis'),
(84160, '01/28/18', 'Roth', 'Bartlett', 'Stamford', 'CT', 'Croatia'),
(86587, '02/19/18', 'Christian', 'Perez', 'Castell?', 'Comunitat Valenciana', 'Virgin Islands, British'),
(87367, '09/15/17', 'Driscoll', 'Wiggins', 'Comox', 'BC', 'Guernsey'),
(87394, '10/19/17', 'Karina', 'Greene', 'Jelenia G?ra', 'Dolno?l?skie', 'Bosnia and Herzegovina'),
(88761, '05/11/17', 'Brandon', 'Langley', 'Monmouth', 'MO', 'Iran'),
(88894, '10/06/17', 'Ima', 'Aguirre', 'Berlin', 'BE', 'Pakistan'),
(89730, '04/02/17', 'Burton', 'Austin', 'Belfast', 'U', 'Costa Rica'),
(89959, '03/10/17', 'Kenyon', 'Terrell', 'Mathura', 'Uttar Pradesh', 'Guam'),
(93690, '03/23/17', 'Barry', 'Townsend', 'Llangollen', 'Denbighshire', 'Nicaragua'),
(95783, '01/22/18', 'Keelie', 'Randall', 'Vienna', 'Wie', 'Gabon'),
(96920, '03/27/18', 'Kieran', 'Cunningham', 'Osasco', 'S?o Paulo', 'Cyprus'),
(98643, '07/21/18', 'Orson', 'Joseph', 'Ahmadpur East', 'PB', 'Togo'),
(99080, '12/06/18', 'Acton', 'Rice', 'Zwijndrecht', 'AN', 'Uganda'),
(99183, '05/24/18', 'Angela', 'Hancock', 'Etobicoke', 'ON', 'French Guiana'),
(322233, '444', '33', '333', '33', '33', '333'),
(5555555, '25/12/19', 'Chris', 'McGuire', 'Vancouver', 'Wa', 'USA');

-- --------------------------------------------------------

--
-- Table structure for table `table2`
--

CREATE TABLE `table2` (
  `product_number` int(10) NOT NULL,
  `date2` varchar(20) NOT NULL,
  `original_price` int(10) NOT NULL,
  `regular_price` int(10) NOT NULL,
  `sale_price` int(10) NOT NULL,
  `on_hand` int(5) NOT NULL,
  `description` varchar(4096) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table2`
--

INSERT INTO `table2` (`product_number`, `date2`, `original_price`, `regular_price`, `sale_price`, `on_hand`, `description`) VALUES
(2355, 'Wed, Apr 19', 1955, 3541, 453, 759, 'ligula elit, pretium et, rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in,'),
(2741, 'Mon, Sep 03', 1470, 2928, 4412, 716, 'et ultrices posuere cubilia Curae; Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus quis diam'),
(5847, 'Tue, Jun 20', 3053, 3555, 3896, 93, 'Proin dolor. Nulla semper tellus'),
(6045, 'Sat, Aug 26', 2963, 2645, 4252, 76, 'ornare, elit elit fermentum risus, at fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices,'),
(6544, 'Tue, Dec 11', 1591, 3820, 158, 220, 'leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut'),
(7001, 'Wed, Mar 15', 3752, 662, 2620, 528, 'id'),
(8609, 'Fri, Mar 23', 2840, 758, 2719, 520, 'Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam.'),
(9433, 'Tue, Oct 02', 3388, 357, 403, 785, 'consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper.'),
(9977, 'Sun, Jul 02', 4081, 135, 3356, 44, 'risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus.'),
(10613, 'Sat, Aug 19', 569, 4065, 2627, 806, 'Maecenas mi felis, adipiscing'),
(11100, 'Thu, Nov 16', 3468, 3666, 2066, 925, 'mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce'),
(13140, 'Tue, Sep 19', 695, 3313, 1312, 328, 'urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin'),
(14546, 'Sat, Apr 01', 4803, 670, 178, 381, 'libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc.'),
(16627, 'Mon, May 14', 1643, 204, 4866, 957, 'sociosqu ad litora torquent per'),
(16857, 'Tue, Feb 13', 4511, 4856, 1824, 945, 'ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris'),
(17015, 'Sun, Jun 10', 4479, 594, 2235, 51, 'Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer'),
(17306, 'Sat, Jan 27', 4930, 722, 4740, 662, 'sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit'),
(19698, 'Sun, Feb 04', 2424, 2288, 1639, 467, 'neque venenatis lacus. Etiam bibendum fermentum metus. Aenean'),
(20092, 'Sat, Feb 17', 2936, 1896, 1239, 641, 'hendrerit a, arcu. Sed et libero. Proin mi. Aliquam gravida mauris ut mi. Duis risus odio, auctor vitae, aliquet nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non, vestibulum nec,'),
(20540, 'Mon, Oct 08', 266, 4617, 4508, 201, 'Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum'),
(21187, 'Sun, Mar 04', 4936, 3387, 570, 129, 'lectus ante dictum mi, ac mattis velit justo nec'),
(23214, 'Sun, Sep 24', 1016, 4667, 1196, 341, 'est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras'),
(23317, 'Sun, Jul 23', 2730, 3913, 1619, 6, 'orci. Phasellus dapibus'),
(23966, 'Tue, Apr 17', 1109, 1877, 1212, 45, 'nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique'),
(25947, 'Mon, Jun 26', 4517, 1406, 2356, 205, 'Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque'),
(27683, 'Sat, Sep 08', 3617, 357, 956, 612, 'Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi.'),
(28917, 'Sun, Jun 10', 4366, 1467, 259, 313, 'mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id,'),
(30072, 'Fri, Nov 10', 2705, 2150, 3988, 610, 'malesuada augue ut lacus. Nulla tincidunt, neque vitae semper'),
(30278, 'Thu, Mar 23', 3706, 569, 345, 894, 'felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec'),
(30898, 'Fri, Feb 08', 2124, 3676, 2944, 277, 'Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula'),
(31768, 'Tue, Mar 27', 2117, 670, 1788, 287, 'Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel'),
(33380, 'Mon, Jun 05', 4752, 4580, 3417, 53, 'porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi'),
(34120, 'Wed, Jul 05', 4663, 2191, 1988, 29, 'et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut'),
(34376, 'Tue, Jun 27', 3416, 460, 3331, 813, 'aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui, in sodales elit erat vitae risus. Duis a mi fringilla mi lacinia mattis.'),
(34739, 'Mon, Nov 12', 1884, 3137, 1465, 396, 'vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum'),
(35855, 'Tue, Jul 24', 524, 4585, 244, 427, 'dui augue eu tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis'),
(40075, 'Wed, Jan 17', 3638, 2504, 4164, 978, 'lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc mauris.'),
(41152, 'Fri, May 25', 37, 1531, 1321, 5, 'augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend.'),
(42262, 'Tue, Aug 29', 2912, 3595, 823, 952, 'ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel'),
(42517, 'Sun, Aug 05', 2656, 4736, 4966, 754, 'massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci,'),
(43328, 'Sat, Sep 30', 2809, 2723, 4516, 455, 'mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan'),
(44682, 'Fri, Jul 28', 383, 2704, 3645, 583, 'sem elit, pharetra ut, pharetra sed, hendrerit a, arcu. Sed et libero. Proin'),
(44692, 'Wed, Mar 07', 3335, 2673, 3844, 121, 'dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris,'),
(45139, 'Thu, May 31', 857, 4853, 2196, 459, 'amet ornare lectus justo eu arcu. Morbi sit amet massa. Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et'),
(45584, 'Sat, Sep 15', 1411, 2937, 757, 620, 'Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem'),
(47540, 'Wed, Jul 19', 4927, 2486, 4483, 841, 'urna. Ut tincidunt vehicula risus. Nulla eget'),
(49238, 'Mon, Oct 08', 2385, 261, 358, 727, 'dapibus id, blandit at, nisi. Cum sociis natoque penatibus'),
(49367, 'Sun, Aug 19', 1914, 4004, 538, 550, 'ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum'),
(49650, 'Sun, Sep 03', 3059, 4885, 478, 95, 'vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing'),
(49918, 'Sun, May 07', 3966, 3483, 1315, 142, 'Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia'),
(51592, 'Sun, Mar 25', 3542, 1309, 3449, 652, 'Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras'),
(53354, 'Mon, Jan 08', 4854, 4182, 153, 980, 'malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in'),
(54328, 'Tue, May 22', 2940, 4852, 448, 177, 'nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante'),
(56742, 'Tue, Feb 06', 1115, 3107, 2117, 952, 'lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan'),
(57712, 'Sat, Feb 24', 3925, 2, 2527, 508, 'sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat.'),
(59362, 'Fri, Aug 03', 1686, 4973, 991, 633, 'Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor,'),
(60220, 'Sun, Mar 11', 3396, 2982, 1627, 759, 'ornare, elit elit fermentum risus, at fringilla purus mauris a nunc. In at'),
(60496, 'Fri, Dec 07', 2123, 3786, 745, 848, 'sit amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare,'),
(63157, 'Mon, Nov 05', 3386, 1784, 2182, 486, 'sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis'),
(63282, 'Fri, Sep 01', 4525, 3858, 350, 598, 'vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum'),
(63339, 'Mon, Jun 19', 2285, 128, 4733, 75, 'enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat,'),
(64529, 'Sat, Aug 04', 2647, 1294, 1838, 507, 'sociis natoque'),
(65494, 'Mon, Apr 24', 923, 4939, 1536, 781, 'ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque'),
(66249, 'Mon, Jul 17', 4527, 1447, 3829, 211, 'et libero. Proin mi. Aliquam gravida mauris ut mi. Duis risus odio, auctor vitae, aliquet nec, imperdiet nec, leo.'),
(66256, 'Sat, Sep 09', 1350, 185, 594, 996, 'aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor'),
(67039, 'Wed, Sep 13', 213, 1797, 3725, 771, 'vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus'),
(67047, 'Sat, Sep 01', 2463, 767, 3582, 14, 'arcu iaculis enim, sit amet ornare lectus justo eu arcu. Morbi sit amet massa. Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis'),
(69539, 'Wed, Apr 19', 342, 3664, 1335, 68, 'tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies'),
(71013, 'Tue, Mar 07', 2246, 2812, 965, 181, 'eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus'),
(72076, 'Tue, Jan 16', 1337, 4357, 2419, 442, 'urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque'),
(72110, 'Sun, Dec 31', 69, 580, 691, 827, 'ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui, in sodales elit erat vitae risus. Duis a'),
(73185, 'Sat, Mar 18', 1681, 100, 2224, 278, 'feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum'),
(74162, 'Wed, Apr 12', 3006, 1595, 456, 724, 'erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec'),
(74173, 'Sun, Sep 23', 4335, 3190, 2959, 370, 'tellus, imperdiet non, vestibulum nec, euismod in, dolor. Fusce feugiat.'),
(74224, 'Sun, May 06', 3170, 2437, 323, 559, 'sit amet, consectetuer adipiscing elit.'),
(77327, 'Sun, Apr 02', 3015, 3905, 1935, 688, 'dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin sed turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus'),
(77824, 'Thu, Mar 16', 4622, 2281, 2108, 528, 'consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna'),
(79373, 'Tue, Apr 18', 3101, 4149, 384, 862, 'amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam'),
(81660, 'Thu, Jun 01', 300, 3318, 3183, 139, 'commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit,'),
(83851, 'Tue, Feb 12', 2952, 4421, 4380, 714, 'mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida'),
(84813, 'Fri, Apr 21', 2749, 615, 3974, 476, 'nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.'),
(84960, 'Mon, Jul 17', 1824, 3509, 2885, 658, 'aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque'),
(86212, 'Wed, Mar 14', 3837, 2018, 3870, 99, 'purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus'),
(86615, 'Sat, Aug 25', 1289, 3359, 2040, 147, 'accumsan'),
(87029, 'Wed, May 03', 3764, 3688, 3194, 429, 'ullamcorper eu, euismod ac, fermentum vel, mauris. Integer sem elit, pharetra ut, pharetra sed, hendrerit a,'),
(87694, 'Fri, Feb 09', 1322, 1741, 3941, 583, 'sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat'),
(90296, 'Tue, Mar 20', 1923, 129, 4012, 712, 'eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus'),
(92925, 'Sat, Jun 24', 377, 51, 1889, 68, 'tellus justo sit amet nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus urna convallis erat, eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus'),
(93448, 'Sat, Mar 03', 3882, 4152, 4026, 37, 'nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus.'),
(94361, 'Fri, Jul 20', 3605, 3111, 825, 692, 'amet orci. Ut sagittis lobortis'),
(94912, 'Sun, Jul 09', 4894, 3531, 3561, 559, 'Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris'),
(94917, 'Sun, Oct 28', 3139, 2941, 3096, 858, 'scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis'),
(95430, 'Mon, Apr 17', 2078, 2940, 3559, 576, 'sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem lorem, luctus'),
(95971, 'Fri, Apr 27', 4356, 3513, 2352, 605, 'In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla'),
(97358, 'Sat, Sep 23', 1651, 4471, 1424, 483, 'felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede.'),
(98868, 'Sat, May 12', 1227, 4168, 729, 707, 'velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu');

-- --------------------------------------------------------

--
-- Table structure for table `table3`
--

CREATE TABLE `table3` (
  `customer_id` int(10) NOT NULL,
  `credit_card_num` int(16) NOT NULL,
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `number_ordered` int(10) NOT NULL,
  `reference_number` int(10) NOT NULL,
  `product_ordered` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `product_description` varchar(4096) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table3`
--

INSERT INTO `table3` (`customer_id`, `credit_card_num`, `address`, `number_ordered`, `reference_number`, `product_ordered`, `product_description`) VALUES
(29272282, 354455013, '778-9341 Lectus Road', 181, 87566130, 'Proin velit. Sed', 'ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas.'),
(45603353, 837864587, 'P.O. Box 985, 6780 Vel Av.', 13, 126193853, 'ante. Vivamus', 'eu tempor erat neque non quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis.'),
(48052331, 685078207, '861-1189 Quam St.', 233, 836112171, 'scelerisque neque.', 'varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor at risus. Nunc ac sem'),
(48590130, 459257439, '616-3696 Aliquam Av.', 643, 860272002, 'lacus.', 'at pretium aliquet, metus urna convallis erat, eget tincidunt dui augue eu tellus.'),
(63953280, 593398638, 'P.O. Box 924, 2735 Ullamcorper Avenue', 956, 868974020, 'lectus', 'nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem'),
(68700663, 910865188, '6438 A, Rd.', 910, 52450054, 'malesuada', 'erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris'),
(81989658, 917066538, '2423 Lectus Road', 264, 951311932, 'sit amet', 'pede, ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam'),
(83924557, 847961530, 'Ap #924-904 Consequat, St.', 672, 947840306, 'accumsan neque', 'ac metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id nunc interdum'),
(86995678, 994765462, '802-234 Ullamcorper. St.', 161, 342147951, 'Nullam', 'Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio.'),
(94167246, 434227065, 'P.O. Box 931, 4257 Tellus, Av.', 981, 534436681, 'lorem semper', 'cubilia Curae; Phasellus ornare. Fusce mollis. Duis'),
(97526341, 494335528, 'Ap #998-8180 Cursus Ave', 330, 628952003, 'Curabitur egestas', 'iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo'),
(100906714, 870011252, 'Ap #427-9228 Risus St.', 760, 594438379, 'libero at', 'lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus urna convallis erat, eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu dui.'),
(106952246, 668309754, 'Ap #611-9069 Purus, Road', 453, 238795820, 'et', 'gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus'),
(122656063, 211028479, 'Ap #736-4687 Quam, Av.', 330, 637562250, 'Aliquam', 'in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis'),
(122797227, 751228422, 'P.O. Box 375, 6093 Eu, Road', 603, 753554697, 'at, egestas a,', 'tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum'),
(123958148, 939485633, 'P.O. Box 840, 3422 Dictum Rd.', 783, 105928606, 'luctus et ultrices', 'ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum,'),
(136269468, 427801617, 'P.O. Box 774, 5433 Eu Av.', 847, 436800713, 'nibh. Quisque nonummy', 'quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris'),
(143726783, 640290645, 'P.O. Box 837, 605 Orci St.', 250, 305283502, 'Duis a mi', 'id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et'),
(154718714, 759847418, '442-2517 Integer Rd.', 672, 566174621, 'odio,', 'elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna'),
(173324862, 246612235, 'P.O. Box 135, 9893 Faucibus St.', 912, 676504095, 'parturient montes, nascetur', 'est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi.'),
(174305124, 203366880, 'Ap #109-6405 Sed, Av.', 315, 248997690, 'metus', 'et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare'),
(185394026, 513885557, '439-9393 Lacus. Av.', 189, 567706326, 'risus.', 'Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante'),
(187572047, 345754606, '315-8273 Tristique Rd.', 722, 829352883, 'eu, euismod ac,', 'lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh'),
(191483558, 322392277, '828-6950 Magna Street', 755, 616685687, 'urna. Ut', 'venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et'),
(191761469, 745381217, 'P.O. Box 991, 6387 Pharetra. Av.', 470, 322916791, 'nulla. In', 'nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris. Integer sem elit, pharetra ut, pharetra sed, hendrerit a, arcu. Sed et'),
(199217783, 958554448, '187-751 Tincidunt, Avenue', 746, 11058108, 'pede sagittis augue,', 'Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui, in sodales elit erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus,'),
(220298342, 642084510, 'Ap #680-8875 Consequat Rd.', 268, 511855757, 'Curae;', 'Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia'),
(242272875, 846769966, '5666 Aliquet, Rd.', 984, 557137113, 'elementum sem, vitae', 'placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum'),
(246123550, 456636578, '944-3724 Arcu. Rd.', 100, 603728956, 'dui', 'Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam. Duis'),
(253096925, 433110334, '674-4543 Cum Rd.', 42, 777465007, 'Mauris nulla.', 'convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus'),
(257351133, 889115212, 'Ap #183-3225 Varius Avenue', 968, 917222387, 'Mauris quis', 'erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus'),
(272814610, 248629411, 'Ap #317-8053 Sagittis St.', 955, 497627264, 'viverra.', 'luctus. Curabitur egestas nunc sed libero. Proin sed turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum'),
(284973182, 585808098, 'Ap #137-1885 Nulla. Av.', 749, 314529381, 'diam dictum sapien.', 'molestie. Sed id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus justo eu arcu. Morbi sit amet massa. Quisque porttitor eros nec'),
(306771558, 378337295, 'Ap #529-125 Semper Ave', 927, 318077311, 'sapien, gravida non,', 'tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim'),
(308710302, 552513158, 'Ap #966-6717 Aliquet Rd.', 98, 443383639, 'rutrum,', 'justo eu arcu. Morbi sit amet massa. Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra.'),
(313871848, 953248564, '7741 Vestibulum St.', 67, 45160723, 'Nullam vitae diam.', 'porttitor tellus non magna. Nam ligula elit, pretium et, rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus urna convallis erat, eget tincidunt dui augue eu tellus. Phasellus elit'),
(328112173, 840826391, 'Ap #977-1030 Ut, Rd.', 106, 867133925, 'ac tellus. Suspendisse', 'viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit.'),
(340339231, 976443089, 'P.O. Box 645, 4903 Suspendisse Street', 810, 558480920, 'Sed eu nibh', 'habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec'),
(352442445, 124037711, 'P.O. Box 547, 7733 Ut Ave', 587, 859437098, 'quis diam.', 'enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh.'),
(363686733, 841978532, 'Ap #290-3558 Accumsan St.', 539, 196682573, 'in magna.', 'neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer'),
(368099225, 458212883, 'Ap #261-2404 Sit St.', 437, 395989588, 'eros.', 'eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada'),
(378197373, 225845720, '4125 Arcu Rd.', 301, 36687565, 'eleifend vitae, erat.', 'Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a'),
(382227128, 653803584, '4794 Eget St.', 551, 127772925, 'quis lectus.', 'gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor,'),
(391892221, 225778186, 'Ap #178-164 Elementum Rd.', 338, 357446384, 'facilisis, magna', 'semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam'),
(407414438, 814606234, 'P.O. Box 725, 8897 Auctor Rd.', 667, 136177390, 'non, lobortis quis,', 'Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper,'),
(408457466, 134379825, 'P.O. Box 952, 294 Aliquam Rd.', 516, 261048671, 'Nulla dignissim.', 'sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue'),
(428809517, 666052145, 'P.O. Box 874, 9445 Ornare, St.', 416, 734290469, 'Cum', 'libero et tristique pellentesque, tellus sem mollis dui, in sodales elit erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non quam.'),
(446347518, 875931868, 'Ap #764-1529 Ac Avenue', 462, 857512747, 'mollis', 'Curabitur consequat, lectus sit amet luctus vulputate, nisi sem'),
(460365897, 430743849, '4637 Mattis. Rd.', 799, 874407766, 'Quisque tincidunt pede', 'In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada vel,'),
(466353995, 129467034, '674-362 Quisque Rd.', 378, 760417690, 'cursus.', 'per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus justo eu arcu. Morbi sit amet massa. Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede.'),
(473060136, 953540874, '712-7636 Congue Avenue', 1000, 178808316, 'et', 'Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec'),
(482492688, 997197128, '923-2257 Ullamcorper Road', 903, 336967554, 'Suspendisse', 'luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra'),
(484837551, 371251163, '5462 Scelerisque, St.', 405, 680622166, 'Proin mi.', 'Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin sed turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum'),
(490501773, 277668362, 'P.O. Box 784, 3261 Nunc Street', 550, 304904519, 'mauris erat', 'at pretium aliquet, metus urna convallis erat, eget'),
(493373497, 764596083, '2676 Consectetuer St.', 175, 252145651, 'vitae risus.', 'Aliquam nisl. Nulla eu neque pellentesque massa'),
(501435380, 176038105, '6751 Etiam Street', 645, 907623183, 'eu, odio.', 'vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec,'),
(508910897, 706014701, 'Ap #571-9447 Est Ave', 850, 316567189, 'aliquet, metus', 'dui, in sodales elit erat vitae risus.'),
(509649690, 115191749, '911-4562 Lorem, Street', 188, 393043649, 'odio. Aliquam vulputate', 'rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula.'),
(511052855, 971989239, '711-6331 Mauris Avenue', 980, 543949221, 'turpis.', 'Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius'),
(525328547, 867772799, '423-5335 Ac St.', 5, 314528727, 'interdum ligula eu', 'vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien. Cras'),
(526181670, 710301705, '748-3310 Cras Street', 150, 177590943, 'feugiat', 'nisi nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel'),
(532268929, 243845311, 'P.O. Box 257, 9226 Vulputate Ave', 666, 720111672, 'dictum', 'at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus justo eu arcu. Morbi sit'),
(532994506, 702637901, 'Ap #469-9617 Montes, Ave', 450, 617649159, 'iaculis aliquet', 'turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur'),
(539502736, 350747361, 'P.O. Box 224, 9278 Metus Road', 593, 715666151, 'porttitor', 'senectus et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi'),
(616873419, 488047554, '2910 Hendrerit Avenue', 276, 171079662, 'Aenean massa.', 'eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac'),
(645052208, 736253300, 'Ap #410-2601 Morbi Av.', 26, 707505057, 'Proin dolor. Nulla', 'erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus'),
(673900824, 708850834, 'P.O. Box 659, 5939 Phasellus St.', 484, 763476421, 'massa. Vestibulum accumsan', 'nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat'),
(674930246, 126839426, '1261 Dui. Road', 848, 568261757, 'id,', 'rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus urna'),
(718374103, 961422573, 'P.O. Box 229, 329 Mi, Avenue', 565, 307013280, 'sed', 'placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis'),
(771304566, 998119271, 'Ap #172-5067 Libero. St.', 954, 430078438, 'fermentum', 'ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat'),
(772235873, 641801793, 'P.O. Box 488, 2035 Dapibus Rd.', 650, 379927538, 'ante ipsum', 'turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est,'),
(779796470, 232116342, 'P.O. Box 301, 5698 Leo. Ave', 19, 397138501, 'et', 'nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis enim, sit'),
(791047680, 202949634, '144-8397 Turpis St.', 590, 74870106, 'gravida non,', 'erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris'),
(795232312, 316499617, '7326 Bibendum. Rd.', 913, 165115243, 'dolor. Nulla', 'Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor'),
(797314127, 186823976, 'P.O. Box 839, 6456 Fusce Road', 58, 200478693, 'eleifend,', 'sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem,'),
(801247868, 667442086, 'Ap #505-3974 Ipsum Road', 208, 795662258, 'tincidunt pede ac', 'nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus'),
(808713448, 675269901, 'P.O. Box 606, 1914 Eget, Road', 100, 657707982, 'Cum', 'scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing,'),
(819806311, 966636525, '6244 Neque Rd.', 796, 948714891, 'elit, pharetra', 'Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim,'),
(833517464, 960015320, '691-7907 Faucibus Ave', 115, 991218396, 'egestas', 'vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a'),
(837565235, 440691101, '8121 Quis Avenue', 461, 725178521, 'cursus vestibulum. Mauris', 'dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices.'),
(841104005, 640800145, 'Ap #319-9071 Ipsum. Rd.', 369, 918615618, 'Aliquam nisl.', 'montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero.'),
(850060731, 492312662, 'P.O. Box 924, 6209 Dui. Rd.', 443, 860910039, 'Pellentesque', 'lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam'),
(852419784, 839917615, '377-8310 Tempor Rd.', 294, 970129598, 'enim. Etiam', 'fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem lorem,'),
(864285983, 868131803, 'Ap #356-2973 Eget Rd.', 679, 321614162, 'erat volutpat. Nulla', 'vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar'),
(883993944, 350487378, '365-2685 Mus. Road', 196, 860569172, 'dis', 'urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis'),
(886168092, 187195417, 'P.O. Box 260, 545 Lobortis. Avenue', 321, 446361325, 'consequat auctor, nunc', 'facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa non ante'),
(896079251, 544069196, 'P.O. Box 247, 466 Dolor. St.', 168, 653511817, 'lacus. Etiam bibendum', 'Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida.'),
(896233386, 675333840, 'Ap #283-828 Et St.', 703, 70423104, 'turpis. In condimentum.', 'Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis'),
(904175588, 975193902, '813-3821 Sodales St.', 413, 974095514, 'iaculis, lacus pede', 'sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus'),
(911926126, 827851571, 'P.O. Box 834, 2217 Turpis St.', 978, 113430961, 'massa non', 'egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque'),
(920824765, 471089478, '2111 A St.', 754, 244235158, 'vitae risus.', 'elit erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non quam. Pellentesque'),
(943535585, 462594203, 'P.O. Box 374, 487 Vel Road', 695, 569920659, 'ut', 'Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis'),
(960189504, 383803555, '853-4319 Posuere, Street', 756, 448734394, 'Vivamus', 'enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient'),
(973489724, 920812897, 'P.O. Box 941, 7443 Condimentum. Road', 655, 377635242, 'porttitor', 'facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui, in sodales elit erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit'),
(993787172, 717110392, '777-5911 Ipsum. Av.', 228, 218599739, 'sapien molestie orci', 'nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut'),
(994440756, 857995307, '3070 Tempus Av.', 750, 553009674, 'parturient montes, nascetur', 'Mauris blandit enim consequat purus. Maecenas libero est,'),
(998392260, 986672349, '540 Gravida. Street', 402, 92043573, 'vitae,', 'ac, eleifend vitae, erat. Vivamus nisi. Mauris');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `table1`
--
ALTER TABLE `table1`
  ADD PRIMARY KEY (`customer_number`);

--
-- Indexes for table `table2`
--
ALTER TABLE `table2`
  ADD PRIMARY KEY (`product_number`);

--
-- Indexes for table `table3`
--
ALTER TABLE `table3`
  ADD PRIMARY KEY (`customer_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
