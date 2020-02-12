-- we don't need to reference multiple tables, just look
-- at sales since it has pid. compare the pids, then
-- see if the difference in value is more than twice

SELECT S1.sid, S1.lister, S1.pid, S1.bid
FROM sales S1
  INNER JOIN sales S2 on
      S1.bid>2*S2.bid
WHERE S1.pid=S2.pid;


--this isn't right - read the question again
