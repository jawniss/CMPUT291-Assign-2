.print Question 9 - johnas

DROP VIEW IF EXISTS product_info;
CREATE VIEW product_info (
pid,
descr,
revcnt,
rating,
rating6,
salecnt
)
AS
SELECT products.pid,
products.descr,
COUNT(DISTINCT case when products.pid=previews.pid then 1 else null end),
-- IFNULL(AVG(
--   SELECT previews.rating
--   FROM previews
--   WHERE previews.pid=products.pid), 0),
IFNULL(AVG(case when products.pid=previews.pid then previews.rating else null end ),0),
-- IFNULL(AVG(P.rating),0),
IFNULL(AVG(case when products.pid=P.pid then P.rating else null end ),0),
-- -- six months rating
-- IFNULL(COUNT(case when products.pid=sales.pid then 1 else null end),0)

IFNULL(COUNT( case when sales.pid=products.pid then 1 else null end)/80,0)

FROM products, previews, sales, previews P, bids
WHERE DATE(P.rdate) >= DATE('now','-6 months')
-- AND products.pid=P.pid
GROUP BY products.pid;

SELECT * FROM product_info;

-- hacky way, but maybe working
