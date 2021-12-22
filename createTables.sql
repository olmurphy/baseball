/* CREATE DATABASE csi3335;*/

USE csi3335;

/* select concat('DROP TABLE IF EXISTS `', table_name, '`;') tables
from information_schema.tables
where table_schema = 'csi3335'; */




SET character_set_client = utf8mb4;
CREATE TABLE IF NOT EXISTS `people` (
    `playerID` varchar(9) NOT NULL,
    `birthYear` int(11) DEFAULT NULL,
    `birthMonth` int(11) DEFAULT NULL,
    `birthDay` int(11) DEFAULT NULL,
    `birthCountry` varchar(255) DEFAULT NULL,
    `birthState` varchar(255) DEFAULT NULL,
    `birthCity` varchar(255) DEFAULT NULL,
    `deathYear` int(11) DEFAULT NULL,
    `deathMonth` int(11) DEFAULT NULL,
    `deathDay` int(11) DEFAULT NULL,
    `deathCountry` varchar(255) DEFAULT NULL,
    `deathState` varchar(255) DEFAULT NULL,
    `deathCity` varchar(255) DEFAULT NULL,
    `nameFirst` varchar(255) DEFAULT NULL,
    `nameLast` varchar(255) DEFAULT NULL,
    `nameGiven` varchar(255) DEFAULT NULL,
    `weight` int(11) DEFAULT NULL,
    `height` int(11) DEFAULT NULL,
    `bats` varchar(255) DEFAULT NULL,
    `throws` varchar(255) DEFAULT NULL,
    `debut` varchar(255) DEFAULT NULL,
    `finalGame` varchar(255) DEFAULT NULL,
    `retroID` varchar(255) DEFAULT NULL,
    `bbrefID` varchar(255) DEFAULT NULL,
    `birth_date` date DEFAULT NULL,
    `debut_date` date DEFAULT NULL,
    `finalGame_date` date DEFAULT NULL,
    `death_date` date DEFAULT NULL,
    PRIMARY KEY (`playerID`)
)   ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



SET character_set_client = utf8mb4;
CREATE TABLE IF NOT EXISTS `schools` (
    `schoolID` varchar(15) NOT NULL,
    `name_full` varchar(255) DEFAULT NULL,
    `city` varchar(55) DEFAULT NULL,
    `state` varchar(55) DEFAULT NULL,
    `country` varchar(55) DEFAULT NULL,
    PRIMARY KEY (`schoolID`)
)   ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


SET character_set_client = utf8mb4;
CREATE TABLE IF NOT EXISTS `collegeplaying` (
    `collegeplaying_ID` int(11) NOT NULL AUTO_INCREMENT,
    `playerID` varchar(9) NOT NULL,
    `schoolID` varchar(15) DEFAULT NULL,
    `yearID` smallint(6) DEFAULT NULL,
    PRIMARY KEY (`collegeplaying_ID`)
)   ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


SET character_set_client = utf8mb4;
CREATE TABLE IF NOT EXISTS `parks` (
    `parks_ID` int(11) NOT NULL AUTO_INCREMENT,
    `parkalias` varchar(255) DEFAULT NULL,
    `parkkey` varchar(255) DEFAULT NULL,
    `parkname` varchar(255) DEFAULT NULL,
    `city` varchar(255) DEFAULT NULL,
    `state` varchar(255) DEFAULT NULL,
    `country` varchar(255) DEFAULT NULL,
    PRIMARY KEY (`parks_ID`)
)   ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


SET character_set_client = utf8mb4;
CREATE TABLE IF NOT EXISTS `teamsFranchises` (
    `franchID` varchar(3) NOT NULL,
    `franchName` varchar(50) DEFAULT NULL,
    `active` char(1) DEFAULT NULL,
    `NAassoc` varchar(3) DEFAULT NULL,
    PRIMARY KEY (`franchID`)
)   ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


