create table sports (code int, name varchar(10));

insert into sports(code, name) values(101,'축구');
insert into sports(code, name) values(102,'야구');
insert into sports(code, name) values(103,'배구');

select * from sports;
select code, name from sports;

update sports set name='농구' where code='101';
