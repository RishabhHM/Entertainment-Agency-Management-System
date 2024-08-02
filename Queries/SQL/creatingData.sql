# Creating Database
CREATE DATABASE DMA_Project;
USE DMA_Project;



# Table - Stats
CREATE TABLE `Stats` (
    `StatsID` INT NOT NULL,
    `Revenue` DECIMAL(15 , 2) DEFAULT NULL,
    `Investment` DECIMAL(15 , 2) DEFAULT NULL,
    `NetProfit` DECIMAL(15 , 2) DEFAULT NULL,
    PRIMARY KEY (`StatsID`)
);

-- Values for Concert
INSERT INTO `Stats` VALUES
(1,209806635.31,2167507.67,NULL),
(2,275265811.88,4045533.84,NULL),
(3,173576074.66,7451237.15,NULL),
(4,270321732.09,4433623.70,NULL),
(5,286630715.54,8275385.46,NULL),
(6,208862822.76,5490302.83,NULL),
(7,71844176.00,6530104.91,NULL),
(8,185367837.10,1520886.32,NULL),
(9,179996266.63,2052871.52,NULL),
(10,56172611.15,8003975.13,NULL),
(11,215464143.35,9129029.74,NULL),
(12,147103880.76,8191799.51,NULL),
(13,100678382.88,6008406.90,NULL),
(14,263523748.66,8341261.78,NULL),
(15,155966395.40,4100018.12,NULL),
(16,217026449.31,2253050.97,NULL),
(17,222807288.32,2679494.26,NULL),
(18,251573364.88,2329569.24,NULL),
(19,163763994.24,1090838.32,NULL),
(20,145354473.50,4834173.95,NULL),
(21,165885174.31,6056241.34,NULL),
(22,255158202.89,7307965.61,NULL),
(23,196657133.54,2646271.71,NULL),
(24,219805558.24,9760724.11,NULL),
(25,80084740.15,6504923.89,NULL),
(26,265354525.00,3143605.81,NULL),
(27,143997372.94,4095229.47,NULL),
(28,217095913.86,7523847.36,NULL),
(29,231311733.41,5206749.97,NULL),
(30,293450526.15,2838503.55,NULL);

-- Values for Albums
INSERT INTO `Stats` VALUES
(31,23791956.82,513650.69,NULL),
(32,26463978.33,1568768.71,NULL),
(33,625765.33,1231045.46,NULL),
(34,7172709.25,873645.47,NULL),
(35,17947783.17,1275273.74,NULL),
(36,28959512.94,1001622.03,NULL),
(37,17985154.20,1403811.76,NULL),
(38,17064201.99,1153504.95,NULL),
(39,22737161.86,1067324.53,NULL),
(40,10286547.00,633233.56,NULL),
(41,25780223.12,1167122.59,NULL),
(42,1009504.11,375466.27,NULL),
(43,9126776.87,1043057.04,NULL),
(44,1173927.76,553693.44,NULL),
(45,12642758.77,1341070.57,NULL),
(46,11118754.37,1860945.68,NULL),
(47,5958351.19,620792.13,NULL),
(48,27115825.79,1877807.85,NULL),
(49,16156822.45,1063478.37,NULL),
(50,6584779.18,1665305.46,NULL),
(51,20375059.46,1964856.49,NULL),
(52,10650684.60,816301.87,NULL),
(53,17332979.11,1996280.04,NULL),
(54,26651982.18,1238260.09,NULL),
(55,20928505.82,476488.95,NULL),
(56,24737825.58,1328716.86,NULL),
(57,25529568.61,1804877.23,NULL),
(58,14598682.30,995577.29,NULL),
(59,27800270.41,832039.95,NULL),
(60,5194164.36,1529578.28,NULL);

-- Values for Movies
INSERT INTO `Stats` VALUES
(61,518546165.49,308687648.90,NULL),
(62,157382929.91,478927793.58,NULL),
(63,531929452.64,109259327.48,NULL),
(64,647730896.18,272907672.55,NULL),
(65,641071723.05,180605988.20,NULL),
(66,665760451.21,437110120.10,NULL),
(67,746018138.46,61587439.46,NULL),
(68,947759233.58,218349479.64,NULL),
(69,291133079.58,328620116.40,NULL),
(70,726910208.83,314621204.45,NULL),
(71,259305025.99,169803093.41,NULL),
(72,187484904.05,337856151.02,NULL),
(73,528034711.64,207675852.44,NULL),
(74,881288535.28,155925050.80,NULL),
(75,336165600.80,209665162.63,NULL),
(76,856735037.39,53719652.89,NULL),
(77,782443823.52,104967127.11,NULL),
(78,565764904.57,92840313.65,NULL),
(79,592819403.11,326168955.80,NULL),
(80,909256614.33,328129943.54,NULL),
(81,788029552.71,252405908.70,NULL),
(82,639181531.80,146540006.48,NULL),
(83,903359421.16,166417030.00,NULL),
(84,824821716.37,462228453.28,NULL),
(85,637078943.54,195980955.73,NULL);

-- Updating NetProfit Column in Stats Table
UPDATE Stats 
SET 
    NetProfit = Revenue - Investment;



# Table - Company
CREATE TABLE `Company` (
    `CompanyID` INT NOT NULL,
    `Name` VARCHAR(100) DEFAULT NULL,
    `Email` VARCHAR(100) DEFAULT NULL,
    PRIMARY KEY (`CompanyID`)
);

INSERT INTO `Company` (`CompanyID`, `Name`, `Email`) VALUES
(1, 'Gibson Ltd', 'akonopelski@price.com'),
(2, 'Rosenbaum and Murazik', 'mcdermott.everardo@mclaughlin.com'),
(3, 'Blick and Bednar', 'dicki.kaylee@hickle.biz'),
(4, 'Armstrong-Berge', 'stracke.garth@strackekutch.biz'),
(5, 'McDermott and Skiles', 'rosenbaum.reilly@mcclurerempel.com'),
(6, 'Hegmann and Fadel', 'ashlee.stroman@smith.com'),
(7, 'Hilll, Shanahan and Koepp', 'hermann.grayce@wolfmonahan.net'),
(8, 'Nitzsche Ltd', 'hudson.syble@purdy.biz'),
(9, 'Toy-Monahan', 'iwaters@murazik.net'),
(10, 'Grimes-Herman', 'leonel77@gerhold.com');



# Table - Agency
CREATE TABLE `Agency` (
    `AgencyID` INT NOT NULL,
    `Name` VARCHAR(100) DEFAULT NULL,
    `Address` VARCHAR(100) DEFAULT NULL,
    `Email` VARCHAR(100) DEFAULT NULL,
    `Phone` VARCHAR(20) DEFAULT NULL,
    PRIMARY KEY (`AgencyID`)
);

INSERT INTO `Agency` (`AgencyID`, `Name`, `Address`, `Email`, `Phone`) VALUES
(1, 'Reichel, Flatley and Marvin', '40883 Emerson Isle', 'caden67@steuber.com', '(952)630-6082'),
(2, 'Von-Walker', '4445 Gilbert Fords Suite 520', 'rashad19@hermiston.com', '814.833.3061x95770'),
(3, 'Hegmann-Klein', '118 Sunny Alley', 'gladys.senger@feilmiller.com', '658-776-7568x349'),
(4, 'Jones-Rohan', '08099 Thompson Stravenue Apt. 848', 'hjast@gleason.org', '05393611723'),
(5, 'Buckridge and Sons', '6423 Talon Inlet', 'nash55@nikolaus.com', '283.275.4920'),
(6, 'Muller-Roberts', '119 Fadel Union', 'bridget.rice@jerde.com', '795-583-1385'),
(7, 'Wisoky LLC', '66768 Felix Fort', 'gjakubowski@beahan.com', '457-042-8746x063'),
(8, 'Gaylord-Block', '63901 Dan Path', 'mallory.gottlieb@schadengreenholt.com', '1-301-369-7985x0352'),
(9, 'Russel PLC', '182 Boyle Prairie Apt. 131', 'fbaumbach@lynch.info', '595-096-4356x5380'),
(10, 'Jast-Strosin', '05820 Gibson Prairie Apt. 873', 'jdonnelly@rippin.net', '(533)575-8879');



