show databases;

use agriculture;

CREATE TABLE agri (
    farmer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    gender VARCHAR(10) NOT NULL CHECK (gender IN ('Male', 'Female','other')),
    contact VARCHAR(15) NOT NULL UNIQUE,
    location VARCHAR(100) NOT NULL,
    land_area DECIMAL(10, 2) NOT NULL CHECK (land_area > 0)  -- in acres
    );


INSERT INTO agri (farmer_id, name, gender, contact, location, land_area) 
VALUES(1, 'Ravi Kumar', 'male', '9876543210', 'Tamil Nadu', 2.50),
(2, 'Lakshmi Devi', 'female', '9123456781', 'Andhra Pradesh', 1.75),
(3, 'Suresh Babu', 'male', '9001234562', 'Karnataka', 3.20),
(4, 'Meena Rani', 'female', '9345678912', 'Kerala', 0.95),
(5, 'Arun Prakash', 'male', '9988776655', 'Telangana', 2.10),
(6, 'Sangeetha', 'female', '9887766554', 'Tamil Nadu', 1.25),
(7, 'Mohan Raj', 'male', '9123456783', 'Andhra Pradesh', 4.50),
(8, 'Pooja Nair', 'female', '9345678914', 'Kerala', 2.05),
(9, 'Karthik S', 'male', '9001234566', 'Karnataka', 1.80),
(10, 'Divya Reddy', 'female', '9876543211', 'Telangana', 3.30),
(11, 'Hari Krishnan', 'male', '9123456785', 'Tamil Nadu', 0.85),
(12, 'Anjali', 'female', '9345678916', 'Andhra Pradesh', 2.70),
(13, 'Ramesh Gowda', 'male', '9001234568', 'Karnataka', 3.75),
(14, 'Latha', 'female', '9876543212', 'Kerala', 1.65),
(15, 'Naveen', 'male', '9123456787', 'Telangana', 2.90),
(16, 'Preethi', 'female', '9345678918', 'Tamil Nadu', 1.20),
(17, 'Dinesh', 'male', '9001234570', 'Andhra Pradesh', 4.10),
(18, 'Kavya', 'female', '9876543213', 'Karnataka', 2.40),
(19, 'Aravind', 'male', '9123456789', 'Kerala', 1.55),
(20, 'Sneha', 'female', '9345678920', 'Telangana', 3.95),
(21, 'Sathish', 'male', '9001234572', 'Tamil Nadu', 2.00),
(22, 'Deepa', 'female', '9876543214', 'Andhra Pradesh', 1.10),
(23, 'Vignesh', 'male', '9123456791', 'Karnataka', 2.85),
(24, 'Revathi', 'female', '9345678922', 'Kerala', 1.50),
(25, 'Manoj', 'male', '9001234574', 'Telangana', 3.40),
(26, 'Bhavani', 'female', '9876543215', 'Tamil Nadu', 0.90),
(27, 'Rajesh', 'male', '9123456793', 'Andhra Pradesh', 2.60),
(28, 'Sandhya', 'female', '9345678924', 'Karnataka', 3.15),
(29, 'Prakash', 'male', '9001234576', 'Kerala', 2.30),
(30, 'Anitha', 'female', '9876543216', 'Telangana', 1.35),
(31, 'Kumar', 'male', '9123456795', 'Tamil Nadu', 4.00),
(32, 'Indira', 'female', '9345678926', 'Andhra Pradesh', 2.50),
(33, 'Srinivas', 'male', '9001234578', 'Karnataka', 3.60),
(34, 'Shalini', 'female', '9876543217', 'Kerala', 1.70),
(35, 'Vasanth', 'male', '9123456797', 'Telangana', 2.15),
(36, 'Malathi', 'female', '9345678928', 'Tamil Nadu', 1.95),
(37, 'Bharath', 'male', '9001234580', 'Andhra Pradesh', 3.45),
(38, 'Gayathri', 'female', '9876543218', 'Karnataka', 1.80),
(39, 'Raghav', 'male', '9123456799', 'Kerala', 2.70),
(40, 'Keerthi', 'female', '9345678930', 'Telangana', 3.10),
(41, 'Surya', 'male', '9001234582', 'Tamil Nadu', 1.40),
(42, 'Vaishnavi', 'female', '9876543219', 'Andhra Pradesh', 2.25),
(43, 'Yogesh', 'male', '9123456801', 'Karnataka', 3.85),
(44, 'Vidya', 'female', '9345678932', 'Kerala', 0.75),
(45, 'Ashok', 'male', '9001234584', 'Telangana', 2.95),
(46, 'Meera', 'female', '9876543220', 'Tamil Nadu', 1.10),
(47, 'Kiran', 'male', '9123456803', 'Andhra Pradesh', 4.25),
(48, 'Nandhini', 'female', '9345678934', 'Karnataka', 2.00),
(49, 'Jai', 'male', '9001234586', 'Kerala', 3.25),
(50, 'Aishwarya', 'female', '9876543221', 'Telangana', 1.85);


