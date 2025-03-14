select code
      ,format(gnp,0)
      ,format(population,0)
      ,(select count(*) from world.city
						where countrycode=country.code) city_cnt
	  ,(SELECT language FROM world.countrylanguage
						where countrycode=country.code
						order by percentage desc
						limit 0,1) language
      from world.country
      order by gnp desc;