-- This file is to bootstrap a database for the CS3200 project. 

-- Create a new database.  You can change the name later.  You'll
-- need this name in the FLASK API file(s),  the AppSmith 
-- data source creation.
create database cool_db;

-- Via the Docker Compose file, a special user called webapp will 
-- be created in MySQL. We are going to grant that user 
-- all privilages to the new database we just created. 
-- TODO: If you changed the name of the database above, you need 
-- to change it here too.
grant all privileges on cool_db.* to 'webapp'@'%';
flush privileges;

-- Move into the database we just created.
-- TODO: If you changed the name of the database above, you need to
-- change it here too. 
use cool_db;

-- Put your DDL 
CREATE TABLE test_table (
  name VARCHAR(20),
  color VARCHAR(10)
);

-- Add sample data. 
INSERT INTO test_table
  (name, color)
VALUES
  ('dev', 'blue'),
  ('pro', 'yellow'),
  ('junior', 'red');

CREATE TABLE IF NOT EXISTS Users(
    userID INT PRIMARY KEY,
    username VARCHAR(20),
    email VARCHAR(100),
    password TEXT,
    address_numAndStreet VARCHAR(100),c
    address_city VARCHAR(100),
    address_state VARCHAR(5)
);

INSERT INTO users (userID, username, email, password, addressnumandstreet, address_city, address_state) VALUES
(1, 'mrooms0', 'pedwicker0@geocities.jp', '$2a$04$VnS9gLYAnEpMVIfR.Lmruu7gysVpraV6ENUqtPkrNmjvm5v0zfAQm', '72018 Spohn Point', 'Miastków Kościelny', ''),
(2, 'fvarnam1', 'jgibbonson1@umich.edu', '$2a$04$xZjAfA6WRznqukEXeFMP0u26Uvlfe6qh66e2LzbJxHFVWf0qlxgsW', '39 Gulseth Park', 'Merton', 'England'),
(3, 'fkachel2', 'cwigfall2@ebay.com', '$2a$04$2S9j7Hb2hO9a3c/5PkC3B.bPR/M5gL8njMQNoias8KCAbbDzDqTxC', '77 Anhalt Parkway', 'Selmes', 'Beja'),
(4, 'channigane3', 'ggarn3@smh.com.au', '$2a$04$jrAzC1sE53GmIDJa9e9VMO0aGLpwke3uZRFL4Chxdz3cRUlg/Cpx6', '6422 Miller Parkway', 'Preserje pri Radomljah', ''),
(5, 'afaull4', 'bnewell4@disqus.com', '$2a$04$m7pRwX4bGMd.qAWHcW7kUeCz121ZVA4zxwh24BaNf4sKv0DMY/FzG', '984 Forest Dale Alley', 'Poyang', ''),
(6, 'hvell5', 'eduncombe5@moonfruit.com', '$2a$04$XuC0tK9MAudGfVpuCeALw.igMqVxMV76F3Wk01gl8AICW4S9JMhiq', '98629 Gale Park', 'Di Linh', ''),
(7, 'athoumasson6', 'dgyngyll6@washington.edu', '$2a$04$WKBiCocHLifC6fHGgJGN7uVbFi5n569jQl19sEYv6cWQzhCZtznua', '6918 8th Place', 'Petropavlovka', ''),
(8, 'bpimlett7', 'pnannini7@4shared.com', '$2a$04$tTMG.U6TqFN0lgr0g9C1Yey/hJppMlRi/sqcG9DBKSfA0ukDWfI0u', '48941 Randy Road', 'Oras', ''),
(9, 'wcandlin8', 'ecrosthwaite8@biglobe.ne.jp', '$2a$04$MTREFWJqLMQihDTFl9gUOevG3UTaKf3TjIi99E5UD4SpULivV2.Qy', '858 Melrose Place', 'Raga', ''),
(10, 'bcanon9', 'jjee9@xrea.com', '$2a$04$JB81j/vJ8CU1drt02T9yJO5rz4X7QoLY9JkGHxjq3Kui86V9gMxJG', '39 Merry Court', 'Millet', 'Alberta'),
(11, 'adibsdalea', 'llownsbrougha@cdbaby.com', '$2a$04$OdWPEpP7FXic4rAFyiQL7O0Qe8yk9hzT2oqP8DR0JCSmAT/JKMHy6', '86 Park Meadow Way', 'Balogo', ''),
(12, 'sjoeb', 'pvankeevb@constantcontact.com', '$2a$04$bwlZTc10a16L5ZC0fOEul.y25vqrG8voPNN3YdccUbFM7hfK/BNkm', '63 Cottonwood Drive', 'Ujazd', ''),
(13, 'ibeddardc', 'jchasmorc@tamu.edu', '$2a$04$k7lKl92/p7Tzf4yX1JZNlOMUABuoJQMKd0mM2xcAuBBNpg/2ORSAu', '26900 Blue Bill Park Avenue', 'Shuiting', ''),
(14, 'kmcclevertyd', 'ebolingbroked@delicious.com', '$2a$04$n/3RCu6lf2fuKANMJwHpG.JL.2AVqIYmL0W/jQbz15OFK3G7WrU5q', '30908 Eliot Circle', 'San Calixto', ''),
(15, 'ezukere', 'rpoweleee@alexa.com', '$2a$04$2t/6zKKwcY5DA2v1E/SrB.dwzrrQZMN1kQ/4BvlLH7TLaG31.vYdS', '6917 Westport Drive', 'Sedati', ''),
(16, 'plindlf', 'ctrinerf@go.com', '$2a$04$baiGE6p2YKJ7BrgFdr1sG.7isskl1YZFHkD8OJfDhqWGkzdzByf7W', '00961 Troy Parkway', 'San Martin', 'Mexico'),
(17, 'abosmag', 'fweldg@fema.gov', '$2a$04$96KM8uxSc3WtbXysPhuFduQV4zAdx0DWt/6b35X/RDA3oKH9XhCX2', '2397 Autumn Leaf Road', 'Dembéni', ''),
(18, 'fmutimerh', 'tbomanh@ox.ac.uk', '$2a$04$keB80zkBDCijAngc5CcmQ.n2hRkeEcKBhMhoz85/m.hdIOGBtc0nO', '29 Buell Road', 'Jinzip', 'Mexico'),
(18, 'fmutimerh', 'tbomanh@ox.ac.uk', '$2a$04$keB80zkBDCijAngc5CcmQ.n2hRkeEcKBhMhoz85/m.hdIOGBtc0nO', '29 Buell Road', 'Jinzipai', ''),
(19, 'nmacfiei', 'vgopselli@studiopress.com', '$2a$04$m12Ov5BamM1xQYXcQDaElO0LPoQqwZ2TKM8OY5zOqetDHtIhQu4H6', '67 Hooker Plaza', 'Chão', 'Viana do Castelo'),
(20, 'jiddiensj', 'gemlynj@wisc.edu', '$2a$04$GKvzBI.d6wCn3jQYU736CejebsrbNVdwhnUYHuSOfxKfvh1UksbdW', '3 Fordem Point', 'Wakayama-shi', ''),
(21, 'lcavilk', 'wsearchwellk@storify.com', '$2a$04$0ZdSjJywu/fgEq4EajyDnOhMSTMzr5z5qjAMS6wq8qLQr9oiwqWpO', '15 Hagan Alley', 'Zhencheng', ''),
(22, 'halvyl', 'cweatherdonl@nydailynews.com', '$2a$04$jbYB5GQ8TxUHKTOZKD5DOe6GKh.yQ/HszLDM7rOYzJgn.Wadf./mO', '7 Stephen Plaza', 'Cibeuti', ''),
(23, 'caingem', 'labadem@mozilla.org', '$2a$04$Bv3/aXGDegKRBshWAbPTRO5pXLJ3Q8YL9tNvmm8AbQLyBHTuZYIpK', '5 Banding Drive', 'Kaputian', ''),
(24, 'btrousdalen', 'kharwickn@guardian.co.uk', '$2a$04$v8U1TZMVJLixMBkJbkGF3OIH4RBO2tsqMNIuZMsizWRZ4YUnee17G', '21553 Macpherson Trail', 'Sirnasari', ''),
(25, 'nallmondo', 'aferrario@adobe.com', '$2a$04$PDFIY/nFOxUdMTqUm3G25OJZHCkl1ZF42Um8zC8Kz7HhPHpz9ZcqK', '5254 Sundown Crossing', 'Pasto', ''),
(26, 'gcowlingp', 'egrishinovp@quantcast.com', '$2a$04$NWdk/.ZNvgWLZHGeqU2aR.wW9s7ptnTMkatERPja/5hEkN6cF2KaC', '3 Maryland Park', 'Ngajum', ''),
(27, 'ppetrilloq', 'tryeq@list-manage.com', '$2a$04$qCxAXVqYNyYVUm5Lq2O0sOSA8VjtfJTwWvLuAG7YiY6Xgm5vAvTru', '7845 Manitowish Court', 'Kalahang', ''),
(28, 'tmealer', 'cedworthier@smugmug.com', '$2a$04$v6UcgO.1CyIOWbhOug7umOZJKOQFbsR5yRf1xi6879cIoocp.UiAu', '36 Westridge Road', 'Berlin', 'Berlin'),
(29, 'amcauslands', 'obeddos@dailymotion.com', '$2a$04$vBkoPhfI5Rth97iYj5ysPuT.zHzFEgJVJuVyVWEJHLudi3EF7ViAG', '2635 Leroy Park', 'Paokmotong Utara', ''),
(30, 'fminkert', 'dbransont@scientificamerican.com', '$2a$04$JTmLplAnRS28gZWLL.VvnuS.IF6lTkhlE0VZTxOVnqBcRYDGcV3qe', '7495 South Lane', 'Al Madīd', ''),
(31, 'fcatchersideu', 'vdonaldsonu@yellowbook.com', '$2a$04$SJLDlqB50chBoXzLavob6OcDgANozhdFhKY4Od2QQBn5jstDdufKq', '889 Marcy Drive', 'Zhouhu', ''),
(32, 'jeastesv', 'acazinv@japanpost.jp', '$2a$04$F.ryuS/KMgjqqovU3V3/auK3kz341wDYhA8pfnGpBIhXls4.suxT6', '69505 Melrose Street', 'Zwierzyń', ''),
(33, 'ajosselsonw', 'klyndonw@desdev.cn', '$2a$04$CpzJRRmbKKOBCmXb5gVUG.UY8QVG8a1m3z98kX0wApabQzFYfFUsG', '246 Logan Crossing', 'Batambak', ''),
(34, 'hfellowsx', 'jdumberrillx@java.com', '$2a$04$XlhML5IJjAvRSdNambpjS.o6F1/GXN12SLN5RuxPqHNSLn3e4Knpy', '744 Fairfield Street', 'Livadiya', ''),
(35, 'nforsony', 'greachy@gravatar.com', '$2a$04$ljj5X.cNsf5se8OC6x5eAO.pvcq15bsqPDvVi3Fmiro6r78nC/HRG', '6 Graedel Street', 'Labrador', ''),
(36, 'hscaddenz', 'mminardsz@mayoclinic.com', '$2a$04$wrF6ddm/5u5GjCcDf3gQfexfMLUqGeZgpF.eIeLmuSBb3z7qK5PqS', '7 Hovde Plaza', 'Jianping', ''),
(37, 'bspire10', 'kfibbens10@stanford.edu', '$2a$04$9WR5XsywjKvtdKPFcESkLeun7jBoEUrq/f6OO2eR4r9ToiCt5SNVi', '6 Lawn Junction', 'Vilnius', ''),
(38, 'snorkutt11', 'wrisdale11@paypal.com', '$2a$04$h5GqB.4mA8Bs.zsjBEvfPeK0225W6jWUcAJnxkkgZeVI4NThR0k6i', '48 Merry Circle', 'Paraíso de Chabasquén', ''),
(39, 'cbuffham12', 'dtrewhella12@psu.edu', '$2a$04$4lLTbi7g84tQygrRQJUyGe5VYe5wncZXtxm8Fq.1PGkmfaazgqgsW', '933 Clemons Trail', 'Balabagan', ''),
(40, 'bsabathe13', 'oquinlan13@wsj.com', '$2a$04$klTBfCgptbyd2Df.SFAx6eGOAU0ral4fgscTWTHETSrPqopU8qhbm', '9166 Meadow Vale Avenue', 'Dianshui', ''),
(41, 'bcattach14', 'glighton14@meetup.com', '$2a$04$hr1HP1tpeapHWIXoF1D6yegbd6DoBKw9K9OSZDY58IUINhxGq/tzq', '9 Ilene Road', 'Pedraza La Vieja', ''),
(42, 'cwimbush15', 'amarshalleck15@blogspot.com', '$2a$04$nH5NcMV/q1tqvRUtsdNYKuiaa/6dOFUe.OJj1WnNXoN4W91NfK9Ye', '386 Victoria Circle', 'Ágios Athanásios', ''),
(43, 'kbelcham16', 'avarne16@japanpost.jp', '$2a$04$fptB0zm6Cq8hzoOFkSlJVu8K7DBBEurwuncaDgwwlqRezN6D/4uH2', '1 Heath Park', 'Błaszki', ''),
(44, 'fmedway17', 'dwillder17@surveymonkey.com', '$2a$04$zO5IhlPODWlUly1nQDshKediqOCFPFQkk/Xm7rv9Ru2wEVGcDsT.y', '485 Messerschmidt Pass', 'Cabodiongan', ''),
(45, 'hramsbotham18', 'rdykes18@oakley.com', '$2a$04$fB4aXkPI1Cm0GjhH.F1m/eQL2i8zmBeDiHx3FTJt0N2EQmzZVKT/2', '947 Old Gate Street', 'Xilópolis', ''),
(46, 'ctofanini19', 'rwymer19@mtv.com', '$2a$04$i9NxircFkyYCU0GSUM5lvOd1voTRER.wzxRNlQbwfJQUD5Rfgd4LG', '1398 Scofield Street', 'Lefkoniko', ''),
(47, 'hturmel1a', 'hvasnev1a@prlog.org', '$2a$04$dR78EH/2vjSrEGlQgnXVpev4d7x3weT8RVCpoW.Qza5E7yz9HqM8K', '2327 Cambridge Drive', 'Ruzhany', ''),
(48, 'nvirgo1b', 'zwreak1b@reference.com', '$2a$04$49T/4MabV2CV84oF7g9I..w3Af5GTly3CC0c2JvdFsqBdOmvkJ8xu', '013 Donald Plaza', 'Mashi', ''),
(49, 'mvenner1c', 'rmcphate1c@quantcast.com', '$2a$04$0TUKFq2eqsC0RlJ2/NtyR.CEcla4a34B91N7.RqEAyiTGFSjSGksG', '5 Starling Hill', 'Zyryanovsk', ''),
(50, 'mizchaki1d', 'eusmar1d@behance.net', '$2a$04$M3iXdNhvqfeafWpDdaaNfOjbKU/gug3HzrbZd2L4PWzKRoArMGAKy', '2097 Village Green Parkway', 'Tekstil’shchiki', '');

