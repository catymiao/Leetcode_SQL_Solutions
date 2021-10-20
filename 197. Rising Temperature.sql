# Write your MySQL query statement below
SELECT  b.Id AS "Id" from Weather a
Left join weather b 
ON DATEDIFF(b.recordDate, a.recordDate) = 1
WHERE a.temperature < b.temperature;

/* Write your T-SQL query statement below */
SELECT w2.Id from Weather w1
LEFT JOIN Weather w2
ON DATEDIFF(day, w1.RecordDate, w2.RecordDate)=1
WHERE w1.Temperature < w2.Temperature 