# Table - Talent
CREATE TABLE `Talent` (
    `ArtistID` INT NOT NULL,
    `FirstName` VARCHAR(50) DEFAULT NULL,
    `LastName` VARCHAR(50) DEFAULT NULL,
    `DOB` DATE DEFAULT NULL,
    `Age` INT DEFAULT NULL,
    `Gender` VARCHAR(15) DEFAULT NULL,
    `Address` VARCHAR(100) DEFAULT NULL,
    `Email` VARCHAR(100) DEFAULT NULL,
    `Phone` VARCHAR(20) DEFAULT NULL,
    `AgencyID` INT DEFAULT NULL,
    PRIMARY KEY (`ArtistID`),
    KEY `AgencyID` (`AgencyID`),
    CONSTRAINT `Talent_ibfk_1` FOREIGN KEY (`AgencyID`)
        REFERENCES `Agency` (`AgencyID`)
);

INSERT INTO `Talent` (`ArtistID`, `FirstName`, `LastName`, `DOB`, `Age`, `Gender`, `Address`, `Email`, `Phone`, `AgencyID`) VALUES
(1, 'Helmer', 'Donnelly', '1997-03-12', 32, 'Male', '42313 Koch Motorway', 'bblick@example.net', '(645)181-5348', 7),
(2, 'Scottie', 'Sawayn', '2002-10-29', 33, 'Male', '087 Willa Run', 'dana92@example.com', '243.375.8245x572', 10),
(3, 'Houston', 'Hermann', '1995-09-21', 35, 'Male', '5670 Nelda Path', 'myrna.robel@example.net', '133-056-3950x558', 7),
(4, 'Betty', 'Reilly', '1989-06-05', 31, 'Female', '2260 Maggio Pines', 'waters.moshe@example.net', '05237178123', 3),
(5, 'Maxwell', 'Smith', '2006-12-08', 34, 'Male', '0526 Randal Dale', 'rafael89@example.org', '1-855-878-3932', 10),
(6, 'Kimberly', 'Kuphal', '1985-07-02', 32, 'Female', '84630 Dickens Ranch', 'robb32@example.com', '244.843.5156', 1),
(7, 'Arthur', 'D\'Amore', '1987-04-18', 35, 'Male', '1325 Margarete Terrace Suite 252', 'hannah.price@example.com', '+58(1)6999969663', 8),
(8, 'Kristy', 'Walsh', '1986-11-24', 33, 'Female', '3869 Betsy Stream', 'paucek.dexter@example.org', '04551177302', 4),
(9, 'Benton', 'Cummerata', '1989-01-30', 34, 'Male', '645 Schmidt Branch Apt. 425', 'alessandra.schaden@example.org', '(954)625-9610', 9),
(10, 'Myrtice', 'Adams', '1970-01-01', 31, 'Female', '0820 Cruickshank Rapid', 'daniela.bernhard@example.net', '(346)083-1539', 2),
(11, 'Georgianna', 'McClure', '1988-05-14', 32, 'Female', '0749 Dortha Motorway', 'kilback.jamar@example.net', '1-484-295-7716x78126', 5),
(12, 'Retta', 'Erdman', '1985-12-25', 34, 'Female', '15687 Abbott Run Apt. 673', 'schumm.margarete@example.org', '06276567296', 1),
(13, 'Tamara', 'Beier', '1986-09-10', 34, 'Female', '2946 Stamm Grove Suite 984', 'lowe.mohamed@example.net', '899-143-6837x7972', 1),
(14, 'Meghan', 'Hessel', '1989-03-19', 31, 'Female', '068 Haley Track Apt. 751', 'filiberto.dooley@example.org', '01367267399', 4),
(15, 'Kiera', 'Kuphal', '1987-08-06', 33, 'Female', '45778 Marjory Trail Suite 489', 'finn.weissnat@example.com', '02291517049', 8),
(16, 'Sophie', 'Smith', '1988-02-28', 32, 'Female', '57769 Monahan Station Apt. 651', 'adele59@example.org', '703.426.8730', 3),
(17, 'Arlo', 'Parker', '1985-05-23', 35, 'Male', '17639 Kub Roads Suite 052', 'bogisich.domenick@example.org', '(100)491-9081', 4),
(18, 'Bryon', 'Strosin', '1986-02-11', 34, 'Male', '89944 Ratke Lock', 'bboyer@example.com', '(257)412-9297x6408', 1),
(19, 'Lennie', 'Buckridge', '1989-07-15', 31, 'Male', '020 Schinner Valley Suite 228', 'amcdermott@example.com', '(365)174-5213x0941', 6),
(20, 'Abe', 'Anderson', '1987-01-07', 33, 'Male', '18462 Crooks Plaza Suite 020', 'awillms@example.org', '774-129-9133x455', 3),
(21, 'Linnea', 'Wolff', '2008-02-28', 32, 'Female', '87230 Stroman Gardens', 'esta31@example.com', '166-471-7422', 10),
(22, 'Brian', 'Gleason', '1985-11-13', 35, 'Male', '72088 Milford Garden Suite 768', 'sanford.elva@example.net', '03041170000', 8),
(23, 'Michael', 'Daugherty', '2009-07-26', 34, 'Male', '288 America Fall', 'boris.gusikowski@example.net', '1-017-764-1673x318', 10),
(24, 'Fay', 'Jacobs', '1989-05-03', 31, 'Female', '06025 Reilly Forks Suite 827', 'keon.barton@example.net', '1-820-540-2514x41994', 9),
(25, 'Aaron', 'Herzog', '1987-12-20', 33, 'Male', '05702 Murl Pines Suite 257', 'parisian.sterling@example.org', '(960)767-1676x8135', 5),
(26, 'Kristian', 'Dooley', '1988-09-27', 32, 'Male', '165 Maxime Point Suite 891', 'brakus.jonatan@example.net', '259.611.6569', 8),
(27, 'Otho', 'Maggio', '1985-03-05', 35, 'Male', '0454 Shane Way', 'herta83@example.org', '+13(6)6619226452', 6),
(28, 'Ludie', 'Vandervort', '1995-12-22', 34, 'Female', '9969 Jammie Harbor', 'yost.john@example.org', '(999)154-5175x0438', 7),
(29, 'Alejandra', 'Schneider', '1989-09-09', 31, 'Female', '33755 Eliza Plains', 'aryanna92@example.org', '489.594.4603', 4),
(30, 'Delbert', 'Hayes', '1987-06-16', 33, 'Male', '4771 Beahan Stream', 'trevor.brakus@example.org', '(128)910-5455', 3),
(31, 'Beryl', 'Buckridge', '1968-01-02', 32, 'Female', '3892 Jerry Lakes Suite 736', 'sophia.reilly@example.net', '1-416-422-5453x59964', 2),
(32, 'Moses', 'Hand', '1985-08-01', 35, 'Male', '786 Buckridge Bridge Suite 619', 'ines76@example.net', '1-815-886-0891', 4),
(33, 'Dereck', 'Purdy', '1986-04-09', 34, 'Male', '8517 Bauch Junction Apt. 421', 'lucas.ratke@example.net', '337.845.4130x94844', 5),
(34, 'Liana', 'Wiza', '1996-11-02', 31, 'Female', '6080 Stanton Summit Apt. 781', 'katlyn.marks@example.net', '(954)450-4099x168', 7),
(35, 'Gabe', 'Shanahan', '1987-03-23', 33, 'Male', '959 Queen Hill Apt. 571', 'ward.keanu@example.org', '738.194.4542x0982', 1),
(36, 'Nicole', 'Jacobi', '1988-11-30', 32, 'Female', '542 Helene Mall Apt. 641', 'tevin.metz@example.net', '1-368-377-8028x964', 6),
(37, 'Polly', 'Reinger', '1985-06-08', 35, 'Female', '1560 Weber Street Apt. 649', 'chaim.heidenreich@example.net', '(444)550-2363x4554', 6),
(38, 'Elta', 'Leffler', '1986-01-14', 34, 'Female', '503 Kutch Ford', 'yshields@example.net', '1-378-874-6849', 5),
(39, 'Hiram', 'Schmeler', '1989-08-21', 31, 'Male', '74735 Rodger Trail', 'tmurphy@example.net', '08507228191', 8),
(40, 'Caleb', 'Wintheiser', '1970-05-28', 33, 'Male', '34195 Dietrich Keys', 'flatley.deshawn@example.com', '892-411-0589x01032', 2),
(41, 'Charlotte', 'Streich', '1967-03-03', 32, 'Female', '2499 Boyle Plain', 'kwehner@example.com', '397-390-6974', 9),
(42, 'Lyric', 'Mann', '1985-10-11', 35, 'Male', '105 Bart Path', 'roberts.angelita@example.org', '472.041.2275x62352', 9),
(43, 'Jovani', 'Rowe', '1986-07-18', 34, 'Female', '509 Johnathon Port', 'merl24@example.org', '503-847-7123', 9),
(44, 'Toy', 'Haley', '1989-04-25', 31, 'Female', '30321 Roberts Greens', 'darrel02@example.com', '388-608-8248', 5),
(45, 'Lisandro', 'Walker', '1973-12-01', 33, 'Male', '4633 Legros Mount', 'magnolia23@example.net', '606.126.7698x99002', 2),
(46, 'Evan', 'Metz', '1988-09-06', 32, 'Male', '5151 Karolann Way', 'williamson.corine@example.com', '508-279-3127', 3),
(47, 'Beaulah', 'Runolfsdottir', '1965-04-14', 35, 'Female', '119 Peyton Springs Apt. 768', 'nbarrows@example.org', '875-530-1855x885', 2),
(48, 'Theodora', 'Gleichner', '1986-11-20', 31, 'Female', '5269 Otha Field', 'sward@example.net', '364.953.4664', 6),
(49, 'Abigail', 'Kuhlman', '1992-06-26', 34, 'Female', '20228 Fahey Ports Suite 399', 'rohan.rahsaan@example.org', '(460)074-1953', 7),
(50, 'Russel', 'Mraz', '2010-02-03', 33, 'Male', '6188 Raoul Stream', 'frida28@example.org', '1-719-875-6934x885', 10);

