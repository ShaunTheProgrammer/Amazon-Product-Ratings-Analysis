create table amazon_sales (
product_id varchar(10) primary key,
product_name text,
category varchar(255),
discounted_price numeric,
actual_price numeric,
discount_percentage numeric,
rating decimal(10,1),
rating_count int,
about_product text,
user_id text,
user_name text,
review_id text,
review_title text,
review_content text,
img_link text,
product_link text
);

select count(*) as num_products from amazon_sales;

select round(avg(rating),2) from amazon_sales;

select round(avg(discount_percentage),2) from amazon_sales;

select product_id, round((actual_price - discounted_price)/actual_price,2) as perc , discount_percentage from amazon_sales where discount_percentage != round((actual_price - discounted_price)/actual_price,2) ;

SELECT 
    product_id,
    SPLIT_PART(category, '|', 1) AS level_1_category,
    SPLIT_PART(category, '|', 2) AS level_2_category,
    SPLIT_PART(category, '|', 3) AS level_3_category,
    SPLIT_PART(category, '|', 4) AS level_4_category,
    SPLIT_PART(category, '|', 5) AS level_5_category
FROM amazon_sales;

SELECT 
    SPLIT_PART(category, '|', 1) AS level_1_category,
    CASE 
        WHEN discount_percentage BETWEEN 0 AND 0.1 THEN '0-10%'
        WHEN discount_percentage BETWEEN 0.11 AND 0.2 THEN '11-20%'
        WHEN discount_percentage BETWEEN 0.21 AND 0.3 THEN '21-30%'
        ELSE '30% and above'
    END AS discount_range,
	AVG(rating) AS average_rating,  SUM(rating_count) AS total_rating_count
FROM amazon_sales
GROUP BY level_1_category, discount_range order by level_1_category, total_rating_count desc;
