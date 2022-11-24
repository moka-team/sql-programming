-- 공통코드 테이블

-- 인적사항 공통코드 (테이블 생성, 제약조건 설정)
DROP TABLE IF EXISTS `profile_common_code`;

CREATE TABLE `profile_common_code` (
	`code`	varchar(10)	NOT NULL,
	`parent_code`	varchar(10)	NULL,
    `code_name`	varchar(255)	NOT NULL
);

ALTER TABLE `profile_common_code` ADD CONSTRAINT `PK_PROFILE_COMMON_CODE` PRIMARY KEY (
	`code`
);

ALTER TABLE `profile_common_code` ADD CONSTRAINT `FK_profile_common_code_TO_profile_common_code_1` FOREIGN KEY (
	`parent_code`
)
REFERENCES `profile_common_code` (
	`code`
);

-- 인적사항 공통코드 INSERT
-- L1
INSERT INTO `profile_common_code` (`code`, `parent_code`, `code_name`)
VALUES ('S', NULL, '코딩 숙련도'),
		('E', NULL, '교육'),
        ('G', NULL, '성별'),
        ('R', NULL, '응답 연도'),
        ('A', NULL, '나이');
     
-- L2
-- 8. 코딩 숙련도(S)
INSERT INTO `profile_common_code` (`code`, `parent_code`, `code_name`)
VALUES ('S01', 'S', 'I am a developer by profession'),
		('S02', 'S', 'I am not primarily a developer, but I write code sometimes as part of my work'),
        ('S03', 'S', 'I used to be a developer by profession, but no longer am'),
        ('S04', 'S', 'I am learning to code'),
        ('S05', 'S', 'I code primarily as a hobby'),
        ('S06', 'S', 'None of these');

-- 9. 교육(E)
INSERT INTO `profile_common_code` (`code`, `parent_code`, `code_name`)
VALUES ('E01', 'E', 'Primary/elementary school'),
		('E02', 'E', 'Secondary school'),
        ('E03', 'E', 'Some college/university study without earning a degree'),
        ('E04', 'E', 'Associate degree'),
        ('E05', 'E', 'Bachelor’s degree'),
        ('E06', 'E', 'Master’s degree'),
        ('E07', 'E', 'Professional degree'),
        ('E08', 'E', 'Other doctoral degree'),
        ('E09', 'E', 'Something else');

-- 10. 성별(G)
INSERT INTO `profile_common_code` (`code`, `parent_code`, `code_name`)
VALUES ('G01', 'G', 'Woman'),
		('G02', 'G', 'Man'),
        ('G03', 'G', 'Non-binary, genderqueer, or gender non-conforming'),
        ('G04', 'G', 'Prefer not to say');

-- 11. 응답 연도(R)
INSERT INTO `profile_common_code` (`code`, `parent_code`, `code_name`)
VALUES ('R01', 'R', '2018'),
		('R02', 'R', '2019'),
		('R03', 'R', '2020'),
        ('R04', 'R', '2021'),
        ('R05', 'R', '2022');

-- 12. 나이(A)
INSERT INTO `profile_common_code` (`code`, `parent_code`, `code_name`)
VALUES ('A01', 'A', 'Under 18 years old'),
		('A02', 'A', '18-24 years old'),
        ('A03', 'A', '25-34 years old'),
        ('A04', 'A', '35-44 years old'),
        ('A05', 'A', '45-54 years old'),
        ('A06', 'A', '55-64 years old'),
        ('A07', 'A', '65 years or older'),
        ('A08', 'A', 'Prefer not to say');


-- 기술 공통코드 (테이블 생성, 제약조건 설정)
DROP TABLE IF EXISTS `tech_common_code`;

CREATE TABLE `tech_common_code` (
	`code`	varchar(10)	NOT NULL,
	`parent_code`	varchar(10)	NULL,
	`grandparent_code`	varchar(10)	NULL,
    `code_name`	varchar(255)	NOT NULL
);

