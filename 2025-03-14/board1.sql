desc board1;

-- default : 기본값; 누락시 적용
alter table board1 modify hits int unsigned default 0;

select * from board1;