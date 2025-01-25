INSERT INTO person_visits
VALUES (
 (select MAX(id)+ 1 from person_visits),
 (select id from person where name = 'Dmitriy'),
 (select id from pizzeria where name = 'Best Pizza'),
 '2022-01-08'
);

REFRESH MATERIALIZED VIEW mv_dmitriy_visits_and_eats;