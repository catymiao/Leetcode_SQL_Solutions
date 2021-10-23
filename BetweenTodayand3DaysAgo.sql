# method 1
DECLARE @today date = GETDATE();
select * from employee where date between DATEADD(DAY, -3, @today) and @today


# method 2 
select * from employee 
where date between DATEADD(day, -3, CAST(GETDATE() AS date)) and convert(date, getdate())
