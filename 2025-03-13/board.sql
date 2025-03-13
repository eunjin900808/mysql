-- {일반게시판}
-- 제목
-- 암호
-- 글쓴이
-- 작성일
-- 조회수

create table board(
no int not null auto_increment,
title varchar(100) not null,
pass varchar(100) not null,
writer varchar(50),
rdate datetime,
hits int,
content text,	-- 65,330
primary key(no)
);
-- 고유성보장
-- 빠른처리속도 {데이터의 위치를 한번의 검색으로 찾음}
	-- ex) delete from board where no = 11750;
    
select * from board;