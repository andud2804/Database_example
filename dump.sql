
#

CREATE DATABASE IF NOT EXISTS `movedb`;
USE `movedb`;

#
# Table structure for table 'ВЕЩДОКИ'
#

DROP TABLE IF EXISTS `ВЕЩДОКИ`;

CREATE TABLE `ВЕЩДОКИ` (
  `Номер_вещдок` INTEGER NOT NULL, 
  `Наименование` VARCHAR(25) NOT NULL, 
  `Номер_дела` INTEGER NOT NULL, 
  `Код_хран` INTEGER NOT NULL, 
  PRIMARY KEY (`Номер_вещдок`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'ВЕЩДОКИ'
#

INSERT INTO `ВЕЩДОКИ` (`Номер_вещдок`, `Наименование`, `Номер_дела`, `Код_хран`) VALUES (123, 'Золотое колье            ', 1213, 1);
INSERT INTO `ВЕЩДОКИ` (`Номер_вещдок`, `Наименование`, `Номер_дела`, `Код_хран`) VALUES (321, 'Охотничий нож            ', 1234, 4);
INSERT INTO `ВЕЩДОКИ` (`Номер_вещдок`, `Наименование`, `Номер_дела`, `Код_хран`) VALUES (456, 'Антикварная шкатулка     ', 1415, 8);
INSERT INTO `ВЕЩДОКИ` (`Номер_вещдок`, `Наименование`, `Номер_дела`, `Код_хран`) VALUES (544, 'Денежная сумма 100000 руб', 1617, 2);
INSERT INTO `ВЕЩДОКИ` (`Номер_вещдок`, `Наименование`, `Номер_дела`, `Код_хран`) VALUES (567, 'Наркотическое вещество   ', 1819, 3);
INSERT INTO `ВЕЩДОКИ` (`Номер_вещдок`, `Наименование`, `Номер_дела`, `Код_хран`) VALUES (678, 'Молоток                  ', 2021, 7);
INSERT INTO `ВЕЩДОКИ` (`Номер_вещдок`, `Наименование`, `Номер_дела`, `Код_хран`) VALUES (700, 'Монтировка               ', 2223, 10);
INSERT INTO `ВЕЩДОКИ` (`Номер_вещдок`, `Наименование`, `Номер_дела`, `Код_хран`) VALUES (789, 'Пистолет Beretta 92      ', 2425, 5);
INSERT INTO `ВЕЩДОКИ` (`Номер_вещдок`, `Наименование`, `Номер_дела`, `Код_хран`) VALUES (871, 'Серебряные серьги        ', 5678, 9);
INSERT INTO `ВЕЩДОКИ` (`Номер_вещдок`, `Наименование`, `Номер_дела`, `Код_хран`) VALUES (896, 'Коллекционная шпага      ', 9101, 6);
# 10 records

#
# Table structure for table 'ДЕЛО'
#

DROP TABLE IF EXISTS `ДЕЛО`;

CREATE TABLE `ДЕЛО` (
  `Номер_дела` INTEGER NOT NULL, 
  `Дата_возбуждения` DATETIME, 
  `Дата_окончания` DATETIME, 
  `Код_следователя` INTEGER NOT NULL, 
  PRIMARY KEY (`Номер_дела`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'ДЕЛО'
#

INSERT INTO `ДЕЛО` (`Номер_дела`, `Дата_возбуждения`, `Дата_окончания`, `Код_следователя`) VALUES (1213, '2020-03-03 00:00:00', NULL, 14);
INSERT INTO `ДЕЛО` (`Номер_дела`, `Дата_возбуждения`, `Дата_окончания`, `Код_следователя`) VALUES (1234, '2015-03-20 00:00:00', '2017-04-21 00:00:00', 11);
INSERT INTO `ДЕЛО` (`Номер_дела`, `Дата_возбуждения`, `Дата_окончания`, `Код_следователя`) VALUES (1415, '2020-04-04 00:00:00', NULL, 15);
INSERT INTO `ДЕЛО` (`Номер_дела`, `Дата_возбуждения`, `Дата_окончания`, `Код_следователя`) VALUES (1617, '2017-10-12 00:00:00', '2017-12-12 00:00:00', 16);
INSERT INTO `ДЕЛО` (`Номер_дела`, `Дата_возбуждения`, `Дата_окончания`, `Код_следователя`) VALUES (1819, '2016-05-03 00:00:00', '2017-07-23 00:00:00', 17);
INSERT INTO `ДЕЛО` (`Номер_дела`, `Дата_возбуждения`, `Дата_окончания`, `Код_следователя`) VALUES (2021, '2019-06-30 00:00:00', NULL, 18);
INSERT INTO `ДЕЛО` (`Номер_дела`, `Дата_возбуждения`, `Дата_окончания`, `Код_следователя`) VALUES (2223, '2016-05-24 00:00:00', '2016-10-12 00:00:00', 19);
INSERT INTO `ДЕЛО` (`Номер_дела`, `Дата_возбуждения`, `Дата_окончания`, `Код_следователя`) VALUES (2425, '2019-07-20 00:00:00', NULL, 20);
INSERT INTO `ДЕЛО` (`Номер_дела`, `Дата_возбуждения`, `Дата_окончания`, `Код_следователя`) VALUES (5678, '2018-05-03 00:00:00', '2018-11-12 00:00:00', 12);
INSERT INTO `ДЕЛО` (`Номер_дела`, `Дата_возбуждения`, `Дата_окончания`, `Код_следователя`) VALUES (9101, '2018-05-04 00:00:00', '2018-07-12 00:00:00', 13);
# 10 records

#
# Table structure for table 'МЕСТО_ХРАНЕНИЯ'
#

DROP TABLE IF EXISTS `МЕСТО_ХРАНЕНИЯ`;

CREATE TABLE `МЕСТО_ХРАНЕНИЯ` (
  `Код_хран` INTEGER NOT NULL, 
  `Тип` VARCHAR(20), 
  `Адрес` VARCHAR(50) NOT NULL, 
  PRIMARY KEY (`Код_хран`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'МЕСТО_ХРАНЕНИЯ'
#

INSERT INTO `МЕСТО_ХРАНЕНИЯ` (`Код_хран`, `Тип`, `Адрес`) VALUES (1, 'банк                ', 'г. Москва                                         ');
INSERT INTO `МЕСТО_ХРАНЕНИЯ` (`Код_хран`, `Тип`, `Адрес`) VALUES (2, 'банк                ', 'г. Москва                                         ');
INSERT INTO `МЕСТО_ХРАНЕНИЯ` (`Код_хран`, `Тип`, `Адрес`) VALUES (3, 'камера хранения СК  ', 'г. Москва                                         ');
INSERT INTO `МЕСТО_ХРАНЕНИЯ` (`Код_хран`, `Тип`, `Адрес`) VALUES (4, 'камера хранения СК  ', 'г. Реутов                                         ');
INSERT INTO `МЕСТО_ХРАНЕНИЯ` (`Код_хран`, `Тип`, `Адрес`) VALUES (5, 'у владельца         ', 'г. Тула                                           ');
INSERT INTO `МЕСТО_ХРАНЕНИЯ` (`Код_хран`, `Тип`, `Адрес`) VALUES (6, 'камера хранения СК  ', 'г. Москва                                         ');
INSERT INTO `МЕСТО_ХРАНЕНИЯ` (`Код_хран`, `Тип`, `Адрес`) VALUES (7, 'банк                ', 'г. Зеленоград                                     ');
INSERT INTO `МЕСТО_ХРАНЕНИЯ` (`Код_хран`, `Тип`, `Адрес`) VALUES (8, 'у владельца         ', 'г. Москва                                         ');
INSERT INTO `МЕСТО_ХРАНЕНИЯ` (`Код_хран`, `Тип`, `Адрес`) VALUES (9, 'камера хранения СК  ', 'г. Москва                                         ');
INSERT INTO `МЕСТО_ХРАНЕНИЯ` (`Код_хран`, `Тип`, `Адрес`) VALUES (10, 'камера хранения СК  ', 'г. Тула                                           ');
# 10 records

#
# Table structure for table 'СЛЕДОВАТЕЛЬ'
#

DROP TABLE IF EXISTS `СЛЕДОВАТЕЛЬ`;

CREATE TABLE `СЛЕДОВАТЕЛЬ` (
  `Код_следователя` INTEGER NOT NULL, 
  `ФИО` VARCHAR(30) NOT NULL, 
  `Звание` VARCHAR(20) NOT NULL, 
  PRIMARY KEY (`Код_следователя`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'СЛЕДОВАТЕЛЬ'
#

INSERT INTO `СЛЕДОВАТЕЛЬ` (`Код_следователя`, `ФИО`, `Звание`) VALUES (11, 'Краснощекова Ю. С.            ', 'лейтенант юстиции   ');
INSERT INTO `СЛЕДОВАТЕЛЬ` (`Код_следователя`, `ФИО`, `Звание`) VALUES (12, 'Лопатин И. Р.                 ', 'капитан юстиции     ');
INSERT INTO `СЛЕДОВАТЕЛЬ` (`Код_следователя`, `ФИО`, `Звание`) VALUES (13, 'Львов Д.О.                    ', 'капитан юстиции     ');
INSERT INTO `СЛЕДОВАТЕЛЬ` (`Код_следователя`, `ФИО`, `Звание`) VALUES (14, 'Новиков М. Д.                 ', 'майор юстиции       ');
INSERT INTO `СЛЕДОВАТЕЛЬ` (`Код_следователя`, `ФИО`, `Звание`) VALUES (15, 'Нуриев Т. Н.                  ', 'лейтенант юстиции   ');
INSERT INTO `СЛЕДОВАТЕЛЬ` (`Код_следователя`, `ФИО`, `Звание`) VALUES (16, 'Синицына Г. И.                ', 'капитан юстиции     ');
INSERT INTO `СЛЕДОВАТЕЛЬ` (`Код_следователя`, `ФИО`, `Звание`) VALUES (17, 'Сорокина Е. К.                ', 'капитан юстиции     ');
INSERT INTO `СЛЕДОВАТЕЛЬ` (`Код_следователя`, `ФИО`, `Звание`) VALUES (18, 'Тахтина В. Ю.                 ', 'майор юстиции       ');
INSERT INTO `СЛЕДОВАТЕЛЬ` (`Код_следователя`, `ФИО`, `Звание`) VALUES (19, 'Орлова Т. А.                  ', 'лейтенант юстиции   ');
INSERT INTO `СЛЕДОВАТЕЛЬ` (`Код_следователя`, `ФИО`, `Звание`) VALUES (20, 'Фетисова А. В.                ', 'майор юстиции       ');
INSERT INTO `СЛЕДОВАТЕЛЬ` (`Код_следователя`, `ФИО`, `Звание`) VALUES (21, 'Иванков                       ', 'майор юстиции       ');
# 11 records

