-- -------------------------------------------------------------
-- TablePlus 2.10(270)
--
-- https://tableplus.com/
--
-- Database: slimyb
-- Generation Time: 2019-10-29 07:21:13.3770
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


INSERT INTO `ProgressRecord` (`Id`, `HipGirth`, `IntakeCarbohydrate`, `IntakeFat`, `IntakeProtein`, `RunningDistance`, `ThighGirth`, `WaistGirth`, `WalkingSteps`, `Weight`, `Date`, `User_ID`) VALUES ('1', '55', '300', '50', '200', '1000', '45', '50', '12000', '48', '18-Oct.-2019', '1024'),
('2', '55', '300', '50', '200', '1000', '45', '50', '12000', '48', '19-Oct.-2019', '1024'),
('3', '55', '300', '50', '200', '1000', '45', '50', '12000', '49', '20-Oct.-2019', '1024'),
('4', '55', '300', '50', '200', '1000', '45', '50', '12000', '47', '21-Oct.-2019', '1024'),
('5', '55', '300', '50', '200', '1000', '45', '50', '12000', '46', '22-Oct.-2019', '1024'),
('6', '55', '300', '50', '200', '1000', '45', '50', '12000', '47', '22-Oct.-2019', '1024'),
('7', '55', '300', '50', '200', '1000', '45', '50', '12000', '47', '23-Oct.-2019', '1024'),
('8', '55', '300', '50', '200', '1000', '45', '50', '12000', '46', '24-Oct.-2019', '1024'),
('9', '55', '300', '50', '200', '1000', '45', '50', '12000', '45', '25-Oct.-2019', '1024'),
('10', '55', '300', '50', '200', '1000', '45', '50', '12000', '44', '26-Oct.-2019', '1024'),
('11', '55', '300', '50', '200', '1000', '45', '50', '12000', '45', '27-Oct.-2019', '1024');

INSERT INTO `User` (`Id`, `Password`, `Username`, `Email`) VALUES ('1', 'testPassword', 'testUser', NULL),
('1024', 'testPassword', 'testUser', NULL);

INSERT INTO `UserGoal` (`Id`, `GoalHipGirth`, `GoalThighGirth`, `GoalWaistGirth`, `GoalWeight`, `UserID`, `GoalDurationDays`) VALUES ('1', '50', '40', '45', '40', NULL, '30');




/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;