1. Hər ay üzrə total_amount cəmini və əvvəlki aya nisbətən artım faizini hesablayın 

WITH monthly AS
  (SELECT 
     to_char(order_date,'yyyy.mm') AS month_year,
     SUM(total_amount) total
     FROM amazon_orders
     GROUP BY to_char(order_date,'yyyy.mm'))
SELECT
  month_year,
  ROUND((total - LAG(total) OVER(ORDER BY month_year)) 
  / LAG(total) OVER(ORDER BY month_year)* 100,2) AS faiz
FROM monthly;

2. Hər category üzrə ən çox total_amount gətirən brand-ı tapın 

WITH brand_totals AS 
  (SELECT
     CATEGORY,
     brand,
     SUM(total_amount) AS total,
     dense_rank () OVER (PARTITION BY CATEGORY ORDER BY SUM(total_amount) DESC) AS total_brand
   FROM amazon_orders
   GROUP BY CATEGORY, brand)
SELECT * FROM brand_totals
WHERE total_brand = 1;

3. Hər customer_id-nin ilk sifarişi ilə sonrakı sifarişləri arasındakı gün fərqini hesablayın 

SELECT
  customer_id,
  order_date,
  MIN(order_date) OVER (PARTITION BY customer_id ) AS first_order,
  order_date - MIN(order_date) OVER (PARTITION BY customer_id) AS day_diff
FROM amazon_orders;

4. Hər seller_id-nin ümumi satışda faiz payını çıxarın 

SELECT 
  seller_id,
  SUM(total_amount) AS sum_total,
  SUM(SUM(total_amount)) OVER (),
  ROUND(SUM(total_amount) / SUM(SUM(total_amount)) OVER () *100,3) AS percentage
FROM amazon_orders
GROUP BY seller_id

5. Hər country üzrə ən çox istifadə edilən payment_method-u tapın

WITH payments_count AS (
  SELECT
    country,
    payment_method,
    COUNT(*),
    dense_rank() OVER (PARTITION BY country ORDER BY COUNT(*) DESC) AS RANK
  FROM amazon_orders
  GROUP BY country, payment_method)
SELECT * FROM payments_count
WHERE RANK = 1
ORDER BY country;

6. Hər customer_id-nin total_amount üzrə kumulyativ cəmini çıxarın 

SELECT
  customer_id,
  total_amount,
  SUM(total_amount) OVER (PARTITION BY customer_id ORDER BY order_date)
FROM amazon_orders;

7. discount tətbiq edilmiş sifarişlərin hər category üzrə ümumi satışa nisbətini hesablayın 

a) discount-luların öz aralarında nisbəti

SELECT
  CATEGORY,
  SUM(total_amount) AS total,
  ROUND(SUM(total_amount) / SUM(SUM(total_amount)) OVER () * 100,2) AS percentage
FROM amazon_orders
WHERE discount != 0.00
GROUP BY CATEGORY 
ORDER BY percentage DESC;

b)discount-luların ümumi satışa nisbəti
SELECT
    category,
    SUM(total_amount) AS total,
    ROUND(
        SUM(CASE WHEN discount != 0.00 THEN total_amount ELSE 0 END)
        / SUM(SUM(total_amount)) OVER () * 100,
        2
    ) AS percentage
FROM amazon_orders
GROUP BY category
ORDER BY percentage DESC;

8. Hər customer_id-nin ortalama total_amount-u ümumi ortalamadan neçə faiz fərqlənir? 

SELECT 
  customer_id,
  AVG(total_amount),
  ROUND((AVG(total_amount) - AVG(AVG(total_amount)) OVER()) / AVG(AVG(total_amount)) OVER()* 100,2) AS faiz_ferqi
FROM amazon_orders
GROUP BY customer_id;

9. Yalnız bir dəfə sifariş vermiş customer_id-ləri tapın 


SELECT
  customer_id,
  COUNT(order_id) AS order_count
FROM amazon_orders
GROUP BY customer_id
HAVING COUNT(order_id) = 1

10. Hər city üzrə order_status = 'Delivered' olan sifarişlərin umumi sifarise faiz nisbətini hesablayın

SELECT
  city,
  ROUND(COUNT(CASE WHEN order_status = 'Delivered' THEN order_status ELSE NULL END) / COUNT(order_status)* 100, 2) AS ferq
FROM amazon_orders
GROUP BY city;
