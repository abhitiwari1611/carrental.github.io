-- phpMyAdmin SQL Dump
-- version 8.0.34
-- Generation Time: Nov 2, 2023 at 08:10 PM
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- DATABASE CARRENTAL
--

--
-- TABLE STRUCTURE FOR TABLE admin
--

CREATE TABLE IF NOT EXISTS admin(
	id int(11) NOT NULL,
	UserName varchar(100) NOT NULL,
	Password varchar(100) NOT NULL,
    updationDate timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
)DEFAULT CHARSET=latin1 AUTO_INCREMENT=2;

--
-- DUMMY DATA FOR TABLE admin
--

INSERT INTO admin (id, UserName, Password, updationDate) 
VALUES
(1, 'user1', 'user1', '2023-11-05 11:02:08'),
(2, 'user2', 'user2', '2023-11-05 11:02:08'),
(3, 'user3', 'user3', '2023-11-05 11:02:08'),
(4, 'user4', 'user4', '2023-11-05 11:02:08'),
(5, 'user5', 'user5', '2023-11-05 11:02:08');

--
-- TABLE STRUCTURE FOR TABLE tblbooking
--

CREATE TABLE IF NOT EXISTS tblbooking(
	id int(11) NOT NULL,
	userEmail varchar(100) DEFAULT NULL,
	VehicleId int(11) DEFAULT NULL,
	FromDate varchar(20) DEFAULT NULL,
	ToDate varchar(20) DEFAULT NULL,
	message varchar(255) DEFAULT NULL,
	Status int(11) DEFAULT NULL,
	PostingDate timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
  )DEFAULT CHARSET=latin1 AUTO_INCREMENT=6;
  
  --
  -- DUMMY DATA FOR TABLE tblbooking
  --
  
INSERT INTO tblbooking (id, userEmail, VehicleId, FromDate, ToDate, message, Status, PostingDate) VALUES
(1, 'user1@gmail.com', 2, '22/10/2023', '25/10/2023', 'Needed for personal reasons!!', 1, '2023-09-19 20:15:43'),
(2, 'user2@gmail.com', 3, '30/10/2023', '02/10/2023', 'Want to rent it!!', 2, '2023-09-26 20:15:43'),
(3, 'user3@gmail.com', 4, '02/10/2023', '07/10/2023', 'Urgently needed!!', 0, '2023-09-26 21:10:06'),
(4, 'user4@gmail.com', 1, '11/10/2023', '12/10/2023', 'Want to hire this!!', 0, '2023-09-29 18:20:45'),
(5, 'user5@gmail.com', 6, '11/10/2023', '12/10/2023', 'I want to hire this taxi for few hours!!', 1, '2023-09-05 11:09:18');

--
-- TABLE STRUCTURE FOR TABLE tblbrands
--

  CREATE TABLE IF NOT EXISTS tblbrands(
	id int(11) NOT NULL,
	BrandName varchar(120) NOT NULL,
	CreationDate timestamp NULL DEFAULT CURRENT_TIMESTAMP,
	UpdationDate timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
  )  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;
  
  --
  -- DUMMY DATA FOR TABLE TBLBRANDS
  --
  
INSERT INTO tblbrands (id, BrandName, CreationDate, UpdationDate) VALUES
(1, 'BMW', '2023-06-18 16:24:34', '2023-06-19 07:42:23'),
(2, 'TOYOTA', '2023-06-18 16:24:50','2023-06-19 06:42:23'),
(3, 'AUDI', '2023-06-18 16:25:03','2023-06-19 09:04:23'),
(4, 'HYUNDAI', '2023-06-18 16:25:13','2023-06-19 01:42:55'),
(5, 'VOLKSWAGEN', '2023-06-18 16:25:24','2023-06-19 06:42:23'),
(6, 'MERCEDES', '2023-06-19 06:22:13','2023-06-19 05:27:50'),
(7, 'SKODA', '2023-07-05 11:02:29','2023-06-19 04:25:23'),
(8,'NISSAN', '2023-06-05 08:10:55','2023-07-25 10:25:23'),
(9,'SUZUKI','2023-07-10 08:10:55','2023-08-15 10:55:57');