-- Old Entries
-- INSERT INTO `Talent` (`ArtistID`, `FirstName`, `LastName`, `DOB`, `Age`, `Address`, `Email`, `Phone`, `AgencyID`) VALUES
-- (1, 'Helmer', 'Donnelly', '1997-03-12', 32, '42313 Koch Motorway', 'bblick@example.net', '(645)181-5348', 7),
-- (2, 'Scottie', 'Sawayn', '2002-10-29', 33, '087 Willa Run', 'dana92@example.com', '243.375.8245x572', 10),
-- (3, 'Houston', 'Hermann', '1995-09-21', 35, '5670 Nelda Path', 'myrna.robel@example.net', '133-056-3950x558', 7),
-- (4, 'Betty', 'Reilly', '1989-06-05', 31, '2260 Maggio Pines', 'waters.moshe@example.net', '05237178123', 3),
-- (5, 'Maxwell', 'Smith', '2006-12-08', 34, '0526 Randal Dale', 'rafael89@example.org', '1-855-878-3932', 10),
-- (6, 'Kimberly', 'Kuphal', '1985-07-02', 32, '84630 Dickens Ranch', 'robb32@example.com', '244.843.5156', 1),
-- (7, 'Arthur', 'D\'Amore', '1987-04-18', 35, '1325 Margarete Terrace Suite 252', 'hannah.price@example.com', '+58(1)6999969663', 8),
-- (8, 'Kristy', 'Walsh', '1986-11-24', 33, '3869 Betsy Stream', 'paucek.dexter@example.org', '04551177302', 4),
-- (9, 'Benton', 'Cummerata', '1989-01-30', 34, '645 Schmidt Branch Apt. 425', 'alessandra.schaden@example.org', '(954)625-9610', 9),
-- (10, 'Myrtice', 'Adams', '1970-01-01', 31, '0820 Cruickshank Rapid', 'daniela.bernhard@example.net', '(346)083-1539', 2),
-- (11, 'Georgianna', 'McClure', '1988-05-14', 32, '0749 Dortha Motorway', 'kilback.jamar@example.net', '1-484-295-7716x78126', 5),
-- (12, 'Retta', 'Erdman', '1985-12-25', 34, '15687 Abbott Run Apt. 673', 'schumm.margarete@example.org', '06276567296', 1),
-- (13, 'Tamara', 'Beier', '1986-09-10', 34, '2946 Stamm Grove Suite 984', 'lowe.mohamed@example.net', '899-143-6837x7972', 1),
-- (14, 'Meghan', 'Hessel', '1989-03-19', 31, '068 Haley Track Apt. 751', 'filiberto.dooley@example.org', '01367267399', 4),
-- (15, 'Kiera', 'Kuphal', '1987-08-06', 33, '45778 Marjory Trail Suite 489', 'finn.weissnat@example.com', '02291517049', 8),
-- (16, 'Sophie', 'Smith', '1988-02-28', 32, '57769 Monahan Station Apt. 651', 'adele59@example.org', '703.426.8730', 3),
-- (17, 'Arlo', 'Parker', '1985-05-23', 35, '17639 Kub Roads Suite 052', 'bogisich.domenick@example.org', '(100)491-9081', 4),
-- (18, 'Bryon', 'Strosin', '1986-02-11', 34, '89944 Ratke Lock', 'bboyer@example.com', '(257)412-9297x6408', 1),
-- (19, 'Lennie', 'Buckridge', '1989-07-15', 31, '020 Schinner Valley Suite 228', 'amcdermott@example.com', '(365)174-5213x0941', 6),
-- (20, 'Abe', 'Anderson', '1987-01-07', 33, '18462 Crooks Plaza Suite 020', 'awillms@example.org', '774-129-9133x455', 3),
-- (21, 'Linnea', 'Wolff', '2008-02-28', 32, '87230 Stroman Gardens', 'esta31@example.com', '166-471-7422', 10),
-- (22, 'Brian', 'Gleason', '1985-11-13', 35, '72088 Milford Garden Suite 768', 'sanford.elva@example.net', '03041170000', 8),
-- (23, 'Michael', 'Daugherty', '2009-07-26', 34, '288 America Fall', 'boris.gusikowski@example.net', '1-017-764-1673x318', 10),
-- (24, 'Fay', 'Jacobs', '1989-05-03', 31, '06025 Reilly Forks Suite 827', 'keon.barton@example.net', '1-820-540-2514x41994', 9),
-- (25, 'Aaron', 'Herzog', '1987-12-20', 33, '05702 Murl Pines Suite 257', 'parisian.sterling@example.org', '(960)767-1676x8135', 5),
-- (26, 'Kristian', 'Dooley', '1988-09-27', 32, '165 Maxime Point Suite 891', 'brakus.jonatan@example.net', '259.611.6569', 8),
-- (27, 'Otho', 'Maggio', '1985-03-05', 35, '0454 Shane Way', 'herta83@example.org', '+13(6)6619226452', 6),
-- (28, 'Ludie', 'Vandervort', '1995-12-22', 34, '9969 Jammie Harbor', 'yost.john@example.org', '(999)154-5175x0438', 7),
-- (29, 'Alejandra', 'Schneider', '1989-09-09', 31, '33755 Eliza Plains', 'aryanna92@example.org', '489.594.4603', 4),
-- (30, 'Delbert', 'Hayes', '1987-06-16', 33, '4771 Beahan Stream', 'trevor.brakus@example.org', '(128)910-5455', 3),
-- (31, 'Beryl', 'Buckridge', '1968-01-02', 32, '3892 Jerry Lakes Suite 736', 'sophia.reilly@example.net', '1-416-422-5453x59964', 2),
-- (32, 'Moses', 'Hand', '1985-08-01', 35, '786 Buckridge Bridge Suite 619', 'ines76@example.net', '1-815-886-0891', 4),
-- (33, 'Dereck', 'Purdy', '1986-04-09', 34, '8517 Bauch Junction Apt. 421', 'lucas.ratke@example.net', '337.845.4130x94844', 5),
-- (34, 'Liana', 'Wiza', '1996-11-02', 31, '6080 Stanton Summit Apt. 781', 'katlyn.marks@example.net', '(954)450-4099x168', 7),
-- (35, 'Gabe', 'Shanahan', '1987-03-23', 33, '959 Queen Hill Apt. 571', 'ward.keanu@example.org', '738.194.4542x0982', 1),
-- (36, 'Nicole', 'Jacobi', '1988-11-30', 32, '542 Helene Mall Apt. 641', 'tevin.metz@example.net', '1-368-377-8028x964', 6),
-- (37, 'Polly', 'Reinger', '1985-06-08', 35, '1560 Weber Street Apt. 649', 'chaim.heidenreich@example.net', '(444)550-2363x4554', 6),
-- (38, 'Elta', 'Leffler', '1986-01-14', 34, '503 Kutch Ford', 'yshields@example.net', '1-378-874-6849', 5),
-- (39, 'Hiram', 'Schmeler', '1989-08-21', 31, '74735 Rodger Trail', 'tmurphy@example.net', '08507228191', 8),
-- (40, 'Caleb', 'Wintheiser', '1970-05-28', 33, '34195 Dietrich Keys', 'flatley.deshawn@example.com', '892-411-0589x01032', 2),
-- (41, 'Charlotte', 'Streich', '1967-03-03', 32, '2499 Boyle Plain', 'kwehner@example.com', '397-390-6974', 9),
-- (42, 'Lyric', 'Mann', '1985-10-11', 35, '105 Bart Path', 'roberts.angelita@example.org', '472.041.2275x62352', 9),
-- (43, 'Jovani', 'Rowe', '1986-07-18', 34, '509 Johnathon Port', 'merl24@example.org', '503-847-7123', 9),
-- (44, 'Toy', 'Haley', '1989-04-25', 31, '30321 Roberts Greens', 'darrel02@example.com', '388-608-8248', 5),
-- (45, 'Lisandro', 'Walker', '1973-12-01', 33, '4633 Legros Mount', 'magnolia23@example.net', '606.126.7698x99002', 2),
-- (46, 'Evan', 'Metz', '1988-09-06', 32, '5151 Karolann Way', 'williamson.corine@example.com', '508-279-3127', 3),
-- (47, 'Beaulah', 'Runolfsdottir', '1965-04-14', 35, '119 Peyton Springs Apt. 768', 'nbarrows@example.org', '875-530-1855x885', 2),
-- (48, 'Theodora', 'Gleichner', '1986-11-20', 31, '5269 Otha Field', 'sward@example.net', '364.953.4664', 6),
-- (49, 'Abigail', 'Kuhlman', '1992-06-26', 34, '20228 Fahey Ports Suite 399', 'rohan.rahsaan@example.org', '(460)074-1953', 7),
-- (50, 'Russel', 'Mraz', '2010-02-03', 33, '6188 Raoul Stream', 'frida28@example.org', '1-719-875-6934x885', 10);

