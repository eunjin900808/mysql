-- (1) 기본 출력
select * from studentscore;
-- (2) 영어의 최고 점수와 국어의 최고점수 같이 출력
select max(eng) maxeng, max(kor)maxkor from studentscore;
-- (3) 영어와 국어 평균점수를 출력
select round(avg(eng),2) avgEng,round(avg(kor),2) avgKor from studentscore;
-- (4) 영어 점수 기준 1등부터 출력, 국어점수 기준 1등부터 출력
select usrid,eng from studentscore order by eng desc;
select usrid,kor from studentscore order by kor desc;
-- (5) 영어 평균점수 이상인 정보를 출력
select usrid
	  ,eng
      ,(select round(avg(eng),2) from studentscore) avgeng
from studentscore
where
	 eng >= (select round(avg(eng),2) from studentscore);
-- (6) 두 과목 합계 최고점부터 출력하기
select * from studentscore order by (eng+kor) desc;
-- (7) 1등~ 5등 출력(총합계기준) / 6등~ 10등 출력
select usrid,(eng+kor) hap from studentscore order by hap desc limit 0,5;
select usrid,(eng+kor) hap from studentscore order by hap desc limit 6,5;
-- (8) 1등의 정보출력 /아이디 영어 국어 총점 평균
select * from studentscore
	where (eng+kor) = 
		  (select max(eng+kor) maxhap from studentscore);
-- (9) 10등의 정보를 출력 / 아이디 영어 국어 총점 평균
select * from studentscore
	order by (eng+kor) desc
    limit 9,1;
-- (10) 중위값
select round(avg(eng)) from studentscore;
select count(*) from studentscore; -- 12(중간)
select eng from studentscore order by eng limit 11,1;