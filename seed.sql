-- Заполнение через генератор (100 000 строк)
WITH RECURSIVE gen(n) AS (
    SELECT 1 UNION ALL SELECT n+1 FROM gen WHERE n < 100000
)
INSERT INTO big_data (id, user_id, category, amount, created)
SELECT n,
       (n % 1000) + 1,
       CASE n % 5 WHEN 0 THEN 'A' WHEN 1 THEN 'B'
                  WHEN 2 THEN 'C' WHEN 3 THEN 'D' ELSE 'E' END,
       (n % 10000) / 10.0,
       date('2024-01-01', '+' || (n % 365) || ' day')
FROM gen;