-- Updating Age of Talents
UPDATE Talent 
SET 
    Age = TIMESTAMPDIFF(YEAR, DOB, CURDATE());

-- Some queries to see if generated data is good
SELECT AgencyID, avg(age)
FROM Talent
GROUP BY AgencyID
ORDER BY AgencyID;

SELECT AgencyID, year(DOB), count(*)
FROM Talent
GROUP BY AgencyID, year(dob)
ORDER BY AgencyID, year(DOB);



# Table - Singer
CREATE TABLE `Singer` (
    `ArtistID` INT NOT NULL,
    `Specialty` VARCHAR(50) DEFAULT NULL,
    PRIMARY KEY (`ArtistID`),
    CONSTRAINT `Singer_ibfk_1` FOREIGN KEY (`ArtistID`)
        REFERENCES `Talent` (`ArtistID`)
);

INSERT INTO `Singer` (`ArtistID`, `Specialty`) VALUES
(1, 'Classical'),
(2, 'Rap'),
(3, 'Classical'),
(4, 'Party'),
(5, 'Rap'),
(6, 'R&B'),
(7, 'Rap'),
(8, 'Pop'),
(9, 'Rap'),
(10, 'Pop'),
(21, 'R&B'),
(22, 'Classical'),
(23, 'R&B'),
(24, 'Party'),
(25, 'R&B'),
(36, 'Classical'),
(37, 'Pop'),
(38, 'Rap'),
(39, 'Pop'),
(40, 'Classical');



# Table - Actor
CREATE TABLE `Actor` (
    `ArtistID` INT NOT NULL,
    `Specialty` VARCHAR(50) DEFAULT NULL,
    PRIMARY KEY (`ArtistID`),
    CONSTRAINT `Actor_ibfk_1` FOREIGN KEY (`ArtistID`)
        REFERENCES `Talent` (`ArtistID`)
);

INSERT INTO `Actor` (`ArtistID`, `Specialty`) VALUES
(11, 'Action'),
(12, 'Fiction'),
(13, 'Action'),
(14, 'Comedy'),
(15, 'Action'),
(16, 'Horror'),
(17, 'Action'),
(18, 'Comedy'),
(19, 'Fiction'),
(20, 'Comedy'),
(21, 'Drama'),
(22, 'Drama'),
(23, 'Horror'),
(24, 'Action'),
(25, 'Horror'),
(26, 'Comedy'),
(27, 'Drama'),
(28, 'Action'),
(29, 'Fiction'),
(30, 'Action'),
(31, 'Drama'),
(32, 'Fiction'),
(33, 'Fiction'),
(34, 'Fiction'),
(35, 'Fiction'),
(36, 'Comedy'),
(37, 'Horror'),
(38, 'Comedy'),
(39, 'Horror'),
(40, 'Comedy'),
(41, 'Horror'),
(42, 'Comedy'),
(43, 'Comedy'),
(44, 'Fiction'),
(45, 'Horror'),
(46, 'Comedy'),
(47, 'Comedy'),
(48, 'Action'),
(49, 'Action'),
(50, 'Drama');



# Table - Concerts
CREATE TABLE `Concert` (
    `ConcertID` INT NOT NULL,
    `Venue` VARCHAR(100) DEFAULT NULL,
    `Capacity` INT DEFAULT NULL,
    `Date` DATE DEFAULT NULL,
    `Time` TIME DEFAULT NULL,
    `StatsID` INT DEFAULT NULL,
    PRIMARY KEY (`ConcertID`),
    KEY `StatsID` (`StatsID`),
    CONSTRAINT `Concert_ibfk_1` FOREIGN KEY (`StatsID`)
        REFERENCES `Stats` (`StatsID`)
);

INSERT INTO `Concert` (`ConcertID`, `Venue`, `Capacity`, `Date`, `Time`, `StatsID`) VALUES
(1, 'Staples Center', 46500, '2019-04-28', '00:00:00', 14),
(2, 'Barclays Center', 28000, '2020-11-24', '14:30:00', 26),
(3, 'Barclays Center', 62000, '2020-01-04', '09:30:00', 3),
(4, 'Staples Center', 48000, '2022-08-16', '00:00:00', 30),
(5, 'Rocks Amphitheatre', 55500, '2023-09-30', '12:30:00', 7),
(6, 'Rocks Amphitheatre', 32500, '2022-11-25', '00:00:00', 29),
(7, 'Royal Albert Hall', 46500, '2021-09-16', '14:30:00', 24),
(8, 'Square Garden', 31000, '2021-12-20', '17:00:00', 22),
(9, 'Barclays Center', 64500, '2019-10-20', '17:30:00', 18),
(10, 'Rocks Amphitheatre', 25500, '2019-03-12', '22:00:00', 16),
(11, 'Staples Center', 36500, '2023-01-27', '19:30:00', 20),
(12, 'Barclays Center', 59500, '2020-09-12', '21:30:00', 27),
(13, 'Staples Center', 28500, '2021-04-16', '01:00:00', 2),
(14, 'Staples Center', 33500, '2022-03-16', '13:00:00', 10),
(15, 'Square Garden', 64000, '2019-06-13', '11:00:00', 6),
(16, 'Barclays Center', 62000, '2022-05-19', '15:00:00', 8),
(17, 'Staples Center', 59000, '2023-06-08', '00:30:00', 23),
(18, 'Barclays Center', 50500, '2023-02-20', '17:30:00', 11),
(19, 'Barclays Center', 30000, '2019-11-15', '03:30:00', 19),
(20, 'Barclays Center', 44000, '2020-01-15', '11:30:00', 25),
(21, 'Barclays Center', 50500, '2021-11-27', '12:00:00', 4),
(22, 'Rocks Amphitheatre', 57600, '2023-03-26', '14:00:00', 15),
(23, 'Rocks Amphitheatre', 64700, '2019-04-20', '11:30:00', 17),
(24, 'Barclays Center', 59500, '2022-06-25', '18:00:00', 13),
(25, 'Barclays Center', 44000, '2019-08-23', '10:00:00', 5),
(26, 'Square Garden', 65000, '2019-12-01', '22:00:00', 12),
(27, 'Rocks Amphitheatre', 47000, '2022-03-24', '17:30:00', 9),
(28, 'Rocks Amphitheatre', 53000, '2023-10-03', '21:30:00', 28),
(29, 'Rocks Amphitheatre', 57500, '2023-04-17', '17:30:00', 21),
(30, 'Royal Albert Hall', 46500, '2022-09-18', '12:00:00', 1);



