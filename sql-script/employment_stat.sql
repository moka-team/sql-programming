/*
 * 1. group by 사용
 */

-- 직업별 평균 연봉 (평균 연봉 높은순으로 정렬)
SELECT EC.code_name AS job, AVG(S.converted_comp_yearly) AS average_salary
FROM surveyee AS S
	LEFT JOIN employment AS E
		ON S.surveyee_id=E.surveyee_id
    LEFT JOIN employment_common_code AS EC
		ON E.employment_code=EC.code
WHERE EC.parent_code='J' AND S.converted_comp_yearly IS NOT NULL
GROUP BY EC.code, EC.code_name
ORDER BY AVG(S.converted_comp_yearly) desc;

-- 직업별, 응답연도별 평균 연봉
SELECT EC.code_name AS job, PC.code_name AS year, AVG(S.converted_comp_yearly) AS average_salary
FROM surveyee AS S
	LEFT JOIN employment AS E
		ON S.surveyee_id=E.surveyee_id
    LEFT JOIN employment_common_code AS EC
		ON E.employment_code=EC.code
	LEFT JOIN profile_common_code AS PC
		ON S.response_year=PC.code
WHERE EC.parent_code='J' AND S.converted_comp_yearly IS NOT NULL
GROUP BY PC.code_name, EC.code, EC.code_name
ORDER BY EC.code_name, PC.code_name asc;

-- 학력별 평균 연봉
SELECT PC.code_name AS educational_attainment, AVG(S.converted_comp_yearly) AS average_salary, COUNT(distinct S.surveyee_id) AS count
FROM surveyee AS S
	LEFT JOIN employment AS E
		ON S.surveyee_id=E.surveyee_id
    LEFT JOIN employment_common_code AS EC
		ON E.employment_code=EC.code
	LEFT JOIN profile_common_code AS PC
		ON S.ed_level=PC.code
WHERE PC.parent_code='E' AND S.converted_comp_yearly IS NOT NULL
GROUP BY PC.code_name
ORDER BY AVG(S.converted_comp_yearly) desc;

-- 국적별 평균 연봉
SELECT S.country AS country, AVG(S.converted_comp_yearly) AS average_salary, COUNT(distinct S.surveyee_id) AS count
FROM surveyee AS S
	LEFT JOIN employment AS E
		ON S.surveyee_id=E.surveyee_id
    LEFT JOIN employment_common_code AS EC
		ON E.employment_code=EC.code
WHERE S.converted_comp_yearly IS NOT NULL
GROUP BY S.country
HAVING COUNT(distinct S.surveyee_id) >= 50
ORDER BY AVG(S.converted_comp_yearly) desc;

-- 연령대별 평균 연봉
SELECT PC.code_name AS age, AVG(S.converted_comp_yearly) AS average_salary, COUNT(distinct S.surveyee_id) AS count
FROM surveyee AS S
	LEFT JOIN employment AS E
		ON S.surveyee_id=E.surveyee_id
    LEFT JOIN employment_common_code AS EC
		ON E.employment_code=EC.code
	LEFT JOIN profile_common_code AS PC
		ON S.age=PC.code
WHERE PC.parent_code='A' AND S.converted_comp_yearly IS NOT NULL
GROUP BY PC.code_name
ORDER BY AVG(S.converted_comp_yearly) desc;

-- 고용상태별 평균 연봉
SELECT EC.code_name AS employment_status, AVG(S.converted_comp_yearly) AS average_salary, COUNT(distinct S.surveyee_id) AS count
FROM surveyee AS S
	LEFT JOIN employment AS E
		ON S.surveyee_id=E.surveyee_id
    LEFT JOIN employment_common_code AS EC
		ON E.employment_code=EC.code
WHERE S.converted_comp_yearly IS NOT NULL AND EC.parent_code='E'
GROUP BY EC.code_name
ORDER BY AVG(S.converted_comp_yearly) desc;

-- 인종별 평균 연봉
SELECT PC.code_name AS race, AVG(S.converted_comp_yearly) AS average_salary, COUNT(distinct S.surveyee_id) AS count
FROM surveyee AS S
	LEFT JOIN employment AS E
		ON S.surveyee_id=E.surveyee_id
    LEFT JOIN employment_common_code AS EC
		ON E.employment_code=EC.code
	LEFT JOIN demography AS D
		on S.surveyee_id=D.surveyee_id
	LEFT JOIN profile_common_code AS PC
		ON D.profile_code=PC.code
WHERE PC.parent_code='P' AND S.converted_comp_yearly IS NOT NULL
GROUP BY PC.code_name
ORDER BY AVG(S.converted_comp_yearly) desc;

-- 성별별 평균 연봉
SELECT PC.code_name AS gender, AVG(S.converted_comp_yearly) AS average_salary, COUNT(distinct S.surveyee_id) AS count
FROM surveyee AS S
	LEFT JOIN employment AS E
		ON S.surveyee_id=E.surveyee_id
    LEFT JOIN employment_common_code AS EC
		ON E.employment_code=EC.code
	LEFT JOIN demography AS D
		on S.surveyee_id=D.surveyee_id
	LEFT JOIN profile_common_code AS PC
		ON D.profile_code=PC.code
WHERE PC.parent_code='G' AND S.converted_comp_yearly IS NOT NULL
GROUP BY PC.code_name
ORDER BY AVG(S.converted_comp_yearly) desc;

-- 연도별 성별별 평균 연봉
SELECT PC.code_name AS gender, PCY.code_name AS `year`, AVG(S.converted_comp_yearly) AS average_salary, COUNT(distinct S.surveyee_id) AS count
FROM surveyee AS S
	LEFT JOIN employment AS E
		ON S.surveyee_id=E.surveyee_id
    LEFT JOIN employment_common_code AS EC
		ON E.employment_code=EC.code
	LEFT JOIN demography AS D
		on S.surveyee_id=D.surveyee_id
	LEFT JOIN profile_common_code AS PC
		ON D.profile_code=PC.code
	LEFT JOIN profile_common_code AS PCY
		ON S.response_year=PCY.code
WHERE PC.parent_code='G' AND S.converted_comp_yearly IS NOT NULL
GROUP BY PC.code_name, S.response_year
ORDER BY PC.code_name asc;



/*
 * 2. window function 사용
 */

-- 연도별 성별별 평균 연봉
SELECT distinct
		PC.code_name AS gender,
		PCY.code_name AS `year`,
		AVG(S.converted_comp_yearly) OVER(PARTITION BY PC.code_name, S.response_year ORDER BY PC.code_name asc) as average_salary
FROM surveyee AS S
	LEFT JOIN employment AS E
		ON S.surveyee_id=E.surveyee_id
    LEFT JOIN employment_common_code AS EC
		ON E.employment_code=EC.code
	LEFT JOIN demography AS D
		on S.surveyee_id=D.surveyee_id
	LEFT JOIN profile_common_code AS PC
		ON D.profile_code=PC.code
	LEFT JOIN profile_common_code AS PCY
		ON S.response_year=PCY.code
WHERE PC.parent_code='G' AND S.converted_comp_yearly IS NOT NULL;