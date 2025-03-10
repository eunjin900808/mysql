-- 테이블 생성 명령어 : create table 테이블명 (컬럼들 셋팅);
create table mycolor(name varchar(10));
-- 테이블 출력 : select 컬럼명 from 테이블명;
select * from mycolor;
-- 데이터 입력 : insert into 테이블명(컬럼명) values(데이터값);
insert into mycolor(name) values('노랑');
select name from mycolor;

select name from mycolor;
-- 구조확인 --
desc mycolor;

-- 구조변경 --
alter table mycolor add memo varchar(100);
alter table mycolor modify name varchar(50);
alter table mycolor drop memo;

select * from mycolor;
truncate mycolor;
drop table mycolor;