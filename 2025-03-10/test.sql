create table test(test varchar(10));
select substring('academy',1,3);	-- 1번부터 3개
select substring('academy',2,3);	-- 2번부터 3개
select substring('academy',5,3);	-- 5번부터 3개

select left('academy',4);	-- 좌측 기준으로 4개 잘라내기
select right('academy',4);	-- 우측 기준으로 4개 잘라내기

select concat('my','sql');
select concat('html','을 배우고 있습니다.');
select concat('10+20=',(10+20));
select length('html');
select lpad('mysql',9,'*');	-- (데이터값, 출력길이, 채울값) 남는 공간이 왼쪽에 채워짐
select rpad('mysql',7,'*');	-- 남는 공간이 오른쪽에 채워짐
select rpad('900808-',14,'*');

select lcase('MYSQL');
select ucase('mysql');

select md5('1234');

-- Math.abs(-100);
select abs(-100);	-- 부호를 없애는 함수
-- Math.min(30,20);  
select least(30,20,100,3);	-- 최소값 리턴
-- Math.max(30,20) 
select greatest(30,20,100,3);	-- 최대값 리턴
select round(1.58);	-- 반올림 2
select ceil(1.001);	-- 올림 2 
select floor(1.001);	-- 내림 1
select 35/10;	-- 3.5000
select 35%10;	-- 나눈 나머지값 5
select mod(35,10);	-- 나눈 나머지값 5

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