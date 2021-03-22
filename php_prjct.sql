-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2021 at 01:09 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php_prjct`
--

-- --------------------------------------------------------

--
-- Table structure for table `applied_students`
--

CREATE TABLE `applied_students` (
  `applied_id` int(10) NOT NULL,
  `noti_id` int(10) NOT NULL,
  `stud_name` varchar(50) NOT NULL,
  `comp_name` varchar(50) NOT NULL,
  `comp_post` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `resume_file` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `applied_students`
--

INSERT INTO `applied_students` (`applied_id`, `noti_id`, `stud_name`, `comp_name`, `comp_post`, `email`, `resume_file`) VALUES
(6, 1, 'Joice Sara Joseph', 'abc company', 'java developer', 'joice@gmail.com', 'Rubiya A S_Res.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `complaint_tb`
--

CREATE TABLE `complaint_tb` (
  `complaint_id` int(5) NOT NULL,
  `complaint` varchar(100) NOT NULL,
  `complaint_date` date NOT NULL,
  `login_id` int(10) NOT NULL,
  `complaint_status` enum('0','1','2','3') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `complaint_tb`
--

INSERT INTO `complaint_tb` (`complaint_id`, `complaint`, `complaint_date`, `login_id`, `complaint_status`) VALUES
(1, 'Fan not working', '2021-02-18', 32, '1'),
(2, 'Electric problem', '2021-02-18', 32, '3'),
(3, 'Hii', '2021-02-18', 32, '0'),
(4, 'Electric problem', '2021-02-26', 33, '0'),
(5, 'Change bulb', '2021-02-26', 33, '0');

-- --------------------------------------------------------

--
-- Table structure for table `contact_tb`
--

CREATE TABLE `contact_tb` (
  `id` int(3) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(25) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_tb`
--

INSERT INTO `contact_tb` (`id`, `name`, `email`, `subject`, `message`) VALUES
(3, 'Meenu', 'meenu@gmail.com', 'uiux', 'When started this course?'),
(4, 'Lini', 'lini@gmail.com', 'JSD', 'Duration of the course?'),
(5, 'Anu', 'anu7@gmail.com', 'uiux', 'What is the qualifications of the course?');

-- --------------------------------------------------------

--
-- Table structure for table `exam_notifications`
--

