-- min() : 컬럼(열) 데이터에서 가장 작은 값
-- max() : 컬럼(열) 데이터에서 가장 큰 값

select min(std_no) as '최소값' from student_info;	-- 101
select max(std_no) as '최대값' from student_info;	-- 110

select min(std_gender) from student_info;	-- 영문도 적용가능
select max(std_gender) from student_info;	-- 영문도 적용가능

select min(std_name) from student_info;	-- 한글도 적용가능
select max(std_name) from student_info;	-- 한글도 적용가능
-------------------------------------------------------

-- alias 관련 --
select std_name from student_info;
select std_name as '학생명' from student_info;
select concat(std_name,'입니다.')as 'title' from student_info;

select std_no as '학번',
		std_name as '학생명',
        std_birth as'생일'
from
	student_info;
--------------------------------------
select std_no '학번',
		std_name '학생명',
        std_birth'생일'
from
	student_info;	-- as 생략가능
---------------------------------------
select std_no 학번,
		std_name 학생명,
        std_birth 생일,
        std_gender 성별,
        std_grade 학년
from
	student_info;	-- 홑따옴표 생략가능
---------------------------------------
select std_name 이름,
		left(std_birth,4) 출생년도
	from
		student_info;
---------------------------------------
-- Order by (정렬)
-- asc : 순차정렬(생략가능), desc : 역순정렬
-- 숫자 타입 값들의 정리
---------------------------------------
-- 1학년 부터 {순차적 정렬} 출력 - 낮은 숫자 -> 높은 숫자
-- 
select * from student_info order by std_grade asc;
-- 4학년 부터 {역순적 정렬} 출력 - 높은 숫자 -> 낮은 숫자
select * from student_info order by std_grade desc;

-- 성별 기준으로 순차 정렬 / 역순 정렬
select * from student_info order by std_gender asc;
select * from student_info order by std_gender desc;
-- 생일 기준
select * from student_info order by std_birth asc;	-- 순차 정렬
-- 이름 기준 (한글)
select * from student_info order by std_name;
-- 학번 기준 (역순)
select * from student_info order by std_no desc;

---------------------------------------
-- Distinct() 함수 : 데이터 중복 제거 함수
---------------------------------------
-- 성별 출력
select std_gender from student_info;
select distinct(std_gender) from student_info where std_gender is not null;
-- 학년 출력
select distinct(std_grade) from student_info where std_grade is not null;
select distinct(std_grade) from student_info
							where std_grade is not null
							order by std_grade asc;
                            
---------------------------------------
-- if() 함수
---------------------------------------
select if(std_gender='M','남','여') 성별 from student_info;

drop table student_info;

select * from student_info;