select * from agri;


-- ------------------------------table 2--------------------------------------------------------------

use agriculture;

CREATE TABLE Crop (
    crop_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    season VARCHAR(20) NOT NULL,
    sowing_date DATE,
    harvest_date DATE,
    farmer_id INT,FOREIGN KEY (farmer_id) REFERENCES agri(farmer_id)
);

insert into crop(crop_id,name,season,sowing_date,harvest_date,farmer_id)
values(1, 'Wheat', 'Rabi', '2025-11-01', '2026-03-15', 1),
(2, 'Rice', 'Kharif', '2025-06-10', '2025-10-01', 2),
(3, 'Maize', 'Zaid', '2025-04-05', '2025-06-20', 3),
(4, 'Barley', 'Rabi', '2025-11-07', '2026-03-10', 4),
(5, 'Bajra', 'Kharif', '2025-07-01', '2025-10-05', 5),
(6, 'Sugarcane', 'Zaid', '2025-03-01', '2026-02-15', 6),
(7, 'Sorghum', 'Kharif', '2025-06-15', '2025-09-30', 7),
(8, 'Cotton', 'Kharif', '2025-06-20', '2025-11-15', 8),
(9, 'Mustard', 'Rabi', '2025-11-10', '2026-02-28', 9),
(10, 'Lentil', 'Rabi', '2025-11-05', '2026-03-01', 10),
(11, 'Chickpea', 'Rabi', '2025-11-02', '2026-03-05', 1),
(12, 'Groundnut', 'Kharif', '2025-06-25', '2025-10-10', 2),
(13, 'Soybean', 'Kharif', '2025-06-30', '2025-10-20', 3),
(14, 'Green Gram', 'Zaid', '2025-04-10', '2025-06-25', 4),
(15, 'Black Gram', 'Kharif', '2025-07-05', '2025-10-18', 5),
(16, 'Pea', 'Rabi', '2025-11-12', '2026-02-10', 6),
(17, 'Sesame', 'Kharif', '2025-07-10', '2025-10-05', 7),
(18, 'Flaxseed', 'Rabi', '2025-11-14', '2026-03-10', 8),
(19, 'Fodder', 'Zaid', '2025-03-20', '2025-06-01', 9),
(20, 'Okra', 'Zaid', '2025-04-01', '2025-06-30', 10),
(21, 'Tomato', 'Zaid', '2025-03-25', '2025-06-15', 1),
(22, 'Onion', 'Rabi', '2025-12-01', '2026-04-01', 2),
(23, 'Garlic', 'Rabi', '2025-11-20', '2026-03-25', 3),
(24, 'Carrot', 'Rabi', '2025-12-10', '2026-03-20', 4),
(25, 'Beetroot', 'Rabi', '2025-12-05', '2026-03-18', 5),
(26, 'Pumpkin', 'Zaid', '2025-04-15', '2025-07-15', 6),
(27, 'Bottle Gourd', 'Zaid', '2025-04-20', '2025-07-20', 7),
(28, 'Brinjal', 'Zaid', '2025-04-25', '2025-07-25', 8),
(29, 'Cabbage', 'Rabi', '2025-12-15', '2026-03-10', 9),
(30, 'Cauliflower', 'Rabi', '2025-12-20', '2026-03-15', 10),
(31, 'Spinach', 'Rabi', '2025-12-01', '2026-02-15', 1),
(32, 'Fenugreek', 'Rabi', '2025-12-03', '2026-02-20', 2),
(33, 'Turnip', 'Rabi', '2025-12-05', '2026-03-05', 3),
(34, 'Radish', 'Rabi', '2025-12-07', '2026-02-25', 4),
(35, 'Chili', 'Kharif', '2025-07-15', '2025-10-30', 5),
(36, 'Capsicum', 'Zaid', '2025-04-18', '2025-07-10', 6),
(37, 'Cucumber', 'Zaid', '2025-04-12', '2025-06-30', 7),
(38, 'Mushroom', 'Rabi', '2025-11-25', '2026-02-15', 8),
(39, 'Sweet Corn', 'Zaid', '2025-04-28', '2025-07-12', 9),
(40, 'Watermelon', 'Zaid', '2025-03-15', '2025-06-15', 1),
(41, 'Muskmelon', 'Zaid', '2025-03-18', '2025-06-18', 1),
(42, 'Guar', 'Kharif', '2025-07-20', '2025-10-20', 2),
(43, 'Pigeon Pea', 'Kharif', '2025-06-30', '2025-11-15', 3),
(44, 'Sunflower', 'Kharif', '2025-07-01', '2025-10-20', 4),
(45, 'Tobacco', 'Rabi', '2025-11-22', '2026-03-30', 5),
(46, 'Jute', 'Kharif', '2025-06-05', '2025-09-25', 6),
(47, 'Coriander', 'Rabi', '2025-11-30', '2026-02-28', 7),
(48, 'Turmeric', 'Kharif', '2025-06-10', '2026-01-20', 8),
(49, 'Ginger', 'Kharif', '2025-06-15', '2026-01-25', 9),
(50, 'Cardamom', 'Kharif', '2025-06-20', '2026-02-01', 10);


