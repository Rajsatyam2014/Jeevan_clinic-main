-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2022 at 11:03 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hmisphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `his_accounts`
--

CREATE TABLE `his_accounts` (
  `acc_id` int(200) NOT NULL,
  `acc_name` varchar(200) DEFAULT NULL,
  `acc_desc` text,
  `acc_type` varchar(200) DEFAULT NULL,
  `acc_number` varchar(200) DEFAULT NULL,
  `acc_amount` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Dumping data for table `his_accounts`
--
INSERT INTO `his_accounts` (`acc_id`, `acc_name`, `acc_desc`, `acc_type`, `acc_number`, `acc_amount`) VALUES
(1, 'Cash Account', 'Primary cash account for daily transactions', 'Asset', 'ACC1001', '50000.00'),
(2, 'Accounts Receivable', 'Outstanding payments from patients or insurance companies', 'Asset', 'ACC1002', '120000.00'),
(3, 'Accounts Payable', 'Pending payments to vendors and suppliers', 'Liability', 'ACC2001', '30000.00'),
(4, 'Equipment Fund', 'Account reserved for purchasing and maintaining medical equipment', 'Asset', 'ACC1003', '150000.00'),
(5, 'Salary Account', 'Account for processing salaries of hospital staff and doctors', 'Expense', 'ACC3001', '80000.00'),
(6, 'Insurance Claims', 'Payments received from insurance claims', 'Income', 'ACC4001', '60000.00'),
(7, 'Miscellaneous Expenses', 'Account for miscellaneous or unforeseen expenses', 'Expense', 'ACC3002', '15000.00'),
(8, 'Donations Fund', 'Funds received from donors and philanthropists', 'Income', 'ACC4002', '200000.00');

-- --------------------------------------------------------

--
-- Table structure for table `his_admin`
--

CREATE TABLE `his_admin` (
  `ad_id` int(20) NOT NULL,
  `ad_fname` varchar(200) DEFAULT NULL,
  `ad_lname` varchar(200) DEFAULT NULL,
  `ad_email` varchar(200) DEFAULT NULL,
  `ad_pwd` varchar(200) DEFAULT NULL,
  `ad_dpic` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `his_admin`
--

INSERT INTO `his_admin` (`ad_id`, `ad_fname`, `ad_lname`, `ad_email`, `ad_pwd`, `ad_dpic`) VALUES
(1, 'System', 'Administrator', 'admin@mail.com', '4c7f5919e957f354d57243d37f223cf31e9e7181', 'doc-icon.png');

-- --------------------------------------------------------

--
-- Table structure for table `his_assets`
--

CREATE TABLE `his_assets` (
  `asst_id` int(20) NOT NULL,
  `asst_name` varchar(200) DEFAULT NULL,
  `asst_desc` longtext,
  `asst_vendor` varchar(200) DEFAULT NULL,
  `asst_status` varchar(200) DEFAULT NULL,
  `asst_dept` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `his_docs`
--

CREATE TABLE `his_docs` (
  `doc_id` int(20) NOT NULL,
  `doc_fname` varchar(200) DEFAULT NULL,
  `doc_lname` varchar(200) DEFAULT NULL,
  `doc_email` varchar(200) DEFAULT NULL,
  `doc_pwd` varchar(200) DEFAULT NULL,
  `doc_dept` varchar(200) DEFAULT NULL,
  `doc_number` varchar(200) DEFAULT NULL,
  `doc_dpic` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `his_docs`
--

INSERT INTO `his_docs` (`doc_id`, `doc_fname`, `doc_lname`, `doc_email`, `doc_pwd`, `doc_dept`, `doc_number`, `doc_dpic`) VALUES
(5, 'Aletha', 'White', 'aletha@mail.com', 'dce0b27ba675df41e9cc07af80ec59c475810824', 'Laboratory', 'BKTWQ', 'doctor_3430995.png'),
(6, 'Bryan', 'Arreola', 'bryan@mail.com', '55c3b5386c486feb662a0785f340938f518d547f', 'Surgery', 'YDS7L', 'user-default-2-min.png'),
(12, 'Jessica', 'Spencer', 'jessica@mail.com', 'dce0b27ba675df41e9cc07af80ec59c475810824', 'Gynecologist', '5VIFT', 'usric.png');

-- --------------------------------------------------------

--
-- Table structure for table `his_equipments`
--

CREATE TABLE `his_equipments` (
  `eqp_id` int(20) NOT NULL,
  `eqp_code` varchar(200) DEFAULT NULL,
  `eqp_name` varchar(200) DEFAULT NULL,
  `eqp_vendor` varchar(200) DEFAULT NULL,
  `eqp_desc` longtext,
  `eqp_dept` varchar(200) DEFAULT NULL,
  `eqp_status` varchar(200) DEFAULT NULL,
  `eqp_qty` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `his_equipments`
--

INSERT INTO `his_equipments` (`eqp_id`, `eqp_code`, `eqp_name`, `eqp_vendor`, `eqp_desc`, `eqp_dept`, `eqp_status`, `eqp_qty`) VALUES
(1, 'EQP001', 'MRI Machine', 'MedTech Corp', 'Magnetic Resonance Imaging (MRI) machine used for detailed imaging of organs and tissues.', 'Radiology', 'Operational', '2'),
(2, 'EQP002', 'X-Ray Machine', 'HealthEquip Ltd', 'Digital X-ray machine for capturing images of bones and internal organs.', 'Radiology', 'Operational', '5'),
(3, 'EQP003', 'Ventilator', 'Life Support Systems', 'Critical care equipment used to provide mechanical ventilation to patients.', 'ICU', 'Under Maintenance', '10'),
(4, 'EQP004', 'Defibrillator', 'HeartSafe Devices', 'Portable defibrillator used for emergency cardiac arrest situations.', 'Emergency', 'Operational', '8'),
(5, 'EQP005', 'Ultrasound Machine', 'Imaging Solutions Inc.', 'Ultrasound device for conducting sonography to visualize internal organs.', 'Radiology', 'Operational', '3'),
(6, 'EQP006', 'Surgical Lights', 'Surgery Essentials', 'Overhead lights used during surgical procedures to illuminate the surgical site.', 'Surgery', 'Operational', '12'),
(7, 'EQP007', 'Patient Monitor', 'CareTech Equipments', 'Vital signs monitor used to track patient health parameters like heart rate and blood pressure.', 'ICU', 'Operational', '15'),
(8, 'EQP008', 'Anesthesia Machine', 'Safe Med', 'Machine used to deliver anesthesia gases and maintain ventilation for surgical patients.', 'Operation Theatre', 'Operational', '4');

-- --------------------------------------------------------

--
-- Table structure for table `his_laboratory`
--

CREATE TABLE `his_laboratory` (
  `lab_id` int(20) NOT NULL,
  `lab_pat_name` varchar(200) DEFAULT NULL,
  `lab_pat_ailment` varchar(200) DEFAULT NULL,
  `lab_pat_number` varchar(200) DEFAULT NULL,
  `lab_pat_tests` longtext,
  `lab_pat_results` longtext,
  `lab_number` varchar(200) DEFAULT NULL,
  `lab_date_rec` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `his_laboratory`
--

INSERT INTO `his_laboratory` (`lab_id`, `lab_pat_name`, `lab_pat_ailment`, `lab_pat_number`, `lab_pat_tests`, `lab_pat_results`, `lab_number`, `lab_date_rec`) VALUES
(1, 'Aarav Patel', 'Diabetes', 'PAT001', '<ul><li>Blood Sugar Test</li><li>HbA1c Test</li></ul>', '<ul><li>Blood Sugar: 140 mg/dL</li><li>HbA1c: 7.2%</li></ul>', 'LAB001', '2023-08-01 10:30:00'),
(2, 'Isha Sharma', 'Hypertension', 'PAT002', '<ul><li>Complete Blood Count (CBC)</li><li>Electrolyte Panel</li></ul>', '<ul><li>CBC: Normal</li><li>Electrolyte Panel: Normal</li></ul>', 'LAB002', '2023-08-02 11:15:00'),
(3, 'Rajesh Kumar', 'COVID-19', 'PAT003', '<ul><li>RT-PCR Test</li></ul>', '<ul><li>RT-PCR: Negative</li></ul>', 'LAB003', '2023-08-03 09:45:00'),
(4, 'Neha Reddy', 'Malaria', 'PAT004', '<ul><li>Malaria Antigen Test</li></ul>', '<ul><li>Malaria Antigen: Positive</li></ul>', 'LAB004', '2023-08-04 14:00:00'),
(5, 'Ravi Mehta', 'Anemia', 'PAT005', '<ul><li>Complete Blood Count (CBC)</li><li>Iron Studies</li></ul>', '<ul><li>CBC: Low Hemoglobin</li><li>Iron Studies: Low Ferritin</li></ul>', 'LAB005', '2023-08-05 15:30:00'),
(6, 'Sita Verma', 'Kidney Stones', 'PAT006', '<ul><li>Urinalysis</li><li>CT Scan of Abdomen</li></ul>', '<ul><li>Urinalysis: Presence of Blood</li><li>CT Scan: Multiple Stones Detected</li></ul>', 'LAB006', '2023-08-06 12:10:00'),
(7, 'Arjun Singh', 'Thyroid Disorder', 'PAT007', '<ul><li>Thyroid Function Test (TFT)</li></ul>', '<ul><li>TFT: Elevated TSH Levels</li></ul>', 'LAB007', '2023-08-07 16:45:00');

-- --------------------------------------------------------

--
-- Table structure for table `his_medical_records`
--

CREATE TABLE `his_medical_records` (
  `mdr_id` int(20) NOT NULL,
  `mdr_number` varchar(200) DEFAULT NULL,
  `mdr_pat_name` varchar(200) DEFAULT NULL,
  `mdr_pat_adr` varchar(200) DEFAULT NULL,
  `mdr_pat_age` varchar(200) DEFAULT NULL,
  `mdr_pat_ailment` varchar(200) DEFAULT NULL,
  `mdr_pat_number` varchar(200) DEFAULT NULL,
  `mdr_pat_prescr` longtext,
  `mdr_date_rec` timestamp(4) NOT NULL DEFAULT CURRENT_TIMESTAMP(4) ON UPDATE CURRENT_TIMESTAMP(4)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `his_medical_records`
--
INSERT INTO `his_medical_records` (`mdr_id`, `mdr_number`, `mdr_pat_name`, `mdr_pat_adr`, `mdr_pat_age`, `mdr_pat_ailment`, `mdr_pat_number`, `mdr_pat_prescr`, `mdr_date_rec`) VALUES
(1, 'MR001', 'Aarav Patel', '123 Main Street, Ahmedabad', '45', 'Diabetes', 'PAT001', '<ul><li>Metformin 500mg twice daily</li><li>Insulin injection before meals</li></ul>', '2023-08-01 10:30:00'),
(2, 'MR002', 'Isha Sharma', '456 Elm Street, Bangalore', '38', 'Hypertension', 'PAT002', '<ul><li>Lisinopril 10mg once daily</li><li>Hydrochlorothiazide 25mg daily</li></ul>', '2023-08-02 11:15:00'),
(3, 'MR003', 'Rajesh Kumar', '789 Oak Avenue, Delhi', '52', 'COVID-19', 'PAT003', '<ul><li>Paracetamol 500mg every 6 hours as needed</li><li>Vitamin C 1000mg daily</li></ul>', '2023-08-03 09:45:00'),
(4, 'MR004', 'Neha Reddy', '101 Pine Road, Hyderabad', '29', 'Malaria', 'PAT004', '<ul><li>Artemisinin-based combination therapy (ACT)</li><li>Chloroquine 500mg</li></ul>', '2023-08-04 14:00:00'),
(5, 'MR005', 'Ravi Mehta', '202 Cedar Lane, Mumbai', '60', 'Anemia', 'PAT005', '<ul><li>Ferrous sulfate 325mg daily</li><li>Vitamin B12 supplements</li></ul>', '2023-08-05 15:30:00'),
(6, 'MR006', 'Sita Verma', '303 Birch Street, Jaipur', '34', 'Kidney Stones', 'PAT006', '<ul><li>NSAIDs for pain relief</li><li>Increased fluid intake</li></ul>', '2023-08-06 12:10:00'),
(7, 'MR007', 'Arjun Singh', '404 Maple Avenue, Kolkata', '47', 'Thyroid Disorder', 'PAT007', '<ul><li>Levothyroxine 50mcg daily</li><li>Regular thyroid function tests</li></ul>', '2023-08-07 16:45:00');

-- --------------------------------------------------------

--
-- Table structure for table `his_patients`
--

CREATE TABLE `his_patients` (
  `pat_id` int(20) NOT NULL,
  `pat_fname` varchar(200) DEFAULT NULL,
  `pat_lname` varchar(200) DEFAULT NULL,
  `pat_dob` varchar(200) DEFAULT NULL,
  `pat_age` varchar(200) DEFAULT NULL,
  `pat_number` varchar(200) DEFAULT NULL,
  `pat_addr` varchar(200) DEFAULT NULL,
  `pat_phone` varchar(200) DEFAULT NULL,
  `pat_type` varchar(200) DEFAULT NULL,
  `pat_date_joined` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `pat_ailment` varchar(200) DEFAULT NULL,
  `pat_discharge_status` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `his_patients`
--

INSERT INTO `his_patients` (`pat_id`, `pat_fname`, `pat_lname`, `pat_dob`, `pat_age`, `pat_number`, `pat_addr`, `pat_phone`, `pat_type`, `pat_date_joined`, `pat_ailment`, `pat_discharge_status`) VALUES
(1, 'Aarav', 'Patel', '1978-05-15', '45', 'PAT001', '123 Main Street, Ahmedabad', '9876543210', 'InPatient', '2023-08-01 10:30:00', 'Diabetes', 'Recovered'),
(2, 'Isha', 'Sharma', '1985-11-20', '38', 'PAT002', '456 Elm Street, Bangalore', '9123456789', 'OutPatient', '2023-08-02 11:15:00', 'Hypertension', 'Under Treatment'),
(3, 'Rajesh', 'Kumar', '1971-02-10', '52', 'PAT003', '789 Oak Avenue, Delhi', '9345678901', 'InPatient', '2023-08-03 09:45:00', 'COVID-19', 'Recovered'),
(4, 'Neha', 'Reddy', '1994-07-25', '29', 'PAT004', '101 Pine Road, Hyderabad', '9456789012', 'OutPatient', '2023-08-04 14:00:00', 'Malaria', 'Recovered'),
(5, 'Ravi', 'Mehta', '1963-09-30', '60', 'PAT005', '202 Cedar Lane, Mumbai', '9567890123', 'InPatient', '2023-08-05 15:30:00', 'Anemia', 'Under Treatment'),
(6, 'Sita', 'Verma', '1989-12-12', '34', 'PAT006', '303 Birch Street, Jaipur', '9678901234', 'OutPatient', '2023-08-06 12:10:00', 'Kidney Stones', 'Recovered'),
(7, 'Arjun', 'Singh', '1976-04-22', '47', 'PAT007', '404 Maple Avenue, Kolkata', '9789012345', 'InPatient', '2023-08-07 16:45:00', 'Thyroid Disorder', 'Under Treatment');

-- --------------------------------------------------------

--
-- Table structure for table `his_patient_transfers`
--

CREATE TABLE `his_patient_transfers` (
  `t_id` int(20) NOT NULL,
  `t_hospital` varchar(200) DEFAULT NULL,
  `t_date` varchar(200) DEFAULT NULL,
  `t_pat_name` varchar(200) DEFAULT NULL,
  `t_pat_number` varchar(200) DEFAULT NULL,
  `t_status` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Dumping data for table `his_patient_transfers`
INSERT INTO `his_patient_transfers` (`t_id`, `t_hospital`, `t_date`, `t_pat_name`, `t_pat_number`, `t_status`) VALUES
(1, 'City Hospital, Ahmedabad', '2023-08-01', 'Aarav Patel', 'PAT001', 'Transferred'),
(2, 'Royal Medical Center, Bangalore', '2023-08-02', 'Isha Sharma', 'PAT002', 'Under Transfer'),
(3, 'Apollo Hospital, Delhi', '2023-08-03', 'Rajesh Kumar', 'PAT003', 'Completed'),
(4, 'Care Hospital, Hyderabad', '2023-08-04', 'Neha Reddy', 'PAT004', 'Transferred'),
(5, 'Fortis Hospital, Mumbai', '2023-08-05', 'Ravi Mehta', 'PAT005', 'Pending');

-- --------------------------------------------------------
--
-- Table structure for table `his_payrolls`
--

CREATE TABLE `his_payrolls` (
  `pay_id` int(20) NOT NULL,
  `pay_number` varchar(200) DEFAULT NULL,
  `pay_doc_name` varchar(200) DEFAULT NULL,
  `pay_doc_number` varchar(200) DEFAULT NULL,
  `pay_doc_email` varchar(200) DEFAULT NULL,
  `pay_emp_salary` varchar(200) DEFAULT NULL,
  `pay_date_generated` timestamp(4) NOT NULL DEFAULT CURRENT_TIMESTAMP(4) ON UPDATE CURRENT_TIMESTAMP(4),
  `pay_status` varchar(200) DEFAULT NULL,
  `pay_descr` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `his_payrolls`
--

INSERT INTO `his_payrolls` (`pay_id`, `pay_number`, `pay_doc_name`, `pay_doc_number`, `pay_doc_email`, `pay_emp_salary`, `pay_date_generated`, `pay_status`, `pay_descr`) VALUES
(2, 'HUT1B', 'Henry Doe', 'N8TI0', 'henryd@hms.org', '7555', '2022-10-20 17:14:18.3708', 'Paid', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a,</p>'),
(3, 'T294L', 'Bryan Arreola', 'YDS7L', 'bryan@mail.com', '155000', '2022-10-20 17:14:50.5588', NULL, '<p>demo demo demo demo demo</p>'),
(4, '3UOXY', 'Jessica Spencer', '5VIFT', 'jessica@mail.com', '4150', '2022-10-22 11:04:36.9626', NULL, '<p>This is a demo payroll description for test!!</p>');

-- --------------------------------------------------------

--
-- Table structure for table `his_pharmaceuticals`
--

CREATE TABLE `his_pharmaceuticals` (
  `phar_id` int(20) NOT NULL,
  `phar_name` varchar(200) DEFAULT NULL,
  `phar_bcode` varchar(200) DEFAULT NULL,
  `phar_desc` longtext,
  `phar_qty` varchar(200) DEFAULT NULL,
  `phar_cat` varchar(200) DEFAULT NULL,
  `phar_vendor` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `his_pharmaceuticals`

INSERT INTO `his_pharmaceuticals` (`phar_id`, `phar_name`, `phar_bcode`, `phar_desc`, `phar_qty`, `phar_cat`, `phar_vendor`) VALUES
(1, 'Paracetamol', 'PCT1001', 'Pain reliever and fever reducer', '100', 'Analgesic', 'ABC Pharma'),
(2, 'Amoxicillin', 'AMX2002', 'Antibiotic used to treat bacterial infections', '50', 'Antibiotic', 'XYZ Healthcare'),
(3, 'Aspirin', 'ASP3003', 'Used to reduce pain, fever, or inflammation', '200', 'NSAID', 'MediCare Ltd.'),
(4, 'Metformin', 'MTF4004', 'Medication to control blood sugar in type 2 diabetes', '150', 'Antidiabetic', 'PharmaPlus'),
(5, 'Loratadine', 'LRT5005', 'Antihistamine for allergy relief', '75', 'Antihistamine', 'HealthCorp'),
(6, 'Ibuprofen', 'IBP6006', 'Nonsteroidal anti-inflammatory drug for pain relief', '120', 'NSAID', 'Wellness Inc.');

-- --------------------------------------------------------

--
-- Table structure for table `his_pharmaceuticals_categories`
--

CREATE TABLE `his_pharmaceuticals_categories` (
  `pharm_cat_id` int(20) NOT NULL,
  `pharm_cat_name` varchar(200) DEFAULT NULL,
  `pharm_cat_vendor` varchar(200) DEFAULT NULL,
  `pharm_cat_desc` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `his_pharmaceuticals_categories`
--
INSERT INTO `his_pharmaceuticals_categories` (`pharm_cat_id`, `pharm_cat_name`, `pharm_cat_vendor`, `pharm_cat_desc`) VALUES
(1, 'Analgesic', 'ABC Pharma', 'Medications that relieve pain without causing loss of consciousness.'),
(2, 'Antibiotic', 'XYZ Healthcare', 'Drugs used to treat bacterial infections.'),
(3, 'NSAID', 'MediCare Ltd.', 'Nonsteroidal anti-inflammatory drugs used to reduce pain, fever, and inflammation.'),
(4, 'Antidiabetic', 'PharmaPlus', 'Medications used to control blood sugar levels in patients with diabetes.'),
(5, 'Antihistamine', 'HealthCorp', 'Drugs used to relieve allergy symptoms.'),
(6, 'Antipyretic', 'Wellness Inc.', 'Medications used to prevent or reduce fever.');


-- --------------------------------------------------------

--
-- Table structure for table `his_prescriptions`
--

CREATE TABLE `his_prescriptions` (
  `pres_id` int(200) NOT NULL,
  `pres_pat_name` varchar(200) DEFAULT NULL,
  `pres_pat_age` varchar(200) DEFAULT NULL,
  `pres_pat_number` varchar(200) DEFAULT NULL,
  `pres_number` varchar(200) DEFAULT NULL,
  `pres_pat_addr` varchar(200) DEFAULT NULL,
  `pres_pat_type` varchar(200) DEFAULT NULL,
  `pres_date` timestamp(4) NOT NULL DEFAULT CURRENT_TIMESTAMP(4) ON UPDATE CURRENT_TIMESTAMP(4),
  `pres_pat_ailment` varchar(200) DEFAULT NULL,
  `pres_ins` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `his_prescriptions`
--

INSERT INTO `his_prescriptions` (`pres_id`, `pres_pat_name`, `pres_pat_age`, `pres_pat_number`, `pres_number`, `pres_pat_addr`, `pres_pat_type`, `pres_date`, `pres_pat_ailment`, `pres_ins`) VALUES
(1, 'Aarav Patel', '45', 'PAT001', 'PRC001', '123 Main Street, Ahmedabad', 'InPatient', '2023-08-01 10:30:00.0000', 'Diabetes', '<ul><li><a href="https://www.diabetes.org/treatment">Metformin</a> - 500mg twice daily</li><li><a href="https://www.diabetes.org/diet">Dietary Changes</a> - Low-carb diet</li></ul>'),
(2, 'Isha Sharma', '38', 'PAT002', 'PRC002', '456 Elm Street, Bangalore', 'OutPatient', '2023-08-02 11:15:00.0000', 'Hypertension', '<ul><li><a href="https://www.heart.org/en/health-topics/high-blood-pressure">Lisinopril</a> - 10mg once daily</li><li><a href="https://www.heart.org/en/healthy-living/healthy-eating/eat-smart">Low-sodium diet</a></li></ul>'),
(3, 'Rajesh Kumar', '52', 'PAT003', 'PRC003', '789 Oak Avenue, Delhi', 'InPatient', '2023-08-03 09:45:00.0000', 'COVID-19', '<ul><li><a href="https://www.cdc.gov/coronavirus/2019-ncov/treatment/index.html">Remdesivir</a> - IV infusion</li><li><a href="https://www.cdc.gov/coronavirus/2019-ncov/your-health/index.html">Supportive Care</a></li></ul>'),
(4, 'Neha Reddy', '29', 'PAT004', 'PRC004', '101 Pine Road, Hyderabad', 'OutPatient', '2023-08-04 14:00:00.0000', 'Malaria', '<ul><li><a href="https://www.who.int/news-room/fact-sheets/detail/malaria">Artemisinin-based Combination Therapy (ACT)</a> - 4 days course</li><li><a href="https://www.who.int/news-room/fact-sheets/detail/malaria">Antipyretics</a> - For fever relief</li></ul>'),
(5, 'Ravi Mehta', '60', 'PAT005', 'PRC005', '202 Cedar Lane, Mumbai', 'InPatient', '2023-08-05 15:30:00.0000', 'Anemia', '<ul><li><a href="https://www.mayoclinic.org/diseases-conditions/iron-deficiency-anemia/diagnosis-treatment/drc-20353751">Iron Supplements</a> - 325mg daily</li><li><a href="https://www.mayoclinic.org/diseases-conditions/iron-deficiency-anemia/diagnosis-treatment/drc-20353751">Vitamin C</a> - To enhance iron absorption</li></ul>'),
(6, 'Sita Verma', '34', 'PAT006', 'PRC006', '303 Birch Street, Jaipur', 'OutPatient', '2023-08-06 12:10:00.0000', 'Kidney Stones', '<ul><li><a href="https://www.kidney.org/atoz/content/kidneystones">Hydrochlorothiazide</a> - 12.5mg daily</li><li><a href="https://www.kidney.org/atoz/content/kidneystones">Increased Fluid Intake</a> - To aid stone passage</li></ul>'),
(7, 'Arjun Singh', '47', 'PAT007', 'PRC007', '404 Maple Avenue, Kolkata', 'InPatient', '2023-08-07 16:45:00.0000', 'Thyroid Disorder', '<ul><li><a href="https://www.thyroid.org/thyroid-disease/">Levothyroxine</a> - 50mcg daily</li><li><a href="https://www.thyroid.org/thyroid-disease/">Regular Thyroid Function Tests</a></li></ul>');

-- --------------------------------------------------------

--
-- Table structure for table `his_pwdresets`
--

CREATE TABLE `his_pwdresets` (
  `id` int(20) NOT NULL,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `his_surgery`
--

CREATE TABLE `his_surgery` (
  `s_id` int(200) NOT NULL,
  `s_number` varchar(200) DEFAULT NULL,
  `s_doc` varchar(200) DEFAULT NULL,
  `s_pat_number` varchar(200) DEFAULT NULL,
  `s_pat_name` varchar(200) DEFAULT NULL,
  `s_pat_ailment` varchar(200) DEFAULT NULL,
  `s_pat_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `s_pat_status` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `his_surgery`
--

INSERT INTO `his_surgery` (`s_id`, `s_number`, `s_doc`, `s_pat_number`, `s_pat_name`, `s_pat_ailment`, `s_pat_date`, `s_pat_status`) VALUES
(1, 'SURG001', 'Aletha White', 'PAT001', 'Aarav Patel', 'Appendicitis', '2023-08-01 08:00:00.000000', 'Completed'),
(2, 'SURG002', 'Bryan Arreola', 'PAT002', 'Isha Sharma', 'Hernia', '2023-08-02 09:30:00.000000', 'Completed'),
(3, 'SURG003', 'Jessica Spencer', 'PAT003', 'Rajesh Kumar', 'Gallbladder Stones', '2023-08-03 10:45:00.000000', 'In Progress'),
(4, 'SURG004', 'Aletha White', 'PAT004', 'Neha Reddy', 'Cesarean Section', '2023-08-04 11:15:00.000000', 'Completed'),
(5, 'SURG005', 'Bryan Arreola', 'PAT005', 'Ravi Mehta', 'Knee Replacement', '2023-08-05 13:00:00.000000', 'Scheduled'),
(6, 'SURG006', 'Jessica Spencer', 'PAT006', 'Sita Verma', 'Heart Bypass', '2023-08-06 14:30:00.000000', 'Completed'),
(7, 'SURG007', 'Aletha White', 'PAT007', 'Arjun Singh', 'Spinal Surgery', '2023-08-07 15:00:00.000000', 'Scheduled');

-- --------------------------------------------------------

--
-- Table structure for table `his_vendor`
--

CREATE TABLE `his_vendor` (
  `v_id` int(20) NOT NULL,
  `v_number` varchar(200) DEFAULT NULL,
  `v_name` varchar(200) DEFAULT NULL,
  `v_adr` varchar(200) DEFAULT NULL,
  `v_mobile` varchar(200) DEFAULT NULL,
  `v_email` varchar(200) DEFAULT NULL,
  `v_phone` varchar(200) DEFAULT NULL,
  `v_desc` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `his_vendor`
--

INSERT INTO `his_vendor` (`v_id`, `v_number`, `v_name`, `v_adr`, `v_mobile`, `v_email`, `v_phone`, `v_desc`) VALUES
(1, 'VEND001', 'Sree Medical Supplies', '1234 MG Road, Bangalore', '9876543210', 'sree.medical@mail.com', '080-12345678', 'Provides medical equipment and supplies.'),
(2, 'VEND002', 'MedTech Innovations', '5678 Industrial Estate, Mumbai', '9876543211', 'medtech.innovations@mail.com', '022-87654321', 'Supplier of advanced diagnostic machines.'),
(3, 'VEND003', 'HealthCare Solutions', '9101 Health Lane, Delhi', '9876543212', 'healthcare.solutions@mail.com', '011-23456789', 'Specializes in laboratory reagents and kits.'),
(4, 'VEND004', 'Pharma Equipments Pvt. Ltd.', '1213 Pharma Street, Hyderabad', '9876543213', 'pharma.equipments@mail.com', '040-34567890', 'Distributor of pharmaceuticals and medical devices.'),
(5, 'VEND005', 'Surgical Supplies Co.', '1415 Surgical Park, Chennai', '9876543214', 'surgical.supplies@mail.com', '044-45678901', 'Offers a wide range of surgical tools and instruments.');


-- --------------------------------------------------------

--
-- Table structure for table `his_vitals`
--

CREATE TABLE `his_vitals` (
  `vit_id` int(20) NOT NULL,
  `vit_number` varchar(200) DEFAULT NULL,
  `vit_pat_number` varchar(200) DEFAULT NULL,
  `vit_bodytemp` varchar(200) DEFAULT NULL,
  `vit_heartpulse` varchar(200) DEFAULT NULL,
  `vit_resprate` varchar(200) DEFAULT NULL,
  `vit_bloodpress` varchar(200) DEFAULT NULL,
  `vit_daterec` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `his_vitals`
--

INSERT INTO `his_vitals` (`vit_id`, `vit_number`, `vit_pat_number`, `vit_bodytemp`, `vit_heartpulse`, `vit_resprate`, `vit_bloodpress`, `vit_daterec`) VALUES
(1, 'VIT001', 'PAT001', '98.6°F', '72 bpm', '16 breaths/min', '120/80 mmHg', '2023-09-01 08:30:00.000000'),
(2, 'VIT002', 'PAT002', '99.1°F', '78 bpm', '18 breaths/min', '125/85 mmHg', '2023-09-01 09:00:00.000000'),
(3, 'VIT003', 'PAT003', '98.4°F', '70 bpm', '15 breaths/min', '115/75 mmHg', '2023-09-01 09:30:00.000000'),
(4, 'VIT004', 'PAT004', '100.2°F', '80 bpm', '20 breaths/min', '130/90 mmHg', '2023-09-01 10:00:00.000000'),
(5, 'VIT005', 'PAT005', '97.9°F', '68 bpm', '14 breaths/min', '110/70 mmHg', '2023-09-01 10:30:00.000000'),
(6, 'VIT006', 'PAT006', '98.7°F', '74 bpm', '17 breaths/min', '120/80 mmHg', '2023-09-01 11:00:00.000000'),
(7, 'VIT007', 'PAT007', '99.3°F', '76 bpm', '19 breaths/min', '125/85 mmHg', '2023-09-01 11:30:00.000000');




--
-- Indexes for dumped tables
--

--
-- Indexes for table `his_accounts`
--
ALTER TABLE `his_accounts`
  ADD PRIMARY KEY (`acc_id`);

--
-- Indexes for table `his_admin`
--
ALTER TABLE `his_admin`
  ADD PRIMARY KEY (`ad_id`);

--
-- Indexes for table `his_assets`
--
ALTER TABLE `his_assets`
  ADD PRIMARY KEY (`asst_id`);

--
-- Indexes for table `his_docs`
--
ALTER TABLE `his_docs`
  ADD PRIMARY KEY (`doc_id`);

--
-- Indexes for table `his_equipments`
--
ALTER TABLE `his_equipments`
  ADD PRIMARY KEY (`eqp_id`);

--
-- Indexes for table `his_laboratory`
--
ALTER TABLE `his_laboratory`
  ADD PRIMARY KEY (`lab_id`);

--
-- Indexes for table `his_medical_records`
--
ALTER TABLE `his_medical_records`
  ADD PRIMARY KEY (`mdr_id`);

--
-- Indexes for table `his_patients`
--
ALTER TABLE `his_patients`
  ADD PRIMARY KEY (`pat_id`);

--
-- Indexes for table `his_patient_transfers`
--
ALTER TABLE `his_patient_transfers`
  ADD PRIMARY KEY (`t_id`);

--
-- Indexes for table `his_payrolls`
--
ALTER TABLE `his_payrolls`
  ADD PRIMARY KEY (`pay_id`);

--
-- Indexes for table `his_pharmaceuticals`
--
ALTER TABLE `his_pharmaceuticals`
  ADD PRIMARY KEY (`phar_id`);

--
-- Indexes for table `his_pharmaceuticals_categories`
--
ALTER TABLE `his_pharmaceuticals_categories`
  ADD PRIMARY KEY (`pharm_cat_id`);

--
-- Indexes for table `his_prescriptions`
--
ALTER TABLE `his_prescriptions`
  ADD PRIMARY KEY (`pres_id`);

--
-- Indexes for table `his_pwdresets`
--
ALTER TABLE `his_pwdresets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `his_surgery`
--
ALTER TABLE `his_surgery`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `his_vendor`
--
ALTER TABLE `his_vendor`
  ADD PRIMARY KEY (`v_id`);

--
-- Indexes for table `his_vitals`
--
ALTER TABLE `his_vitals`
  ADD PRIMARY KEY (`vit_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `his_accounts`
--
ALTER TABLE `his_accounts`
  MODIFY `acc_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `his_admin`
--
ALTER TABLE `his_admin`
  MODIFY `ad_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `his_assets`
--
ALTER TABLE `his_assets`
  MODIFY `asst_id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `his_docs`
--
ALTER TABLE `his_docs`
  MODIFY `doc_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `his_equipments`
--
ALTER TABLE `his_equipments`
  MODIFY `eqp_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `his_laboratory`
--
ALTER TABLE `his_laboratory`
  MODIFY `lab_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `his_medical_records`
--
ALTER TABLE `his_medical_records`
  MODIFY `mdr_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `his_patients`
--
ALTER TABLE `his_patients`
  MODIFY `pat_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `his_patient_transfers`
--
ALTER TABLE `his_patient_transfers`
  MODIFY `t_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `his_payrolls`
--
ALTER TABLE `his_payrolls`
  MODIFY `pay_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `his_pharmaceuticals`
--
ALTER TABLE `his_pharmaceuticals`
  MODIFY `phar_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `his_pharmaceuticals_categories`
--
ALTER TABLE `his_pharmaceuticals_categories`
  MODIFY `pharm_cat_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `his_prescriptions`
--
ALTER TABLE `his_prescriptions`
  MODIFY `pres_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `his_pwdresets`
--
ALTER TABLE `his_pwdresets`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `his_surgery`
--
ALTER TABLE `his_surgery`
  MODIFY `s_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `his_vendor`
--
ALTER TABLE `his_vendor`
  MODIFY `v_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `his_vitals`
--
ALTER TABLE `his_vitals`
  MODIFY `vit_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
  
  
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