SET character_set_client = utf8mb4;
CREATE TABLE IF NOT EXISTS `teams` (
    `teams_ID` int(11) NOT NULL AUTO_INCREMENT,
    `yearID` smallint(6) NOT NULL,
    `lgID` char(2) DEFAULT NULL,
    `teamID` char(3) NOT NULL,
    `franchID` varchar(3) DEFAULT NULL,
    `divID` char(1) DEFAULT NULL,
    `div_ID` int(11) DEFAULT NULL,
    `teamRank` smallint(6) DEFAULT NULL,
    `teams_G` smallint(6) DEFAULT NULL,
    `Ghome` smallint(6) DEFAULT NULL,
    `teams_W` smallint(6) DEFAULT NULL,
    `teams_L` smallint(6) DEFAULT NULL,
    `DivWin` varchar(1) DEFAULT NULL,
    `WCWin` varchar(1) DEFAULT NULL,
    `LgWin` varchar(1) DEFAULT NULL,
    `WSWin` varchar(1) DEFAULT NULL,
    `R` smallint(6) DEFAULT NULL,
    `AB` smallint(6) DEFAULT NULL,
    `H` smallint(6) DEFAULT NULL,
    `2B` smallint(6) DEFAULT NULL,
    `3B` smallint(6) DEFAULT NULL,
    `HR` smallint(6) DEFAULT NULL,
    `BB` smallint(6) DEFAULT NULL,
    `SO` smallint(6) DEFAULT NULL,
    `SB` smallint(6) DEFAULT NULL,
    `CS` smallint(6) DEFAULT NULL,
    `HBP` smallint(6) DEFAULT NULL,
    `SF` smallint(6) DEFAULT NULL,
    `RA` smallint(6) DEFAULT NULL,
    `ER` smallint(6) DEFAULT NULL,
    `ERA` double DEFAULT NULL,
    `CG` smallint(6) DEFAULT NULL,
    `SHO` smallint(6) DEFAULT NULL,
    `SV` smallint(6) DEFAULT NULL,
    `IPouts` int(11) DEFAULT NULL,
    `HA` smallint(6) DEFAULT NULL,
    `HRA` smallint(6) DEFAULT NULL,
    `BBA` smallint(6) DEFAULT NULL,
    `SOA` smallint(6) DEFAULT NULL,
    `E` int(11) DEFAULT NULL,
    `DP` int(11) DEFAULT NULL,
    `FP` double DEFAULT NULL,
    `name` varchar(50) DEFAULT NULL,
    `park` varchar(255) DEFAULT NULL,
    `attendance` int(11) DEFAULT NULL,
    `BPF` int(11) DEFAULT NULL,
    `PPF` int(11) DEFAULT NULL,
    `teamIDBR` varchar(3) DEFAULT NULL,
    `teamIDlahman45` varchar(3) DEFAULT NULL,
    `teamIDretro` varchar(3) DEFAULT NULL,
    PRIMARY KEY (`teams_ID`)
)   ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

SET character_set_client = utf8mb4;
CREATE TABLE IF NOT EXISTS `teamshalf` (
    `teamshalf_ID` int(11) NOT NULL AUTO_INCREMENT,
    `yearID` smallint(6) NOT NULL,
    `lgID` char(2) DEFAULT NULL,
    `teamID` char(3) NOT NULL,
    `team_ID` int(11) DEFAULT NULL,
    `Half` smallint(6) NOT NULL,
    `divID` char(1) DEFAULT NULL,
    `div_ID` int(11) DEFAULT NULL,
    `DivWin` varchar(1) DEFAULT NULL,
    `teamRank` smallint(6) DEFAULT NULL,
    `teamshalf_G` smallint(6) DEFAULT NULL,
    `teamshalf_W` smallint(6) DEFAULT NULL,
    `teamshalf_L` smallint(6) DEFAULT NULL,
    PRIMARY KEY (`teamshalf_ID`)
)   ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


SET character_set_client = utf8mb4;
CREATE TABLE IF NOT EXISTS `homegames` (
    `homegames_ID` int(11) NOT NULL AUTO_INCREMENT,
    `yearkey` int(11) DEFAULT NULL,
    `leaguekey` char(2) DEFAULT NULL,
    `teamkey` char(3) DEFAULT NULL,
    `team_ID` int(11) DEFAULT NULL,
    `parkkey` varchar(255) DEFAULT NULL,
    `park_ID` int(11) DEFAULT NULL,
    `spanfirst` varchar(255) DEFAULT NULL,
    `spanlast` varchar(255) DEFAULT NULL,
    `games` int(11) DEFAULT NULL,
    `openings` int(11) DEFAULT NULL,
    `attendance` int(11) DEFAULT NULL,
    `spanfirst_date` date DEFAULT NULL,
    `spanlast_date` date DEFAULT NULL,
    PRIMARY KEY (`homegames_ID`)
)   ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


