/*create table bookInfo (
code int,
title varchar(100),
writer varchar(50),
price int,
maker varchar(50)
);

-- 구조확인
desc bookInfo;*/
insert into bookInfo(code,title,writer,price,maker)
			values('1','java1교재','홍길동','35000','영진');
            
-- 빈 데이터는 공백이 채워짐
insert into bookInfo(code,title,writer,price,maker)
			values('2','java2교재','홍길동','38000','');
            
-- 세팅이 안된 컬럼에는 null값이 채워짐
insert into bookInfo(code,title,writer)
			values('3','mysql교재','이순신');
select * from bookInfo;
insert into bookInfo
			values('4','linux 첫걸음','리눅이','50000','한빛');	-- OK 컬럼세팅 생략 가능 --> 단, 모든 데이터 삽입에 대한 조건
select * from bookInfo;

-- 모든 데이터 삽입에 대한 조건에 부합되지 않음
insert into bookInfo
			values('5','html','리눅이','손코딩');	-- 오류

insert into bookInfo(code,title,writer,price,maker)
			values('6','java1교재','','','영진');	-- 오류 숫자 타입의 데이터 값 생략 불가
insert into bookInfo(code,title,writer,price,maker)
			values('6','java1교재','','0','영진');	-- 숫자 타입의 데이터 값 생략 불가(기본으로 0 채우기 가능)
            
insert into bookInfo(code,title,writer,maker)
			values('7','스프링책','봄봄','영진');
select * from bookInfo;

-- 문자타입의 데이터는 반드시 홑따옴표 표기를 해야함
insert into bookInfo(code,title,writer,price,maker)
			values(8,오라클,홍길동,35000,영진);	-- 오류 --> 홑따옴표 생략 불가


-- [ count 함수 ]
-- 행(row,레코드)의 개수를 얻어주는 함수

-- 전체 데이터 개수 확인
select count(*) from bookInfo;	-- 6
-- {코드}컬럼의 데이터 개수 확인
select count(code) from bookInfo;	-- 6
-- {writer}컬럼의 데이터 개수 확인 , 공백을 개수에 포함
select count(writer) from bookInfo;	-- 6 --> 공백개수 포함
-- {price}컬럼의 데이터 개수 확인, null값은 수량에서 제외
select count(price) from bookInfo;	-- 4 null값은 포함되지않음
-- {maker}컬럼의 데이터 개수 확인, 공백은 포함, null값은 수량에서 제외
select count(maker) from bookInfo;	-- 5

-- select count(code,maker) from bookInfo;	-- 오류(컬럼 복수 세팅 불가능)

-- { 풀어보기 }
-- 1. 'linux 첫걸음' 으로 제목이 되어있는 데이터(레코드) 출력
select * from bookInfo where title = 'linux 첫걸음';
-- 1-1. 지운이가 '홍길동'으로 되어있는 레코드 출력
select * from bookInfo where writer = '홍길동';
-- 2. maker에서 공백인 데이터 출력
select * from bookInfo where maker = '';
-- 3. maker에서 null값인 데이터 출력
select * from bookInfo where maker = null;	-- null값은 안나옴
select * from bookInfo where maker = 'null';	-- null값은 안나옴
select * from bookInfo where maker is null;	-- 출력(o)
-- 3-1. price 에서 null값인 데이터 출력
select * from bookInfo where price is null;	-- 2개 출력
-- 3-2. price 에서 null값이 아닌 데이터 출력
select * from bookInfo where price is not null;
-- 4. maker에서 완전한 데이터들만 출력 (null 값도 아니고 공백도 아닌 데이터)
select * from bookInfo where maker != '' and maker is not null;
-- 4-1. maker+price에서 완전 데이터들만 출력
select * from bookInfo
		where maker != ''
		and maker is not null
        and writer != ''
        and price is not null;
-- 5. price가 null로 되어있는 데이터의 값으로 0을 세팅한다.
update bookInfo set price = 0 where price is null; 
select * from bookInfo;
-- 6. maker가 null로 되어있는 데이터의 값으로 '하이미디어'로 세팅한다.
update bookInfo set maker = '하이미디어' where maker is null;
select * from bookInfo; 
select count(*) from bookInfo where maker is null;

-- sum() 함수 : 컬럼(세로)합계 , avg() 함수
-- *** 가격의 함계와 평균 *** --
select sum(price) from bookInfo;
select avg(price) from bookInfo;	-- 20500, 24600
select sum(price), avg(price) from bookInfo;

update bookInfo set price = null where code =7;
select * from bookInfo;

------------------------------------------------------

-- 1. 영진 출판사가 몇개가 있는지 출력
select count (maker) bookInfo where maker='영진';
-- 2. "linux 첫걸음 교재의 가격은 50000원 입니다." 형식으로 출력
select concat(title,'교재의 가격은 ',price,'원 입니다.') from bookInfo;
-- 3. linux 첫걸음(9) 출력
select concat(title,'(',length(title),')') from bookInfo;