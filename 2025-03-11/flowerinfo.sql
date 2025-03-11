/*create table flowerInfo(
code varchar(10),
name varchar(20),
color varchar(20),
price int
);*/
/*
insert into flowerInfo(code,name,color,price)
				values('101','rose','red','500');
insert into flowerInfo(code,name,color,price)
				values('102','rose','yellow','3000');
insert into flowerInfo(code,name,color,price)
				values('103','herb','green','2500');
*/
/*
-- 전체출력
select * from flowerInfo;
-- 컬럼선택 출력(부분출력)
select name from flowerInfo;
select name,price from flowerInfo;
-- rose의 가격은 500원입니다.
select concat(name,'의 가격은 ',price,'원 입니다.') from flowerInfo;
-- 이름을 대문자 출력
select ucase(name),price from flowerInfo;
*/
/*
-- WHERE 조건식 --
select * from flowerInfo where name='rose';
select * from flowerInfo where price>=1000;
select * from flowerInfo where price<1000;
select * from flowerInfo where name='rose' and color='yellow'; -- and, or
select * from flowerInfo where price >= 500 and price <=2500;
-- 꽃 색상이 노란색이나 빨간색으로 되어있는 데이터
select * from flowerInfo where color = 'yellow' or color = 'red';

select * from flowerInfo where 1= 1;  -- 조건에 맞기때문에 실행됨
select * from flowerInfo where 1= 2;  -- 거짓이끼때문에 아무것도 안나옴
select * from flowerInfo where 1= 1 and 2=2;	-- 출력됨
select * from flowerInfo where 1= 1 and 1=2;	-- and는 둘다참이어야 하므로 출력안됨

select * from flowerInfo where 1= 1 or 1=1;		-- 출력됨
select * from flowerInfo where 1= 3 or 2=2;		-- or는 하나만 참이면되므로 출력됨
select * from flowerInfo where 1= 3 or 2=3;		-- 출력안됨
select * from flowerInfo where true;
select * from flowerInfo where false;
select 3=3;	-- 맞으면 1출력 틀리면 0출력 / 0(false), 1(true)

select * from flowerInfo
	where (1 = 1 and 1 = 2) or (1 = 1 and 2 = 2);
*/

-- 데이터 수정(update) : 덮어쓰기 실행(이어쓰기 없음)
update flowerInfo set color = 'pink'
					where code = '102';
select * from flowerInfo;
commit;		-- 완전적용/ mySQL 은 기본응로 지원안함
-- 데이터 삭제
delete from flowerInfo where code='103';
rollback;	-- 실행취소/ mySQL 은 기본응로 지원안함
-- 조건이 없는 경우
delete from flowerInfo;	-- 전체삭제
update flowerInfo set color = 'pink';	-- 전체수정
select * from flowerInfo;