ALTER TABLE `tech_common_code` ADD CONSTRAINT `PK_TECH_COMMON_CODE` PRIMARY KEY (
	`code`
);

ALTER TABLE `tech_common_code` ADD CONSTRAINT `FK_tech_common_code_TO_tech_common_code_1` FOREIGN KEY (
	`parent_code`
)
REFERENCES `tech_common_code` (
	`code`
);

ALTER TABLE `tech_common_code` ADD CONSTRAINT `FK_tech_common_code_TO_tech_common_code_2` FOREIGN KEY (
	`grandparent_code`
)
REFERENCES `tech_common_code` (
	`code`
);

-- 기술 공통코드 INSERT
-- L1
INSERT INTO `tech_common_code` (`code`, `parent_code`, `grandparent_code`, `code_name`)
VALUES ('L', NULL, NULL, '프로그래밍 언어'),
		('D', NULL, NULL, '데이터베이스'),
        ('C', NULL, NULL, '클라우드 플랫폼'),
        ('W', NULL, NULL, '웹'),
        ('O', NULL, NULL, '운영체제');
-- 수정
INSERT INTO `tech_common_code` (`code`, `parent_code`, `grandparent_code`, `code_name`)
VALUES ('P', NULL, NULL, '플랫폼');

DELETE FROM `tech_common_code` WHERE `code`= 'C';


-- L2
INSERT INTO `tech_common_code` (`code`, `parent_code`, `grandparent_code`, `code_name`)
VALUES ('LU', 'L', NULL, '사용했던 프로그래밍 언어'),
		('LW', 'L', NULL, '사용하고 싶은 프로그래밍 언어'),
		('DU', 'D', NULL, '사용했던 데이터베이스'),
        ('DW', 'D', NULL, '사용하고 싶은 데이터베이스'),
        ('CU', 'C', NULL, '사용했던 클라우드 플랫폼'),
        ('CW', 'C', NULL, '사용하고 싶은 클라우드 플랫폼'),
        ('WU', 'W', NULL, '사용했던 웹 프레임워크'),
        ('WW', 'W', NULL, '사용하고 싶은 웹 프레임워크'),
        ('OU', 'O', NULL, '사용했던 운영체제');
-- 수정
INSERT INTO `tech_common_code` (`code`, `parent_code`, `grandparent_code`, `code_name`)
VALUES ('PU', 'P', NULL, '개발 작업을 했던 플랫폼'),
		('PW', 'P', NULL, '개발 작업을 하고 싶은 플랫폼');
        
DELETE FROM `tech_common_code` WHERE `code`= 'CU';

DELETE FROM `tech_common_code` WHERE `code`= 'CW';

