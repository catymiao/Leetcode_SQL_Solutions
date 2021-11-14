 /* MySQL */   
SELECT Request_at Day, ROUND(Cancel_times/Total,2) AS "Cancellation Rate" 
FROM (

  SELECT Request_at , SUM(
  CASE WHEN STATUS LIKE 'cancelled%' THEN 1
  ELSE 0
  END
) AS Cancel_times, COUNT(*)Total


 FROM(

  SELECT * FROM 
  (SELECT Id, Client_Id, Driver_Id, Status, Request_at, Banned AS   Banned_client 
  FROM Trips t
  INNER JOIN Users u
  ON t.Client_id = u.Users_Id)a 
  INNER JOIN Users r
  ON a.Driver_Id = r.Users_Id
  WHERE Banned_Client = 'No'
  AND Banned = 'No'
  AND Request_at BETWEEN '2013-10-01' AND '2013-10-03'
)b
  GROUP BY Request_at) c 
    
 /* T-SQL */    
select b.Day, cast(isnull(1.0*Canceled/Total,0) as numeric(36,2)) as "Cancellation Rate" from (
  SELECT request_at Day, count(*) Canceled
  FROM Trips, USERS 
  where client_id not in (select users_id from users where banned = 'Yes')
  and driver_id not in (select users_id from users where banned = 'Yes')
  and status <> 'completed'
  group by request_at) a 
right join (
  SELECT request_at Day, count(*) Total
  FROM Trips, USERS 
  where client_id not in (select users_id from users where banned = 'Yes')
  and driver_id not in (select users_id from users where banned = 'Yes')
  group by request_at) b
on a.Day = b.Day 
where b.Day between '2013-10-01' and '2013-10-03'
