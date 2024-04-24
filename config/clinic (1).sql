-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2023 at 05:38 PM
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
-- Database: `clinic`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `Appointment_ID` int(255) NOT NULL,
  `Doctor_schedule_ID` int(255) DEFAULT NULL,
  `Patient_ID` int(13) DEFAULT NULL,
  `Doctor_ID` int(255) DEFAULT NULL,
  `Appointment_Time` time DEFAULT NULL,
  `Appointment_status` int(11) DEFAULT NULL,
  `Appointment_createdAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`Appointment_ID`, `Doctor_schedule_ID`, `Patient_ID`, `Doctor_ID`, `Appointment_Time`, `Appointment_status`, `Appointment_createdAt`) VALUES
(102, 40, 24, 1, '20:42:25', 4, '2023-05-22 08:42:25'),
(103, 41, 24, 1, '20:43:30', 4, '2023-05-22 08:43:30'),
(104, 42, 25, 1, '21:31:24', 4, '2023-05-22 09:31:24');

-- --------------------------------------------------------

--
-- Table structure for table `appointmentresult`
--

CREATE TABLE `appointmentresult` (
  `AppointmentResult_ID` int(255) NOT NULL,
  `Appointment_ID` int(255) DEFAULT NULL,
  `Treatment` varchar(255) DEFAULT NULL,
  `Certificate_Issued` varchar(20) NOT NULL,
  `Appointment_Result_Date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointmentresult`
--

INSERT INTO `appointmentresult` (`AppointmentResult_ID`, `Appointment_ID`, `Treatment`, `Certificate_Issued`, `Appointment_Result_Date`) VALUES
(46, 102, 'Ipsum omnis asperna', 'Certificate', '2023-05-22 20:42:25'),
(47, 103, 'Vel sit labore fuga', 'Certificate', '2023-05-22 20:43:30'),
(48, 104, 'Eveniet accusantium', 'No Certificate', '2023-05-22 21:31:24');

-- --------------------------------------------------------

--
-- Table structure for table `appointmenttoothresult`
--

CREATE TABLE `appointmenttoothresult` (
  `AppointmentToothResult_ID` int(255) NOT NULL,
  `Appointment_ID` int(13) DEFAULT NULL,
  `Tooth_ID` int(255) DEFAULT NULL,
  `Appointment_Tooth_Status` int(2) DEFAULT NULL,
  `Recent_change` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointmenttoothresult`
--

