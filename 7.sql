.print Question 7 - johnas

SELECT U.email,
COUNT(DISTINCT case when U.email=bids.bidder then 1 else null end) as BidNum,
COUNT(case when U.email=bids.bidder
AND bids.amount= (SELECT MAX(bids.amount) from bids) then 1 else null end) as WinningBids
FROM users U, sales, bids
WHERE DATE(sales.edate) < DATE('now');