-- L3
-- 2-1. 사용했던 프로그래밍 언어 (LU)
INSERT INTO `tech_common_code` (`code`, `parent_code`, `grandparent_code`, `code_name`)
VALUES ('LU01', 'LU', 'L', 'APL'),
		('LU02', 'LU', 'L', 'Assembly'),
        ('LU03', 'LU', 'L', 'Bash/Shell'),
        ('LU04', 'LU', 'L', 'C'),
        ('LU05', 'LU', 'L', 'C#'),
        ('LU06', 'LU', 'L', 'C++'),
        ('LU07', 'LU', 'L', 'Clojure'),
        ('LU08', 'LU', 'L', 'COBOL'),
        ('LU09', 'LU', 'L', 'Crystal'),
        ('LU10', 'LU', 'L', 'Dart'),
        ('LU11', 'LU', 'L', 'Delphi'),
        ('LU12', 'LU', 'L', 'Elixir'),
        ('LU13', 'LU', 'L', 'Erlang'),
        ('LU14', 'LU', 'L', 'F#'),
        ('LU15', 'LU', 'L', 'Go'),
        ('LU16', 'LU', 'L', 'Groovy'),
        ('LU17', 'LU', 'L', 'Haskell'),
        ('LU18', 'LU', 'L', 'HTML/CSS'),
        ('LU19', 'LU', 'L', 'Java'),
        ('LU20', 'LU', 'L', 'JavaScript'),
        ('LU21', 'LU', 'L', 'Julia'),
        ('LU22', 'LU', 'L', 'Kotlin'),
        ('LU23', 'LU', 'L', 'LISP'),
        ('LU24', 'LU', 'L', 'Matlab'),
        ('LU25', 'LU', 'L', 'Node.js'),
        ('LU26', 'LU', 'L', 'Objective-C'),
        ('LU27', 'LU', 'L', 'Perl'),
        ('LU28', 'LU', 'L', 'PHP'),
        ('LU29', 'LU', 'L', 'PowerShell'),
        ('LU30', 'LU', 'L', 'Python'),
        ('LU31', 'LU', 'L', 'R'),
        ('LU32', 'LU', 'L', 'Ruby'),
        ('LU33', 'LU', 'L', 'Rust'),
        ('LU34', 'LU', 'L', 'Scala'),
        ('LU35', 'LU', 'L', 'SQL'),
        ('LU36', 'LU', 'L', 'Swift'),
        ('LU37', 'LU', 'L', 'TypeScript'),
        ('LU38', 'LU', 'L', 'VBA'),
        ('LU39', 'LU', 'L', 'Other');

-- 2-2. 사용하고 싶은 프로그래밍 언어 (LW)
INSERT INTO `tech_common_code` (`code`, `parent_code`, `grandparent_code`, `code_name`)
VALUES ('LW01', 'LW', 'L', 'APL'),
		('LW02', 'LW', 'L', 'Assembly'),
        ('LW03', 'LW', 'L', 'Bash/Shell'),
        ('LW04', 'LW', 'L', 'C'),
        ('LW05', 'LW', 'L', 'C#'),
        ('LW06', 'LW', 'L', 'C++'),
        ('LW07', 'LW', 'L', 'Clojure'),
        ('LW08', 'LW', 'L', 'COBOL'),
        ('LW09', 'LW', 'L', 'Crystal'),
        ('LW10', 'LW', 'L', 'Dart'),
        ('LW11', 'LW', 'L', 'Delphi'),
        ('LW12', 'LW', 'L', 'Elixir'),
        ('LW13', 'LW', 'L', 'Erlang'),
        ('LW14', 'LW', 'L', 'F#'),
        ('LW15', 'LW', 'L', 'Go'),
        ('LW16', 'LW', 'L', 'Groovy'),
        ('LW17', 'LW', 'L', 'Haskell'),
        ('LW18', 'LW', 'L', 'HTML/CSS'),
        ('LW19', 'LW', 'L', 'Java'),
        ('LW20', 'LW', 'L', 'JavaScript'),
        ('LW21', 'LW', 'L', 'Julia'),
        ('LW22', 'LW', 'L', 'Kotlin'),
        ('LW23', 'LW', 'L', 'LISP'),
        ('LW24', 'LW', 'L', 'Matlab'),
        ('LW25', 'LW', 'L', 'Node.js'),
        ('LW26', 'LW', 'L', 'Objective-C'),
        ('LW27', 'LW', 'L', 'Perl'),
        ('LW28', 'LW', 'L', 'PHP'),
        ('LW29', 'LW', 'L', 'PowerShell'),
        ('LW30', 'LW', 'L', 'Python'),
        ('LW31', 'LW', 'L', 'R'),
        ('LW32', 'LW', 'L', 'Ruby'),
        ('LW33', 'LW', 'L', 'Rust'),
        ('LW34', 'LW', 'L', 'Scala'),
        ('LW35', 'LW', 'L', 'SQL'),
        ('LW36', 'LW', 'L', 'Swift'),
        ('LW37', 'LW', 'L', 'TypeScript'),
        ('LW38', 'LW', 'L', 'VBA'),
        ('LW39', 'LW', 'L', 'Other');


