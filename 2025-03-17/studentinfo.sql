create table studentinfo(
seqid int unsigned auto_increment,
usrid varchar(50) not null,
usrpss varchar(100) not null,
usrnm varchar(50) not null,
usrgen enum('M','F'),
usrbth date,
regdt datetime,
primary key(seqid)
);

select * from studentinfo;
insert into studentinfo(usrid,usrpss,usrnm,usrgen,usrbth,regdt)
        values('test777','1111','테스트777','M','2000-05-05',now());

create table studentscore(
seqid int unsigned auto_increment,
usrid varchar(50) not null,
eng int default 0,
kor int default 0,
testdt date,
primary key(seqid)
);

-- (1) 아이디, 이름, 성별, 생일, 등록일 출력
select usrid,usrnm,usrgen,usrbth,regdt from studentinfo;
-- (2) 총 학생 인원 수를 출력 (남/녀학생들의 인원수를 따로 출력)
select count(*) from studentinfo where usrgen = 'M';
select count(*) from studentinfo where usrgen = 'F';
-- (3) 가장최근에 등록한 학생순으로 기본출력 (성별 남/여로 표기, 등록일은 날짜만 출력)
select seqid
	  ,usrid
      ,usrnm
      ,if(usrgen='M','남','여')as '성별'
      ,usrbth
      ,date_format(regdt,'%Y-%m-%d') regdt
from
	   studentinfo
order by
	   seqid desc;
-- (4) "happy1" 이라는 아이디 존재 유무 파악
select count(*) from studentinfo where usrid = 'happy1';
-- (5) 아이디 "test777", 암호 "1111" 와 같은 데이터가 있는지 파악
select count(*) from studentinfo where usrid = 'test777' and usrpss = '1111';
-- (6) 아이디,이름,출생년도,나이 출력
select usrid
	  ,usrnm
      ,left(usrbth,4) year1
      ,date_format(usrbth,'%Y') year2
      ,(2025 - date_format(usrbth,'%Y')) age1
      ,(date_format(now(),'%Y') - date_format(usrbth,'%Y')) age2
from
	   studentinfo;
-- (7) 2000년 이전에 출생한 학생 수
select count(*) from studentinfo
				where date_format(usrbth,'%Y') < 2000;
-- (8) 나이가 가장 많은 학생 3명의 이름, 성별, 나이 출력
select usrnm
	  ,if(usrgen='M','남','여') gender
      ,(date_format(now(),'%Y') - date_format(usrbth,'%Y')) age
from studentinfo
order by usrbth asc
limit 3;
-- (9) 전체인원수, 남학생수, 여학생수
select
	(select count(*) from studentinfo) TOTAL
   ,(select count(*) from studentinfo where usrgen ='M') MALECNT
   ,(select count(*) from studentinfo where usrgen ='F') FEMALECNT;
-------------------------------------------------------------------
SELECT NOW(),(LEFT(NOW(),10)) DATE;
-------------------------------------------------------------------
SELECT usrnm,usrgen FROM studentinfo;