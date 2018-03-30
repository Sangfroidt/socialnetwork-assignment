-- --------------------------------------------------------
-- Hostitel:                     127.0.0.1
-- Verze serveru:                10.1.26-MariaDB - mariadb.org binary distribution
-- OS serveru:                   Win32
-- HeidiSQL Verze:               9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Exportování struktury pro tabulka social-network1.users
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(30) NOT NULL DEFAULT '0',
  `password` varchar(255) NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL DEFAULT '0',
  `user_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `role` int(11) DEFAULT '1',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Exportování dat pro tabulku social-network1.users: ~4 rows (přibližně)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`user_id`, `firstname`, `password`, `email`, `user_date`, `role`) VALUES
	(1, '0', '$2y$10$FXNKoTXUkwFXm2gKr2Z7qOx', 'jmeno', '2018-03-26 23:21:18', 1),
	(2, 'jmeno1', '$2y$10$FQWFldHW/ndKr1BSQpEHIOo', 'email1@email.cz', '2018-03-26 23:28:09', 1),
	(3, 'j', '$2y$10$oJ.8HhE9NQhryu7nU/XI/uN', 'j@j.cz', '2018-03-26 23:42:01', 1),
	(4, 'lele', '$2y$10$Q7iKym03X7SrKot2Ec7z8Oc7JpSSIoO08A.n.ciktr6tCBWzW3MPe', 'lele@gmail.com', '2018-03-27 18:07:34', 1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