-- 3-1. 사용했던 데이터베이스 (DU)
INSERT INTO `tech_common_code` (`code`, `parent_code`, `grandparent_code`, `code_name`)
VALUES ('DU01', 'DU', 'D', 'Cassandra'),
		('DU02', 'DU', 'D', 'Couchbase'),
        ('DU03', 'DU', 'D', 'DynamoDB'),
        ('DU04', 'DU', 'D', 'Elasticsearch'),
        ('DU05', 'DU', 'D', 'Firebase'),
        ('DU06', 'DU', 'D', 'IBM DB2'),
        ('DU07', 'DU', 'D', 'MariaDB'),
        ('DU08', 'DU', 'D', 'Microsoft SQL Server'),
        ('DU09', 'DU', 'D', 'MongoDB'),
        ('DU10', 'DU', 'D', 'MySQL'),
        ('DU11', 'DU', 'D', 'Oracle'),
        ('DU12', 'DU', 'D', 'PostgreSQL'),
        ('DU13', 'DU', 'D', 'Redis'),
        ('DU14', 'DU', 'D', 'SQLite'),
        ('DU15', 'DU', 'D', 'Other');
-- 추가
INSERT INTO `tech_common_code` (`code`, `parent_code`, `grandparent_code`, `code_name`)
VALUES  ('DU16', 'DU', 'D', 'Microsoft Azure'),
        ('DU17', 'DU', 'D', 'Amazon RDS/Aurora'),
        ('DU18', 'DU', 'D', 'Memcached'),
        ('DU19', 'DU', 'D', 'Google Cloud Storage'),
        ('DU20', 'DU', 'D', 'Amazon Redshift'),
        ('DU21', 'DU', 'D', 'Apache Hive'),
        ('DU22', 'DU', 'D', 'Apache HBase'),
        ('DU23', 'DU', 'D', 'Amazon DynamoDB'),
        ('DU24', 'DU', 'D', 'Neo4j');
INSERT INTO `tech_common_code` (`code`, `parent_code`, `grandparent_code`, `code_name`)
VALUES  ('DU25', 'DU', 'D', 'Google BigQuery');
INSERT INTO `tech_common_code` (`code`, `parent_code`, `grandparent_code`, `code_name`)
VALUES  ('DU26', 'DU', 'D', 'CouchDB');

-- 3-2. 사용하고 싶은 데이터베이스 (DW)
INSERT INTO `tech_common_code` (`code`, `parent_code`, `grandparent_code`, `code_name`)
VALUES ('DW01', 'DW', 'D', 'Cassandra'),
		('DW02', 'DW', 'D', 'Couchbase'),
        ('DW03', 'DW', 'D', 'DynamoDB'),
        ('DW04', 'DW', 'D', 'Elasticsearch'),
        ('DW05', 'DW', 'D', 'Firebase'),
        ('DW06', 'DW', 'D', 'IBM DB2'),
        ('DW07', 'DW', 'D', 'MariaDB'),
        ('DW08', 'DW', 'D', 'Microsoft SQL Server'),
        ('DW09', 'DW', 'D', 'MongoDB'),
        ('DW10', 'DW', 'D', 'MySQL'),
        ('DW11', 'DW', 'D', 'Oracle'),
        ('DW12', 'DW', 'D', 'PostgreSQL'),
        ('DW13', 'DW', 'D', 'Redis'),
        ('DW14', 'DW', 'D', 'SQLite'),
        ('DW15', 'DW', 'D', 'Other');
-- 추가
INSERT INTO `tech_common_code` (`code`, `parent_code`, `grandparent_code`, `code_name`)
VALUES  ('DW16', 'DW', 'D', 'Microsoft Azure'),
        ('DW17', 'DW', 'D', 'Amazon RDS/Aurora'),
        ('DW18', 'DW', 'D', 'Memcached'),
        ('DW19', 'DW', 'D', 'Google Cloud Storage'),
        ('DW20', 'DW', 'D', 'Amazon Redshift'),
        ('DW21', 'DW', 'D', 'Apache Hive'),
        ('DW22', 'DW', 'D', 'Apache HBase'),
        ('DW23', 'DW', 'D', 'Amazon DynamoDB'),
        ('DW24', 'DW', 'D', 'Neo4j');
