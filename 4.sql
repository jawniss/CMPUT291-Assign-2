.print Question 4 - johnas

SELECT S.sid, S.descr, S.cond,
  COUNT(case when S.sid=B.sid then 1 else null end) as numBids,
  MAX ( case when S.sid=B.sid then B.amount else null end) as highBid,
  Cast ( (
    JulianDay(S.edate) - JulianDay('now')
  ) As Integer) as DaysLeft
FROM sales S, bids B
WHERE JulianDay(S.edate) >= JulianDay('now');