--
-- TABLE STRRUTURE FOR TABLE tblcontactusinfo
--

CREATE TABLE IF NOT EXISTS tblcontactusinfo (
	id int(11) NOT NULL,
    Address tinytext,
	EmailId varchar(255) DEFAULT NULL,
	ContactNo char(11) DEFAULT NULL
) DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- DUMMY DATA FOR TABLE tblcontactusinfo
--

INSERT INTO tblcontactusinfo (id, Address, EmailId, ContactNo) VALUES
(1, '128,FIRST FLOOR,RAMGANGA APARTMENTS,SWARAJ NAGAR,KANPUR', 'speedy wheels@gmail.com', '8585233222');

--
-- TABLE STRUCTURE FOR TABLE contactusquery
--

CREATE TABLE IF NOT EXISTS tblcontactusquery (
	id int(11) NOT NULL,
	name varchar(100) DEFAULT NULL,
	EmailId varchar(120) DEFAULT NULL,
	ContactNumber char(11) DEFAULT NULL,
	Message longtext,
	PostingDate timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	status int(11) DEFAULT NULL
) DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- DUMMY DATA FOR TABLE tblcontactusquery 
--

INSERT INTO tblcontactusquery (id, name, EmailId, ContactNumber, Message, PostingDate, status) VALUES
(1, 'Vidya Yadav', 'vy789@gmail.com', '2147483647', 'Very happy to avail the services of your company speedy wheels.', '2023-06-18 10:03:07', 1),
(2,'Rhythm Sharma','rhythm13@gmail.com','9854746379','Not able to register ,Please help me out!!','2023-06-25 07:10:55',1);

--
-- TABLE STRUCTURE FOR TABLE tblpages
--

