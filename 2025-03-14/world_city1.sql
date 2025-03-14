select code
	  ,name
      ,indepYear
      ,format(gnp,0)
      ,format(population,0)
      ,(select count(*) from world.city
						where countrycode=country.code) city_cnt
	  ,(select language from world.countrylanguage
						where countrycode=country.code limit 1) language
      from world.country
      order by gnp desc;