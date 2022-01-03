select 
	ci.city_id, 
    ci.city, 
    ci.last_update, 
    co.country 
from country co
inner join city ci on co.country_id = ci.country_id
where co.country_id = 4;