CREATE TABLE IF NOT EXISTS Orders(
    orderID INT PRIMARY KEY,
    orderDate DATETIME,
    totalPrice INT,
    deliveryTime DATETIME,
    userID INT,
    driverID INT,
    FOREIGN KEY(userID) REFERENCES Users(userID) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY(driverID) REFERENCES Driver(driverID) ON DELETE CASCADE ON UPDATE CASCADE
);


INSERT INTO order (orderID, totalPrice, deliveryTime, orderDate, userID) VALUES
('01HW28J5Q52AJN1TY9QT92NGST', 58, '12:04:39 AM', '1/7/2024', 41),
('01HW28J63NZ6C0T0ZERE0XPVDS', 57, '3:26:17 PM', '9/14/2023', 24),
('01HW28J63S1H3J85XKX81ZPMNW', 27, '4:26:17 AM', '8/10/2023', 6),
('01HW28J63T8HYQK7N42G9Q00MC', 69, '3:59:10 AM', '10/4/2023', 35),
('01HW28J63V0JX2JC1GRC5RDCVV', 61, '7:05:31 PM', '11/26/2023', 38),
('01HW28J63X0YD18X2QSXPQQ4DT', 69, '9:22:25 PM', '9/9/2023', 37),
('01HW28J63Y4WMSDX014M6QXY7A', 64, '9:08:45 AM', '10/11/2023', 1),
('01HW28J63Z39D7813JD9D15788', 21, '3:18:03 PM', '3/30/2024', 11),
('01HW28J640SXCG2YKXKVNVXAJH', 48, '8:42:35 AM', '5/20/2023', 5),
('01HW28J641NC5V2BHXNZDTYK71', 67, '6:52:48 PM', '2/29/2024', 2),
('01HW28J643YYQCGQ5GSRDYJZTX', 28, '7:36:46 PM', '4/2/2024', 16),
('01HW28J64408E0DNEKR22N32AH', 79, '7:38:28 AM', '1/18/2024', 36),
('01HW28J645NH21J010QH0KDH6A', 74, '12:44:49 PM', '5/20/2023', 29),
('01HW28J646FCPK529XTRJXGQHT', 14, '5:10:08 AM', '8/24/2023', 32),
('01HW28J6477G9NB2C06N8FBX6P', 69, '7:49:15 PM', '9/29/2023', 4),
('01HW28J648H4KAEMQPHB591SPS', 71, '7:17:50 PM', '10/30/2023', 22),
('01HW28J64AX6DA64TCPPXGJV6T', 94, '2:03:15 PM', '10/17/2023', 50),
('01HW28J64BQHWXVC0QAKQPY4QV', 49, '9:23:04 AM', '8/24/2023', 40),
('01HW28J64CAHJQ5T90B216GV3A', 60, '7:55:00 AM', '11/20/2023', 44),
('01HW28J64D9T6PE6E7K3BN1R9Y', 57, '7:47:06 AM', '10/28/2023', 3),
('01HW28J64EXYRADTSDP8QP10B9', 34, '9:22:44 PM', '8/12/2023', 46),
('01HW28J64GTBMZPN35RMQZHTBQ', 70, '4:17:10 AM', '9/8/2023', 19),
('01HW28J64HAF1FFP54B1C4ETY8', 75, '11:49:35 AM', '12/2/2023', 31),
('01HW28J64JV7Z7QHGX9BW5S5BG', 8, '12:35:57 PM', '12/15/2023', 21),
('01HW28J64KMMFPJ7740BVAWT7E', 56, '4:57:03 AM', '2/28/2024', 42),
('01HW28J64ME1F4A7WH5P7SSQ2D', 39, '12:52:34 PM', '11/25/2023', 30),
('01HW28J64NFE57234D3WM8V88J', 24, '8:22:05 PM', '4/11/2024', 49),
('01HW28J64PR7994R9ZD58TJPRZ', 70, '7:20:11 PM', '4/25/2023', 33),
('01HW28J64RSA70A07RYZVY8VC6', 26, '2:07:12 AM', '12/18/2023', 9),
('01HW28J64S99CT2TEE6SEZC2GK', 51, '1:29:08 AM', '9/14/2023', 12),
('01HW28J64TJEYRB76GB72FEV0K', 27, '12:55:55 AM', '5/7/2023', 48),
('01HW28J64V4ADBRBP23M4P4SJP', 92, '5:39:28 PM', '10/5/2023', 27),
('01HW28J64W4AK1C773N69VST4W', 56, '7:26:57 AM', '5/29/2023', 20),
('01HW28J64XRSKNNPAK27ZC9BB8', 28, '9:45:26 PM', '11/27/2023', 26),
('01HW28J64YMAFVS6JP65VHJZ2N', 19, '10:46:10 AM', '4/30/2023', 13),
('01HW28J64ZBJPYYQAZ7JPACNKR', 89, '11:14:04 PM', '8/10/2023', 14),
('01HW28J650198E997KYHMKR5VK', 51, '10:22:17 AM', '1/2/2024', 28),
('01HW28J652D39B27TRB4V09S8A', 74, '11:39:45 PM', '6/16/2023', 43),
('01HW28J653Y3DVQDK6T6KRHH6A', 72, '6:50:47 PM', '11/14/2023', 34),
('01HW28J654TP0Q5VQDC5J2A9SB', 73, '10:06:36 AM', '9/1/2023', 10),
('01HW28J65555N0NQVSAG23FS3S', 56, '11:23:26 AM', '5/21/2023', 18),
('01HW28J656CTZ40JS2V3RMZJ1N', 57, '2:20:43 AM', '3/26/2024', 45),
('01HW28J657QV0G0B4J9FNVJRN5', 29, '3:08:03 PM', '8/8/2023', 23),
('01HW28J6587NNNK8JPB55VVECZ', 98, '3:49:52 AM', '2/7/2024', 8),
('01HW28J65AWA6CCZDTX0N7RY2Y', 78, '11:47:55 PM', '10/22/2023', 17),
('01HW28J65BJHJVTRFXT6RQ1VGP', 55, '6:24:18 PM', '3/9/2024', 25),
('01HW28J65CYDA6E56SFF12T2PY', 75, '6:54:49 AM', '1/17/2024', 47),
('01HW28J65DB4EBE6T3E6BP7MFC', 78, '5:45:16 PM', '8/2/2023', 15),
('01HW28J65EH6ADT9N624ZNTK6T', 98, '11:27:41 AM', '8/4/2023', 7),
('01HW28J65GRBX6SY40ZHFQN72S', 49, '2:17:24 AM', '6/30/2023', 39);

