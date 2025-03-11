-- (1)테이블 생성 create table 테이블명
-- (2)테이블 변경 alter table 테이블명
-- (3)테이블 삭제 drop table 테이블명

-- (4)데이터 입력 insert into 테이블명
-- (5)데이터 수정 update 테이블명 set
-- (6)데이터 삭제 delete from 테이블명

-- { 컬럼타입 }
-- (숫자)
--	==>byte < short < int < long
-- tinyint -128 ~ 127
-- smallint
-- mediumint
-- int		--------->  제일많이 씀
-- bigint

-- float
-- double	---------> 	제일많이 씀

-- (문자) - char/String
-- (1) char 		- 255 byte
-- (2) varchar		- 255	---------> 제일많이 씀
-- (3) tinytext		-255
-- (4) text			-65000	---------> 문자가 많이 들어갈때 많이 씀(ex. 게시판 내용)
-- (5) mediumtext
-- (6) longtext

-- (문자-이미지)
-- (1) tinyblob
-- (2) blob

-- (날짜)
-- (1) date -> 날짜만(시간제외) -> (ex. 생일)
-- (2) datetime -> 날짜와 시간 -> (ex. 회원등록일)