# Table - OrganizeConcert
CREATE TABLE `OrganizeConcert` (
    `ConcertID` INT NOT NULL,
    `AgencyID` INT NOT NULL,
    `ArtistID` INT NOT NULL,
    PRIMARY KEY (`ConcertID` , `AgencyID` , `ArtistID`),
    KEY `AgencyID` (`AgencyID`),
    KEY `ArtistID` (`ArtistID`),
    CONSTRAINT `OrganizeConcert_ibfk_1` FOREIGN KEY (`ConcertID`)
        REFERENCES `Concert` (`ConcertID`),
    CONSTRAINT `OrganizeConcert_ibfk_2` FOREIGN KEY (`AgencyID`)
        REFERENCES `Agency` (`AgencyID`),
    CONSTRAINT `OrganizeConcert_ibfk_3` FOREIGN KEY (`ArtistID`)
        REFERENCES `Singer` (`ArtistID`)
);

INSERT INTO `OrganizeConcert` (`ConcertID`, `AgencyID`, `ArtistID`) VALUES
(1, 7, 1),
(2, 10, 2),
(3, 7, 3),
(4, 3, 4),
(5, 10, 5),
(6, 1, 6),
(7, 8, 7),
(8, 4, 8),
(9, 9, 9),
(10, 2, 10),
(11, 10, 21),
(12, 8, 22),
(13, 10, 23),
(14, 9, 24),
(15, 5, 25),
(16, 6, 36),
(17, 6, 37),
(18, 5, 38),
(19, 8, 39),
(20, 2, 40),
(21, 7, 1),
(22, 10, 2),
(23, 7, 3),
(24, 3, 4),
(25, 10, 5),
(26, 1, 6),
(27, 8, 7),
(28, 4, 8),
(29, 9, 9),
(30, 2, 10);



# Table - Album
CREATE TABLE `Album` (
    `AlbumID` INT NOT NULL,
    `Name` VARCHAR(100) DEFAULT NULL,
    `Year` INT DEFAULT NULL,
    `Duration` INT DEFAULT NULL,
    `Genre` VARCHAR(50) DEFAULT NULL,
    `ArtistID` INT DEFAULT NULL,
    `StatID` INT DEFAULT NULL,
    PRIMARY KEY (`AlbumID`),
    KEY `ArtistID` (`ArtistID`),
    KEY `StatID` (`StatID`),
    CONSTRAINT `Album_ibfk_1` FOREIGN KEY (`ArtistID`)
        REFERENCES `Singer` (`ArtistID`),
    CONSTRAINT `Album_ibfk_2` FOREIGN KEY (`StatID`)
        REFERENCES `Stats` (`StatsID`)
);

INSERT INTO `Album` (`AlbumID`, `Name`, `Year`, `Duration`, `Genre`, `ArtistID`, `StatID`) VALUES
(1, 'Ipsa voluptatem.', 2019, 58, 'Party', 6, 36),
(2, 'Repellendus quia ut.', 2021, 52, 'Rap', 23, 43),
(3, 'Sed voluptatibus.', 2020, 65, 'Pop', 1, 51),
(4, 'Esse id.', 2020, 51, 'Pop', 2, 52),
(5, 'Enim ut perspiciatis possimus.', 2019, 62, 'Classical', 25, 45),
(6, 'Iure reprehenderit suscipit.', 2023, 60, 'Classical', 8, 58),
(7, 'Ipsa sequi sed.', 2019, 53, 'Pop', 8, 38),
(8, 'Quasi iure vero.', 2020, 56, 'Rap', 22, 42),
(9, 'Minus praesentium reprehenderit.', 2022, 73, 'Rap', 4, 34),
(10, 'Et ut expedita consequatur.', 2023, 57, 'Party', 10, 60),
(11, 'Sequi autem qui dolor.', 2019, 70, 'Party', 7, 37),
(12, 'Quia sed.', 2019, 62, 'Pop', 39, 49),
(13, 'Sunt rem ipsa amet pariatur.', 2020, 59, 'Pop', 37, 47),
(14, 'Illo ratione expedita ea.', 2022, 74, 'Rap', 4, 54),
(15, 'Voluptatem velit quo.', 2022, 68, 'Party', 10, 40),
(16, 'Consectetur quod.', 2021, 63, 'Classical', 5, 55),
(17, 'Expedita et quis ullam.', 2021, 74, 'R&B', 3, 33),
(18, 'Molestiae totam impedit in.', 2022, 48, 'Classical', 3, 53),
(19, 'Voluptas placeat voluptatem.', 2023, 49, 'Pop', 9, 59),
(20, 'Est eius nostrum est.', 2019, 53, 'R&B', 40, 50),
(21, 'Accusantium quo et non.', 2023, 75, 'Classical', 38, 48),
(22, 'Est temporibus asperiores cumque.', 2023, 61, 'Rap', 7, 57),
(23, 'Quibusdam aut aliquam.', 2019, 55, 'Pop', 9, 39),
(24, 'Accusantium aut saepe aspernatur.', 2020, 53, 'Party', 5, 35),
(25, 'Dolorem dicta tempora.', 2023, 54, 'Pop', 36, 46),
(26, 'Iure nostrum qui.', 2021, 70, 'R&B', 1, 31),
(27, 'Nobis harum officia.', 2023, 47, 'Classical', 24, 44),
(28, 'In omnis ex temporibus.', 2022, 75, 'Classical', 21, 41),
(29, 'Consequatur similique quas excepturi.', 2021, 51, 'R&B', 2, 32),
(30, 'Vitae fugiat esse qui placeat.', 2023, 73, 'Pop', 6, 56);



# Table - Movie
CREATE TABLE `Movie` (
    `MovieID` INT NOT NULL,
    `Title` VARCHAR(100) DEFAULT NULL,
    `Duration` INT DEFAULT NULL,
    `Genre` VARCHAR(50) DEFAULT NULL,
    `Rating` DECIMAL(3 , 1 ) DEFAULT NULL,
    `Year` INT DEFAULT NULL,
    `StatID` INT DEFAULT NULL,
    PRIMARY KEY (`MovieID`),
    KEY `StatID` (`StatID`),
    CONSTRAINT `Movie_ibfk_1` FOREIGN KEY (`StatID`)
        REFERENCES `Stats` (`StatsID`)
);

