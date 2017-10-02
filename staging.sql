/* �Ј��}�X�^�쐬*/
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

/* �T��e�[�u���쐬*/
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

/* �����e�[�u���쐬*/
CREATE TABLE `division` (
	`id` BIGINT(20) NOT NULL AUTO_INCREMENT,
	`division_name` VARCHAR(100) NOT NULL,
	PRIMARY KEY (`id`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB;

/* �Ј��}�X�^ �f�[�^�ǉ�*/
INSERT INTO employee
(name, user_id, password, division_id, reader)
VALUES
('�� �m�j','h.aoki','aoki','1','1'),
('�R�c ���l','a.yamada','yamada','1',null),
('�R�� ���q','s.yamaki','yamaki','1',null),
('���� ���','s.fujimura','fujimura','1',null),
('��� ����','r.suzuki','suzuki','1',null),
('���c ����','h.ujita','ujita','2','1,2,3'),
('���� �ʕ�','k.matsuo','matsuo','2',null),
('���c ����','r.yasuda','yasuda','2',null),
('��J �����','a.yanagiya','yanagiya','2',null),
('�n�� ���S��','s.baba','baba','2',null),
('���� �C��','y.hoshino','hoshino','3','3'),
('���q ���q','y.ogura','ogura','3',null),
('���� ����','h.komatsu','komatsu','3',null),
('�Ό� �y��','h.ishihara','ishihara','3',null),
('���J ���p','m.kinutani','kinutani','4','4'),
('���� �F�T','t.gozu','gozu','4',null),
('�˓c ���','m.yoda','yoda','4',null),
('��� ����','a.suzuki','suzuki','4',null),
('�{�� ��','n.miyano','miyano','5','5,6,7'),
('�R�� ���v','yamazaki','yamazaki','5',null),
('���� �T��','y.nagai','nagai','5',null),
('���� ���₩','s.nishitsuji','nishi','6','6'),
('�J�� ����','j.fueki','fueki','6',null),
('�R�� ���','t.yamazaki','yamazaki','6',null),
('���V �a��','k.kurosawa','kurosawa','7','7'),
('���r �B','y.koike','koike','7',null),
('���q �g�k','y.kaneko','kaneko','7',null),
('���� ��','j.takei','takei','8','8'),
('���� �d��','e.kusano','kusano','8,9',null),
('�O�� ���G','m.tanno','tanno','9,10,11','9'),
('�{�� ��','s.motohashi','moto','10','1,2,3,4,5,6,7,10'),
('���c �g��','y.kamata','kamata','11','11');

/* �����e�[�u���f�[�^�ǉ�*/
INSERT INTO division(division_name) VALUES
('IT���ƕ� �T�|�[�g�O���[�v ��1�w���v�f�X�N�`�[��'),
('IT���ƕ� �T�|�[�g�O���[�v ��2�w���v�f�X�N�`�[��'),
('IT���ƕ� �T�|�[�g�O���[�v �Z�[���X�T�|�[�g�`�[��'),
('IT���ƕ� �J���O���[�v �J���`�[��'),
('IT���ƕ� �C���t���O���[�v �T�[�o�[�`�[��'),
('IT���ƕ� �C���t���O���[�v �l�b�g���[�N�`�[��'),
('IT���ƕ� �C���t���O���[�v �^�p�E�ێ�`�[��'),
('WEB���ƕ�'),
('�Ǘ���'),
('�c�ƕ�'),
('�l����');