SET character_set_client = utf8mb4;
CREATE TABLE IF NOT EXISTS `batting` (
    `batting_ID` int(11) NOT NULL AUTO_INCREMENT,
    `playerID` varchar(9) NOT NULL,
    `yearID` smallint(6) NOT NULL,
    `stint` smallint(6) NOT NULL,
    `teamID` char(3) DEFAULT NULL,
    `team_ID` int(11) DEFAULT NULL,
    `lgID` char(2) DEFAULT NULL,
    `batting_G` smallint(6) DEFAULT NULL,
    `G_batting` smallint(6) DEFAULT NULL,
    `batting_AB` smallint(6) DEFAULT NULL,
    `batting_R` smallint(6) DEFAULT NULL,
    `batting_H` smallint(6) DEFAULT NULL,
    `batting_2B` smallint(6) DEFAULT NULL,
    `batting_3B` smallint(6) DEFAULT NULL,
    `batting_HR` smallint(6) DEFAULT NULL,
    `batting_RBI` smallint(6) DEFAULT NULL,
    `batting_SB` smallint(6) DEFAULT NULL,
    `batting_CS` smallint(6) DEFAULT NULL,
    `batting_BB` smallint(6) DEFAULT NULL,
    `batting_SO` smallint(6) DEFAULT NULL,
    `batting_IBB` smallint(6) DEFAULT NULL,
    `batting_HBP` smallint(6) DEFAULT NULL,
    `batting_SH` smallint(6) DEFAULT NULL,
    `batting_SF` smallint(6) DEFAULT NULL,
    `batting_GIDP` smallint(6) DEFAULT NULL,
    PRIMARY KEY (`batting_ID`)
)   ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

SET character_set_client = utf8mb4;
CREATE TABLE IF NOT EXISTS `battingpost` (
    `battingpost_ID` int(11) NOT NULL AUTO_INCREMENT,
    `yearID` smallint(6) NOT NULL,
    `round` varchar(10) NOT NULL,
    `playerID` varchar(9) NOT NULL,
    `teamID` char(3) DEFAULT NULL,
    `team_ID` int(11) DEFAULT NULL,
    `lgID` char(2) DEFAULT NULL,
    `battingpost_G` smallint(6) DEFAULT NULL,
    `battingpost_AB` smallint(6) DEFAULT NULL,
    `battingpost_R` smallint(6) DEFAULT NULL,
    `battingpost_H` smallint(6) DEFAULT NULL,
    `battingpost_2B` smallint(6) DEFAULT NULL,
    `battingpost_3B` smallint(6) DEFAULT NULL,
    `battingpost_HR` smallint(6) DEFAULT NULL,
    `battingpost_RBI` smallint(6) DEFAULT NULL,
    `battingpost_SB` smallint(6) DEFAULT NULL,
    `battingpost_CS` smallint(6) DEFAULT NULL,
    `battingpost_BB` smallint(6) DEFAULT NULL,
    `battingpost_SO` smallint(6) DEFAULT NULL,
    `battingpost_IBB` smallint(6) DEFAULT NULL,
    `battingpost_HBP` smallint(6) DEFAULT NULL,
    `battingpost_SH` smallint(6) DEFAULT NULL,
    `battingpost_SF` smallint(6) DEFAULT NULL,
    `battingpost_GIDP` smallint(6) DEFAULT NULL,
    PRIMARY KEY (`battingpost_ID`)
)   ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


