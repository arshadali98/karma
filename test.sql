-- It is assumed that database `karma` is already created by the user and all
-- the tables have been created within the database by sequelize.

-- create entity_type `college`
INSERT INTO `entity_types` (`id`, `entity_type`, `entity_type_slug`, `created_at`, `updated_at`) VALUES (NULL, 'College', 'college', CURRENT_TIME(), CURRENT_TIME());

-- create entity `College of Engineering Trivandrum
INSERT INTO `entities` (`id`, `entity_name`, `entity_slug`, `entity_type_id`, `created_at`, `updated_at`) VALUES (NULL, 'College of Engineering Trivandrum', 'cet', '1', CURRENT_TIME(), CURRENT_TIME());

-- create inital menu for `cet`
INSERT INTO `menu_data` (`id`, `entity_id`, `menu_type`, `menu_title`, `created_at`, `updated_at`) VALUES (NULL, '1', '1', NULL, CURRENT_TIME(), CURRENT_TIME());

-- insert menu elements -- start
INSERT INTO `menu_elements` (`id`, `menu_id`, `position`, `item_name`, `item_url`, `created_at`, `updated_at`) VALUES (NULL, '1', '1', 'News', '/news', CURRENT_TIME(), CURRENT_TIME());

INSERT INTO `menu_elements` (`id`, `menu_id`, `position`, `item_name`, `item_url`, `created_at`, `updated_at`) VALUES (NULL, '1', '2', 'Events', '/events', CURRENT_TIME(), CURRENT_TIME());

INSERT INTO `menu_elements` (`id`, `menu_id`, `position`, `item_name`, `item_url`, `created_at`, `updated_at`) VALUES (NULL, '1', '3', 'Academics', '/academics', CURRENT_TIME(), CURRENT_TIME());
INSERT INTO `menu_elements` (`id`, `menu_id`, `position`, `item_name`, `item_url`, `created_at`, `updated_at`) VALUES (NULL, '1', '1', 'Programmes', '/academics/programmes', CURRENT_TIME(), CURRENT_TIME());
INSERT INTO `menu_elements` (`id`, `menu_id`, `position`, `item_name`, `item_url`, `created_at`, `updated_at`) VALUES (NULL, '1', '2', 'Admissions', '/academics/admissions', CURRENT_TIME(), CURRENT_TIME());
INSERT INTO `menu_elements` (`id`, `menu_id`, `position`, `item_name`, `item_url`, `created_at`, `updated_at`) VALUES (NULL, '1', '3', 'Departments', '/academics/departments', CURRENT_TIME(), CURRENT_TIME());
INSERT INTO `menu_elements` (`id`, `menu_id`, `position`, `item_name`, `item_url`, `created_at`, `updated_at`) VALUES (NULL, '1', '4', 'People', '/academics/people', CURRENT_TIME(), CURRENT_TIME());

INSERT INTO `menu_elements` (`id`, `menu_id`, `position`, `item_name`, `item_url`, `created_at`, `updated_at`) VALUES (NULL, '1', '4', 'Research', '/research', CURRENT_TIME(), CURRENT_TIME());

INSERT INTO `menu_elements` (`id`, `menu_id`, `position`, `item_name`, `item_url`, `created_at`, `updated_at`) VALUES (NULL, '1', '5', 'Campus Life', '/campus_life', CURRENT_TIME(), CURRENT_TIME());
INSERT INTO `menu_elements` (`id`, `menu_id`, `position`, `item_name`, `item_url`, `created_at`, `updated_at`) VALUES (NULL, '1', '1', 'Fests', '/campus_life/fests', CURRENT_TIME(), CURRENT_TIME());
INSERT INTO `menu_elements` (`id`, `menu_id`, `position`, `item_name`, `item_url`, `created_at`, `updated_at`) VALUES (NULL, '1', '2', 'College Union', '/campus_life/college_union', CURRENT_TIME(), CURRENT_TIME());
INSERT INTO `menu_elements` (`id`, `menu_id`, `position`, `item_name`, `item_url`, `created_at`, `updated_at`) VALUES (NULL, '1', '3', 'Clubs', '/campus_life/clubs', CURRENT_TIME(), CURRENT_TIME());

INSERT INTO `menu_elements` (`id`, `menu_id`, `position`, `item_name`, `item_url`, `created_at`, `updated_at`) VALUES (NULL, '1', '6', 'Facilities', '/facilities', CURRENT_TIME(), CURRENT_TIME());
INSERT INTO `menu_elements` (`id`, `menu_id`, `position`, `item_name`, `item_url`, `created_at`, `updated_at`) VALUES (NULL, '1', '1', 'Technical Library', '/facilities/technical_library', CURRENT_TIME(), CURRENT_TIME());
INSERT INTO `menu_elements` (`id`, `menu_id`, `position`, `item_name`, `item_url`, `created_at`, `updated_at`) VALUES (NULL, '1', '2', 'Placement Cell(CGPU)', '/facilities/placement_cell', CURRENT_TIME(), CURRENT_TIME());
INSERT INTO `menu_elements` (`id`, `menu_id`, `position`, `item_name`, `item_url`, `created_at`, `updated_at`) VALUES (NULL, '1', '3', 'Central Computing Facility(CCF)', '/facilities/central_computing_facility', CURRENT_TIME(), CURRENT_TIME());
INSERT INTO `menu_elements` (`id`, `menu_id`, `position`, `item_name`, `item_url`, `created_at`, `updated_at`) VALUES (NULL, '1', '4', 'Bosch Rexroth', '/facilities/bosch_rexroth', CURRENT_TIME(), CURRENT_TIME());
INSERT INTO `menu_elements` (`id`, `menu_id`, `position`, `item_name`, `item_url`, `created_at`, `updated_at`) VALUES (NULL, '1', '5', 'Refrigerator and AC Maintenance Unit', '/facilities/refrigerator_and_ac_maintenance_unit', CURRENT_TIME(), CURRENT_TIME());
INSERT INTO `menu_elements` (`id`, `menu_id`, `position`, `item_name`, `item_url`, `created_at`, `updated_at`) VALUES (NULL, '1', '6', 'Centre for Continuing Education(CCE)', '/facilities/centre_for_continuing_education', CURRENT_TIME(), CURRENT_TIME());
INSERT INTO `menu_elements` (`id`, `menu_id`, `position`, `item_name`, `item_url`, `created_at`, `updated_at`) VALUES (NULL, '1', '7', 'Hostels', '/facilities/hostels', CURRENT_TIME(), CURRENT_TIME());
INSERT INTO `menu_elements` (`id`, `menu_id`, `position`, `item_name`, `item_url`, `created_at`, `updated_at`) VALUES (NULL, '1', '8', 'Guest House', '/facilities/guest_house', CURRENT_TIME(), CURRENT_TIME());

INSERT INTO `menu_elements` (`id`, `menu_id`, `position`, `item_name`, `item_url`, `created_at`, `updated_at`) VALUES (NULL, '1', '7', 'About', '/about', CURRENT_TIME(), CURRENT_TIME());

INSERT INTO `menu_elements` (`id`, `menu_id`, `position`, `item_name`, `item_url`, `created_at`, `updated_at`) VALUES (NULL, '1', '8', 'Search', '/search', CURRENT_TIME(), CURRENT_TIME());
-- insert menu elements -- end

-- insert parent child association of menu elements -- start
INSERT INTO `menu_parent_child_associations` (`id`, `parent_id`, `child_id`, `created_at`, `updated_at`) VALUES (NULL, '3', '4', CURRENT_TIME(), CURRENT_TIME());
INSERT INTO `menu_parent_child_associations` (`id`, `parent_id`, `child_id`, `created_at`, `updated_at`) VALUES (NULL, '3', '5', CURRENT_TIME(), CURRENT_TIME());
INSERT INTO `menu_parent_child_associations` (`id`, `parent_id`, `child_id`, `created_at`, `updated_at`) VALUES (NULL, '3', '6', CURRENT_TIME(), CURRENT_TIME());
INSERT INTO `menu_parent_child_associations` (`id`, `parent_id`, `child_id`, `created_at`, `updated_at`) VALUES (NULL, '3', '7', CURRENT_TIME(), CURRENT_TIME());

INSERT INTO `menu_parent_child_associations` (`id`, `parent_id`, `child_id`, `created_at`, `updated_at`) VALUES (NULL, '9', '10', CURRENT_TIME(), CURRENT_TIME());
INSERT INTO `menu_parent_child_associations` (`id`, `parent_id`, `child_id`, `created_at`, `updated_at`) VALUES (NULL, '9', '11', CURRENT_TIME(), CURRENT_TIME());
INSERT INTO `menu_parent_child_associations` (`id`, `parent_id`, `child_id`, `created_at`, `updated_at`) VALUES (NULL, '9', '12', CURRENT_TIME(), CURRENT_TIME());

INSERT INTO `menu_parent_child_associations` (`id`, `parent_id`, `child_id`, `created_at`, `updated_at`) VALUES (NULL, '13', '14', CURRENT_TIME(), CURRENT_TIME());
INSERT INTO `menu_parent_child_associations` (`id`, `parent_id`, `child_id`, `created_at`, `updated_at`) VALUES (NULL, '13', '15', CURRENT_TIME(), CURRENT_TIME());
INSERT INTO `menu_parent_child_associations` (`id`, `parent_id`, `child_id`, `created_at`, `updated_at`) VALUES (NULL, '13', '16', CURRENT_TIME(), CURRENT_TIME());
INSERT INTO `menu_parent_child_associations` (`id`, `parent_id`, `child_id`, `created_at`, `updated_at`) VALUES (NULL, '13', '17', CURRENT_TIME(), CURRENT_TIME());
INSERT INTO `menu_parent_child_associations` (`id`, `parent_id`, `child_id`, `created_at`, `updated_at`) VALUES (NULL, '13', '18', CURRENT_TIME(), CURRENT_TIME());
INSERT INTO `menu_parent_child_associations` (`id`, `parent_id`, `child_id`, `created_at`, `updated_at`) VALUES (NULL, '13', '19', CURRENT_TIME(), CURRENT_TIME());
INSERT INTO `menu_parent_child_associations` (`id`, `parent_id`, `child_id`, `created_at`, `updated_at`) VALUES (NULL, '13', '20', CURRENT_TIME(), CURRENT_TIME());
INSERT INTO `menu_parent_child_associations` (`id`, `parent_id`, `child_id`, `created_at`, `updated_at`) VALUES (NULL, '13', '21', CURRENT_TIME(), CURRENT_TIME());
-- insert parent child association of menu elements -- end

-- insert about information slug
INSERT INTO `entity_information_slugs` (`id`, `slug_name`, `created_at`, `updated_at`) VALUES (NULL, 'about', CURRENT_TIME(), CURRENT_TIME());

-- insert academics_entities information slug
INSERT INTO `entity_information_slugs` (`id`, `slug_name`, `created_at`, `updated_at`) VALUES (NULL, 'academics_admissions', CURRENT_TIME(), CURRENT_TIME());

-- insert administration information slug
INSERT INTO `entity_information_slugs` (`id`, `slug_name`, `created_at`, `updated_at`) VALUES (NULL, 'administration', CURRENT_TIME(), CURRENT_TIME());

INSERT INTO `entity_information` (`id`, `entity_id`, `slug_id`, `data`, `created_at`, `updated_at`) VALUES (NULL, '1', '1', '{\"vision\": \"National Level Excellence and International Visibility in Every facet of Engineering Education.\", \"heading\": \"Admissions\", \"mission\": \"To facilitate Quality Engineering Education to Equip and Enrich Young Men and Women to Meet Global Challenges in Development, Innovation and Application of Technology in the Service of Humanity\", \"beginning\": \"beginning\", \"description\": \"College of Engineering Trivandrum(CET) offers degree programmes at the undergraduate (UG), postgraduate (PG) and doctorate (PhD) level. Besides offering programmes majorly in the streams of Engineering and Technology, the college also offers Architecture, Management and Computer Application programmes.  At the UG level, the BTech programmes are offered in the following specializations:      BTech in Civil Engineering     BTech in Electrical & electronics Engineering     BTech in Electronics & Communication Engineering     BTech in Applied Electronics & Instrumentation     BTech in Mechanical Engineering     BTech in Industrial  Engineering     BTech in Computer Science and Engineering  COE BTech Admission Minimum Eligibility Criteria 2018      Aspirants must have secured a minimum of 50% marks in PCM and 50% marks in Mathematics separately.     Aspirants must have passed Class 12th with Chemistry, Physics, Mathematics as mandatory subjects.     Besides the above, aspirants must also comply with the eligibility requirements of KEAM as admissions to BTech programmes at COE is based on this exam.  For more details of KEAM eligibility criteria, click the link above.  COE BTech Admission and Selection Process 2018  To secure admissions to BTech programmes at College of Engineering Trivandrum, aspirants must have qualified KEAM(Kerala Engineering, Architecture and Medical Entrance Exam) conducted by the Commissioner for Entrance Exams (CEE).\"}', CURRENT_TIME(), CURRENT_TIME());

INSERT INTO `entity_information` (`id`, `entity_id`, `slug_id`, `data`, `created_at`, `updated_at`) VALUES
(2, 1, 2, '{\"rti\": {\"links\": [{\"url\": \"#\", \"title\": \"Appellate Authority\"}, {\"url\": \"#\", \"title\": \"Assistant Public Information Officer\"}, {\"url\": \"#\", \"title\": \"Public Information Officer\"}, {\"url\": \"#\", \"title\": \"Office of the Evening Courses\"}], \"title\": \"Right to Information\", \"description\": \"\"}, \"heading\": \"Administration\", \"offices\": {\"links\": [{\"url\": \"#\", \"title\": \"College Office\"}, {\"url\": \"#\", \"title\": \"Hostel Office\"}, {\"url\": \"#\", \"title\": \"Technical Documentation Center\"}, {\"url\": \"#\", \"title\": \"Office of the Evening Courses\"}], \"title\": \"Administrative Offices\", \"description\": \"College of Engineering Trivandrums administrative offices are essential to supporting the operations and mission of the college. They deal with a diverse range of issues including human resources, financial activities, research administration and student affairs.\"}, \"governance\": {\"links\": [{\"url\": \"#\", \"title\": \"Office of the Principal\"}, {\"url\": \"#\", \"title\": \"Office of the UG Dean\"}, {\"url\": \"#\", \"title\": \"Office of the PG Dean\"}, {\"url\": \"#\", \"title\": \"Office of the Research Dean\"}], \"title\": \"Governance\", \"description\": \"College of Engineering Trivandrum is led by the Principal, Deans and the College Council.\"}}', '2018-08-07 00:00:00', '2018-08-07 13:41:53'),
(3, 1, 3, '{\"vision\": \"To facilitate Quality Engineering Education to Equip and Enrich Young Men and Women to Meet Global challenges in Development, Innovation and Application of Technology in the service of Humanity.\", \"heading\": \"About CET\", \"mission\": \"National Level Excellence and International Visibility in every facet of Engineering Education.\", \"beginning\": \"The College of Engineering, Trivandrum was established in 1939 as the first Engineering College in the then Travancore State. The first classes were started on 3rd July 1939 during the reign of the Travancore King, Sri Chithira Thirunal Balarama Varma and as the head of the then Travancore state he deserves his share of credit in the establishment of the college. Initially the College was housed in the former office and bungalow of the Chief Engineer (present PMG Office). Maj T.H. Mathewman, a Britisher was the first Principal. Started as a constituent College of Travancore University, the College had an initial intake of 21 students each for Degree and Diploma courses in Civil, Mechanical and Electrical branches. With the establishment of the Directorate of Technical Education in the late fifties, the College administration came under the control of the Government of Kerala. The College was shifted to the present sprawling 125 acres in 1980.\", \"description\": \"A place for learning, discovery, innovation, expression and discourse\"}', '2018-08-07 17:58:51', '2018-08-07 17:58:51');

-- insert entity_type department
INSERT INTO `entity_types` (`id`, `entity_type`, `entity_type_slug`, `created_at`, `updated_at`) VALUES (2, 'Department', 'department', '2018-08-03 00:00:00', '2018-08-03 00:00:00');
-- insert department
INSERT INTO `entities` (`id`, `entity_name`, `entity_slug`, `entity_type_id`, `created_at`, `updated_at`) VALUES (NULL, 'Department of Computer Science and Engineering', 'cse', '2', CURRENT_DATE(), CURRENT_DATE());

-- insert news_data
INSERT INTO `news_data` (`id`, `title`, `text`, `created_at`, `updated_at`) VALUES
(1, 'Govt appoints 2 members to CBDT after five months of positions lying vacant ', 'Almost after five months of vacancies in the Central Board of Direct Taxes (CBDT), the government on Monday appointed two members, Aditya Vikram, IRS (IT) 1981 batch & Pramod Chandra Mody, IRS (IT) 1982 batch, as members in the apex body. ', '2018-08-04 14:51:35', '2018-08-04 14:51:35'),
(2, ' Cab-hailing firm Ola to launch in the UK ', ' Indian ride-hailing firm Ola said on Tuesday it plans to launch services in the United Kingdom this year, months after it expanded its operations in Australia, in an ongoing turf war with rival Uber Technologies.', '2018-08-04 15:55:38', '2018-08-04 15:55:38'),
(3, 'Dotslash 2019', 'Dotslash 2019 will be conducted on February 18 - 19', '2018-08-04 15:56:14', '2018-08-04 15:56:14'),
(4, 'RBI must resume issuing LoUs, LoCs, says parliamentary panel ', 'The Reserve Bank of India’s decision to discontinue the issuance of Letters of Undertaking (LoU) and Letters of Credit (LoC) for trade credit was a “knee-jerk reaction” to the Punjab National Bank fraud case and the facility should be restored at the earliest, the Parliamentary Standing Committee on Commerce said in a report tabled in the Rajya Sabha on Monday.', '2018-08-07 12:50:34', '2018-08-07 12:50:34');

-- insert news
INSERT INTO `news` (`id`, `news_id`, `entity_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2018-08-04 14:51:35', '2018-08-04 14:51:35'),
(2, 2, 1, '2018-08-04 15:55:38', '2018-08-04 15:55:38'),
(3, 3, 2, '2018-08-04 15:56:15', '2018-08-04 15:56:15'),
(4, 4, 1, '2018-08-07 12:51:04', '2018-08-07 12:51:04');

-- insert stream_types
INSERT INTO `stream_types` (`id`, `stream_type_long`, `stream_type_short`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES (NULL, 'Bachelor of Technology', 'B.Tech', CURRENT_TIME(), CURRENT_TIME(), CURRENT_TIME(), CURRENT_TIME()), (NULL, 'Master of Technology', 'M.Tech', CURRENT_TIME(), CURRENT_TIME(), CURRENT_TIME(), CURRENT_TIME());

-- insert stream
INSERT INTO `streams_offered` (`id`, `stream_type_id`, `stream_name`, `department_id`, `valid_start_date`, `valid_end_date`, `created_at`, `updated_at`) VALUES (NULL, '1', 'Computer Science and Engineering', '2', CURRENT_TIME(), CURRENT_TIME(), CURRENT_TIME(), CURRENT_TIME());