INSERT INTO `appointmenttoothresult` (`AppointmentToothResult_ID`, `Appointment_ID`, `Tooth_ID`, `Appointment_Tooth_Status`, `Recent_change`) VALUES
(1553, 102, 373, 1, 0),
(1554, 102, 374, 1, 0),
(1555, 102, 375, 1, 1),
(1556, 102, 376, 0, 0),
(1557, 102, 377, 0, 0),
(1558, 102, 378, 0, 0),
(1559, 102, 379, 0, 0),
(1560, 102, 380, 0, 0),
(1561, 102, 381, 0, 0),
(1562, 102, 382, 0, 0),
(1563, 102, 383, 0, 0),
(1564, 102, 384, 0, 0),
(1565, 102, 385, 0, 0),
(1566, 102, 386, 0, 0),
(1567, 102, 387, 0, 0),
(1568, 102, 388, 0, 0),
(1569, 102, 389, 0, 0),
(1570, 102, 390, 0, 0),
(1571, 102, 391, 0, 0),
(1572, 102, 392, 0, 0),
(1573, 102, 393, 0, 0),
(1574, 102, 394, 0, 0),
(1575, 102, 395, 0, 0),
(1576, 102, 396, 0, 0),
(1577, 102, 397, 0, 0),
(1578, 102, 398, 0, 0),
(1579, 102, 399, 0, 0),
(1580, 102, 400, 0, 0),
(1581, 102, 401, 0, 0),
(1582, 102, 402, 0, 0),
(1583, 102, 403, 1, 0),
(1584, 102, 404, 1, 0),
(1585, 102, 405, 0, 0),
(1586, 102, 406, 0, 0),
(1587, 102, 407, 0, 0),
(1588, 102, 408, 0, 0),
(1589, 102, 409, 0, 0),
(1590, 102, 410, 0, 0),
(1591, 102, 411, 0, 0),
(1592, 102, 412, 0, 0),
(1593, 102, 413, 0, 0),
(1594, 102, 414, 0, 0),
(1595, 102, 415, 0, 0),
(1596, 102, 416, 0, 0),
(1597, 102, 417, 0, 0),
(1598, 102, 418, 0, 0),
(1599, 102, 419, 0, 0),
(1600, 102, 420, 0, 0),
(1601, 102, 421, 0, 0),
(1602, 102, 422, 0, 0),
(1603, 102, 423, 0, 0),
(1604, 102, 424, 0, 0),
(1605, 103, 373, 1, 0),
(1606, 103, 374, 1, 0),
(1607, 103, 375, 1, 1),
(1608, 103, 376, 1, 1),
(1609, 103, 377, 1, 1),
(1610, 103, 378, 0, 0),
(1611, 103, 379, 0, 0),
(1612, 103, 380, 0, 0),
(1613, 103, 381, 0, 0),
(1614, 103, 382, 0, 0),
(1615, 103, 383, 0, 0),
(1616, 103, 384, 0, 0),
(1617, 103, 385, 0, 0),
(1618, 103, 386, 0, 0),
(1619, 103, 387, 0, 0),
(1620, 103, 388, 0, 0),
(1621, 103, 389, 0, 0),
(1622, 103, 390, 0, 0),
(1623, 103, 391, 0, 0),
(1624, 103, 392, 0, 0),
(1625, 103, 393, 0, 0),
(1626, 103, 394, 0, 0),
(1627, 103, 395, 0, 0),
(1628, 103, 396, 0, 0),
(1629, 103, 397, 0, 0),
(1630, 103, 398, 0, 0),
(1631, 103, 399, 0, 0),
(1632, 103, 400, 0, 0),
(1633, 103, 401, 0, 0),
(1634, 103, 402, 0, 0),
(1635, 103, 403, 1, 0),
(1636, 103, 404, 1, 0),
(1637, 103, 405, 0, 0),
(1638, 103, 406, 0, 0),
(1639, 103, 407, 0, 0),
(1640, 103, 408, 0, 0),
(1641, 103, 409, 0, 0),
(1642, 103, 410, 0, 0),
(1643, 103, 411, 0, 0),
(1644, 103, 412, 0, 0),
(1645, 103, 413, 0, 0),
(1646, 103, 414, 0, 0),
(1647, 103, 415, 0, 0),
(1648, 103, 416, 0, 0),
(1649, 103, 417, 0, 0),
(1650, 103, 418, 0, 0),
(1651, 103, 419, 0, 0),
(1652, 103, 420, 0, 0),
(1653, 103, 421, 0, 0),
(1654, 103, 422, 0, 0),
(1655, 103, 423, 0, 0),
(1656, 103, 424, 0, 0),
(1657, 104, 798, 1, 1),
(1658, 104, 799, 0, 0),
(1659, 104, 800, 0, 0),
(1660, 104, 801, 0, 0),
(1661, 104, 802, 0, 0),
(1662, 104, 803, 0, 0),
(1663, 104, 804, 0, 0),
(1664, 104, 805, 0, 0),
(1665, 104, 806, 0, 0),
(1666, 104, 807, 0, 0),
(1667, 104, 808, 0, 0),
(1668, 104, 809, 0, 0),
(1669, 104, 810, 0, 0),
(1670, 104, 811, 0, 0),
(1671, 104, 812, 0, 0),
(1672, 104, 813, 0, 0),
(1673, 104, 814, 0, 0),
(1674, 104, 815, 0, 0),
(1675, 104, 816, 0, 0),
(1676, 104, 817, 0, 0),
(1677, 104, 818, 0, 0),
(1678, 104, 819, 0, 0),
(1679, 104, 820, 0, 0),
(1680, 104, 821, 0, 0),
(1681, 104, 822, 0, 0),
(1682, 104, 823, 0, 0),
(1683, 104, 824, 0, 0),
(1684, 104, 825, 0, 0),
(1685, 104, 826, 0, 0),
(1686, 104, 827, 0, 0),
(1687, 104, 828, 0, 0),
(1688, 104, 829, 0, 0),
(1689, 104, 830, 0, 0),
(1690, 104, 831, 0, 0),
(1691, 104, 832, 0, 0),
(1692, 104, 833, 0, 0),
(1693, 104, 834, 0, 0),
(1694, 104, 835, 0, 0),
(1695, 104, 836, 0, 0),
(1696, 104, 837, 0, 0),
(1697, 104, 838, 0, 0),
(1698, 104, 839, 0, 0),
(1699, 104, 840, 0, 0),
(1700, 104, 841, 0, 0),
(1701, 104, 842, 0, 0),
(1702, 104, 843, 0, 0),
(1703, 104, 844, 0, 0),
(1704, 104, 845, 0, 0),
(1705, 104, 846, 0, 0),
(1706, 104, 847, 0, 0),
(1707, 104, 848, 0, 0),
(1708, 104, 849, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `appointment_services`
--

CREATE TABLE `appointment_services` (
  `appointment_services_ID` int(255) NOT NULL,
  `Services_ID` int(255) DEFAULT NULL,
  `Appointment_ID` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `assistant`
--

CREATE TABLE `assistant` (
  `Assistant_ID` int(13) NOT NULL,
  `assistantFname` varchar(30) DEFAULT NULL,
  `assistantLname` varchar(30) DEFAULT NULL,
  `assistantAddress` varchar(255) DEFAULT NULL,
  `assistantContact` varchar(30) DEFAULT NULL,
  `assistantPassword` varchar(255) DEFAULT NULL,
  `assistantEmail` varchar(60) DEFAULT NULL,
  `assistantProfilepicture` varchar(255) DEFAULT NULL,
  `assistantStatus` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assistant`
--

INSERT INTO `assistant` (`Assistant_ID`, `assistantFname`, `assistantLname`, `assistantAddress`, `assistantContact`, `assistantPassword`, `assistantEmail`, `assistantProfilepicture`, `assistantStatus`) VALUES
(1, 'Ulla', 'Emerald', 'Zeus', '09150218089', '$2y$10$z5pifu.nQNPDfDx78RZNqegOJztwoZwSjNxzv1kIlPFrltUI3YS7C', 'Phyllis@gmail.com', NULL, 1),
(3, 'Mary Jane', 'Reyes', 'La Paz, Iloilo City', '09723717231', '$2y$10$BCOfXwFnCALzuUM4csYM1.eVss1gEobyM1ud4UymQOVfIKkgrktZm', 'maryjanereyes@gmail.com', '../public/Profilepictures/bbebb43a5e9b6d2b3918afb79fca9ef9.png', 1),
(6, 'Nash', 'Carl', 'Katelyn', 'Michelle', '$2y$10$aIMk5t7xKjS6Ay3AoqZ8a.e055WvCNe2HCSpAvvi/kJU5yYGq9kQW', 'Libby@gmail.com', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `college`
--

CREATE TABLE `college` (
  `CollegeID` int(255) NOT NULL,
  `CollegeName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `college`
--

INSERT INTO `college` (`CollegeID`, `CollegeName`) VALUES
(2, 'CAS'),
(3, 'COE');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `CourseID` int(255) NOT NULL,
  `CollegeID` int(255) NOT NULL,
  `CourseName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`CourseID`, `CollegeID`, `CourseName`) VALUES
(2, 2, 'BSIT'),
(3, 3, 'BEED');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `Doctor_ID` int(255) NOT NULL,
  `Doctor_name` varchar(100) NOT NULL,
  `Doctor_title` varchar(200) NOT NULL,
  `Doctor_status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`Doctor_ID`, `Doctor_name`, `Doctor_title`, `Doctor_status`) VALUES
(1, 'Sigfred Villallobos', 'Dentist Cleaning', 1),
(2, 'Estribo', 'Higher', 1),
(3, 'Hey', 'Higher', 1),
(4, 'Hatdogs', 'Grillers', 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctor_schedule`
--

CREATE TABLE `doctor_schedule` (
  `Doctor_schedule_ID` int(255) NOT NULL,
  `Assistant_ID` int(13) DEFAULT NULL,
  `Doctor_schedule_avail` datetime DEFAULT NULL,
  `Doctor_Schedule_type` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor_schedule`
--

INSERT INTO `doctor_schedule` (`Doctor_schedule_ID`, `Assistant_ID`, `Doctor_schedule_avail`, `Doctor_Schedule_type`) VALUES
(40, 1, '2023-05-22 00:00:00', 2),
(41, 1, '2023-05-22 00:00:00', 2),
(42, 1, '2023-05-22 00:00:00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `Patient_ID` int(13) NOT NULL,
  `Assistant_ID` int(13) DEFAULT NULL,
  `patientFname` varchar(30) DEFAULT NULL,
  `patientLname` varchar(30) DEFAULT NULL,
  `patientPassword` varchar(255) DEFAULT NULL,
  `patientContact` varchar(30) DEFAULT NULL,
  `patientEmail` varchar(60) DEFAULT NULL,
  `patientRole` varchar(10) DEFAULT NULL,
  `patientAddress` varchar(255) DEFAULT NULL,
  `patientBirthdate` date NOT NULL,
  `patientIDpicture` varchar(255) DEFAULT NULL,
  `patientProfilepicture` varchar(255) DEFAULT NULL,
  `patientStatus` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`Patient_ID`, `Assistant_ID`, `patientFname`, `patientLname`, `patientPassword`, `patientContact`, `patientEmail`, `patientRole`, `patientAddress`, `patientBirthdate`, `patientIDpicture`, `patientProfilepicture`, `patientStatus`) VALUES
(24, NULL, 'John Christian ', 'Hismana', '$2y$10$l16k2OIZ6T2IJwep/TbjS.VQp3WtacsUtShh5fBAMW45Kbk/aQqPK', '09561986292', 'jchismana@gmail.com', 'student', 'Pavia, Iloilo City', '2000-03-21', '../public/IDs/9c3ccd3f4d080b1bcde2316762264183.JPG', NULL, 1),
(25, NULL, 'Jayron', 'Calicaran', '$2y$10$qX3kF3UsFUR4RQYOokgUlOwlQZ6mXac3v2zWQ93Q.LE2.Q50bRiqa', '09196942101', 'jron@gmail.com', 'outsider', 'Bucari, Leon, Iloilo City', '1998-11-19', '../public/IDs/f7c29157cda152731d4e03aee4d720cc.JPG', NULL, 1),
(26, NULL, 'Xantha Harvey', 'Quin Dickson', '$2y$10$8Dw6Vlf2RTR6g8YCS5lSS.rT8NTUo0IjRIOvFkprQ0QwptlDKcXzu', 'Itaque ex aliquip co', 'tanuryna@mailinator.com', 'student', 'Incidunt voluptas a', '1995-05-20', '../public/IDs/071e4ad6385578ae49d11080a239f5db.JPG', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `patient_student`
--

CREATE TABLE `patient_student` (
  `PatientStudentID` int(255) NOT NULL,
  `Patient_ID` int(13) NOT NULL,
  `CollegeID` int(255) NOT NULL,
  `CourseID` int(255) NOT NULL,
  `Year` int(2) NOT NULL,
  `Section` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_student`
--

INSERT INTO `patient_student` (`PatientStudentID`, `Patient_ID`, `CollegeID`, `CourseID`, `Year`, `Section`) VALUES
(4, 24, 2, 2, 1, 'A'),
(5, 26, 2, 2, 4, 'A');

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `Prescription_ID` int(255) NOT NULL,
  `Appointment_ID` int(255) NOT NULL,
  `Prescription_Description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`Prescription_ID`, `Appointment_ID`, `Prescription_Description`) VALUES
(15, 102, 'Enim est omnis aut d'),
(16, 103, 'Et rerum aute evenie'),
(17, 104, 'In at fugiat labori');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `Services_ID` int(255) NOT NULL,
  `Services_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`Services_ID`, `Services_name`) VALUES
(8, 'Dental Fillings'),
(9, 'Tooth Extraction'),
(10, 'Oral Prophlexis'),
(11, 'Oral Examination'),
(12, 'Oral Jacket');

-- --------------------------------------------------------

--
-- Table structure for table `tooth`
--

CREATE TABLE `tooth` (
  `Tooth_ID` int(255) NOT NULL,
  `Patient_ID` int(13) DEFAULT NULL,
  `Tooth_Number` int(100) DEFAULT NULL,
  `Tooth_Status` int(2) DEFAULT NULL,
  `Recent_change` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tooth`
--

INSERT INTO `tooth` (`Tooth_ID`, `Patient_ID`, `Tooth_Number`, `Tooth_Status`, `Recent_change`) VALUES
(373, 24, 1, 1, 1),
(374, 24, 2, 1, 1),
(375, 24, 3, 0, 0),
(376, 24, 4, 0, 0),
(377, 24, 5, 0, 0),
(378, 24, 6, 0, 0),
(379, 24, 7, 0, 0),
(380, 24, 8, 0, 0),
(381, 24, 9, 0, 0),
(382, 24, 10, 0, 0),
(383, 24, 11, 0, 0),
(384, 24, 12, 0, 0),
(385, 24, 13, 0, 0),
(386, 24, 14, 0, 0),
(387, 24, 15, 0, 0),
(388, 24, 16, 0, 0),
(389, 24, 17, 0, 0),
(390, 24, 18, 0, 0),
(391, 24, 19, 0, 0),
(392, 24, 20, 0, 0),
(393, 24, 21, 0, 0),
(394, 24, 22, 0, 0),
(395, 24, 23, 0, 0),
(396, 24, 24, 0, 0),
(397, 24, 25, 0, 0),
(398, 24, 26, 0, 0),
(399, 24, 27, 0, 0),
(400, 24, 28, 0, 0),
(401, 24, 29, 0, 0),
(402, 24, 30, 1, 1),
(403, 24, 31, 1, 1),
(404, 24, 32, 1, 0),
(405, 24, 33, 0, 0),
(406, 24, 34, 0, 0),
(407, 24, 35, 0, 0),
(408, 24, 36, 0, 0),
(409, 24, 37, 0, 0),
(410, 24, 38, 0, 0),
(411, 24, 39, 0, 0),
(412, 24, 40, 0, 0),
(413, 24, 41, 0, 0),
(414, 24, 42, 0, 0),
(415, 24, 43, 0, 0),
(416, 24, 44, 0, 0),
(417, 24, 45, 0, 0),
(418, 24, 46, 0, 0),
(419, 24, 47, 0, 0),
(420, 24, 48, 0, 0),
(421, 24, 49, 0, 0),
(422, 24, 50, 0, 0),
(423, 24, 51, 0, 0),
(424, 24, 52, 0, 0),
(685, 26, 1, 0, 0),
(686, 26, 2, 0, 0),
(687, 26, 3, 0, 0),
(688, 26, 4, 0, 0),
(689, 26, 5, 0, 0),
(690, 26, 6, 0, 0),
(691, 26, 7, 0, 0),
(692, 26, 8, 0, 0),
(693, 26, 9, 0, 0),
(694, 26, 10, 0, 0),
(695, 26, 11, 0, 0),
(696, 26, 12, 0, 0),
(697, 26, 13, 0, 0),
(698, 26, 14, 0, 0),
(699, 26, 15, 0, 0),
(700, 26, 16, 0, 0),
(701, 26, 17, 0, 0),
(702, 26, 18, 0, 0),
(703, 26, 19, 0, 0),
(704, 26, 20, 0, 0),
(705, 26, 21, 0, 0),
(706, 26, 22, 0, 0),
(707, 26, 23, 0, 0),
(708, 26, 24, 0, 0),
(709, 26, 25, 0, 0),
(710, 26, 26, 0, 0),
(711, 26, 27, 0, 0),
(712, 26, 28, 0, 0),
(713, 26, 29, 0, 0),
(714, 26, 30, 0, 0),
(715, 26, 31, 0, 0),
(716, 26, 32, 0, 0),
(717, 26, 33, 0, 0),
(718, 26, 34, 0, 0),
(719, 26, 35, 0, 0),
(720, 26, 36, 0, 0),
(721, 26, 37, 0, 0),
(722, 26, 38, 0, 0),
(723, 26, 39, 0, 0),
(724, 26, 40, 0, 0),
(725, 26, 41, 0, 0),
(726, 26, 42, 0, 0),
(727, 26, 43, 0, 0),
(728, 26, 44, 0, 0),
(729, 26, 45, 0, 0),
(730, 26, 46, 0, 0),
(731, 26, 47, 0, 0),
(732, 26, 48, 0, 0),
(733, 26, 49, 0, 0),
(734, 26, 50, 0, 0),
(735, 26, 51, 0, 0),
(736, 26, 52, 0, 0),
(798, 25, 1, 1, 0),
(799, 25, 2, 0, 0),
(800, 25, 3, 0, 0),
(801, 25, 4, 0, 0),
(802, 25, 5, 0, 0),
(803, 25, 6, 0, 0),
(804, 25, 7, 0, 0),
(805, 25, 8, 0, 0),
(806, 25, 9, 0, 0),
(807, 25, 10, 0, 0),
(808, 25, 11, 0, 0),
(809, 25, 12, 0, 0),
(810, 25, 13, 0, 0),
(811, 25, 14, 0, 0),
(812, 25, 15, 0, 0),
(813, 25, 16, 0, 0),
(814, 25, 17, 0, 0),
(815, 25, 18, 0, 0),
(816, 25, 19, 0, 0),
(817, 25, 20, 0, 0),
(818, 25, 21, 0, 0),
(819, 25, 22, 0, 0),
(820, 25, 23, 0, 0),
(821, 25, 24, 0, 0),
(822, 25, 25, 0, 0),
(823, 25, 26, 0, 0),
(824, 25, 27, 0, 0),
(825, 25, 28, 0, 0),
(826, 25, 29, 0, 0),
(827, 25, 30, 0, 0),
(828, 25, 31, 0, 0),
(829, 25, 32, 0, 0),
(830, 25, 33, 0, 0),
(831, 25, 34, 0, 0),
(832, 25, 35, 0, 0),
(833, 25, 36, 0, 0),
(834, 25, 37, 0, 0),
(835, 25, 38, 0, 0),
(836, 25, 39, 0, 0),
(837, 25, 40, 0, 0),
(838, 25, 41, 0, 0),
(839, 25, 42, 0, 0),
(840, 25, 43, 0, 0),
(841, 25, 44, 0, 0),
(842, 25, 45, 0, 0),
(843, 25, 46, 0, 0),
(844, 25, 47, 0, 0),
(845, 25, 48, 0, 0),
(846, 25, 49, 0, 0),
(847, 25, 50, 0, 0),
(848, 25, 51, 0, 0),
(849, 25, 52, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`Appointment_ID`),
  ADD KEY `Doctor_schedule_ID` (`Doctor_schedule_ID`),
  ADD KEY `Patient_ID` (`Patient_ID`),
  ADD KEY `Doctor_ID` (`Doctor_ID`);

--
-- Indexes for table `appointmentresult`
--
ALTER TABLE `appointmentresult`
  ADD PRIMARY KEY (`AppointmentResult_ID`),
  ADD KEY `Appointment_ID` (`Appointment_ID`);

--
-- Indexes for table `appointmenttoothresult`
--
ALTER TABLE `appointmenttoothresult`
  ADD PRIMARY KEY (`AppointmentToothResult_ID`),
  ADD KEY `Appointment_ID` (`Appointment_ID`),
  ADD KEY `Tooth_ID` (`Tooth_ID`);

--
-- Indexes for table `appointment_services`
--
ALTER TABLE `appointment_services`
  ADD PRIMARY KEY (`appointment_services_ID`),
  ADD KEY `Services_ID` (`Services_ID`),
  ADD KEY `Appointment_ID` (`Appointment_ID`);

--
-- Indexes for table `assistant`
--
ALTER TABLE `assistant`
  ADD PRIMARY KEY (`Assistant_ID`);

--
-- Indexes for table `college`
--
ALTER TABLE `college`
  ADD PRIMARY KEY (`CollegeID`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`CourseID`),
  ADD KEY `CollegeID` (`CollegeID`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`Doctor_ID`);

--
-- Indexes for table `doctor_schedule`
--
ALTER TABLE `doctor_schedule`
  ADD PRIMARY KEY (`Doctor_schedule_ID`),
  ADD KEY `Assistant_ID` (`Assistant_ID`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`Patient_ID`),
  ADD KEY `Admin_ID` (`Assistant_ID`),
  ADD KEY `Assistant_ID` (`Assistant_ID`);

--
-- Indexes for table `patient_student`
--
ALTER TABLE `patient_student`
  ADD PRIMARY KEY (`PatientStudentID`),
  ADD KEY `Patient_ID` (`Patient_ID`),
  ADD KEY `CollegeID` (`CollegeID`),
  ADD KEY `CourseID` (`CourseID`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`Prescription_ID`),
  ADD KEY `Appointment_ID` (`Appointment_ID`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`Services_ID`);

--
-- Indexes for table `tooth`
--
ALTER TABLE `tooth`
  ADD PRIMARY KEY (`Tooth_ID`),
  ADD KEY `Patient_ID` (`Patient_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `Appointment_ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `appointmentresult`
--
ALTER TABLE `appointmentresult`
  MODIFY `AppointmentResult_ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `appointmenttoothresult`
--
ALTER TABLE `appointmenttoothresult`
  MODIFY `AppointmentToothResult_ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1709;

--
-- AUTO_INCREMENT for table `appointment_services`
--
ALTER TABLE `appointment_services`
  MODIFY `appointment_services_ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `assistant`
--
ALTER TABLE `assistant`
  MODIFY `Assistant_ID` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `college`
--
ALTER TABLE `college`
  MODIFY `CollegeID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `CourseID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `Doctor_ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `doctor_schedule`
--
ALTER TABLE `doctor_schedule`
  MODIFY `Doctor_schedule_ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `Patient_ID` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `patient_student`
--
ALTER TABLE `patient_student`
  MODIFY `PatientStudentID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `Prescription_ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `Services_ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tooth`
--
ALTER TABLE `tooth`
  MODIFY `Tooth_ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=850;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`Doctor_schedule_ID`) REFERENCES `doctor_schedule` (`Doctor_schedule_ID`),
  ADD CONSTRAINT `appointment_ibfk_2` FOREIGN KEY (`Patient_ID`) REFERENCES `patient` (`Patient_ID`),
  ADD CONSTRAINT `appointment_ibfk_4` FOREIGN KEY (`Doctor_ID`) REFERENCES `doctor` (`Doctor_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `appointmentresult`
--
ALTER TABLE `appointmentresult`
  ADD CONSTRAINT `appointmentresult_ibfk_1` FOREIGN KEY (`Appointment_ID`) REFERENCES `appointment` (`Appointment_ID`);

--
-- Constraints for table `appointmenttoothresult`
--
ALTER TABLE `appointmenttoothresult`
  ADD CONSTRAINT `appointmenttoothresult_ibfk_1` FOREIGN KEY (`Appointment_ID`) REFERENCES `appointment` (`Appointment_ID`),
  ADD CONSTRAINT `appointmenttoothresult_ibfk_2` FOREIGN KEY (`Tooth_ID`) REFERENCES `tooth` (`Tooth_ID`);

--
-- Constraints for table `appointment_services`
--
ALTER TABLE `appointment_services`
  ADD CONSTRAINT `appointment_services_ibfk_1` FOREIGN KEY (`Services_ID`) REFERENCES `services` (`Services_ID`),
  ADD CONSTRAINT `appointment_services_ibfk_2` FOREIGN KEY (`Appointment_ID`) REFERENCES `appointment` (`Appointment_ID`);

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`CollegeID`) REFERENCES `college` (`CollegeID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `doctor_schedule`
--
ALTER TABLE `doctor_schedule`
  ADD CONSTRAINT `doctor_schedule_ibfk_1` FOREIGN KEY (`Assistant_ID`) REFERENCES `assistant` (`Assistant_ID`);

--
-- Constraints for table `patient`
--
ALTER TABLE `patient`
  ADD CONSTRAINT `patient_ibfk_1` FOREIGN KEY (`Assistant_ID`) REFERENCES `assistant` (`Assistant_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `patient_student`
--
ALTER TABLE `patient_student`
  ADD CONSTRAINT `patient_student_ibfk_1` FOREIGN KEY (`Patient_ID`) REFERENCES `patient` (`Patient_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `patient_student_ibfk_2` FOREIGN KEY (`CollegeID`) REFERENCES `college` (`CollegeID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `patient_student_ibfk_3` FOREIGN KEY (`CourseID`) REFERENCES `course` (`CourseID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `prescription`
--
ALTER TABLE `prescription`
  ADD CONSTRAINT `prescription_ibfk_1` FOREIGN KEY (`Appointment_ID`) REFERENCES `appointment` (`Appointment_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tooth`
--
ALTER TABLE `tooth`
  ADD CONSTRAINT `tooth_ibfk_1` FOREIGN KEY (`Patient_ID`) REFERENCES `patient` (`Patient_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
