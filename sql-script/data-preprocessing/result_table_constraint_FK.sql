-- result 테이블의 공통코드 들어가는 부분에 FK 걸기

-- 2018년
-- profile common code
ALTER TABLE `result_2018_1NF` ADD CONSTRAINT `FK_profile_common_code_TO_result_2018_1NF_1` FOREIGN KEY (
	`main_branch`
)
REFERENCES `profile_common_code` (
	`code`
);

ALTER TABLE `result_2018_1NF` ADD CONSTRAINT `FK_profile_common_code_TO_result_2018_1NF_1` FOREIGN KEY (
	`ed_level`
)
REFERENCES `profile_common_code` (
	`code`
);

ALTER TABLE `result_2018_1NF` ADD CONSTRAINT `FK_profile_common_code_TO_result_2018_1NF_1` FOREIGN KEY (
	`gender`
)
REFERENCES `profile_common_code` (
	`code`
);

ALTER TABLE `result_2018_1NF` ADD CONSTRAINT `FK_profile_common_code_TO_result_2018_1NF_1` FOREIGN KEY (
	`response_year`
)
REFERENCES `profile_common_code` (
	`code`
);

ALTER TABLE `result_2018_1NF` ADD CONSTRAINT `FK_profile_common_code_TO_result_2018_1NF_1` FOREIGN KEY (
	`age`
)
REFERENCES `profile_common_code` (
	`code`
);


-- tech common code
ALTER TABLE `result_2018_1NF` ADD CONSTRAINT `FK_tech_common_code_TO_result_2018_1NF_1` FOREIGN KEY (
	`language_have_worked_with`
)
REFERENCES `tech_common_code` (
	`code`
);

ALTER TABLE `result_2018_1NF` ADD CONSTRAINT `FK_tech_common_code_TO_result_2018_1NF_1` FOREIGN KEY (
	`language_want_to_work_with`
)
REFERENCES `tech_common_code` (
	`code`
);

ALTER TABLE `result_2018_1NF` ADD CONSTRAINT `FK_tech_common_code_TO_result_2018_1NF_1` FOREIGN KEY (
	`database_have_worked_with`
)
REFERENCES `tech_common_code` (
	`code`
);

ALTER TABLE `result_2018_1NF` ADD CONSTRAINT `FK_tech_common_code_TO_result_2018_1NF_1` FOREIGN KEY (
	`database_want_to_work_with`
)
REFERENCES `tech_common_code` (
	`code`
);

ALTER TABLE `result_2018_1NF` ADD CONSTRAINT `FK_tech_common_code_TO_result_2018_1NF_1` FOREIGN KEY (
	`platform_have_worked_with`
)
REFERENCES `tech_common_code` (
	`code`
);

ALTER TABLE `result_2018_1NF` ADD CONSTRAINT `FK_tech_common_code_TO_result_2018_1NF_1` FOREIGN KEY (
	`platform_want_to_work_with`
)
REFERENCES `tech_common_code` (
	`code`
);

ALTER TABLE `result_2018_1NF` ADD CONSTRAINT `FK_tech_common_code_TO_result_2018_1NF_1` FOREIGN KEY (
	`webframe_have_worked_with`
)
REFERENCES `tech_common_code` (
	`code`
);

ALTER TABLE `result_2018_1NF` ADD CONSTRAINT `FK_tech_common_code_TO_result_2018_1NF_1` FOREIGN KEY (
	`webframe_want_to_work_with`
)
REFERENCES `tech_common_code` (
	`code`
);

ALTER TABLE `result_2018_1NF` ADD CONSTRAINT `FK_tech_common_code_TO_result_2018_1NF_1` FOREIGN KEY (
	`op_sys_professional_use`
)
REFERENCES `tech_common_code` (
	`code`
);


-- employment common code
ALTER TABLE `result_2018_1NF` ADD CONSTRAINT `FK_employment_common_code_TO_result_2018_1NF_1` FOREIGN KEY (
	`dev_type`
)
REFERENCES `employment_common_code` (
	`code`
);