INSERT INTO `tech_common_code` (`code`, `parent_code`, `grandparent_code`, `code_name`)
VALUES  ('DW25', 'DW', 'D', 'Google BigQuery');
INSERT INTO `tech_common_code` (`code`, `parent_code`, `grandparent_code`, `code_name`)
VALUES  ('DW26', 'DW', 'D', 'CouchDB');
        
-- 4-1. 사용했던 클라우드 플랫폼 (PU)
INSERT INTO `tech_common_code` (`code`, `parent_code`, `grandparent_code`, `code_name`)
VALUES ('CU01', 'CU', 'C', 'AWS'),
		('CU02', 'CU', 'C', 'Digital Ocean'),
        ('CU03', 'CU', 'C', 'Google Cloud Platform'),
        ('CU04', 'CU', 'C', 'Heroku'),
        ('CU05', 'CU', 'C', 'IBM Cloud or Watson'),
        ('CU06', 'CU', 'C', 'Microsoft Azure'),
        ('CU07', 'CU', 'C', 'Oracle Cloud Infrastructure'),
        ('CU08', 'CU', 'C', 'Other');
-- 수정
UPDATE `tech_common_code`
SET `code` = 'PU01',
	`parent_code` = 'PU',
    `grandparent_code` = 'P'
WHERE `code`= 'CU01';

UPDATE `tech_common_code`
SET `code` = 'PU02',
	`parent_code` = 'PU',
    `grandparent_code` = 'P'
WHERE `code`= 'CU02';

UPDATE `tech_common_code`
SET `code` = 'PU03',
	`parent_code` = 'PU',
    `grandparent_code` = 'P'
WHERE `code`= 'CU03';

UPDATE `tech_common_code`
SET `code` = 'PU04',
	`parent_code` = 'PU',
    `grandparent_code` = 'P'
WHERE `code`= 'CU04';

UPDATE `tech_common_code`
SET `code` = 'PU05',
	`parent_code` = 'PU',
    `grandparent_code` = 'P'
WHERE `code`= 'CU05';

UPDATE `tech_common_code`
SET `code` = 'PU06',
	`parent_code` = 'PU',
    `grandparent_code` = 'P'
WHERE `code`= 'CU06';

UPDATE `tech_common_code`
SET `code` = 'PU07',
	`parent_code` = 'PU',
    `grandparent_code` = 'P'
WHERE `code`= 'CU07';

UPDATE `tech_common_code`
SET `code` = 'PU08',
	`parent_code` = 'PU',
    `grandparent_code` = 'P'
WHERE `code`= 'CU08';


-- 4-2. 사용하고 싶은 클라우드 플랫폼 (PW)
INSERT INTO `tech_common_code` (`code`, `parent_code`, `grandparent_code`, `code_name`)
VALUES ('CW01', 'CW', 'C', 'AWS'),
		('CW02', 'CW', 'C', 'Digital Ocean'),
        ('CW03', 'CW', 'C', 'Google Cloud Platform'),
        ('CW04', 'CW', 'C', 'Heroku'),
        ('CW05', 'CW', 'C', 'IBM Cloud or Watson'),
        ('CW06', 'CW', 'C', 'Microsoft Azure'),
        ('CW07', 'CW', 'C', 'Oracle Cloud Infrastructure'),
        ('CW08', 'CW', 'C', 'Other');
-- 수정
UPDATE `tech_common_code`
SET `code` = 'PW01',
	`parent_code` = 'PW',
    `grandparent_code` = 'P'
WHERE `code`= 'CW01';

UPDATE `tech_common_code`
SET `code` = 'PW02',
	`parent_code` = 'PW',
    `grandparent_code` = 'P'
