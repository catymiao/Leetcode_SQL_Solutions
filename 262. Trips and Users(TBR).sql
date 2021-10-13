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
    
    
    