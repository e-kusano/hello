/* 社員マスタ作成*/
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

/* 週報テーブル作成*/
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

/* 部署テーブル作成*/
CREATE TABLE `division` (
	`id` BIGINT(20) NOT NULL AUTO_INCREMENT,
	`division_name` VARCHAR(100) NOT NULL,
	PRIMARY KEY (`id`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB;

/* 社員マスタ データ追加*/
INSERT INTO employee
(name, user_id, password, division_id, reader)
VALUES
('青木 仁史','h.aoki','aoki','1','1'),
('山田 彰人','a.yamada','yamada','1',null),
('山木 聡子','s.yamaki','yamaki','1',null),
('藤村 沙矢香','s.fujimura','fujimura','1',null),
('鈴木 利沙','r.suzuki','suzuki','1',null),
('氏田 博樹','h.ujita','ujita','2','1,2,3'),
('松尾 果歩','k.matsuo','matsuo','2',null),
('安田 理紗','r.yasuda','yasuda','2',null),
('栁谷 あゆみ','a.yanagiya','yanagiya','2',null),
('馬場 小百合','s.baba','baba','2',null),
('星野 佑輔','y.hoshino','hoshino','3','3'),
('小倉 暢子','y.ogura','ogura','3',null),
('小松 晴菜','h.komatsu','komatsu','3',null),
('石原 遥香','h.ishihara','ishihara','3',null),
('絹谷 正英','m.kinutani','kinutani','4','4'),
('牛頭 孝典','t.gozu','gozu','4',null),
('依田 芽美','m.yoda','yoda','4',null),
('鈴木 麻美','a.suzuki','suzuki','4',null),
('宮野 昇','n.miyano','miyano','5','5,6,7'),
('山﨑 稔夫','yamazaki','yamazaki','5',null),
('長井 裕樹','y.nagai','nagai','5',null),
('西辻 さやか','s.nishitsuji','nishi','6','6'),
('笛木 潤一','j.fueki','fueki','6',null),
('山崎 拓哉','t.yamazaki','yamazaki','6',null),
('黒澤 和矢','k.kurosawa','kurosawa','7','7'),
('小池 唯','y.koike','koike','7',null),
('金子 吉嗣','y.kaneko','kaneko','7',null),
('武井 純','j.takei','takei','8','8'),
('草野 重美','e.kusano','kusano','8,9',null),
('丹野 万季','m.tanno','tanno','9,10,11','9'),
('本橋 滋','s.motohashi','moto','10','1,2,3,4,5,6,7,10'),
('鎌田 吉明','y.kamata','kamata','11','11');

/* 部署テーブルデータ追加*/
INSERT INTO division(division_name) VALUES
('IT事業部 サポートグループ 第1ヘルプデスクチーム'),
('IT事業部 サポートグループ 第2ヘルプデスクチーム'),
('IT事業部 サポートグループ セールスサポートチーム'),
('IT事業部 開発グループ 開発チーム'),
('IT事業部 インフラグループ サーバーチーム'),
('IT事業部 インフラグループ ネットワークチーム'),
('IT事業部 インフラグループ 運用・保守チーム'),
('WEB事業部'),
('管理部'),
('営業部'),
('人事部');