SET character_set_client = utf8mb4;
CREATE TABLE IF NOT EXISTS `appearances` (
    `appearances_ID` int(11) NOT NULL AUTO_INCREMENT,
    `yearID` smallint(6) NOT NULL,
    `teamID` char(3) NOT NULL,
    `teams_ID` int(11) DEFAULT NULL,
    `lgID` char(2) DEFAULT NULL,
    `playerID` varchar(9) NOT NULL,
    `G_all` smallint(6) DEFAULT NULL,
    `GS` smallint(6) DEFAULT NULL,
    `G_batting` smallint(6) DEFAULT NULL,
    `G_defense` smallint(6) DEFAULT NULL,
    `G_p` smallint(6) DEFAULT NULL,
    `G_c` smallint(6) DEFAULT NULL,
    `G_1b` smallint(6) DEFAULT NULL,
    `G_2b` smallint(6) DEFAULT NULL,
    `G_3b` smallint(6) DEFAULT NULL,
    `G_ss` smallint(6) DEFAULT NULL,
    `G_lf` smallint(6) DEFAULT NULL,
    `G_cf` smallint(6) DEFAULT NULL,
    `G_rf` smallint(6) DEFAULT NULL,
    `G_of` smallint(6) DEFAULT NULL,
    `G_dh` smallint(6) DEFAULT NULL,
    `G_ph` smallint(6) DEFAULT NULL,
    `G_pr` smallint(6) DEFAULT NULL,
    PRIMARY KEY (`appearances_ID`)
)   ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


SET character_set_client = utf8mb4;
CREATE TABLE IF NOT EXISTS `managers` (
    `managers_ID` int(11) NOT NULL AUTO_INCREMENT,
    `playerID` varchar(10) DEFAULT NULL,
    `yearID` smallint(6) NOT NULL,
    `teamID` char(3) NOT NULL,
    `team_ID` int(11) DEFAULT NULL,
    `lgID` char(2) DEFAULT NULL,
    `inseason` smallint(6) NOT NULL,
    `manager_G` smallint(6) DEFAULT NULL,
    `manager_W` smallint(6) DEFAULT NULL,
    `manager_L` smallint(6) DEFAULT NULL,
    `teamRank` smallint(6) DEFAULT NULL,
    `plyrMgr` varchar(1) DEFAULT NULL,
    PRIMARY KEY (`managers_ID`)
)   ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

SET character_set_client = utf8mb4;
CREATE TABLE IF NOT EXISTS `managershalf` (
    `managershalf_ID` int(11) NOT NULL AUTO_INCREMENT,
    `playerID` varchar(10) DEFAULT NULL,
    `yearID` smallint(6) NOT NULL,
    `teamID` char(3) NOT NULL,
    `team_ID` int(11) DEFAULT NULL,
    `lgID` char(2) DEFAULT NULL,
    `inseason` smallint(6) NOT NULL,
    `half` smallint(6) NOT NULL,
    `managerhalf_G` smallint(6) DEFAULT NULL,
    `managerhalf_W` smallint(6) DEFAULT NULL,
    `managerhalf_L` smallint(6) DEFAULT NULL,
    `teamRank` smallint(6) DEFAULT NULL,
    PRIMARY KEY (`managershalf_ID`)
)   ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


SET character_set_client = utf8mb4;
CREATE TABLE IF NOT EXISTS `halloffame` (
    `halloffame_ID` int(11) NOT NULL AUTO_INCREMENT,
    `playerID` varchar(10) NOT NULL,
    `yearID` smallint(6) NOT NULL,
    `votedBy` varchar(64) NOT NULL,
    `ballots` smallint(6) DEFAULT NULL,
    `needed` smallint(6) DEFAULT NULL,
    `votes` smallint(6) DEFAULT NULL,
    `inducted` varchar(1) DEFAULT NULL,
    `category` varchar(20) DEFAULT NULL,
    `needed_note` varchar(25) DEFAULT NULL,
    PRIMARY KEY (`halloffame_ID`)
)   ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

SET character_set_client = utf8mb4;
CREATE TABLE IF NOT EXISTS `allstarfull` (
    `allstarfull_ID` int(11) NOT NULL AUTO_INCREMENT,
    `playerID` varchar(10) NOT NULL,
    `yearID` smallint(6) DEFAULT NULL,
    `gameNum` smallint(6) NOT NULL,
    `gameID` varchar(12) DEFAULT NULL,
    `teamID` char(3) DEFAULT NULL,
    `team_ID` int(11) DEFAULT NULL,
    `lgID` char(2) DEFAULT NULL,
    `GP` smallint(6) DEFAULT NULL,
    `startingPos` smallint(6) DEFAULT NULL,
    PRIMARY KEY (`allstarfull_ID`)
)   ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