ALTER TABLE `result_2018_1NF` ADD CONSTRAINT `FK_employment_common_code_TO_result_2018_1NF_1` FOREIGN KEY (
	`employment`
)
REFERENCES `employment_common_code` (
	`code`
);


-- 2019년
-- profile common code
ALTER TABLE `result_2019_1NF` ADD CONSTRAINT `FK_profile_common_code_TO_result_2019_1NF_1` FOREIGN KEY (
	`main_branch`
)
REFERENCES `profile_common_code` (
	`code`
);

ALTER TABLE `result_2019_1NF` ADD CONSTRAINT `FK_profile_common_code_TO_result_2019_1NF_1` FOREIGN KEY (
	`ed_level`
)
REFERENCES `profile_common_code` (
	`code`
);

ALTER TABLE `result_2019_1NF` ADD CONSTRAINT `FK_profile_common_code_TO_result_2019_1NF_1` FOREIGN KEY (
	`gender`
)
REFERENCES `profile_common_code` (
	`code`
);

ALTER TABLE `result_2019_1NF` ADD CONSTRAINT `FK_profile_common_code_TO_result_2019_1NF_1` FOREIGN KEY (
	`response_year`
)
REFERENCES `profile_common_code` (
	`code`
);

ALTER TABLE `result_2019_1NF` ADD CONSTRAINT `FK_profile_common_code_TO_result_2019_1NF_1` FOREIGN KEY (
	`age`
)
REFERENCES `profile_common_code` (
	`code`
);


-- tech common code
ALTER TABLE `result_2019_1NF` ADD CONSTRAINT `FK_tech_common_code_TO_result_2019_1NF_1` FOREIGN KEY (
	`language_have_worked_with`
)
REFERENCES `tech_common_code` (
	`code`
);

ALTER TABLE `result_2019_1NF` ADD CONSTRAINT `FK_tech_common_code_TO_result_2019_1NF_1` FOREIGN KEY (
	`language_want_to_work_with`
)
REFERENCES `tech_common_code` (
	`code`
);

ALTER TABLE `result_2019_1NF` ADD CONSTRAINT `FK_tech_common_code_TO_result_2019_1NF_1` FOREIGN KEY (
	`database_have_worked_with`
)
REFERENCES `tech_common_code` (
	`code`
);

ALTER TABLE `result_2019_1NF` ADD CONSTRAINT `FK_tech_common_code_TO_result_2019_1NF_1` FOREIGN KEY (
	`database_want_to_work_with`
)
REFERENCES `tech_common_code` (
	`code`
);

ALTER TABLE `result_2019_1NF` ADD CONSTRAINT `FK_tech_common_code_TO_result_2019_1NF_1` FOREIGN KEY (
	`platform_have_worked_with`
)
REFERENCES `tech_common_code` (
	`code`
);

ALTER TABLE `result_2019_1NF` ADD CONSTRAINT `FK_tech_common_code_TO_result_2019_1NF_1` FOREIGN KEY (
	`platform_want_to_work_with`
)
REFERENCES `tech_common_code` (
	`code`
);

ALTER TABLE `result_2019_1NF` ADD CONSTRAINT `FK_tech_common_code_TO_result_2019_1NF_1` FOREIGN KEY (
	`webframe_have_worked_with`
)
REFERENCES `tech_common_code` (
	`code`
);

ALTER TABLE `result_2019_1NF` ADD CONSTRAINT `FK_tech_common_code_TO_result_2019_1NF_1` FOREIGN KEY (
	`webframe_want_to_work_with`
)
REFERENCES `tech_common_code` (
	`code`
);

ALTER TABLE `result_2019_1NF` ADD CONSTRAINT `FK_tech_common_code_TO_result_2019_1NF_1` FOREIGN KEY (
	`op_sys_professional_use`
)
REFERENCES `tech_common_code` (
	`code`
);


-- employment common code
ALTER TABLE `result_2019_1NF` ADD CONSTRAINT `FK_employment_common_code_TO_result_2019_1NF_1` FOREIGN KEY (
	`dev_type`
)
REFERENCES `employment_common_code` (
	`code`
);

ALTER TABLE `result_2019_1NF` ADD CONSTRAINT `FK_employment_common_code_TO_result_2019_1NF_1` FOREIGN KEY (
	`employment`
)
REFERENCES `employment_common_code` (
	`code`
);


