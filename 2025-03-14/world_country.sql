-- 기본 출력
select * from world.country;
-- 5개만 출력
select * from world.country limit 5;
-- 가장 많은 인구순으로 출력
-- format() : 3자리 콤마 출력 함수; format(숫자,소수점아래개수)
select code,name,indepYear,population from world.country order by population desc;
select code,name,indepYear,format(population,0) from world.country order by population desc;
-- 우리나라
select code,name,indepYear,format(population,0) from world.country where name like '%south%';
-- 가장 많은 GNP순으로 출력
select code
	  ,name
      ,indepYear
      ,format(gnp,0) 'gnp'
      ,format(population,0) 'population'
      from world.country
      order by gnp desc;