SELECT * FROM sakila.customer;
-- locate : (기준,데이터값)
select locate('@','123@naver.com');	-- 4

-- substr(데이터값 , 자리번호(1번부터), 출력갯수)
select substr('123@naver.com',1,3);	-- 123
select substr('123@naver.com',1,locate('@','123@naver.com')-1);

select substr('123@naver.com',5);	-- 출력갯수 생략 시 끝까지 가져옴
select substr('123@naver.com',locate('@','123@naver.com')+1);	-- 출력갯수 생략 시 끝까지 가져옴

select last_name
	   ,substr(email,1,locate('@',email)-1) userid
       ,substr(email,locate('@',email)+1) domail
       ,email
       ,left(create_date,10) cdate1
       ,date_format(create_date,'%Y-%m-%d') cdate2
       ,substr(create_date,12) ctime1
       ,date_format(create_date,'%H:%i:%s') ctime2
from sakila.customer;
