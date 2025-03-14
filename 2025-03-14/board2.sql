create table board2(
no int not null auto_increment,
title varchar(100) not null,
pass varchar(100) not null,
writer varchar(20),
hits int unsigned default 0,
rdate datetime,
content text,
primary key(no)
);

select * from board2;

-- insert into board2 (title,pass,writer,rdate,content)
-- 	values
--     ( 'html학습하기','1234','홍길동',now(),'div학습내용');
select * from  board2 where no=24;
-- select now();	-- 현재시간출력

-- (1)	번호,제목,글쓴이,조회수,등록일을 출력
select no '번호'
	  ,title '제목'
      ,writer '글쓴이'
      ,hits '조회수'
      ,left(rdate,10) '등록일'
from
	  board2;
-- (1_1) 최근등록한 순으로 출력 (10개/그다음 10개)
select no '번호'
	  ,title '제목'
      ,writer '글쓴이'
      ,hits '조회수'
      ,left(rdate,10) '등록일'
from
	  board2
order by
	  no desc;
---------------------------------------------------
select * from board2 order by no desc limit 0,10;
select * from board2 order by no desc limit 10,20;
select * from board2 order by no desc limit 20,10;
-- (2)특정 레코드 제목, 내용, 등록일 출력 (no 컬럼 값을 조건식 이용)
select title,content,rdate from board2 where no = 24;
-- (3) 제목에 "html" 이라는 단어를 검색
select no '번호'
	  ,title '제목'
      ,writer '글쓴이'
      ,hits '조회수'
      ,left(rdate,10) '등록일'
from
	  board2
where title like 'html%'	-- like : %(문자열) - 임의의 문자가 0개 이상
order by
	  no desc;
select title from board2 where title like 'html%';
-- (4) 내용에 "레이아웃" 이라는 단어를 검색
select content from board2 where content like '레이아웃';
-- (5) 특정 레코드 조회수를 1 증가시킨다 (no 컬럼값을 조건식 이용)
update board2 set hits=hits+1 where no ='24'; 
-- (5_1) 상세보기
select title,writer,hits,content from board2
								 where no = '24';
-- (6) 특정 레코드를 수정하는 sql을 작성
select count(*) from board2
			where no = 24 and pass='1234';
-- 1	/ 조건이 맞지않으면 0
-- if (cnt == 1) {
update board2 set title = '1212'
				 ,writer= '나그네'
                 ,content= '내용 ~~~'
			where no = 24;
-- }
update board2 set writer='수리수리' where no ='1'; 
select * from board2;
-- (7) 특정 레코드를 삭제하는 sql을 작성
select count(*) from board2 where no=24 and pass='1234';
delete from board2 where no = 24; 
select * from board2;
-- (8) 이번달에 등록한 글을 출력
-- select * from board2 where rdate like '2025-03%';
-- select * from board2 where left(rdate,7) = '2025-03%';
select * from board2 where left(rdate,7) = left(now(),7);
-- select now();
-- (9)
-- select * from board2 where rdate like '2025-02%';
-- select * from board2 where left(rdate,4) = '2024';
select * from board2 where left(rdate,4) = (left(now(),4)-1);
-- (10) 제목과 암호를 출력하는데 암호는 앞에 2자리만 노출하고 나머지는 "*" 표기
select title,concat(left(pass,2),'**') from board2;
select title,concat(rpad(left(pass,2),length(pass),'*'))as pass from board2;
-- 암호 길이
-- lpad() : 왼쪽을 채우는 함수; lpad(데이터값, 총크기, 채울내용);
select lpad('1234','6','*');
select rpad('1234','6','*');
select rpad('1234','4','*');
select rpad('1234','5','*');

-- pass -> '123456'
select rpad('12',6,'*'); -- 12****
select rpad(left(pass,2),6,'*') from board2;
select rpad(left(pass,2),length(pass),'*')from board2;