CREATE TABLE `exam_notifications` (
  `exam_id` int(5) NOT NULL,
  `course` varchar(20) NOT NULL,
  `batch` varchar(20) NOT NULL,
  `exam_name` varchar(50) NOT NULL,
  `exam_type` varchar(20) NOT NULL,
  `exam_date_time` date NOT NULL,
  `duration` time(6) NOT NULL,
  `subjects` varchar(100) NOT NULL,
  `total_mark` int(3) NOT NULL,
  `login_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exam_notifications`
--

INSERT INTO `exam_notifications` (`exam_id`, `course`, `batch`, `exam_name`, `exam_type`, `exam_date_time`, `duration`, `subjects`, `total_mark`, `login_id`) VALUES
(3, 'JSD', 'DDUGKY', 'Assesment1', 'Written', '2021-02-23', '00:00:00.000000', 'PHP,Python,CI', 50, 25),
(4, 'JSD', 'DDUGKY', 'Assesment1', 'Practical', '2021-03-01', '00:00:00.000000', 'PHP,CI', 25, 25);

-- --------------------------------------------------------

--
-- Table structure for table `faculty_details`
--

CREATE TABLE `faculty_details` (
  `emp_id` varchar(20) NOT NULL,
  `fac_fname` varchar(20) NOT NULL,
  `fac_mname` varchar(20) NOT NULL,
  `fac_lname` varchar(20) NOT NULL,
  `login_id` int(10) NOT NULL,
  `designation` varchar(30) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `address` varchar(40) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `district` varchar(20) NOT NULL,
  `qualification` varchar(40) NOT NULL,
  `age` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty_details`
--

INSERT INTO `faculty_details` (`emp_id`, `fac_fname`, `fac_mname`, `fac_lname`, `login_id`, `designation`, `subject`, `address`, `gender`, `district`, `qualification`, `age`) VALUES
('orisys01', 'Shani', 'Elsa', 'Mathew', 30, 'Trainer', '', '', '', '', '', 0),
('orisys02', 'Anjaly   ', 'T   ', 'R   ', 25, 'Trainer', 'Laravel', 'anjalyhome', 'Female', 'Thrissur', 'MCA', 24),
('orisys03', 'Anu', 'M', 'Thomas', 38, 'Developer', '', '', '', '', '', 0),
('orisys05', 'Nissy', 'M', 'Sam', 36, 'Developer', '', '', '', '', '', 0),
('orisys06', 'Neethu', '', 'Vijayan', 34, 'Trainer', '', '', '', '', '', 0),
('orisys08', 'Anish', 'G', 'S', 37, 'Trainer', '', '', '', '', '', 0),
('orisys09', 'Nissy ', ' ', 'M ', 40, 'Developer', 'Core PHP', 'Nissy Home', 'Female', 'Ernakulam', 'MSc C.S', 24);

-- --------------------------------------------------------

--
-- Table structure for table `login_page`
--

CREATE TABLE `login_page` (
  `login_id` int(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `user_type` enum('0','1','2') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login_page`
--

INSERT INTO `login_page` (`login_id`, `email`, `password`, `user_type`) VALUES
(8, 'admin', 'admin', '0'),
(25, 'anjaly@gmail.com', 'anju', '1'),
(30, 'shani@gmail.com', 'Shani@123', '1'),
(32, 'joice@gmail.com', '123', '2'),
(33, 'sony@gmail.com', '123', '2'),
(34, 'neethu@gmail.com', '123', '1'),
(35, 'rinu@gmail.com', '123', '2'),
(36, 'nissy1@gmail.com', 'nissy', '1'),
(37, 'anish2@gmail.com', 'anish2', '1'),
(38, 'anu5@gmail.com', 'anumt', '1'),
(39, 'blessy1@gmail.com', 'blessy1', '2'),
(40, 'nissy@gmail.com', '123', '1');

-- --------------------------------------------------------

--
-- Table structure for table `notes_tb`
--

CREATE TABLE `notes_tb` (
  `notes_id` int(10) NOT NULL,
  `login_id` varchar(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `notes` text NOT NULL,
  `upload_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notes_tb`
--

INSERT INTO `notes_tb` (`notes_id`, `login_id`, `name`, `email`, `subject`, `notes`, `upload_date`) VALUES
(1, '25', 'Anjaly  T  R ', 'anjaly@gmail.com', 'Core PHP', 'newwords(23-01-2021).pdf', '2021-02-25'),
(2, '25', 'Anjaly  T  R ', 'anjaly@gmail.com', 'Core PHP', 'newwords(24-01-2021).pdf', '2021-02-25'),
(3, '25', 'Anjaly  T  R ', 'anjaly@gmail.com', 'Core PHP', 'Akhila  V S Resume.pdf', '2021-02-26'),
(4, '25', 'Anjaly   T   R  ', 'anjaly@gmail.com', 'Core PHP', 'HR Interview questions for IT professionals.pdf', '2021-02-26');

-- --------------------------------------------------------

--
-- Table structure for table `plcementnotificatiob_tb`
--

CREATE TABLE `plcementnotificatiob_tb` (
  `noti_id` int(10) NOT NULL,
  `company_name` varchar(40) NOT NULL,
  `company_post` varchar(30) NOT NULL,
  `expeirience` varchar(10) NOT NULL,
  `add_date` date NOT NULL,
  `plcement_date` date NOT NULL,
  `last_date_to_apply` date NOT NULL,
  `qualifications` varchar(60) NOT NULL,
  `login_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plcementnotificatiob_tb`
--

INSERT INTO `plcementnotificatiob_tb` (`noti_id`, `company_name`, `company_post`, `expeirience`, `add_date`, `plcement_date`, `last_date_to_apply`, `qualifications`, `login_id`) VALUES
(1, 'abc company', 'java developer', '0', '2021-02-20', '2021-02-28', '2021-02-24', 'BTech,MCA', 8),
(2, 'abc company', 'software developer-Java', '0-1', '2021-02-24', '2021-03-10', '2021-03-06', 'BTech,MCA', 8),
(3, 'orisys india', 'php developer', '0-1', '2021-02-26', '2021-03-12', '2021-03-04', 'BTech,MCA,BSc', 8),
(4, 'Infotech', 'FrontEnd-Developer', '0-1year', '2021-02-26', '2021-03-05', '2021-02-28', 'BTech,MCA', 8);

-- --------------------------------------------------------

--
-- Table structure for table `result_tb`
--

CREATE TABLE `result_tb` (
  `result_id` int(10) NOT NULL,
  `enroll_id` varchar(40) NOT NULL,
  `exam_date` date NOT NULL,
  `exam_name` varchar(40) NOT NULL,
  `exam_type` varchar(30) NOT NULL,
  `obtained_mark` varchar(10) NOT NULL,
  `result_date` date NOT NULL,
  `stud_name` varchar(50) NOT NULL,
  `subjects` varchar(50) NOT NULL,
  `tot_mark` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `result_tb`
--

INSERT INTO `result_tb` (`result_id`, `enroll_id`, `exam_date`, `exam_name`, `exam_type`, `obtained_mark`, `result_date`, `stud_name`, `subjects`, `tot_mark`) VALUES
(1, 'DDU2020GKY01', '2021-02-23', 'Assesment1', 'Written', '25', '2021-02-26', 'Joice Sara Joseph', 'PHP,Python,CI', 50),
(2, 'DDU2020GKY02', '2021-03-01', 'Assesment1', 'Practical', '23', '2021-02-26', 'Sony K P', 'PHP,CI', 25);

-- --------------------------------------------------------

--
-- Table structure for table `student_details`
--

CREATE TABLE `student_details` (
  `enrollment_id` varchar(20) NOT NULL,
  `stud_fname` varchar(20) NOT NULL,
  `stud_mname` varchar(20) NOT NULL,
  `stud_lname` varchar(20) NOT NULL,
  `login_id` int(10) NOT NULL,
  `batch` varchar(30) NOT NULL,
  `course` varchar(20) NOT NULL,
  `startTime` date NOT NULL,
  `endTime` date NOT NULL,
  `address` varchar(40) NOT NULL,
  `district` varchar(20) NOT NULL,
  `pg` varchar(30) NOT NULL,
  `cgpa_PG` int(10) NOT NULL,
  `uni_insti_pg` varchar(40) NOT NULL,
  `yop_pg` date DEFAULT NULL,
  `ug` varchar(30) NOT NULL,
  `cgpa_UG` varchar(10) NOT NULL,
  `uni_insti_ug` varchar(40) NOT NULL,
  `yop_ug` date DEFAULT NULL,
  `plustwo` varchar(40) NOT NULL,
  `cgpa_plustwo` varchar(10) NOT NULL,
  `brd_school_plus` varchar(40) NOT NULL,
  `yop_plus` date DEFAULT NULL,
  `sslc` varchar(40) NOT NULL,
  `cgpa_sslc` varchar(10) NOT NULL,
  `brd_schl_sslc` varchar(40) NOT NULL,
  `yop_sslc` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_details`
--

INSERT INTO `student_details` (`enrollment_id`, `stud_fname`, `stud_mname`, `stud_lname`, `login_id`, `batch`, `course`, `startTime`, `endTime`, `address`, `district`, `pg`, `cgpa_PG`, `uni_insti_pg`, `yop_pg`, `ug`, `cgpa_UG`, `uni_insti_ug`, `yop_ug`, `plustwo`, `cgpa_plustwo`, `brd_school_plus`, `yop_plus`, `sslc`, `cgpa_sslc`, `brd_schl_sslc`, `yop_sslc`) VALUES
('DDU2020GKY01', 'Joice', 'Sara', 'Joseph', 32, 'DDUGKY', 'JSD', '2020-12-11', '2021-04-07', 'joicehome', 'Kottayam', 'MCA', 8, 'KTU', '2019-05-31', 'BSc C.S', '6.71', 'mahatma gandhi', '2019-05-31', 'Plus Two', '70%', 'State Board', '2013-03-31', 'SSLC', '70%', 'State Board', '2011-03-31'),
('DDU2020GKY02', 'Sony', 'K', 'P', 33, 'DDUGKY', 'JSD', '2020-12-01', '2021-04-07', '', '', '', 0, '0', NULL, '0', '0', '0', NULL, '', '', '', NULL, '', '', '', NULL),
('DDU2020GKY05', 'Rineesha', '', 'Riyas', 35, 'DDUGKY', 'JSD', '2020-12-01', '2021-04-03', '', '', '', 0, '', NULL, '', '', '', NULL, '', '', '', NULL, '', '', '', NULL),
('Yuva02', 'Blessy', 'M', 'John', 39, 'YUVAKERALA', 'UI-developer', '2021-02-01', '2021-05-05', '', '', '', 0, '', NULL, '', '', '', NULL, '', '', '', NULL, '', '', '', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applied_students`
--
ALTER TABLE `applied_students`
  ADD PRIMARY KEY (`applied_id`),
  ADD KEY `noti_id` (`noti_id`);

--
-- Indexes for table `complaint_tb`
--
ALTER TABLE `complaint_tb`
  ADD PRIMARY KEY (`complaint_id`);

--
-- Indexes for table `contact_tb`
--
ALTER TABLE `contact_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_notifications`
--
ALTER TABLE `exam_notifications`
  ADD PRIMARY KEY (`exam_id`);

--
-- Indexes for table `faculty_details`
--
ALTER TABLE `faculty_details`
  ADD PRIMARY KEY (`emp_id`),
  ADD KEY `login_id` (`login_id`);

--
-- Indexes for table `login_page`
--
ALTER TABLE `login_page`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `notes_tb`
--
ALTER TABLE `notes_tb`
  ADD PRIMARY KEY (`notes_id`);

--
-- Indexes for table `plcementnotificatiob_tb`
--
ALTER TABLE `plcementnotificatiob_tb`
  ADD PRIMARY KEY (`noti_id`);

--
-- Indexes for table `result_tb`
--
ALTER TABLE `result_tb`
  ADD PRIMARY KEY (`result_id`);

--
-- Indexes for table `student_details`
--
ALTER TABLE `student_details`
  ADD PRIMARY KEY (`enrollment_id`),
  ADD KEY `login_id` (`login_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applied_students`
--
ALTER TABLE `applied_students`
  MODIFY `applied_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `complaint_tb`
--
ALTER TABLE `complaint_tb`
  MODIFY `complaint_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contact_tb`
--
ALTER TABLE `contact_tb`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `exam_notifications`
--
ALTER TABLE `exam_notifications`
  MODIFY `exam_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `login_page`
--
ALTER TABLE `login_page`
  MODIFY `login_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `notes_tb`
--
ALTER TABLE `notes_tb`
  MODIFY `notes_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `plcementnotificatiob_tb`
--
ALTER TABLE `plcementnotificatiob_tb`
  MODIFY `noti_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `result_tb`
--
ALTER TABLE `result_tb`
  MODIFY `result_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applied_students`
--
ALTER TABLE `applied_students`
  ADD CONSTRAINT `applied_students_ibfk_1` FOREIGN KEY (`noti_id`) REFERENCES `plcementnotificatiob_tb` (`noti_id`);

--
-- Constraints for table `faculty_details`
--
ALTER TABLE `faculty_details`
  ADD CONSTRAINT `faculty_details_ibfk_1` FOREIGN KEY (`login_id`) REFERENCES `login_page` (`login_id`);

--
-- Constraints for table `student_details`
--
ALTER TABLE `student_details`
  ADD CONSTRAINT `student_details_ibfk_1` FOREIGN KEY (`login_id`) REFERENCES `login_page` (`login_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
