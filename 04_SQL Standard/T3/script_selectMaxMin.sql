select 
	'Mayor cantidad' query_type, 
	sub2.total_films, 
	a.actor_id, 
	a.first_name, 
	a.last_name
from (
	select max(total_films) max_films
	from (
		select 
			COUNT(*) total_films, 
			actor_id FROM film_actor
			group by actor_id
		) sub
	) sub_max
inner join (
	select 
	COUNT(*) total_films, 
	actor_id FROM film_actor
	group by actor_id
) 
sub2 on sub_max.max_films = sub2.total_films
inner join actor a on a.actor_id = sub2.actor_id

union

select 
	'Menor cantidad' query_type, 
	sub2.total_films, 
	a.actor_id, 
	a.first_name, 
	a.last_name
from
(
	select min(total_films) max_films
	from
		(
		SELECT 
		COUNT(*) total_films, 
		actor_id FROM film_actor
		group by actor_id
		) sub
	)sub_max
	inner join 
	(
	SELECT 
	COUNT(*) total_films, 
	actor_id FROM film_actor
	group by actor_id
) sub2 on sub_max.max_films = sub2.total_films
inner join actor a on a.actor_id = sub2.actor_id