-- ------------------------------------------------table 3---------------------------------------------------------



use agriculture;

CREATE TABLE Field (
    field_id INT PRIMARY KEY,
    size DECIMAL(10,2),
    location VARCHAR(100),
    farmer_id INT,
    FOREIGN KEY (farmer_id) REFERENCES agri(farmer_id)
);

drop table field;


insert into field (field_id,size,location,farmer_id)
values(1, 2.5, 'Village A', 1),
(2, 3.1, 'Village B', 2),
(3, 1.8, 'Village C', 3),
(4, 2.2, 'Village D', 4),
(5, 3.5, 'Village E', 5),
(6, 4.0, 'Village F', 6),
(7, 1.7, 'Village G', 7),
(8, 2.9, 'Village H', 8),
(9, 3.4, 'Village I', 9),
(10, 2.0, 'Village J', 10),
(11, 2.8, 'Village K', 1),
(12, 1.6, 'Village L', 2),
(13, 3.7, 'Village M', 3),
(14, 2.1, 'Village N', 4),
(15, 3.9, 'Village O', 5),
(16, 4.2, 'Village P', 6),
(17, 1.5, 'Village Q', 7),
(18, 2.3, 'Village R', 8),
(19, 3.6, 'Village S', 9),
(20, 2.7, 'Village T', 10),
(21, 1.9, 'Village U', 1),
(22, 3.2, 'Village V', 2),
(23, 2.4, 'Village W', 3),
(24, 4.5, 'Village X', 4),
(25, 3.3, 'Village Y', 5),
(26, 2.6, 'Village Z', 6),
(27, 1.4, 'Village A', 7),
(28, 4.1, 'Village B', 8),
(29, 3.0, 'Village C', 9),
(30, 2.9, 'Village D', 10),
(31, 3.5, 'Village E', 1),
(32, 1.7, 'Village F', 2),
(33, 2.0, 'Village G', 3),
(34, 4.3, 'Village H', 4),
(35, 3.6, 'Village I', 5),
(36, 2.1, 'Village J', 6),
(37, 1.8, 'Village K', 7),
(38, 3.1, 'Village L', 8),
(39, 2.2, 'Village M', 9),
(40, 4.4, 'Village N', 10),
(41, 3.8, 'Village O', 1),
(42, 1.6, 'Village P', 2),
(43, 2.5, 'Village Q', 3),
(44, 3.9, 'Village R', 4),
(45, 2.3, 'Village S', 5),
(46, 4.0, 'Village T', 6),
(47, 3.2, 'Village U', 7),
(48, 2.6, 'Village V', 8),
(49, 1.9, 'Village W', 9),
(50, 3.4, 'Village X', 10);