CREATE TABLE IF NOT EXISTS DessertShop(
    shopID INT PRIMARY KEY,
    open INT(0),
    name VARCHAR(50),
    location TEXT,
    proximityInMiles INT,
    crowdStatus TEXT
);

INSERT INTO Dessertshop (shopID, open, name, location, promimityInMiles, crowdStatus) VALUES
(1, 0, 'Minda Witterick', '4505 Cherokee Road', 81, 1),
(2, 1, 'Karie Oneill', '19 Garrison Plaza', 100, 2),
(3, 0, 'Geordie Whitley', '5 Hoard Alley', 79, 3),
(4, 0, 'Kinnie Paulon', '6 Ryan Avenue', 47, 2),
(5, 0, 'Glynn Kohring', '13491 Amoth Crossing', 99, 2),
(6, 1, 'Leontine Ramm', '26 Farmco Parkway', 34, 3),
(7, 0, 'Xymenes McCurtin', '75 Scoville Terrace', 27, 1),
(8, 1, 'Donetta Male', '06 Macpherson Lane', 83, 1),
(9, 0, 'Jeff Merchant', '91 Morning Street', 14, 1),
(10, 0, 'Sandy Dreossi', '462 Loeprich Parkway', 59, 3),
(11, 0, 'Asher Tregien', '63224 Dixon Center', 38, 2),
(12, 0, 'Darlene Chaudret', '550 Pine View Parkway', 62, 0),
(13, 1, 'Thorstein Boller', '84 Monument Terrace', 93, 1),
(14, 1, 'Robinett Folbige', '894 Eagan Trail', 43, 0),
(15, 0, 'Lazarus Hartop', '09414 Summerview Parkway', 81, 2),
(16, 1, 'Eugenius Mant', '34 Prairieview Road', 30, 1),
(17, 1, 'Emilio Dallicoat', '4 Hovde Way', 11, 0),
(18, 0, 'Devy Loxly', '1831 Talisman Drive', 10, 3),
(19, 1, 'Arty Geggus', '38 Bashford Circle', 15, 2),
(20, 0, 'Aloin Newlove', '29 Brickson Park Plaza', 45, 2),
(21, 1, 'Jesus Drew', '04947 Morning Circle', 30, 0),
(22, 1, 'Esme Rickcord', '15830 Maywood Center', 77, 1),
(23, 0, 'Rosetta Farra', '808 Myrtle Court', 58, 0),
(24, 1, 'Orel Marshfield', '660 La Follette Pass', 22, 2),
(25, 0, 'Breena Clacey', '557 Esch Parkway', 72, 3),
(26, 1, 'Temp Dedam', '5745 Pennsylvania Way', 13, 3),
(27, 0, 'Alexio Chasier', '5 Ridgeview Trail', 53, 0),
(28, 1, 'Francesco Tolossi', '331 Calypso Way', 82, 1),
(29, 0, 'Aurel Guiot', '37425 Vahlen Crossing', 93, 1),
(30, 0, 'Daphene Ochterlony', '8180 Arrowood Lane', 85, 0),
(31, 0, 'Maribeth Hatje', '73 Porter Point', 22, 3),
(32, 0, 'Alexandros Lindeman', '589 Browning Plaza', 94, 3),
(33, 0, 'Calley Gamage', '94 Menomonie Street', 59, 3),
(34, 0, 'Yoshiko Heak', '134 Pond Plaza', 69, 1),
(35, 1, 'Colet De Avenell', '1187 Kings Street', 18, 2),
(36, 1, 'Dilly Greenstock', '03127 Sundown Place', 18, 2),
(37, 0, 'Kellsie Buie', '1 Carpenter Street', 24, 2),
(38, 0, 'Eugen Van den Dael', '26971 Northridge Circle', 80, 2),
(39, 0, 'Truman Amiranda', '8618 Annamark Crossing', 70, 0),
(40, 1, 'Marilee Steddall', '30 Golden Leaf Point', 15, 0),
(41, 1, 'Ron Wyleman', '74 Arapahoe Pass', 51, 1),
(42, 0, 'Karlik Simonou', '9090 Packers Center', 82, 3),
(43, 0, 'Lauritz Mauro', '2800 5th Plaza', 51, 1),
(44, 1, 'Ryan Payne', '19314 Fair Oaks Parkway', 84, 2),
(45, 1, 'Lizzie Kem', '487 Darwin Park', 30, 0),
(46, 1, 'Sheri Drysdall', '3002 Little Fleur Parkway', 15, 0),
(47, 0, 'Tudor Cammomile', '41316 Buena Vista Parkway', 85, 3),
(48, 1, 'Archibold Anstead', '04542 Arkansas Pass', 74, 1),
(49, 0, 'Roman Sinyard', '1824 Fallview Drive', 12, 0),
(50, 0, 'Allyce Mailey', '89 Becker Trail', 74, 3);