INSERT INTO `Movie` (`MovieID`, `Title`, `Duration`, `Genre`, `Rating`, `Year`, `StatID`) VALUES
(1, 'Repellendus ut voluptatem accusamus.', 124, 'Action', '3.3', 2022, 68),
(2, 'Corrupti ipsam debitis rerum.', 108, 'Comedy', '6.0', 2019, 61),
(3, 'Corrupti cum animi hic quo.', 70, 'Drama', '9.5', 2023, 78),
(4, 'Non ipsa ipsum.', 75, 'Action', '8.6', 2022, 71),
(5, 'Totam voluptatem quo ad dolore.', 75, 'Action', '5.9', 2021, 76),
(6, 'Soluta sunt minus.', 143, 'Horror', '8.0', 2020, 77),
(7, 'Eum soluta nemo officia.', 120, 'Horror', '9.2', 2023, 74),
(8, 'Explicabo consequatur esse nisi ipsa illum.', 185, 'Comedy', '9.9', 2021, 85),
(9, 'Assumenda ullam eligendi.', 183, 'Comedy', '7.2', 2020, 66),
(10, 'Consequatur inventore porro ut distinctio.', 166, 'Comedy', '7.7', 2023, 63),
(11, 'Excepturi sunt labore aut minus.', 108, 'Action', '7.8', 2020, 84),
(12, 'Dolorem distinctio alias itaque temporibus.', 79, 'Comedy', '8.6', 2021, 79),
(13, 'Laborum quaerat quia.', 167, 'Action', '4.0', 2023, 70),
(14, 'Adipisci corrupti voluptatibus corporis.', 157, 'Drama', '3.4', 2021, 67),
(15, 'Temporibus voluptas consequuntur amet.', 114, 'Horror', '3.9', 2019, 82),
(16, 'Ut dolor placeat asperiores voluptas.', 194, 'Fiction', '7.4', 2023, 81),
(17, 'Ipsum sapiente suscipit fugiat.', 131, 'Fiction', '8.2', 2019, 65),
(18, 'Nam dicta voluptatem necessitatibus.', 142, 'Drama', '8.5', 2020, 83),
(19, 'Consequatur qui nesciunt ex.', 144, 'Drama', '5.8', 2023, 64),
(20, 'Quasi repudiandae dolorum aliquid.', 191, 'Action', '6.7', 2019, 72),
(21, 'Libero laudantium aut quam debitis magni.', 131, 'Drama', '6.3', 2022, 75),
(22, 'Eligendi perferendis sit.', 120, 'Fiction', '5.7', 2023, 69),
(23, 'Consequuntur adipisci tempora.', 97, 'Comedy', '3.4', 2022, 62),
(24, 'Doloribus aliquid possimus provident optio quae.', 103, 'Action', '3.4', 2022, 80),
(25, 'Voluptatem repellendus quaerat.', 104, 'Comedy', '9.6', 2019, 73);



# Table - Act
CREATE TABLE `Act` (
    `ArtistID` INT NOT NULL,
    `MovieID` INT NOT NULL,
    `Role` VARCHAR(100) DEFAULT NULL,
    `Fee` DECIMAL(10 , 2 ) DEFAULT NULL,
    PRIMARY KEY (`ArtistID` , `MovieID`),
    KEY `MovieID` (`MovieID`),
    CONSTRAINT `Act_ibfk_1` FOREIGN KEY (`ArtistID`)
        REFERENCES `Actor` (`ArtistID`),
    CONSTRAINT `Act_ibfk_2` FOREIGN KEY (`MovieID`)
        REFERENCES `Movie` (`MovieID`)
);

INSERT INTO `Act` (`ArtistID`, `MovieID`, `Role`, `Fee`) VALUES
(39, 1, 'Lead Actor', '35835798.00'),
(36, 1, 'Lead Actress', '30602784.00'),
(26, 1, 'Support Actor', '11125717.00'),
(11, 1, 'Support Actress', '28313736.00'),
(27, 2, 'Lead Actor', '45004270.00'),
(37, 2, 'Lead Actress', '10367338.00'),
(50, 2, 'Support Actor', '41250041.00'),
(12, 2, 'Support Actress', '33581417.00'),
(23, 3, 'Lead Actor', '12953418.00'),
(28, 3, 'Lead Actress', '21126349.00'),
(13, 3, 'Support Actress', '22864198.00'),
(38, 3, 'Support Actress', '20667038.00'),
(44, 4, 'Lead Actress', '10705817.00'),
(14, 4, 'Lead Actress', '31153954.00'),
(39, 4, 'Support Actor', '24593330.00'),
(29, 4, 'Support Actress', '22488701.00'),
(50, 5, 'Lead Actor', '44270318.00'),
(30, 5, 'Support Actor', '44956530.00'),
(40, 5, 'Support Actor', '11428881.00'),
(15, 5, 'Support Actress', '16797485.00'),
(19, 6, 'Lead Actor', '21845250.00'),
(37, 6, 'Lead Actress', '12987274.00'),
(16, 6, 'Support Actress', '10935405.00'),
(31, 6, 'Support Actress', '31696528.00'),
(30, 7, 'Lead Actor', '42976856.00'),
(16, 7, 'Lead Actress', '43679160.00'),
(32, 7, 'Support Actor', '27340425.00'),
(37, 7, 'Support Actress', '27406999.00'),
(18, 8, 'Lead Actor', '38772797.00'),
(48, 8, 'Lead Actress', '18638623.00'),
(23, 8, 'Support Actor', '15991312.00'),
(33, 8, 'Support Actor', '44854911.00'),
(26, 9, 'Lead Actor', '20934480.00'),
(44, 9, 'Lead Actress', '18139521.00'),
(19, 9, 'Support Actor', '27459652.00'),
(34, 9, 'Support Actress', '21036417.00'),
(35, 10, 'Lead Actor', '15755461.00'),
(50, 10, 'Support Actor', '17554359.00'),
(20, 10, 'Support Actor', '25581573.00'),
(31, 10, 'Support Actress', '22959878.00'),
(21, 11, 'Lead Actress', '40012098.00'),
(36, 11, 'Lead Actress', '10901494.00'),
(11, 11, 'Lead Actress', '21955147.00'),
(37, 11, 'Support Actress', '13488554.00'),
(30, 12, 'Lead Actor', '10096457.00'),
(12, 12, 'Lead Actress', '39986108.00'),
(22, 12, 'Support Actor', '11704923.00'),
(37, 12, 'Support Actress', '45143149.00'),
(23, 13, 'Lead Actor', '26089178.00'),
(13, 13, 'Lead Actress', '31826523.00'),
(48, 13, 'Support Actress', '49339518.00'),
(38, 13, 'Support Actress', '26831969.00'),
(39, 14, 'Lead Actor', '20365539.00'),
(24, 14, 'Lead Actress', '21967965.00'),
(26, 14, 'Support Actor', '18249571.00'),
(14, 14, 'Support Actress', '36204959.00'),
(25, 15, 'Lead Actor', '35492297.00'),
(15, 15, 'Lead Actress', '42258142.00'),
(40, 15, 'Support Actor', '12722298.00'),
(31, 15, 'Support Actress', '49434797.00'),
(39, 16, 'Lead Actor', '31828519.00'),
(11, 16, 'Lead Actress', '44719953.00'),
(26, 16, 'Support Actor', '45155027.00'),
(16, 16, 'Support Actress', '32686867.00'),
(40, 17, 'Support Actor', '18801816.00'),
(27, 17, 'Lead Actor', '35288771.00'),
(12, 17, 'Lead Actress', '44330544.00'),
(17, 17, 'Support Actor', '31740526.00'),
(23, 18, 'Lead Actor', '19903544.00'),
(28, 18, 'Lead Actress', '17877185.00'),
(18, 18, 'Support Actor', '18535278.00'),
(13, 18, 'Support Actress', '17971832.00'),
(19, 19, 'Lead Actor', '41560793.00'),
(44, 19, 'Lead Actress', '30857906.00'),
(14, 19, 'Support Actress', '10679636.00'),
(29, 19, 'Support Actress', '16302508.00'),
(30, 20, 'Lead Actor', '31053398.00'),
(15, 20, 'Lead Actress', '40852913.00'),
(50, 20, 'Support Actor', '36268425.00'),
(20, 20, 'Support Actor', '23855178.00'),
(17, 21, 'Lead Actor', '40487180.00'),
(31, 21, 'Lead Actress', '46487934.00'),
(50, 21, 'Support Actor', '28964720.00'),
(21, 21, 'Support Actress', '16587366.00'),
(30, 22, 'Lead Actor', '37072204.00'),
(17, 22, 'Lead Actor', '43166915.00'),
(22, 22, 'Support Actor', '28369572.00'),
(32, 22, 'Support Actor', '36825149.00'),
(33, 23, 'Lead Actor', '23701966.00'),
(48, 23, 'Lead Actress', '47354257.00'),
(23, 23, 'Support Actor', '10359149.00'),
(18, 23, 'Support Actor', '40750355.00'),
(19, 24, 'Lead Actor', '42942222.00'),
(24, 24, 'Lead Actress', '14785213.00'),
(26, 24, 'Support Actor', '42343889.00'),
(34, 24, 'Support Actress', '35113553.00'),
(25, 25, 'Lead Actor', '48595808.00'),
(35, 25, 'Support Actor', '10480259.00'),
(20, 25, 'Support Actor', '14326740.00'),
(31, 25, 'Support Actress', '36712290.00');