-- ------------------------------------------------table4---------------------------------------


use agriculture;

CREATE TABLE equipment(
    equipment_id INT PRIMARY KEY,
    name VARCHAR(100),
    purchase_date DATE,
    farmer_id INT,
    FOREIGN KEY (farmer_id) REFERENCES agri(farmer_id)
);

drop table equipment;

insert into equipment(equipment_id,name,purchase_date,farmer_id)
values
(1, 'Tractor', '2022-01-15', 1),
(2, 'Harvester', '2021-06-10', 2),
(3, 'Plough', '2020-03-25', 3),
(4, 'Seeder', '2023-02-18', 4),
(5, 'Irrigation Pump', '2019-11-05', 5),
(6, 'Sprayer', '2022-07-22', 6),
(7, 'Rotavator', '2021-12-09', 7),
(8, 'Cultivator', '2020-09-17', 8),
(9, 'Disc Harrow', '2023-01-11', 9),
(10, 'Power Tiller', '2021-08-20', 10),
(11, 'Leveler', '2022-05-05', 1),
(12, 'Baler', '2021-04-10', 2),
(13, 'Mulcher', '2023-03-03', 3),
(14, 'Chisel Plough', '2020-10-14', 4),
(15, 'Drip Irrigation System', '2019-12-01', 5),
(16, 'Subsoiler', '2022-02-11', 6),
(17, 'Sprinkler', '2021-06-19', 7),
(18, 'Reaper', '2020-08-23', 8),
(19, 'Duster', '2023-07-05', 9),
(20, 'Threshing Machine', '2021-10-12', 10),
(21, 'Fertilizer Spreader', '2022-09-15', 1),
(22, 'Shredder', '2021-03-09', 2),
(23, 'Weeder', '2020-06-04', 3),
(24, 'Laser Land Leveler', '2023-04-07', 4),
(25, 'Water Tanker', '2019-05-30', 5),
(26, 'Manure Spreader', '2022-11-20', 6),
(27, 'Crop Cutter', '2021-01-13', 7),
(28, 'Mini Tractor', '2020-02-22', 8),
(29, 'Drum Seeder', '2023-06-15', 9),
(30, 'Chain Harrow', '2021-07-27', 10),
(31, 'Furrow Opener', '2022-08-01', 1),
(32, 'Land Roller', '2020-04-16', 2),
(33, 'Rotary Hoe', '2021-05-21', 3),
(34, 'Tractor Trailer', '2023-01-25', 4),
(35, 'Boom Sprayer', '2020-12-10', 5),
(36, 'Seed Drill', '2022-03-19', 6),
(37, 'Post Hole Digger', '2021-09-14', 7),
(38, 'Soil Moisture Sensor', '2020-07-18', 8),
(39, 'Paddy Transplanter', '2023-02-02', 9),
(40, 'Compost Turner', '2021-11-29', 10),
(41, 'Power Weeder', '2022-06-03', 1),
(42, 'Solar Dryer', '2021-10-06', 2),
(43, 'Hydraulic Lift', '2020-05-25', 3),
(44, 'Grain Cleaner', '2023-03-31', 4),
(45, 'Trolley', '2020-01-19', 5),
(46, 'Chaff Cutter', '2022-12-12', 6),
(47, 'Ridger', '2021-02-28', 7),
(48, 'Seed Cum Fertilizer Drill', '2020-09-03', 8),
(49, 'Straw Reaper', '2023-05-08', 9),
(50, 'Silage Bagger', '2021-06-25', 10);


