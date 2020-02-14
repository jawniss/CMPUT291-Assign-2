.print Question 9 - johnas

DROP VIEW IF EXISTS product_info;
CREATE VIEW product_info (
pid,
descr,
revcnt,
rating,
-- rating6,
salecnt
)
AS
SELECT products.pid,
products.descr,
IFNULL(COUNT(case when products.pid=previews.pid then 1 else null end),0),
IFNULL(AVG(
  SELECT previews.rating
  FROM previews
  WHERE previews.pid=products.pid), 0),
-- six months rating
IFNULL(COUNT(case when products.pid=sales.pid then 1 else null end),0)

FROM products, previews, sales;

SELECT * FROM product_info;