CREATE TABLE IF NOT EXISTS tblpages (
	id int(11) NOT NULL,
	PageName varchar(255) DEFAULT NULL,
	type varchar(255) NOT NULL DEFAULT '',
	detail longtext NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;


--
-- DUMMY DATA FOR TABLE tblpages
--

INSERT INTO tblpages (id, PageName, type, detail) VALUES
(1, 'Terms and Conditions', 'terms', '<span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 25px;align: left;">
<br>
<span style="text-align: right;"><u>Last Updated: 1 January 2024</u></span>
<br>
<h4>Acceptance of Terms:</h4>
By accessing or using the Car Rental project ("Speedy Wheels") developed for the 2nd-year B.Tech project, you agree to comply with and be bound by these terms and conditions. If you do not agree with any part of these terms, you may not use the Project.
<br>
<h4>User Eligibility:</h4>
Users must be at least 18 years old to access and use the Project. By using the Project, you affirm that you are over 18 and capable of forming a binding contract.
<br>
<h4>Rental Agreement:</h4>
The Project facilitates the creation of rental agreements for vehicles. Users are solely responsible for understanding and adhering to the terms specified in each rental agreement. Speedy Wheels Car Rental is not liable for any violations or disputes arising from the rental agreements.
<br>
<h4>Booking and Payment:</h4>
Users can book vehicles through the Project. Payments made for bookings are non-refundable unless otherwise stated. Users must provide accurate and up-to-date payment information. Failure to do so may result in the cancellation of bookings.
<br>
<h4>Vehicle Condition and Return:</h4>
Users agree to return rented vehicles in the same condition as received. Any damages or discrepancies should be reported immediately. Failure to adhere to return policies may result in additional charges.
<br>
<h4>Insurance:</h4>
Users are responsible for obtaining appropriate insurance coverage for the rented vehicles. Speedy Wheels Car Rental is not liable for any damages, losses, or liabilities incurred during the rental period.
<br>
<h4>Cancellation Policy:</h4>
Cancellation policies vary for different rental agreements. Users must review and understand the specific cancellation terms associated with each booking.
<br>
<h4>Data Privacy:</h4>
Speedy Wheels Car Rental respects user privacy. Personal information collected during the use of the Project will be handled in accordance with the applicable privacy policy.
<br>
<h4>Intellectual Property:</h4>
All intellectual property rights related to the Project, including but not limited to software, logos, and content, are owned by Speedy Wheels Car Rental. Users may not reproduce, distribute, or use any content from the Project without explicit permission.
<br>
<h4>Changes to Terms:</h4>
Speedy Wheels Car Rental reserves the right to modify these terms and conditions at any time. Users will be notified of changes, and continued use of the Project constitutes acceptance of the modified terms.
<br>
By using Speedy Wheels Car Rental, you acknowledge that you have read, understood, and agreed to these terms and conditions. If you have any questions or concerns, please contact us at contact<a href="mailto:speedywheels@gmail.com">@speedywheels.com</a>.</span>'),
(2, 'Privacy Policy', 'privacy', '<span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 25px; align: left;">
<br>
<span style="text-align: right;"><u>Last Updated: 1 January 2024</u></span>
<br>
Speedy Wheels is committed to protecting your privacy. This Privacy Policy explains how we collect, use, disclose, and safeguard your personal information when you use our car rental services.
<br>
<h5>Information We Collect:</h5>
<ul>
<li>Personal Information</li>
<li>Contact details (name, address, phone number, email)</li>
<li>Driver\'s license information</li>
<li>Payment information (credit card details)</li>
<li>Vehicle preferences and rental history</li>
<li>Usage Data</li>
<li>Log files and analytics data when you use our website</li>
</ul>


<h5>How We Use Your Information?</h5>
We use your personal information for the following purposes:
<ul>
<li>Processing and managing car rental reservations</li>
<li>Verifying your identity and eligibility to rent a vehicle</li>
<li>Handling payments and billing</li>
<li>Providing customer support and responding to inquiries</li>
<li>Improving our services and user experience</li>
<li>Information Sharing</li>
</ul>

<h5>We may share your personal information with:</h5>
<ul>
<li>Third-party service providers (e.g., payment processors, vehicle maintenance services) to facilitate our services</li>
<li>Legal authorities in compliance with applicable laws and regulations</li>
<li>In the event of a merger, acquisition, or sale of assets, your information may be transferred to the new entity</li>
<li>Security</li>
<li>We employ reasonable security measures to protect your personal information from unauthorized access, disclosure, alteration, and destruction. However, no data transmission over the internet or storage system can be guaranteed to be completely secure.</li>
</ul>

<h5>Your Choices</h5>
<h6>You have the right to:</h6>
<ul>
<li>Access, update, or delete your personal information</li>
<li>Opt-out of marketing communications</li>
<li>Cookies and Tracking Technologies</li>
<li>We use cookies and similar technologies to enhance your experience on our website and improve our services. You can manage your cookie preferences through your browser settings.</li>
</ul>
<bold>Changes to This Privacy Policy</bold>
We may update this Privacy Policy to reflect changes in our practices. We will notify you of any significant changes through our website or other communication channels.

<bold>Contact Us</bold>
If you have any questions or concerns about this Privacy Policy or our data practices, please contact us at <a href="mailto:speedywheels@gmail.com">speedywheels@gmail.com</a>.</span>'),
(3, 'About Us ', 'aboutus', '<span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; align: left;"><h1>Welcome to Speedy Wheels!</h1>

At Speedy Wheels, we are more than just a car rental service – we are your trusted partner in exploring the world on wheels. Established in 2023, our journey began with a vision to redefine convenience and reliability in the realm of car rentals. Now in our 2nd year, we take pride in providing top-notch service to our valued customers.

<h2>Our Mission:</h2>
At Speedy Wheels, our mission is to make your journey memorable by offering a seamless and hassle-free car rental experience. We believe in empowering our customers with the freedom to explore destinations at their own pace, without compromising on safety and comfort.

<h2>What Sets Us Apart:</h2>

<h3>Diverse Fleet:</h3> Choose from our diverse fleet of well-maintained vehicles, ranging from compact cars for urban adventures to spacious SUVs for family getaways.

<h3>Affordability:</h3> We understand the value of your hard-earned money. That\'s why we offer competitive and transparent pricing, ensuring you get the best deal without hidden costs.

<h3>Customer-Centric Approach:</h3> Your satisfaction is our priority. Our team is committed to providing personalized assistance, whether it\'s helping you select the right vehicle or offering support throughout your rental period.

<h3>Easy Booking Process:</h3> With our user-friendly online platform, booking a car has never been easier. Simply browse our selection, choose your vehicle, and secure your reservation with a few clicks.

<h3>Flexibility:</h3> Life is unpredictable, and plans can change. We offer flexible rental options to accommodate your evolving needs, with options for short-term and long-term rentals.

<h2>Our Commitment to Safety:</h2>
Your safety is paramount to us. Each vehicle undergoes rigorous maintenance checks, and our team ensures that every car is thoroughly cleaned and sanitized before and after each rental. We prioritize your well-being so you can focus on enjoying the journey.

<h2>Get in Touch:</h2>
Have questions or need assistance? Our dedicated customer support team is available around the clock to address your queries and concerns. At Speedy Wheels, we believe in building lasting relationships with our customers.

Thank you for choosing Speedy Wheels as your travel companion. We look forward to being a part of your next adventure!

Happy Travels,<br>
The Speedy Wheels Team</span>'),
(11, 'FAQs', 'faqs', '<span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 25px; align: left;">
Q: What is the purpose of the car rental project for students?<br><br>
The car rental project aims to provide convenient and affordable transportation options for public for short-distance travel and long journeys.<br><br><br>
Q: How can I rent a car through this project?<br><br>
Students can easily rent a car by logging into the website, selecting their desired vehicle, specifying the rental period, and completing the booking process.<br><br><br>
Q: Are there any eligibility criteria for renting a car?<br><br>
Generally, anyone with a valid driver\'s license can rent a car. However, specific eligibility criteria may apply.<br><br><br>
Q: What types of vehicles are available for rent?<br><br>
The project offers a variety of vehicles, including compact cars, sedans, and possibly electric or hybrid options. The available fleet may vary, and users can choose based on their preferences and needs.<br><br><br>
Q: How is the pricing determined for car rentals?<br><br>
The pricing is typically based on factors such as the type of vehicle, duration of the rental, and mileage. Users can view the detailed pricing structure on the platform.<br><br><br>
Q: What safety measures are in place for rented vehicles?<br><br>
All vehicles undergo regular maintenance and safety checks. Users are expected to follow the guidelines, including adhering to speed limits and traffic rules, to ensure a safe driving experience.<br><br><br>
Q: How do I report issues with a rented vehicle?<br><br>
In case of any issues or concerns with the rented vehicle, users can contact the project\'s customer support through the provided helpline or online support system.<br><br><br>
Q: Is there a cancellation policy for car rentals?<br><br>
Yes, the project may have a cancellation policy with details on refund conditions. Users should review the policy on the website or contact customer support for more information.<br><br><br>
Q: How can I provide feedback or suggestions for the car rental project?<br><br>
We encourage users to share their feedback and suggestions through the project\'s feedback form or contact customer support. Your input is valuable in enhancing the overall user experience. &nbsp; &nbsp;</span>');


--
-- TABLE STRUCTURE FOR TABLE tblsubscribers
--

CREATE TABLE IF NOT EXISTS tblsubscribers (
	id int(11) NOT NULL,
	SubscriberEmail varchar(120) DEFAULT NULL,
	PostingDate timestamp NULL DEFAULT CURRENT_TIMESTAMP
) DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- DUMMY DATA FOR TABLE tblsubscribers
--

INSERT INTO tblsubscribers (id, SubscriberEmail, PostingDate) VALUES
(1, 'anuj.lpu1@gmail.com', '2023-09-22 16:35:32');

--
-- TABLE STRUCTURE FOR TABLE  tbltestimonial
--

CREATE TABLE IF NOT EXISTS tbltestimonial (
	id int(11) NOT NULL,
	UserEmail varchar(100) NOT NULL,
	Testimonial mediumtext NOT NULL,
	PostingDate timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	status int(11) DEFAULT NULL
) DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- DUMMY DATA FOR TABLE tbltestimonial
--

INSERT INTO tbltestimonial (id, UserEmail, Testimonial, PostingDate, status) VALUES
(1, 'vidhi745869@gmail.com', 'Really satisfied from the services.Hoping to enjoy services in future also.For the first time really enjoyed the car rental services.', '2023-06-25 07:44:31', 1),
(2, 'kumari5489@gmail.com', '\n Really Amazing','2023-07-14 07:46:05', 1),
(3, 'tiwariji123@gmail.com', 'Wow its Great ', '2023-10-05 11:08:26',1);

--
-- TABLE STRUCTURE FOR TABLE tblusers
--

CREATE TABLE IF NOT EXISTS tblusers (
	id int(11) NOT NULL,
	FullName varchar(120) DEFAULT NULL,
	EmailId varchar(100) DEFAULT NULL,
	Password varchar(100) DEFAULT NULL,
	ContactNo char(11) DEFAULT NULL,
	dob varchar(100) DEFAULT NULL,
	Address varchar(255) DEFAULT NULL,
	City varchar(100) DEFAULT NULL,
	Country varchar(100) DEFAULT NULL,
	RegDate timestamp NULL DEFAULT CURRENT_TIMESTAMP,
	UpdationDate timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
)DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- DUMMY DATA FOR TABLE tblusers
--

INSERT INTO tblusers (id, FullName, EmailId, Password, ContactNo, dob, Address, City, Country, RegDate,UpdationDate) VALUES
(1, 'Anuj Kumar', 'anuj@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2147483647', '14/06/2000', 'Mohali', 'Mohali', 'INDIA', '2017-06-17 19:59:27', '2023-06-26 21:02:58'),
(2, 'Sumit Sharma', 'ssharmaa@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '8285703354', '17/01/2005', 'Pune', 'Pune', 'INDIA', '2017-06-17 20:00:49', '2023-06-26 21:03:09'),
(3, 'Akriti Kumari', 'kumari5489@gmail.com', 'f09df7868d52e12bba658982dbd79821', '0999985768', '03/02/1990', 'Vellore', 'Vellore', 'INDIA', '2023-06-17 20:01:43', '2023-06-17 21:07:41'),
(4, 'Anmol Tiwari', 'tiwariji123@gmail.com', '5c428d8875d2948607f3e3fe134d71b4', '9999857868', '24/05/2005', 'New Delhi', 'New Delhi', 'INDIA', '2017-06-17 20:03:36', '2023-06-26 19:18:14'),
(5, 'Shobhit Singh', 'singh74569@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '9015501898', '15/08/2010','Mumbai', 'Mumbai', 'INDIA', '2023-06-29 18:19:08','2023-07-26 19:18:14'),
(6, 'Vidhi Shukla', 'vidhi745869@gmail.com', '202cb962ac59075b964b07152d234b70', '9015501898', '05/08/2008', 'Chennai', 'Chennai', 'INDIA', '2023-07-05 11:06:55', '2017-07-05 11:08:02');

--
-- TABLE STRUCTURE FOR TABLE tblvehicles
--

CREATE TABLE IF NOT EXISTS tblvehicles (
	id int(11) NOT NULL,
	VehiclesTitle varchar(150) DEFAULT NULL,
	VehiclesBrand int(11) DEFAULT NULL,
	VehiclesOverview longtext,
	PricePerDay int(11) DEFAULT NULL,
	FuelType varchar(100) DEFAULT NULL,
	ModelYear int(6) DEFAULT NULL,
	SeatingCapacity int(11) DEFAULT NULL,
	Vimage1 varchar(120) DEFAULT NULL,
	Vimage2 varchar(120) DEFAULT NULL,
	Vimage3 varchar(120) DEFAULT NULL,
	Vimage4 varchar(120) DEFAULT NULL,
	Vimage5 varchar(120) DEFAULT NULL,
	AirConditioner int(11) DEFAULT NULL,
	PowerDoorLocks int(11) DEFAULT NULL,
	AntiLockBrakingSystem int(11) DEFAULT NULL,
	BrakeAssist int(11) DEFAULT NULL,
	PowerSteering int(11) DEFAULT NULL,
	DriverAirbag int(11) DEFAULT NULL,
	PassengerAirbag int(11) DEFAULT NULL,
	PowerWindows int(11) DEFAULT NULL,
	CDPlayer int(11) DEFAULT NULL,
	CentralLocking int(11) DEFAULT NULL,
	CrashSensor int(11) DEFAULT NULL,
	LeatherSeats int(11) DEFAULT NULL,
	RegDate timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	UpdationDate timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
)DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- DUMMY DATA FOR TABLE tblvehicles
--

INSERT INTO tblvehicles (id, VehiclesTitle, VehiclesBrand, VehiclesOverview, PricePerDay, FuelType, ModelYear, SeatingCapacity, Vimage1, Vimage2, Vimage3, Vimage4, Vimage5, AirConditioner, PowerDoorLocks, AntiLockBrakingSystem, BrakeAssist, PowerSteering, DriverAirbag, PassengerAirbag, PowerWindows, CDPlayer, CentralLocking, CrashSensor, LeatherSeats, RegDate, UpdationDate) VALUES
(1, 'X1', 1, 'BMW X1 offers an attractive design, a futuristic interior, and a comfortable driving experience.', 9500, 'Petrol', 2016, 5, 'bmw1.png', 'bmw2.jpg', 'bmw3.png', 'bmw4.png', 'bmw5.png', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2017-06-19 11:46:23', '2017-06-20 18:38:13'),
(2, 'Urban Cruiser', 2, 'Urban Cruiser provides generous space and efficiency, making it an easy and dependable option for city living. With a city fuel efficiency of 7.9 kmpl, highway efficiency of 20.04 kmpl, and an overall efficiency of 10.9 kmpl, it proves to be a practical and fuel-efficient choice for urban commuters.', 2000, 'Petrol', 2015, 5, 'toyota1.png', 'toyota2.png', 'toyota3.png', 'toyota4.png', 'toyota5.png', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2017-06-19 16:16:17', '2017-06-21 16:57:11'),
(3, 'Q3', 3, ' Audi Q3 stands out as a compelling choice for those seeking a well-rounded and luxurious compact SUV. Renowned for its opulent interiors, advanced technology features, and strong safety offerings, the Q3 embodies the premium quality synonymous with the Audi brand.', 10000, 'Petrol', 2015, 5, 'audi1.png', 'audi2.png', 'audi3.png', 'audi4.png', 'audi5.png', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-19 16:18:20', '2023-06-20 18:40:11'),
(4, 'Exter', 4, 'Exter is good looking, fuel efficient, budget friendly car. You can prefer for a small family, if you dont want to get loose your pocket. looks like SUV, also there are many color option. Its really really great, great interior, excellent driving experience, awesome staring smoothness.', 3000, 'Petrol', 2023, 5, 'hyundai1.png', 'hyundai2.png', 'hyundai3.png', 'hyundai4.png', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, '2023-06-19 16:18:43', '2023-06-20 18:44:12'),
(5, 'Tiguan', 5, 'Tiguan rides very well indeed. It smooths over bigger road imperfections, such as speed bumps, better than the BMW X1 and the unsettled Jaguar E-Pace yet its suspension is firm enough to prevent the body from bouncing up and down too much along undulating roads.', 7000, 'Petrol', 2018, 5, 'volkswagen1.png', 'volkswagen2.png', 'volkswagen3.png', 'volkswagen4.png', 'volkswagen5.png', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2017-06-20 17:57:09', '2017-06-21 16:56:43'),
(6, 'C-Class', 6, 'The Mercedes-Benz C-Class has 1 Diesel Engine and 1 Petrol Engine on offer. The Diesel engine is 1993 cc while the Petrol engine is 1496 cc . It is available with Automatic transmission. Depending upon the variant and fuel type the C-Class has a mileage of 23 kmpl . The C-Class is a 5 seater 4 cylinder car and has length of 4751, width of 1820 and a wheelbase of 2865mm.', 15000, 'Petrol', 2017, 5, 'mercedes1.png', 'mercedes2.png', 'mercedes3.png', 'mercedes4.png', 'mercedes5.png', 1, 1, 1, NULL, 1, 1, NULL, 1, 1, 1, NULL, 1, '2017-07-05 11:04:18', NULL),
(7, 'Kushaq', 7, 'The driving experience of the Skoda Kushaq is often praised for its powerful engine options, responsive handling, and comfortable ride. The compact SUV offers a good balance between city maneuverability and highway stability.', 4000, 'Petrol', 2020, 5, 'skoda1.png', 'skoda2.png', 'skoda3.png', 'skoda4.png', 'skoda5.png', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2017-06-19 11:46:23', '2017-06-20 18:38:13'),
(8, 'Magnite', 8, 'The Magnite is arguably the most value-for-money car in its class simply because of the amount of features it offers at the price it demands. It gets a 9-inch infotainment touchscreen with wireless Apple CarPlay and Android Auto.', 3200, 'Petrol', 2018, 5, 'nissan1.png', 'nissan2.png', 'nissan3.png', 'nissan4.png', 'nissan5.png', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2017-06-19 11:46:23', '2017-06-20 18:38:13'),
(9, 'Brezza', 9, 'Besides the speed of Brezza, the head-up display can show a lot of other info like RPM, gear, and warning lights. Its 328-liter boot isnt the largest in the segment, but its wide and deep enough, and there is a 60:40 split seat too.', 2500, 'Petrol', 2021, 5, 'suzuki1.png', 'suzuki2.png', 'suzuki3.png', 'suzuki4.png', 'suzuki5.png', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2017-06-19 11:46:23', '2017-06-20 18:38:13');

--
-- INDEXES FOR DUMPED TABLES
--

ALTER TABLE admin ADD PRIMARY KEY (id);
ALTER TABLE tblbooking ADD PRIMARY KEY (id);
ALTER TABLE tblbrands ADD PRIMARY KEY (id);
ALTER TABLE tblcontactusinfo ADD PRIMARY KEY (id);
ALTER TABLE tblcontactusquery ADD PRIMARY KEY (id);
ALTER TABLE tblpages ADD PRIMARY KEY (id);
ALTER TABLE tblsubscribers ADD PRIMARY KEY (id);
ALTER TABLE tbltestimonial ADD PRIMARY KEY (id);
ALTER TABLE tblusers ADD PRIMARY KEY (id);
ALTER TABLE tblvehicles ADD PRIMARY KEY (id);

--
-- AUTO_INCREMENT FOR DUMPED TABLES
--

ALTER TABLE admin MODIFY id int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
ALTER TABLE tblbooking MODIFY id int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
ALTER TABLE tblbrands MODIFY id int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
ALTER TABLE tblcontactusinfo MODIFY id int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
ALTER TABLE tblcontactusquery MODIFY id int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
ALTER TABLE tblpages MODIFY id int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
ALTER TABLE tblsubscribers MODIFY id int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
ALTER TABLE tbltestimonial MODIFY id int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
ALTER TABLE tblusers MODIFY id int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
ALTER TABLE tblvehicles MODIFY id int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
