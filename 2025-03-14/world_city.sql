select * from world.city;
select * from world.city where countrycode = 'KOR';
select count(*) from world.city where countrycode = 'KOR';
select * from world.city
		where countrycode  = 'KOR'
		order by population desc
        limit 0,5;
