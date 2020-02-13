SELECT U.email,
SUM ( (SELECT COUNT(*) FROM bids WHERE bids.bidder=U.email) ) as BidNum,
SUM ( (SELECT COUNT(*) FROM bids WHERE bids.bidder=U.email
AND bids.amount=MAX(bids.amount)
AND DATE(sales.edate) < DATE('now')
AND bids.amount>=sales.rprice) )
-- SUM( (WINNING BIDS) )
FROM users U, sales, bids
WHERE DATE(sales.edate) < DATE('now');




-- the 'subqueriescan be used in the from clause' maybe
-- it's like select things from (select things from smoehting
-- else)
-- so like only select these things from this selection from
-- these other things
