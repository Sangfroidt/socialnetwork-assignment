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

-- Exportování struktury pro tabulka social-network1.topics
CREATE TABLE IF NOT EXISTS `topics` (
  `topic_id` int(11) NOT NULL AUTO_INCREMENT,
  `topic_subject` varchar(255) NOT NULL DEFAULT '0',
  `topic_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `topic_by` varchar(50) NOT NULL,
  PRIMARY KEY (`topic_id`),
  KEY `FK_topics_users` (`topic_by`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- Exportování dat pro tabulku social-network1.topics: ~5 rows (přibližně)
/*!40000 ALTER TABLE `topics` DISABLE KEYS */;
INSERT INTO `topics` (`topic_id`, `topic_subject`, `topic_date`, `topic_by`) VALUES
	(9, 'dadadada', '2018-03-27 23:23:28', '0'),
	(10, 'dadadada', '2018-03-27 23:23:36', '0'),
	(11, 'addadaadadada', '2018-03-27 23:23:49', '0'),
	(12, 'ahoj', '2018-03-29 17:38:58', 'lele'),
	(13, 'dadada', '2018-03-29 17:39:22', 'lele');
/*!40000 ALTER TABLE `topics` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