SET character_set_client = utf8mb4;
CREATE TABLE IF NOT EXISTS `salaries` (
    `salaries_ID` int(11) NOT NULL AUTO_INCREMENT,
    `yearID` smallint(6) NOT NULL,
    `teamID` char(3) NOT NULL,
    `team_ID` int(11) DEFAULT NULL,
    `lgID` char(2) NOT NULL,
    `playerID` varchar(10) NOT NULL,
    `salary` double DEFAULT NULL,
    PRIMARY KEY (`salaries_ID`)
)   ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

SET character_set_client = utf8mb4;
CREATE TABLE IF NOT EXISTS `seriespost` (
    `seriespost_ID` int(11) NOT NULL AUTO_INCREMENT,
    `yearID` smallint(6) NOT NULL,
    `round` varchar(5) NOT NULL,
    `teamIDwinner` varchar(3) DEFAULT NULL,
    `lgIDwinner` varchar(2) DEFAULT NULL,
    `team_IDwinner` int(11) DEFAULT NULL,
    `teamIDloser` varchar(3) DEFAULT NULL,
    `team_IDloser` int(11) DEFAULT NULL,
    `lgIDloser` varchar(2) DEFAULT NULL,
    `wins` smallint(6) DEFAULT NULL,
    `losses` smallint(6) DEFAULT NULL,
    `ties` smallint(6) DEFAULT NULL,
    PRIMARY KEY (`seriespost_ID`)
)   ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


SET character_set_client = utf8mb4;
CREATE TABLE IF NOT EXISTS `pitching` (
    `pitching_ID` int(11) NOT NULL AUTO_INCREMENT,
    `playerID` varchar(9) NOT NULL,
    `yearID` smallint(6) NOT NULL,
    `stint` smallint(6) NOT NULL,
    `teamID` char(3) DEFAULT NULL,
    `team_ID` int(11) DEFAULT NULL,
    `lgID` char(2) DEFAULT NULL,
    `pitching_W` smallint(6) DEFAULT NULL,
    `pitching_L` smallint(6) DEFAULT NULL,
    `pitching_G` smallint(6) DEFAULT NULL,
    `pitching_GS` smallint(6) DEFAULT NULL,
    `pitching_CG` smallint(6) DEFAULT NULL,
    `pitching_SHO` smallint(6) DEFAULT NULL,
    `pitching_SV` smallint(6) DEFAULT NULL,
    `pitching_IPouts` int(11) DEFAULT NULL,
    `pitching_H` smallint(6) DEFAULT NULL,
    `pitching_ER` smallint(6) DEFAULT NULL,
    `pitching_HR` smallint(6) DEFAULT NULL,
    `pitching_BB` smallint(6) DEFAULT NULL,
    `pitching_SO` smallint(6) DEFAULT NULL,
    `pitching_BAOpp` double DEFAULT NULL,
    `pitching_ERA` double DEFAULT NULL,
    `pitching_IBB` smallint(6) DEFAULT NULL,
    `pitching_WP` smallint(6) DEFAULT NULL,
    `pitching_HBP` smallint(6) DEFAULT NULL,
    `pitching_BK` smallint(6) DEFAULT NULL,
    `pitching_BFP` smallint(6) DEFAULT NULL,
    `pitching_GF` smallint(6) DEFAULT NULL,
    `pitching_R` smallint(6) DEFAULT NULL,
    `pitching_SH` smallint(6) DEFAULT NULL,
    `pitching_SF` smallint(6) DEFAULT NULL,
    `pitching_GIDP` smallint(6) DEFAULT NULL,
    PRIMARY KEY (`pitching_ID`)
)   ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