# Table - Endorse
CREATE TABLE `Endorse` (
    `ArtistID` INT NOT NULL,
    `CompanyID` INT NOT NULL,
    `Fee` DECIMAL(10 , 2 ) DEFAULT NULL,
    `StartDate` DATE DEFAULT NULL,
    `EndDate` DATE DEFAULT NULL,
    `Sector` VARCHAR(50) DEFAULT NULL,
    PRIMARY KEY (`ArtistID` , `CompanyID`),
    KEY `CompanyID` (`CompanyID`),
    CONSTRAINT `Endorse_ibfk_1` FOREIGN KEY (`ArtistID`)
        REFERENCES `Talent` (`ArtistID`),
    CONSTRAINT `Endorse_ibfk_2` FOREIGN KEY (`CompanyID`)
        REFERENCES `Company` (`CompanyID`)
);

INSERT INTO `Endorse` (`ArtistID`, `CompanyID`, `Fee`, `StartDate`, `EndDate`, `Sector`) VALUES 
(1, 1, '28978754.00', '2019-11-10', '2024-11-10', 'Sport'),
(2, 2, '26693454.00', '2023-03-09', '2026-07-11', 'Sport'),
(3, 3, '31011432.00', '2023-10-28', '2026-12-22', 'Electronic Appliance'),
(4, 4, '9351748.00', '2019-12-25', '2020-12-10', 'Electronic Appliance'),
(5, 5, '6186785.00', '2022-04-30', '2025-06-26', 'Electronic Appliance'),
(6, 6, '17171597.00', '2021-10-02', '2024-05-30', 'Fashion'),
(7, 7, '32737506.00', '2019-06-13', '2021-03-12', 'Hardware'),
(8, 8, '39844485.00', '2021-04-27', '2026-12-18', 'Hardware'),
(9, 9, '40784121.00', '2020-06-18', '2025-07-03', 'Food'),
(10, 10, '41948229.00', '2022-01-13', '2025-11-16', 'Food'),
(11, 1, '7272237.00', '2019-05-24', '2022-12-12', 'Sport'),
(12, 2, '24372079.00', '2023-06-23', '2028-12-13', 'Food'),
(13, 3, '38652767.00', '2020-07-21', '2023-04-02', 'Hardware'),
(14, 4, '16589145.00', '2019-05-30', '2024-03-20', 'Fashion'),
(15, 5, '49539698.00', '2019-12-16', '2020-12-22', 'Food'),
(16, 6, '14709060.00', '2020-02-17', '2022-03-29', 'Food'),
(17, 7, '17684938.00', '2023-02-25', '2024-08-14', 'Sport'),
(18, 8, '17018280.00', '2022-03-23', '2025-12-26', 'Food'),
(19, 9, '36335516.00', '2021-01-13', '2025-03-10', 'Sport'),
(20, 10, '5677638.00', '2023-01-19', '2026-03-28', 'Fashion'),
(21, 1, '23966986.00', '2021-12-13', '2024-08-17', 'Hardware'),
(22, 2, '6252822.00', '2019-12-06', '2024-10-06', 'Fashion'),
(23, 3, '35252951.00', '2022-03-01', '2026-01-30', 'Hardware'),
(24, 4, '32857925.00', '2020-05-04', '2022-03-17', 'Food'),
(25, 5, '22022110.00', '2019-09-19', '2023-05-31', 'Hardware'),
(26, 6, '25020044.00', '2021-04-01', '2027-05-17', 'Fashion'),
(27, 7, '14741704.00', '2020-02-05', '2021-08-27', 'Food'),
(28, 8, '40449220.00', '2022-07-11', '2025-01-25', 'Food'),
(29, 9, '5700913.00', '2023-10-30', '2027-06-18', 'Sport'),
(30, 10, '42502611.00', '2021-02-25', '2024-06-13', 'Fashion');



# Table - Award
CREATE TABLE `Award` (
    `AwardID` INT NOT NULL,
    `Title` VARCHAR(100) DEFAULT NULL,
    `Organization` VARCHAR(100) DEFAULT NULL,
    PRIMARY KEY (`AwardID`)
);

INSERT INTO `Award` (`AwardID`, `Title`, `Organization`) VALUES
(1, 'Best Actor', 'Globe Awards'),
(2, 'Best Support Actor', 'Globe Awards'),
(3, 'Best Actress', 'Globe Awards'),
(4, 'Best Support Actress', 'Globe Awards'),
(5, 'Best Singer', 'Globe Awards'),
(6, 'Best Album', 'Globe Awards'),
(7, 'Best Actor', 'Spotlight Awards'),
(8, 'Best Support Actor', 'Spotlight Awards'),
(9, 'Best Actress', 'Spotlight Awards'),
(10, 'Best Support Actress', 'Spotlight Awards'),
(11, 'Best Singer', 'Spotlight Awards'),
(12, 'Best Album', 'Spotlight Awards');



# Table - Production
CREATE TABLE `Production` (
    `Identifier` VARCHAR(25) NOT NULL,
    PRIMARY KEY (`Identifier`)
);

INSERT INTO `Production` (`Identifier`) VALUES
('M1'), ('M2'), ('M3'), ('M4'), ('M5'),
('M6'), ('M7'), ('M8'), ('M9'), ('M10'),
('M11'), ('M12'), ('M13'), ('M14'), ('M15'),
('M16'), ('M17'), ('M18'), ('M19'), ('M20'),
('M21'), ('M22'), ('M23'), ('M24'), ('M25'),
('M26'), ('M27'), ('M28'), ('M29'), ('M30'),
('M31'), ('M32'), ('M33'), ('M34'), ('M35'),
('M36'), ('M37'), ('M38'), ('M39'), ('M40'),
('M41'), ('M42'), ('M43'), ('M44'), ('M45'),
('M46'), ('M47'), ('M48'), ('M49'), ('M50'),
('M51'), ('M52'), ('M53'), ('M54'), ('M55'),
('M56'), ('M57'), ('M58'), ('M59'), ('M60'),
('M61'), ('M62'), ('M63'), ('M64'), ('M65'),
('M66'), ('M67'), ('M68'), ('M69'), ('M70'),
('M71'), ('M72'), ('M73'), ('M74'), ('M75'),
('M76'), ('M77'), ('M78'), ('M79'), ('M80'),
('M81'), ('M82'), ('M83'), ('M84'), ('M85'),
('M86'), ('M87'), ('M88'), ('M89'), ('M90'),
('M91'), ('M92'), ('M93'), ('M94'), ('M95'),
('M96'), ('M97'), ('M98'), ('M99'), ('M100'),
('A1'), ('A2'), ('A3'), ('A4'), ('A5'),
('A6'), ('A7'), ('A8'), ('A9'), ('A10'),
('A11'), ('A12'), ('A13'), ('A14'), ('A15'),
('A16'), ('A17'), ('A18'), ('A19'), ('A20'),
('A21'), ('A22'), ('A23'), ('A24'), ('A25'),
('A26'), ('A27'), ('A28'), ('A29'), ('A30');



# Table - AlbumProduction
CREATE TABLE `AlbumProduction` (
    `Identifier` VARCHAR(25) NOT NULL,
    `AlbumID` INT NOT NULL,
    `ArtistID` INT NOT NULL,
    PRIMARY KEY (`Identifier` , `AlbumID` , `ArtistID`),
    KEY `AlbumID` (`AlbumID`),
    KEY `ArtistID` (`ArtistID`),
    CONSTRAINT `AlbumProduction_ibfk_1` FOREIGN KEY (`Identifier`)
        REFERENCES `Production` (`Identifier`),
    CONSTRAINT `AlbumProduction_ibfk_2` FOREIGN KEY (`AlbumID`)
        REFERENCES `Album` (`AlbumID`),
    CONSTRAINT `AlbumProduction_ibfk_3` FOREIGN KEY (`ArtistID`)
        REFERENCES `Singer` (`ArtistID`)
);