-- 2020년
-- profile common code
ALTER TABLE `result_2020_1NF` ADD CONSTRAINT `FK_profile_common_code_TO_result_2020_1NF_1` FOREIGN KEY (
	`main_branch`
)
REFERENCES `profile_common_code` (
	`code`
);

ALTER TABLE `result_2020_1NF` ADD CONSTRAINT `FK_profile_common_code_TO_result_2020_1NF_1` FOREIGN KEY (
	`ed_level`
)
REFERENCES `profile_common_code` (
	`code`
);

ALTER TABLE `result_2020_1NF` ADD CONSTRAINT `FK_profile_common_code_TO_result_2020_1NF_1` FOREIGN KEY (
	`gender`
)
REFERENCES `profile_common_code` (
	`code`
);

ALTER TABLE `result_2020_1NF` ADD CONSTRAINT `FK_profile_common_code_TO_result_2020_1NF_1` FOREIGN KEY (
	`response_year`
)
REFERENCES `profile_common_code` (
	`code`
);

ALTER TABLE `result_2020_1NF` ADD CONSTRAINT `FK_profile_common_code_TO_result_2020_1NF_1` FOREIGN KEY (
	`age`
)
REFERENCES `profile_common_code` (
	`code`
);


-- tech common code
ALTER TABLE `result_2020_1NF` ADD CONSTRAINT `FK_tech_common_code_TO_result_2020_1NF_1` FOREIGN KEY (
	`language_have_worked_with`
)
REFERENCES `tech_common_code` (
	`code`
);

ALTER TABLE `result_2020_1NF` ADD CONSTRAINT `FK_tech_common_code_TO_result_2020_1NF_1` FOREIGN KEY (
	`language_want_to_work_with`
)
REFERENCES `tech_common_code` (
	`code`
);

ALTER TABLE `result_2020_1NF` ADD CONSTRAINT `FK_tech_common_code_TO_result_2020_1NF_1` FOREIGN KEY (
	`database_have_worked_with`
)
REFERENCES `tech_common_code` (
	`code`
);

ALTER TABLE `result_2020_1NF` ADD CONSTRAINT `FK_tech_common_code_TO_result_2020_1NF_1` FOREIGN KEY (
	`database_want_to_work_with`
)
REFERENCES `tech_common_code` (
	`code`
);

ALTER TABLE `result_2020_1NF` ADD CONSTRAINT `FK_tech_common_code_TO_result_2020_1NF_1` FOREIGN KEY (
	`platform_have_worked_with`
)
REFERENCES `tech_common_code` (
	`code`
);

ALTER TABLE `result_2020_1NF` ADD CONSTRAINT `FK_tech_common_code_TO_result_2020_1NF_1` FOREIGN KEY (
	`platform_want_to_work_with`
)
REFERENCES `tech_common_code` (
	`code`
);

ALTER TABLE `result_2020_1NF` ADD CONSTRAINT `FK_tech_common_code_TO_result_2020_1NF_1` FOREIGN KEY (
	`webframe_have_worked_with`
)
REFERENCES `tech_common_code` (
	`code`
);

ALTER TABLE `result_2020_1NF` ADD CONSTRAINT `FK_tech_common_code_TO_result_2020_1NF_1` FOREIGN KEY (
	`webframe_want_to_work_with`
)
REFERENCES `tech_common_code` (
	`code`
);

ALTER TABLE `result_2020_1NF` ADD CONSTRAINT `FK_tech_common_code_TO_result_2020_1NF_1` FOREIGN KEY (
	`op_sys_professional_use`
)
REFERENCES `tech_common_code` (
	`code`
);


-- employment common code
ALTER TABLE `result_2020_1NF` ADD CONSTRAINT `FK_employment_common_code_TO_result_2020_1NF_1` FOREIGN KEY (
	`dev_type`
)
REFERENCES `employment_common_code` (
	`code`
);

ALTER TABLE `result_2020_1NF` ADD CONSTRAINT `FK_employment_common_code_TO_result_2020_1NF_1` FOREIGN KEY (
	`employment`
)
REFERENCES `employment_common_code` (
	`code`
);