SET character_set_client = utf8mb4;
CREATE TABLE IF NOT EXISTS `pitchingpost` (
    `pitchingpost_ID` int(11) NOT NULL AUTO_INCREMENT,
    `playerID` varchar(9) NOT NULL,
    `yearID` smallint(6) NOT NULL,
    `round` varchar(10) NOT NULL,
    `teamID` char(3) DEFAULT NULL,
    `team_ID` int(11) DEFAULT NULL,
    `lgID` char(2) DEFAULT NULL,
    `pitchingpost_W` smallint(6) DEFAULT NULL,
    `pitchingpost_L` smallint(6) DEFAULT NULL,
    `pitchingpost_G` smallint(6) DEFAULT NULL,
    `pitchingpost_GS` smallint(6) DEFAULT NULL,
    `pitchingpost_CG` smallint(6) DEFAULT NULL,
    `pitchingpost_SHO` smallint(6) DEFAULT NULL,
    `pitchingpost_SV` smallint(6) DEFAULT NULL,
    `pitchingpost_IPouts` int(11) DEFAULT NULL,
    `pitchingpost_H` smallint(6) DEFAULT NULL,
    `pitchingpost_ER` smallint(6) DEFAULT NULL,
    `pitchingpost_HR` smallint(6) DEFAULT NULL,
    `pitchingpost_BB` smallint(6) DEFAULT NULL,
    `pitchingpost_SO` smallint(6) DEFAULT NULL,
    `pitchingpost_BAOpp` double DEFAULT NULL,
    `pitchingpost_ERA` double DEFAULT NULL,
    `pitchingpost_IBB` smallint(6) DEFAULT NULL,
    `pitchingpost_WP` smallint(6) DEFAULT NULL,
    `pitchingpost_HBP` smallint(6) DEFAULT NULL,
    `pitchingpost_BK` smallint(6) DEFAULT NULL,
    `pitchingpost_BFP` smallint(6) DEFAULT NULL,
    `pitchingpost_GF` smallint(6) DEFAULT NULL,
    `pitchingpost_R` smallint(6) DEFAULT NULL,
    `pitchingpost_SH` smallint(6) DEFAULT NULL,
    `pitchingpost_SF` smallint(6) DEFAULT NULL,
    `pitchingpost_GIDP` smallint(6) DEFAULT NULL,
    PRIMARY KEY (`pitchingpost_ID`)
)   ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

SET character_set_client = utf8mb4;
CREATE TABLE IF NOT EXISTS `fielding` (
    `fielding_ID` int(11) NOT NULL AUTO_INCREMENT,
    `playerID` varchar(9) NOT NULL,
    `yearID` smallint(6) NOT NULL,
    `stint` smallint(6) NOT NULL,
    `teamID` char(3) DEFAULT NULL,
    `team_ID` int(11) DEFAULT NULL,
    `lgID` char(2) DEFAULT NULL,
    `fielding_POS` varchar(2) NOT NULL,
    `fielding_G` smallint(6) DEFAULT NULL,
    `fielding_GS` smallint(6) DEFAULT NULL,
    `fielding_InnOuts` smallint(6) DEFAULT NULL,
    `fielding_PO` smallint(6) DEFAULT NULL,
    `fielding_A` smallint(6) DEFAULT NULL,
    `fielding_E` smallint(6) DEFAULT NULL,
    `fielding_DP` smallint(6) DEFAULT NULL,
    `fielding_PB` smallint(6) DEFAULT NULL,
    `fielding_WP` smallint(6) DEFAULT NULL,
    `fielding_SB` smallint(6) DEFAULT NULL,
    `fielding_CS` smallint(6) DEFAULT NULL,
    `fielding_ZR` double  DEFAULT NULL,
    PRIMARY KEY (`fielding_ID`)
)   ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

