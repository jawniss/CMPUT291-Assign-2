.print Question 10 - johnas

SELECT U.email
FROM product_info, users U, sales S
WHERE U.email=S.lister
AND ( 4 <
( SELECT product_info.rating
FROM product_info
WHERE S.pid=product_info.pid ) )
AND ( product_info.salecnt >
( SELECT avg(product_info.salecnt)
FROM product_info) )
GROUP BY U.email;
