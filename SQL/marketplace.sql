-- -------------------------------------------------------------
-- TablePlus 2.9.1(264)
--
-- https://tableplus.com/
--
-- Database: slimyb
-- Generation Time: 2019-10-28 21:58:24.2800
-- -------------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

INSERT INTO `Delivery` (`Id`, `Address1`, `Address2`, `City`, `Name`, `PhoneNumber`, `PoseCode`, `State`, `Status`, `OrderId`) VALUES ('1', 'Addresss 111', 'Addresss 222', 'sydney', 'testName', '1000000000', '2000', 'New South Wales', 'Delivering', NULL),
('2', 'Address line 1', 'Address 222', 'sydney', 'Harry', '0400000000', '2000', 'New South Wales', 'Delivering', NULL),
('5', '180 Thomas Street', '123123123', 'Haymarket', 'ZHILUE WANG', '0426110824', '2000', 'New South Wales', 'Delivering', NULL),
('10', '180 Thomas Street', '123123123', 'Haymarket', 'ZHILUE WANG', '0426110824', '2000', 'New South Wales', 'Delivering', NULL),
('12', '3', 'Nipper St', 'sydney', 'Harry Wang', '0426110824', '2140', 'New South Wales', 'Delivering', NULL),
('13', 'Address 1', 'Address 2', 'sydney', 'Harry', '0500000000', '2000', 'New South Wales', 'Delivering', NULL);

INSERT INTO `ItemComment` (`Id`, `Comment`, `CommentTime`, `ProductId`, `Userid`) VALUES ('1', 'This bottle is awesome!!!!', NULL, '1', '99999');

INSERT INTO `OrderItem` (`Id`, `ItemPrice`, `OrderId`, `ProductId`) VALUES ('1', '10', '1', '1'),
('2', '10', '2', '1'),
('5', '10', '5', '1'),
('10', '10', '10', '1'),
('12', '10', '12', '1'),
('13', '10', '13', '1'),
('14', '10', '13', '1');

INSERT INTO `Orders` (`Id`, `ItemCount`, `LastUpdateTime`, `OrderTime`, `Status`, `TotalPrice`, `BuyerId`) VALUES ('1', '1', NULL, NULL, 'Delivering', '10', '99999'),
('2', '1', NULL, NULL, 'Delivering', '10', '99999'),
('5', '1', NULL, NULL, 'Delivering', '10', '99999'),
('10', '1', NULL, NULL, 'Delivering', '10', '99999'),
('12', '1', NULL, NULL, 'Delivering', '10', '99999'),
('13', '2', NULL, NULL, 'Delivering', '20', '99999');

INSERT INTO `Product` (`Id`, `Description`, `ImagePath`, `LastUpdateTime`, `Price`, `ProductName`, `UserId`) VALUES ('1', 'This bottle is amazing that can help you drink more water!!!  ', '/slimYB/static/img/3d7408e29962466eab36731dc6c67a36.jpeg%', '2019-10-28 20:23:31', '10', 'Bottle', '99999'),
('2', 'Not for sell. Just want to show off my valuable golf ball inherited from my grand-grand-parents.', '/slimYB/static/img/c13df8decb094a27960f46bc8def05cd.jpeg%', '2019-10-28 20:31:32', '10000', 'Golf ball', '99999'),
('3', 'Awesome Flower! makes your happy every day!!!', '/slimYB/static/img/0a06b7d45cab446897bd2025a2b7d356.jpeg%', '2019-10-28 21:35:35', '10', 'Flower', '99999');

INSERT INTO `User` (`Id`, `Password`, `Username`, `Email`) VALUES ('99999', 'password', 'Slsky', 'abcd1234@gmail.com');




/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;