SET character_set_client = utf8mb4;
CREATE TABLE IF NOT EXISTS `fieldingpost` (
    `fieldingpost_ID` int(11) NOT NULL AUTO_INCREMENT,
    `playerID` varchar(9) NOT NULL,
    `yearID` smallint(6) NOT NULL,
    `teamID` char(3) DEFAULT NULL,
    `team_ID` int(11) DEFAULT NULL,
    `lgID` char(2) DEFAULT NULL,
    `round` varchar(10) NOT NULL,
    `fielding_POS` varchar(2) NOT NULL,
    `fielding_G` smallint(6) DEFAULT NULL,
    `fielding_GS` smallint(6) DEFAULT NULL,
    `fielding_InnOuts` smallint(6) DEFAULT NULL,
    `fielding_PO` smallint(6) DEFAULT NULL,
    `fielding_A` smallint(6) DEFAULT NULL,
    `fielding_E` smallint(6) DEFAULT NULL,
    `fielding_DP` smallint(6) DEFAULT NULL,
    `fielding_TP` smallint(6) DEFAULT NULL,
    `fielding_PB` smallint(6) DEFAULT NULL,
    `fielding_SB` smallint(6) DEFAULT NULL,
    `fielding_CS` smallint(6) DEFAULT NULL,
    PRIMARY KEY (`fieldingpost_ID`)
)   ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

SET character_set_client = utf8mb4;
CREATE TABLE IF NOT EXISTS `fieldingof` (
    `fieldingof_ID` int(11) NOT NULL AUTO_INCREMENT,
    `playerID` varchar(9) NOT NULL,
    `yearID` smallint(6) NOT NULL,
    `sting` smallint(6) NOT NULL,
    `Glf` smallint(6) DEFAULT NULL,
    `Gcf` smallint(6) DEFAULT NULL,
    `Grf` smallint(6) DEFAULT NULL,
    PRIMARY KEY (`fieldingof_ID`)
)   ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

SET character_set_client = utf8mb4;
CREATE TABLE IF NOT EXISTS `fieldingofsplit` (
    `fieldingofsplit_ID` int(11) NOT NULL AUTO_INCREMENT,
    `playerID` varchar(9) NOT NULL,
    `yearID` smallint(6) NOT NULL,
    `stint` smallint(6) NOT NULL,
    `teamID` char(3) DEFAULT NULL,
    `team_ID` int(11) DEFAULT NULL,
    `lgID` char(2) DEFAULT NULL,
    `fieldingof_POS` varchar(2) NOT NULL,
    `fieldingof_G` smallint(6) DEFAULT NULL,
    `fieldingof_GS` smallint(6) DEFAULT NULL,
    `fieldingof_InnOuts` smallint(6) DEFAULT NULL,
    `fieldingof_PO` smallint(6) DEFAULT NULL,
    `fieldingof_A` smallint(6) DEFAULT NULL,
    `fieldingof_E` smallint(6) DEFAULT NULL,
    `fieldingof_DP` smallint(6) DEFAULT NULL,
    `fieldingof_PB` smallint(6) DEFAULT NULL,
    `fieldingof_WP` smallint(6) DEFAULT NULL,
    `fieldingof_SB` smallint(6) DEFAULT NULL,
    `fieldingof_CS` smallint(6) DEFAULT NULL,
    `fieldingof_ZR` double  DEFAULT NULL,
    PRIMARY KEY (`fieldingofsplit_ID`)
)   ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- NOTE: combining awardsplayers and awardsmanagers into one table

SET character_set_client = utf8mb4;
CREATE TABLE IF NOT EXISTS `awards` (
    `awards_ID` int(11) NOT NULL AUTO_INCREMENT,
    `playerID` varchar(9) NOT NULL,
    `awardsID` varchar(75) NOT NULL,
    `yearID` smallint(6) NOT NULL,
    `tie` varchar(1) DEFAULT NULL,
    `notes` varchar(100) DEFAULT NULL,
    PRIMARY KEY (`awards_ID`)
)   ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

SET character_set_client = utf8mb4;
CREATE TABLE IF NOT EXISTS `awardsshare` (
    `awardsshare_ID` int(11) NOT NULL AUTO_INCREMENT,
    `awardsID` varchar(25) NOT NULL,
    `yearID` smallint(6) NOT NULL,
    `lgID` char(2) NOT NULL,
    `playerID` varchar(9) NOT NULL,
    `pointsWon` double DEFAULT NULL,
    `pointMax` smallint(6) DEFAULT NULL,
    `votesFirst` double DEFAULT NULL,
    PRIMARY KEY (`awardsshare_ID`)
)   ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
