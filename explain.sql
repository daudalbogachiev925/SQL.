-- План запроса (до/после индексов)
EXPLAIN QUERY PLAN
SELECT * FROM big_data WHERE user_id = 500;

EXPLAIN QUERY PLAN
SELECT * FROM big_data WHERE category = 'C' ORDER BY created DESC;

EXPLAIN QUERY PLAN
SELECT user_id, COUNT(*) FROM big_data GROUP BY user_id;

-- Замер времени
.timer on
SELECT COUNT(*) FROM big_data WHERE user_id = 500;
.timer off
