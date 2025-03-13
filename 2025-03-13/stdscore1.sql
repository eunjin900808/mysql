drop table stdscore;

create table stdscore(
	no int not null auto_increment,
    id varchar(50) not null,
    loc varchar(100) not null,
    kor tinyint unsigned default 0,	-- -128 ~ 127 -> 255
    eng tinyint unsigned default 0,
    primary key(no)
);

-- not null : null값을 허용 안함(누락방지)
-- auto_increment :    1. 자동 숫자 등록(기본 1부터)
					-- 2. 중복데이터를 허용 안함
					-- 3. 고유성을 보장 받음 - 데이터 삭제 시 자동 재생 불가 (한번 번호가 지정되고 나서 삭제시 번호가 복구되지않는다.)
                    -- 4. primary key 반드시 설정 (primary key : 중복 값 없는 컬럼에서 설정 (고유성보장, 빠른검색)
-- unsigned : 음수공간을 양수공간으로 전이
-- default : 초기값 설정 (누락시 효과)ex) default 0 - 점수가안들어왔을때 0으로 출력

insert into stdscore(id,loc,kor,eng)
			values('oooo','서울','250','256');
select * from stdscore;
-- x 2 3 x 5 6 x 8
delete from stdscore where no = 7;

select * from stdscore where no = 5;
select * from stdscore where id = 'a105';

truncate table stdscore ;	-- 테이블 초기화

select * from stdscore;