WHERE `code`= 'CW02';

UPDATE `tech_common_code`
SET `code` = 'PW03',
	`parent_code` = 'PW',
    `grandparent_code` = 'P'
WHERE `code`= 'CW03';

UPDATE `tech_common_code`
SET `code` = 'PW04',
	`parent_code` = 'PW',
    `grandparent_code` = 'P'
WHERE `code`= 'CW04';

UPDATE `tech_common_code`
SET `code` = 'PW05',
	`parent_code` = 'PW',
    `grandparent_code` = 'P'
WHERE `code`= 'CW05';

UPDATE `tech_common_code`
SET `code` = 'PW06',
	`parent_code` = 'PW',
    `grandparent_code` = 'P'
WHERE `code`= 'CW06';

UPDATE `tech_common_code`
SET `code` = 'PW07',
	`parent_code` = 'PW',
    `grandparent_code` = 'P'
WHERE `code`= 'CW07';

UPDATE `tech_common_code`
SET `code` = 'PW08',
	`parent_code` = 'PW',
    `grandparent_code` = 'P'
WHERE `code`= 'CW08';

-- 5-1. 사용했던 웹 프레임워크 (WU)
INSERT INTO `tech_common_code` (`code`, `parent_code`, `grandparent_code`, `code_name`)
VALUES ('WU01', 'WU', 'W', 'Angular'),
		('WU02', 'WU', 'W', 'Angular.js'),
        ('WU03', 'WU', 'W', 'ASP.NET'),
        ('WU04', 'WU', 'W', 'ASP.NEY Core'),
        ('WU05', 'WU', 'W', 'Django'),
        ('WU06', 'WU', 'W', 'Drupal'),
        ('WU07', 'WU', 'W', 'Express'),
        ('WU08', 'WU', 'W', 'FastAPI'),
        ('WU09', 'WU', 'W', 'Flask'),
        ('WU10', 'WU', 'W', 'GatsBy'),
        ('WU11', 'WU', 'W', 'jQuery'),
        ('WU12', 'WU', 'W', 'Laravel'),
        ('WU13', 'WU', 'W', 'React.js'),
        ('WU14', 'WU', 'W', 'Ruby on Rails'),
        ('WU15', 'WU', 'W', 'Spring'),
        ('WU16', 'WU', 'W', 'Svelte'),
        ('WU17', 'WU', 'W', 'Symfony'),
        ('WU18', 'WU', 'W', 'Vue.js'),
        ('WU19', 'WU', 'W', 'Other');

-- 5-2. 사용하고 싶은 웹 프레임워크 (WW)
INSERT INTO `tech_common_code` (`code`, `parent_code`, `grandparent_code`, `code_name`)
VALUES ('WW01', 'WW', 'W', 'Angular'),
		('WW02', 'WW', 'W', 'Angular.js'),
        ('WW03', 'WW', 'W', 'ASP.NET'),
        ('WW04', 'WW', 'W', 'ASP.NEY Core'),
        ('WW05', 'WW', 'W', 'Django'),
        ('WW06', 'WW', 'W', 'Drupal'),
        ('WW07', 'WW', 'W', 'Express'),
        ('WW08', 'WW', 'W', 'FastAPI'),
        ('WW09', 'WW', 'W', 'Flask'),
        ('WW10', 'WW', 'W', 'GatsBy'),
        ('WW11', 'WW', 'W', 'jQuery'),
        ('WW12', 'WW', 'W', 'Laravel'),
        ('WW13', 'WW', 'W', 'React.js'),
        ('WW14', 'WW', 'W', 'Ruby on Rails'),
        ('WW15', 'WW', 'W', 'Spring'),
        ('WW16', 'WW', 'W', 'Svelte'),
        ('WW17', 'WW', 'W', 'Symfony'),
        ('WW18', 'WW', 'W', 'Vue.js'),
        ('WW19', 'WW', 'W', 'Other');
        
