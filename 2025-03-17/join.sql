-- 1. 아이디,이름,영어,국어
-- (1)
select usrid
	  ,usrnm
      ,(select eng from studentscore where usrid=info.usrid) eng
      ,(select kor from studentscore where usrid=info.usrid) kor
from studentinfo info;
-- { 조인 } -- 두 테이블 이상의 데이터들의 연결
select studentinfo.usrid
	  ,studentinfo.usrnm
      ,studentscore.eng
      ,studentscore.kor
from
	   studentinfo, studentscore
where
	   studentinfo.usrid = studentscore.usrid;
-----------------------------------------------
-- 등가조인
select s1.usrid
	  ,s1.usrnm
      ,s2.eng
      ,s2.kor
from
	   studentinfo s1, studentscore s2
where
	   s1.usrid = s2.usrid;	-- 조인 조건
-----------------------------------------------
select s1.usrid
	  ,usrnm
      ,eng
      ,kor
from
	   studentinfo s1, studentscore s2
where
	   s1.usrid = s2.usrid;	-- 조인 조건
-----------------------------------------------
-- (1) 1등 학생의 아이디,이름,성별,나이
select score.usrid
	  ,info.usrnm
      ,info.usrgen
      ,info.usrbth
from
	 studentscore score, studentinfo info
where
	 score.usrid = info.usrid
and
	 (eng+kor) = (select max(eng+kor) from studentscore);

-- (2) 남학생 최고점/ 여학생 최고점
select
   (select max(eng) from studentscore where usrgen = 'M') engMaxM
  ,(select max(eng) from studentscore where usrgen = 'F') engMaxF
  ,(select max(kor) from studentscore where usrgen = 'M') maxkorM
  ,(select max(kor) from studentscore where usrgen = 'F') maxkorM;