-- 2021년
-- profile common code
ALTER TABLE `result_2021_1NF` ADD CONSTRAINT `FK_profile_common_code_TO_result_2021_1NF_1` FOREIGN KEY (
	`main_branch`
)
REFERENCES `profile_common_code` (
	`code`
);

ALTER TABLE `result_2021_1NF` ADD CONSTRAINT `FK_profile_common_code_TO_result_2021_1NF_1` FOREIGN KEY (
	`ed_level`
)
REFERENCES `profile_common_code` (
	`code`
);

ALTER TABLE `result_2021_1NF` ADD CONSTRAINT `FK_profile_common_code_TO_result_2021_1NF_1` FOREIGN KEY (
	`gender`
)
REFERENCES `profile_common_code` (
	`code`
);

ALTER TABLE `result_2021_1NF` ADD CONSTRAINT `FK_profile_common_code_TO_result_2021_1NF_1` FOREIGN KEY (
	`response_year`
)
REFERENCES `profile_common_code` (
	`code`
);

ALTER TABLE `result_2021_1NF` ADD CONSTRAINT `FK_profile_common_code_TO_result_2021_1NF_1` FOREIGN KEY (
	`age`
)
REFERENCES `profile_common_code` (
	`code`
);


-- tech common code
ALTER TABLE `result_2021_1NF` ADD CONSTRAINT `FK_tech_common_code_TO_result_2021_1NF_1` FOREIGN KEY (
	`language_have_worked_with`
)
REFERENCES `tech_common_code` (
	`code`
);

ALTER TABLE `result_2021_1NF` ADD CONSTRAINT `FK_tech_common_code_TO_result_2021_1NF_1` FOREIGN KEY (
	`language_want_to_work_with`
)
REFERENCES `tech_common_code` (
	`code`
);

ALTER TABLE `result_2021_1NF` ADD CONSTRAINT `FK_tech_common_code_TO_result_2021_1NF_1` FOREIGN KEY (
	`database_have_worked_with`
)
REFERENCES `tech_common_code` (
	`code`
);

ALTER TABLE `result_2021_1NF` ADD CONSTRAINT `FK_tech_common_code_TO_result_2021_1NF_1` FOREIGN KEY (
	`database_want_to_work_with`
)
REFERENCES `tech_common_code` (
	`code`
);

ALTER TABLE `result_2021_1NF` ADD CONSTRAINT `FK_tech_common_code_TO_result_2021_1NF_1` FOREIGN KEY (
	`platform_have_worked_with`
)
REFERENCES `tech_common_code` (
	`code`
);

ALTER TABLE `result_2021_1NF` ADD CONSTRAINT `FK_tech_common_code_TO_result_2021_1NF_1` FOREIGN KEY (
	`platform_want_to_work_with`
)
REFERENCES `tech_common_code` (
	`code`
);

ALTER TABLE `result_2021_1NF` ADD CONSTRAINT `FK_tech_common_code_TO_result_2021_1NF_1` FOREIGN KEY (
	`webframe_have_worked_with`
)
REFERENCES `tech_common_code` (
	`code`
);

ALTER TABLE `result_2021_1NF` ADD CONSTRAINT `FK_tech_common_code_TO_result_2021_1NF_1` FOREIGN KEY (
	`webframe_want_to_work_with`
)
REFERENCES `tech_common_code` (
	`code`
);

ALTER TABLE `result_2021_1NF` ADD CONSTRAINT `FK_tech_common_code_TO_result_2021_1NF_1` FOREIGN KEY (
	`op_sys_professional_use`
)
REFERENCES `tech_common_code` (
	`code`
);


-- employment common code
ALTER TABLE `result_2021_1NF` ADD CONSTRAINT `FK_employment_common_code_TO_result_2021_1NF_1` FOREIGN KEY (
	`dev_type`
)
REFERENCES `employment_common_code` (
	`code`
);

ALTER TABLE `result_2021_1NF` ADD CONSTRAINT `FK_employment_common_code_TO_result_2021_1NF_1` FOREIGN KEY (
	`employment`
)
REFERENCES `employment_common_code` (
	`code`
);