INSERT INTO `AlbumProduction` (`Identifier`, `AlbumID`, `ArtistID`) VALUES
('A1', 1, 6),
('A2', 2, 23),
('A3', 3, 1),
('A4', 4, 2),
('A5', 5, 25),
('A6', 6, 8),
('A7', 7, 8),
('A8', 8, 22),
('A9', 9, 4),
('A10', 10, 10),
('A11', 11, 7),
('A12', 12, 39),
('A13', 13, 37),
('A14', 14, 4),
('A15', 15, 10),
('A16', 16, 5),
('A17', 17, 3),
('A18', 18, 3),
('A19', 19, 9),
('A20', 20, 40),
('A21', 21, 38),
('A22', 22, 7),
('A23', 23, 9),
('A24', 24, 5),
('A25', 25, 36),
('A26', 26, 1),
('A27', 27, 24),
('A28', 28, 21),
('A29', 29, 2),
('A30', 30, 6);



# Table - MovieProduction
CREATE TABLE `MovieProduction` (
    `Identifier` VARCHAR(25) NOT NULL,
    `MovieID` INT NOT NULL,
    `ArtistID` INT NOT NULL,
    PRIMARY KEY (`Identifier` , `MovieID` , `ArtistID`),
    KEY `MovieID` (`MovieID`),
    KEY `ArtistID` (`ArtistID`),
    CONSTRAINT `MovieProduction_ibfk_1` FOREIGN KEY (`Identifier`)
        REFERENCES `Production` (`Identifier`),
    CONSTRAINT `MovieProduction_ibfk_2` FOREIGN KEY (`MovieID`)
        REFERENCES `Movie` (`MovieID`),
    CONSTRAINT `MovieProduction_ibfk_3` FOREIGN KEY (`ArtistID`)
        REFERENCES `Actor` (`ArtistID`)
);

INSERT INTO `MovieProduction` (`Identifier`, `MovieID`, `ArtistID`) VALUES
('M1', 1, 39),
('M2', 1, 36),
('M3', 1, 26),
('M4', 1, 11),
('M5', 2, 27),
('M6', 2, 37),
('M7', 2, 50),
('M8', 2, 12),
('M9', 3, 23),
('M10', 3, 28),
('M11', 3, 13),
('M12', 3, 38),
('M13', 4, 44),
('M14', 4, 14),
('M15', 4, 39),
('M16', 4, 29),
('M17', 5, 50),
('M18', 5, 30),
('M19', 5, 40),
('M20', 5, 15),
('M21', 6, 19),
('M22', 6, 37),
('M23', 6, 16),
('M24', 6, 31),
('M25', 7, 30),
('M26', 7, 16),
('M27', 7, 32),
('M28', 7, 37),
('M29', 8, 18),
('M30', 8, 48),
('M31', 8, 23),
('M32', 8, 33),
('M33', 9, 26),
('M34', 9, 44),
('M35', 9, 19),
('M36', 9, 34),
('M37', 10, 35),
('M38', 10, 50),
('M39', 10, 20),
('M40', 10, 31),
('M41', 11, 21),
('M42', 11, 36),
('M43', 11, 11),
('M44', 11, 37),
('M45', 12, 30),
('M46', 12, 12),
('M47', 12, 22),
('M48', 12, 37),
('M49', 13, 23),
('M50', 13, 13),
('M51', 13, 48),
('M52', 13, 38),
('M53', 14, 39),
('M54', 14, 24),
('M55', 14, 26),
('M56', 14, 14),
('M57', 15, 25),
('M58', 15, 15),
('M59', 15, 40),
('M60', 15, 31),
('M61', 16, 39),
('M62', 16, 11),
('M63', 16, 26),
('M64', 16, 16),
('M65', 17, 40),
('M66', 17, 27),
('M67', 17, 12),
('M68', 17, 17),
('M69', 18, 23),
('M70', 18, 28),
('M71', 18, 18),
('M72', 18, 13),
('M73', 19, 19),
('M74', 19, 44),
('M75', 19, 14),
('M76', 19, 29),
('M77', 20, 30),
('M78', 20, 15),
('M79', 20, 50),
('M80', 20, 20),
('M81', 21, 17),
('M82', 21, 31),
('M83', 21, 50),
('M84', 21, 21),
('M85', 22, 30),
('M86', 22, 17),
('M87', 22, 22),
('M88', 22, 32),
('M89', 23, 33),
('M90', 23, 48),
('M91', 23, 23),
('M92', 23, 18),
('M93', 24, 19),
('M94', 24, 24),
('M95', 24, 26),
('M96', 24, 34),
('M97', 25, 25),
('M98', 25, 35),
('M99', 25, 20),
('M100', 25, 31);



# Table - Recipient
CREATE TABLE `Recipient` (
    `Identifier` VARCHAR(25) NOT NULL,
    `AwardID` INT NOT NULL,
    `Year` INT NOT NULL,
    PRIMARY KEY (`Identifier` , `AwardID`),
    KEY `AwardID` (`AwardID`),
    CONSTRAINT `Recipient_ibfk_1` FOREIGN KEY (`Identifier`)
        REFERENCES `Production` (`Identifier`),
    CONSTRAINT `Recipient_ibfk_2` FOREIGN KEY (`AwardID`)
        REFERENCES `Award` (`AwardID`)
);

INSERT INTO `Recipient` (`Identifier`, `AwardID`, `Year`) VALUES
('M57', 1, 2019),
('M7', 2, 2019),
('M6', 3, 2019),
('M60', 4, 2019),
('A5', 5, 2019),
('A5', 6, 2019),
('M57', 7, 2019),
('M7', 8, 2019),
('M58', 9, 2019),
('M60', 10, 2019),
('A7', 11, 2019),
('A23', 12, 2019),
('M21', 1, 2020),
('M35', 2, 2020),
('M34', 3, 2020),
('M23', 4, 2020),
('A4', 5, 2020),
('A3', 6, 2020),
('M35', 7, 2020),
('M71', 8, 2020),
('M42', 9, 2020),
('M24', 10, 2020),
('A4', 11, 2020),
('A3', 12, 2020),
('M29', 1, 2021),
('M19', 2, 2021),
('M46', 3, 2021),
('M56', 4, 2021),
('A26', 5, 2021),
('A17', 6, 2021),
('M45', 7, 2021),
('M19', 8, 2021),
('M46', 9, 2021),
('M56', 10, 2021),
('A17', 11, 2021),
('A2', 12, 2021),
('M93', 1, 2022),
('M3', 2, 2022),
('M82', 3, 2022),
('M16', 4, 2022),
('A14', 5, 2022),
('A9', 6, 2022),
('M93', 7, 2022),
('M83', 8, 2022),
('M82', 9, 2022),
('M16', 10, 2022),
('A9', 11, 2022),
('A18', 12, 2022),
('M25', 1, 2023),
('M38', 2, 2023),
('M26', 3, 2023),
('M40', 4, 2023),
('A25', 5, 2023),
('A6', 6, 2023),
('M73', 7, 2023),
('M37', 8, 2023),
('M26', 9, 2023),
('M40', 10, 2023),
('A30', 11, 2023),
('A25', 12, 2023);



-- Some queries for testing purpose
select * from movie;

SELECT 
    year, m.albumid, m.artistid, p.identifier
FROM
    album m,
    albumproduction p
WHERE
    p.albumid = m.albumid
    and p.artistid = m.artistid
ORDER BY year, albumid;

-- 
with te as (
SELECT 
    year, m.Movieid, artistid, role
FROM
    movie m,
    Act a
WHERE
    m.movieid = a.movieid
ORDER BY year, movieid , role
)

--
select artistid, year, count(*)
from te
group by artistid, year
order by 1, 2;

--
select * from talent;

--
with te as (
SELECT 
    year, m.Movieid, artistid, role
FROM
    movie m,
    Act a
WHERE
    m.movieid = a.movieid
ORDER BY year, movieid , role
)

--
select artistid, count(*)
from te
group by artistid
order by 2 desc;