-- --------------------------------------table 5-----------------------------------------------------------------------


use agriculture;

CREATE TABLE Sales (
    sale_id INT PRIMARY KEY,
    crop_id INT,
    quantity_kg DECIMAL(10,2),
    rate_per_kg DECIMAL(10,2),
    sale_date date,
    buyer_name VARCHAR(50),
    FOREIGN KEY (crop_id) REFERENCES crop(crop_id)
);
drop table sales;

 INSERT INTO Sales (sale_id, crop_id, quantity_kg, rate_per_kg, sale_date, buyer_name) VALUES
(1, 1, 500.00, 24.50, '2025-01-12', 'Aarav Sharma'),
(2, 2, 300.00, 30.00, '2025-01-13', 'Vivaan Verma'),
(3, 3, 250.50, 18.00, '2025-01-15', 'Diya Patel'),
(4, 4, 600.00, 24.00, '2025-01-17', 'Ishaan Reddy'),
(5, 5, 1000.00, 20.50, '2025-01-20', 'Saanvi Gupta'),
(6, 6, 700.00, 22.00, '2025-01-22', 'Reyansh Mehra'),
(7, 7, 800.00, 19.75, '2025-01-25', 'Ananya Nair'),
(8, 8, 400.00, 25.00, '2025-01-28', 'Karthik Rao'),
(9, 9, 350.00, 28.00, '2025-02-01', 'Aadhya Joshi'),
(10, 1, 450.00, 21.50, '2025-02-02', 'Arjun Deshmukh'),
(11, 2, 300.00, 19.00, '2025-02-04', 'Meera Iyer'),
(12, 3, 275.00, 23.00, '2025-02-05', 'Rohan Kapoor'),
(13, 4, 500.00, 20.00, '2025-02-06', 'Kritika Bansal'),
(14, 5, 420.00, 21.25, '2025-02-08', 'Siddharth Sinha'),
(15, 6, 600.00, 24.00, '2025-02-10', 'Nisha Malhotra'),
(16, 7, 550.00, 19.50, '2025-02-12', 'Aditya Choudhary'),
(17, 8, 650.00, 23.00, '2025-02-14', 'Sneha Pillai'),
(18, 9, 470.00, 26.00, '2025-02-15', 'Manav Dubey'),
(19, 1, 380.00, 20.75, '2025-02-17', 'Kavya Bhatt'),
(20, 2, 720.00, 22.00, '2025-02-18', 'Omkar Shetty'),
(21, 3, 290.00, 27.00, '2025-02-19', 'Tanya Jain'),
(22, 4, 610.00, 25.50, '2025-02-20', 'Pranav Saxena'),
(23, 5, 300.00, 29.00, '2025-02-21', 'Neha Raut'),
(24, 6, 430.00, 19.00, '2025-02-22', 'Atharv Kulkarni'),
(25, 7, 360.00, 20.00, '2025-02-24', 'Pooja Yadav'),
(26, 8, 800.00, 21.75, '2025-02-25', 'Dhruv Chaudhary'),
(27, 9, 200.00, 26.50, '2025-02-26', 'Ayesha Tiwari'),
(28, 1, 670.00, 22.00, '2025-02-27', 'Laksh Singhania'),
(29, 2, 510.00, 19.25, '2025-02-28', 'Shruti Ghosh'),
(30, 3, 490.00, 24.25, '2025-03-01', 'Veer D\'Souza'),
(31, 4, 580.00, 20.75, '2025-03-02', 'Riya Khandelwal'),
(32, 5, 700.00, 23.50, '2025-03-03', 'Harsh Vyas'),
(33, 6, 540.00, 25.00, '2025-03-04', 'Mitali Naik'),
(34, 7, 310.00, 22.75, '2025-03-05', 'Aryan Banerjee'),
(35, 8, 730.00, 26.00, '2025-03-06', 'Tanvi Mahajan'),
(36, 9, 600.00, 27.00, '2025-03-07', 'Arnav Sehgal'),
(37, 1, 410.00, 24.75, '2025-03-08', 'Isha Rawat'),
(38, 2, 690.00, 28.50, '2025-03-09', 'Kabir Kohli'),
(39, 3, 330.00, 23.25, '2025-03-10', 'Nandini Agarwal'),
(40, 4, 520.00, 20.00, '2025-03-11', 'Yash Thakur'),
(41, 5, 290.00, 22.00, '2025-03-12', 'Simran Bedi'),
(42, 6, 470.00, 25.50, '2025-03-13', 'Raghav Seth'),
(43, 7, 550.00, 18.75, '2025-03-14', 'Bhavya Mishra'),
(44, 8, 610.00, 29.00, '2025-03-15', 'Mohit Chauhan'),
(45, 9, 360.00, 24.50, '2025-03-16', 'Priya Salunkhe'),
(46, 1, 720.00, 21.00, '2025-03-17', 'Tanishq Borkar'),
(47, 2, 690.00, 27.25, '2025-03-18', 'Juhi Dugar'),
(48, 3, 510.00, 19.00, '2025-03-19', 'Sahil Wadhwa'),
(49, 4, 430.00, 26.50, '2025-03-20', 'Rachna Joshi'),
(50, 5, 470.00, 22.50, '2025-03-21', 'Aniket Talwar');


