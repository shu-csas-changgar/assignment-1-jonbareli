
/* Answer to question number 1 */
select * from actor
WHERE first_name ='PENELOPE';

/* Answer to question number 2 */
select 
a.first_name,
a.last_name
from actor a
join film_actor fa
	on a.actor_id = fa.actor_id
join film f
	on fa.film_id = f.film_id
WHERE f.title = 'ZOOLANDER FICTION';

/* Answer to question number 3 */
select 
f.title
from film f
join film_actor fa
	on f.film_id = fa.film_id
join actor a
	on a.actor_id = fa.actor_id
WHERE a.first_name = 'JENNIFER' and a.last_name = 'DAVIS';

/* Answer to question number 4 */
select
f.title
from film f
join inventory i
	on i.film_id = f.film_id
join rental r
	on r.inventory_id = i.inventory_id
where r.customer_id = 11 AND r.return_date IS NULL;

/* Answer to question number 5 */
select 
f.title
from film f
join film_category fc
	on f.film_id = fc.film_id
join category c
	on c.category_id = fc.category_id
where c.name =  'Animation';

/* Answer to question number 6 */
select
f.rental_rate
from film f
where f.title = 'CLOSER BANG';

/* Answer to question number 7 */
select
s.first_name,
s.last_name
from staff s
join inventory i 
	on i.store_id = s.store_id
join film f 
	on f.film_id = i.film_id
join rental r 
	on r.inventory_id = i.inventory_id
join customer c
	on c.customer_id = r.customer_id
where f.title = 'CHAINSAW UPTOWN' and c.first_name = 'MARIE' 
and c.last_name = 'TURNER';


















