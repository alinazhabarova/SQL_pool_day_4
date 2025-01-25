CREATE VIEW v_generated_dates
AS SELECT day::DATE AS generated_date
FROM GENERATE_SERIES('2022-01-01'::date, '2022-01-31'::date, '1 day') AS day
ORDER BY generated_date;