/* Ğˆõƒ}ƒXƒ^ì¬*/
CREATE TABLE `employee` (
	`id` BIGINT(20) NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(100) NOT NULL,
	`user_id` VARCHAR(50) NULL DEFAULT NULL,
	`password` VARCHAR(20) NULL DEFAULT NULL,
	`update_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`division_id` VARCHAR(100) NOT NULL,
	`reader` VARCHAR(100) NULL DEFAULT NULL,
	PRIMARY KEY (`id`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;

/* T•ñƒe[ƒuƒ‹ì¬*/
CREATE TABLE `weekly_report` (
	`id` BIGINT(20) NOT NULL AUTO_INCREMENT,
	`project_name` VARCHAR(100) NOT NULL,
	`work_content` TEXT NULL,
	`reflect` TEXT NULL,
	`other` TEXT NULL,
	`regist_user_id` BIGINT(20) NOT NULL,
	`regist_date` DATE NOT NULL,
	`standard_date` DATE NOT NULL,
	PRIMARY KEY (`id`),
	INDEX `regist_user_id` (`regist_user_id`),
	CONSTRAINT `weekly_report_ibfk_1` FOREIGN KEY (`regist_user_id`) REFERENCES `employee` (`id`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB;

/* •”ƒe[ƒuƒ‹ì¬*/
CREATE TABLE `division` (
	`id` BIGINT(20) NOT NULL AUTO_INCREMENT,
	`division_name` VARCHAR(100) NOT NULL,
	PRIMARY KEY (`id`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB;

/* Ğˆõƒ}ƒXƒ^ ƒf[ƒ^’Ç‰Á*/
INSERT INTO employee
(name, user_id, password, division_id, reader)
VALUES
('Â–Ø mj','h.aoki','aoki','1','1'),
('R“c ²l','a.yamada','yamada','1',null),
('R–Ø ‘q','s.yamaki','yamaki','1',null),
('“¡‘º ¹–î','s.fujimura','fujimura','1',null),
('—é–Ø —˜¹','r.suzuki','suzuki','1',null),
('“c ”÷','h.ujita','ujita','2','1,2,3'),
('¼”ö ‰Ê•à','k.matsuo','matsuo','2',null),
('ˆÀ“c —Ñ','r.yasuda','yasuda','2',null),
('íÉ’J ‚ ‚ä‚İ','a.yanagiya','yanagiya','2',null),
('”nê ¬•S‡','s.baba','baba','2',null),
('¯–ì —C•ã','y.hoshino','hoshino','3','3'),
('¬‘q ’¨q','y.ogura','ogura','3',null),
('¬¼ °Ø','h.komatsu','komatsu','3',null),
('ÎŒ´ —y','h.ishihara','ishihara','3',null),
('Œ¦’J ³‰p','m.kinutani','kinutani','4','4'),
('‹“ª F“T','t.gozu','gozu','4',null),
('ˆË“c ‰è”ü','m.yoda','yoda','4',null),
('—é–Ø –ƒ”ü','a.suzuki','suzuki','4',null),
('‹{–ì ¸','n.miyano','miyano','5','5,6,7'),
('Rí• –«•v','yamazaki','yamazaki','5',null),
('’·ˆä —T÷','y.nagai','nagai','5',null),
('¼’Ò ‚³‚â‚©','s.nishitsuji','nishi','6','6'),
('“J–Ø ˆê','j.fueki','fueki','6',null),
('Rè ‘ñÆ','t.yamazaki','yamazaki','6',null),
('•àV ˜a–î','k.kurosawa','kurosawa','7','7'),
('¬’r —B','y.koike','koike','7',null),
('‹àq ‹gk','y.kaneko','kaneko','7',null),
('•ˆä ƒ','j.takei','takei','8','8'),
('‘–ì d”ü','e.kusano','kusano','8,9',null),
('’O–ì –œ‹G','m.tanno','tanno','9,10,11','9'),
('–{‹´  ','s.motohashi','moto','10','1,2,3,4,5,6,7,10'),
('Š™“c ‹g–¾','y.kamata','kamata','11','11');

INSERT INTO employee (name, user_id, password, division_id, reader) values ('ŠÇ—Ò','kanri','kanri','9','1,2,3,4,5,6,7,8,9,10');

/* •”ƒe[ƒuƒ‹ƒf[ƒ^’Ç‰Á*/
INSERT INTO division(division_name) VALUES
('IT–‹Æ•” ƒTƒ|[ƒgƒOƒ‹[ƒv ‘æ1ƒwƒ‹ƒvƒfƒXƒNƒ`[ƒ€'),
('IT–‹Æ•” ƒTƒ|[ƒgƒOƒ‹[ƒv ‘æ2ƒwƒ‹ƒvƒfƒXƒNƒ`[ƒ€'),
('IT–‹Æ•” ƒTƒ|[ƒgƒOƒ‹[ƒv ƒZ[ƒ‹ƒXƒTƒ|[ƒgƒ`[ƒ€'),
('IT–‹Æ•” ŠJ”­ƒOƒ‹[ƒv ŠJ”­ƒ`[ƒ€'),
('IT–‹Æ•” ƒCƒ“ƒtƒ‰ƒOƒ‹[ƒv ƒT[ƒo[ƒ`[ƒ€'),
('IT–‹Æ•” ƒCƒ“ƒtƒ‰ƒOƒ‹[ƒv ƒlƒbƒgƒ[ƒNƒ`[ƒ€'),
('IT–‹Æ•” ƒCƒ“ƒtƒ‰ƒOƒ‹[ƒv ‰^—pE•Ûçƒ`[ƒ€'),
('WEB–‹Æ•”'),
('ŠÇ—•”'),
('‰c‹Æ•”'),
('l–•”');