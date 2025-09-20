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