CREATE TABLE IF NOT EXISTS Driver(
    driverID INT PRIMARY KEY,
    name TEXT,
    licenseNumber TEXT,
    active INT(1),
    phoneNumber INT,
    vehicleDesc_Color VARCHAR(100),
    vehicleDesc_Brand VARCHAR(100),
    vehicleDesc_Model VARCHAR(100)
);

INSERT INTO drivers (driverID, name, licenseNumber, active, phoneNumber, vehicleDesc_Color, vehicleDesc_Brand, vehicleDesc_Model) VALUES
(1, 'Bailey Boorne', 6, 0, '336-628-8024', 'Teal', 'Ford', 'F250'),
(2, 'Edee Coy', 6, 0, '159-742-0552', 'Violet', 'Pontiac', 'Sunfire'),
(3, 'Nickolas Lovatt', 6, 0, '166-919-4875', 'Yellow', 'BMW', 'Z4 M'),
(4, 'Nataniel Greenhall', 6, 1, '236-950-0515', 'Fuscia', 'Ford', 'Expedition EL'),
(5, 'Shellie Dear', 7, 1, '617-447-1916', 'Yellow', 'Volkswagen', 'GTI'),
(6, 'Letty Huller', 6, 1, '219-915-1229', 'Goldenrod', 'Dodge', 'Caravan'),
(7, 'Barn Keasey', 7, 1, '102-117-8718', 'Mauv', 'Nissan', '350Z'),
(8, 'Shurwood Luxon', 6, 1, '876-737-7094', 'Aquamarine', 'Volvo', '960'),
(9, 'Pepita Dennidge', 6, 1, '333-661-5765', 'Goldenrod', 'Ford', 'Ranger'),
(10, 'Reggie Fallis', 7, 1, '801-330-8559', 'Yellow', 'Chevrolet', 'Express 3500'),
(11, 'Beckie Melliard', 7, 1, '867-532-8522', 'Red', 'Porsche', '911'),
(12, 'Billy Winfindine', 6, 1, '907-480-6644', 'Goldenrod', 'Chevrolet', 'Equinox'),
(13, 'Henryetta Lydiatt', 6, 1, '585-204-2983', 'Yellow', 'Infiniti', 'EX'),
(14, 'Kelby Tollemache', 7, 0, '937-382-3497', 'Red', 'Bentley', 'Azure'),
(15, 'Celka Abrahamson', 7, 0, '358-393-9781', 'Green', 'Ford', 'Mustang'),
(16, 'Robin Pye', 7, 0, '578-740-1682', 'Indigo', 'Oldsmobile', 'Bravada'),
(17, 'Emmi Boutcher', 6, 0, '359-952-9392', 'Red', 'Chevrolet', 'Cavalier'),
(18, 'Lindie Grevel', 6, 1, '496-293-3634', 'Purple', 'Toyota', 'Tacoma Xtra'),
(19, 'Sande Toplis', 7, 1, '127-717-3686', 'Crimson', 'Audi', 'A4'),
(20, 'Katy Reedie', 7, 1, '236-339-5815', 'Teal', 'Infiniti', 'Q'),
(21, 'Eldin Hymers', 6, 0, '239-353-0222', 'Khaki', 'Porsche', '911'),
(22, 'Maury Salleir', 7, 1, '404-519-7822', 'Pink', 'Ford', 'F-Series'),
(23, 'Danya Enric', 7, 0, '371-838-0541', 'Mauv', 'Mazda', 'Mazdaspeed 3'),
(24, 'Yankee Rydings', 6, 1, '605-516-2237', 'Indigo', 'Chrysler', 'Sebring'),
(25, 'Shayna Collimore', 7, 1, '151-644-4902', 'Crimson', 'Lotus', 'Esprit'),
(26, 'Robena Cheeney', 7, 0, '499-286-0615', 'Blue', 'Nissan', 'NX'),
(27, 'Kailey Redon', 6, 1, '878-525-5120', 'Puce', 'Ford', 'Escape'),
(28, 'Calypso Parchment', 7, 1, '166-350-9938', 'Goldenrod', 'Pontiac', 'Sunfire'),
(29, 'Abbot Blinco', 7, 1, '806-251-5294', 'Violet', 'Suzuki', 'Grand Vitara'),
(30, 'Cynthie Eyres', 6, 0, '724-114-6103', 'Crimson', 'Land Rover', 'Discovery'),
(31, 'Margery Breit', 7, 0, '196-136-4617', 'Yellow', 'Dodge', 'Viper'),
(32, 'Morgen Gayne', 6, 0, '683-644-1098', 'Pink', 'Honda', 'Prelude'),
(33, 'Loydie Mcwhinney', 6, 1, '550-990-1260', 'Puce', 'Toyota', 'Venza'),
(34, 'Andriana Raynard', 6, 0, '260-305-4976', 'Goldenrod', 'Mercury', 'Villager'),
(35, 'Bertrando Message', 7, 0, '887-640-8588', 'Teal', 'Chevrolet', 'Corvette'),
(36, 'Yancey Pointer', 6, 1, '521-483-0329', 'Yellow', 'Volkswagen', 'GTI'),
(37, 'Orelee Carss', 7, 1, '589-958-2632', 'Teal', 'Subaru', 'Impreza'),
(38, 'Myrtice Aspy', 7, 1, '419-835-1322', 'Khaki', 'Mercury', 'Milan'),
(39, 'Danika Glancy', 6, 1, '724-707-4617', 'Goldenrod', 'Mercedes-Benz', 'SL-Class'),
(40, 'Dirk Chaloner', 7, 1, '479-207-5489', 'Orange', 'Hyundai', 'Santa Fe'),
(41, 'Edy Ragg', 6, 1, '878-250-0982', 'Fuscia', 'Honda', 'Pilot'),
(42, 'Kasey Parrott', 6, 0, '624-531-6080', 'Mauv', 'Suzuki', 'Forenza'),
(43, 'Brocky Ledford', 7, 0, '713-409-1668', 'Blue', 'Volkswagen', 'Jetta'),
(44, 'Alvera Dugmore', 6, 0, '492-771-8827', 'Puce', 'Audi', '4000CS Quattro'),
(45, 'Dodi Danshin', 7, 0, '614-429-5640', 'Violet', 'Chevrolet', 'Camaro'),
(46, 'Gerrie Laxon', 6, 0, '646-836-7243', 'Fuscia', 'Saab', '9-3'),
(47, 'Myrilla Gipps', 7, 0, '146-910-9848', 'Mauv', 'Jeep', 'Wrangler'),
(48, 'Blake Frizell', 6, 0, '661-434-8433', 'Purple', 'Mitsubishi', 'Chariot'),
(49, 'Celene Braunds', 7, 1, '185-662-9228', 'Teal', 'Hyundai', 'Accent'),
(50, 'Kipp Reiach', 6, 0, '408-698-0814', 'Teal', 'Mitsubishi', 'Montero');