use agriculture;

select * from agri;

SELECT * FROM agri
WHERE land_area BETWEEN 2 AND 3;

SELECT SUM(land_area) AS total_land_female
FROM agri
WHERE gender = 'female';

SELECT location, COUNT(*) AS count
FROM agri
GROUP BY location
ORDER BY count DESC
LIMIT 2;

SELECT name, sowing_date
FROM crop
WHERE MONTH(sowing_date) = 3;


SELECT c.name
FROM crop c
JOIN agri a ON c.farmer_id = a.farmer_id
WHERE a.name = 'ravi kumar';


SELECT name,sowing_date AS latest_sowing
FROM crop;

SELECT farmer_id, AVG(size) AS avg_field_size
FROM Field
GROUP BY farmer_id;

SELECT DISTINCT season
from crop;

SELECT name, purchase_date, DATE_ADD(purchase_date, INTERVAL 2 YEAR) AS Next_Service_Date
FROM equipment;

DELIMITER $$

CREATE PROCEDURE GetEquipmentByFarmer()
BEGIN
    SELECT equipment_id, name, purchase_date
    FROM equipment
    WHERE farmer_id = 2;
END$$

DELIMITER ;

# call the procedure 
CALL GetEquipmentByFarmer();

-- DROP VIEW EquipmentSummary;

CREATE VIEW Spray_Equipment_Summary AS
SELECT name, purchase_date
FROM equipment
WHERE name = "Sprayer";

SELECT * FROM Spray_Equipment_Summary; -- -------------- views name


SELECT 
    sale_id,
    sale_date,
    quantity_kg,
    CASE 
        WHEN quantity_kg < 400 THEN 'Low'
        WHEN quantity_kg BETWEEN 400 AND 700 THEN 'Medium'
        ELSE 'High'
    END AS quantity_category
FROM Sales;