-- 7-1. 사용했던 운영체제 (OU)
INSERT INTO `tech_common_code` (`code`, `parent_code`, `grandparent_code`, `code_name`)
VALUES ('OU01', 'OU', 'O', 'BSD'),
		('OU02', 'OU', 'O', 'Linux-based macOS'),
        ('OU03', 'OU', 'O', 'Professional use'),
        ('OU04', 'OU', 'O', 'Windows'),
        ('OU05', 'OU', 'O', 'Windows Subsystem for Linux (WSL)'),
        ('OU06', 'OU', 'O', 'Other');



-- 고용 공통코드 (테이블 생성, 제약조건 설정)
DROP TABLE IF EXISTS `employment_common_code`;

CREATE TABLE `employment_common_code` (
	`code`	varchar(10)	NOT NULL,
	`parent_code`	varchar(10)	NULL,
    `code_name`	varchar(255)	NOT NULL
);

ALTER TABLE `employment_common_code` ADD CONSTRAINT `PK_EMPLOYMENT_COMMON_CODE` PRIMARY KEY (
	`code`
);

ALTER TABLE `employment_common_code` ADD CONSTRAINT `FK_employment_common_code_TO_employment_common_code_1` FOREIGN KEY (
	`parent_code`
)
REFERENCES `employment_common_code` (
	`code`
);


-- 기술 공통코드 INSERT
-- L1
INSERT INTO `employment_common_code` (`code`, `parent_code`, `code_name`)
VALUES ('J', NULL, '직업'),
		('E', NULL, '고용상태');

-- L2
-- 13. 고용 상태(E)
INSERT INTO `employment_common_code` (`code`, `parent_code`, `code_name`)
VALUES ('E01', 'E', 'Employed, full-time'),
		('E02', 'E', 'Employed, part-time'),
        ('E03', 'E', 'Independent contractor, freelancer, or self-employed'),
        ('E04', 'E', 'Not employed, but looking for work'),
        ('E05', 'E', 'Not employed, and not looking for work'),
        ('E06', 'E', 'Student, full-time'),
        ('E07', 'E', 'Student, part-time'),
        ('E08', 'E', 'Retired'),
        ('E09', 'E', 'I prefer not to say');

-- 14. 직업(J)
INSERT INTO `employment_common_code` (`code`, `parent_code`, `code_name`)
VALUES ('J01', 'J', 'Academic researcher'),
		('J02', 'J', 'Cloud infrastructure engineer'),
        ('J03', 'J', 'Blockchain'),
        ('J04', 'J', 'Data or business analyst'),
        ('J05', 'J', 'Data scientist or machine learning specialist'),
        ('J06', 'J', 'Database administrator'),
        ('J07', 'J', 'Designer'),
        ('J08', 'J', 'Developer, back-end'),
        ('J09', 'J', 'Developer, desktop or enterprise applications'),
        ('J10', 'J', 'Developer, embedded applications or devices'),
        ('J11', 'J', 'Developer, front-end'),
		('J12', 'J', 'Developer, full-stack'),
        ('J13', 'J', 'Developer, game or graphics'),
        ('J14', 'J', 'Developer, mobile'),
        ('J15', 'J', 'Developer, QA or test'),
        ('J16', 'J', 'DevOps specialist'),
        ('J17', 'J', 'Educator'),
        ('J18', 'J', 'Engineer, data'),
        ('J19', 'J', 'Engineer, site reliability'),
        ('J20', 'J', 'Engineering manager'),
        ('J21', 'J', 'Marketing or sales professional'),
		('J22', 'J', 'Product manager'),
        ('J23', 'J', 'Project manager'),
        ('J24', 'J', 'Scientist'),
        ('J25', 'J', 'Senior Executive (C-Suite, VP, etc.)'),
        ('J26', 'J', 'Student'),
        ('J27', 'J', 'System administrator'),
        ('J28', 'J', 'Security professional'),
        ('J29', 'J', 'Other');
 







