CREATE VIEW v_price_with_discount AS
(
select person.name, 
	   pizza_name, 
	   price, 
	   (price - price * 0.1)::INTEGER as discount_price
from menu
join person_order on menu_id = menu.id
join person on person.id = person_id
order by person.name, pizza_name
);