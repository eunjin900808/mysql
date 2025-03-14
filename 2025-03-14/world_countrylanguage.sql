SELECT language FROM world.countrylanguage
	where countrycode='kor'
	order by percentage desc
    limit 0,1;