-- 2022년
-- profile common code
ALTER TABLE `result_2022_1NF` ADD CONSTRAINT `FK_profile_common_code_TO_result_2022_1NF_1` FOREIGN KEY (
	`main_branch`
)
REFERENCES `profile_common_code` (
	`code`
);

ALTER TABLE `result_2022_1NF` ADD CONSTRAINT `FK_profile_common_code_TO_result_2022_1NF_1` FOREIGN KEY (
	`ed_level`
)
REFERENCES `profile_common_code` (
	`code`
);

ALTER TABLE `result_2022_1NF` ADD CONSTRAINT `FK_profile_common_code_TO_result_2022_1NF_1` FOREIGN KEY (
	`gender`
)
REFERENCES `profile_common_code` (
	`code`
);

ALTER TABLE `result_2022_1NF` ADD CONSTRAINT `FK_profile_common_code_TO_result_2022_1NF_1` FOREIGN KEY (
	`response_year`
)
REFERENCES `profile_common_code` (
	`code`
);

ALTER TABLE `result_2022_1NF` ADD CONSTRAINT `FK_profile_common_code_TO_result_2022_1NF_1` FOREIGN KEY (
	`age`
)
REFERENCES `profile_common_code` (
	`code`
);


-- tech common code
ALTER TABLE `result_2022_1NF` ADD CONSTRAINT `FK_tech_common_code_TO_result_2022_1NF_1` FOREIGN KEY (
	`language_have_worked_with`
)
REFERENCES `tech_common_code` (
	`code`
);

ALTER TABLE `result_2022_1NF` ADD CONSTRAINT `FK_tech_common_code_TO_result_2022_1NF_1` FOREIGN KEY (
	`language_want_to_work_with`
)
REFERENCES `tech_common_code` (
	`code`
);

ALTER TABLE `result_2022_1NF` ADD CONSTRAINT `FK_tech_common_code_TO_result_2022_1NF_1` FOREIGN KEY (
	`database_have_worked_with`
)
REFERENCES `tech_common_code` (
	`code`
);

ALTER TABLE `result_2022_1NF` ADD CONSTRAINT `FK_tech_common_code_TO_result_2022_1NF_1` FOREIGN KEY (
	`database_want_to_work_with`
)
REFERENCES `tech_common_code` (
	`code`
);

ALTER TABLE `result_2022_1NF` ADD CONSTRAINT `FK_tech_common_code_TO_result_2022_1NF_1` FOREIGN KEY (
	`platform_have_worked_with`
)
REFERENCES `tech_common_code` (
	`code`
);

ALTER TABLE `result_2022_1NF` ADD CONSTRAINT `FK_tech_common_code_TO_result_2022_1NF_1` FOREIGN KEY (
	`platform_want_to_work_with`
)
REFERENCES `tech_common_code` (
	`code`
);

ALTER TABLE `result_2022_1NF` ADD CONSTRAINT `FK_tech_common_code_TO_result_2022_1NF_1` FOREIGN KEY (
	`webframe_have_worked_with`
)
REFERENCES `tech_common_code` (
	`code`
);

ALTER TABLE `result_2022_1NF` ADD CONSTRAINT `FK_tech_common_code_TO_result_2022_1NF_1` FOREIGN KEY (
	`webframe_want_to_work_with`
)
REFERENCES `tech_common_code` (
	`code`
);

ALTER TABLE `result_2022_1NF` ADD CONSTRAINT `FK_tech_common_code_TO_result_2022_1NF_1` FOREIGN KEY (
	`op_sys_professional_use`
)
REFERENCES `tech_common_code` (
	`code`
);


-- employment common code
ALTER TABLE `result_2022_1NF` ADD CONSTRAINT `FK_employment_common_code_TO_result_2022_1NF_1` FOREIGN KEY (
	`dev_type`
)
REFERENCES `employment_common_code` (
	`code`
);

ALTER TABLE `result_2022_1NF` ADD CONSTRAINT `FK_employment_common_code_TO_result_2022_1NF_1` FOREIGN KEY (
	`employment`
)
REFERENCES `employment_common_code` (
	`code`
);