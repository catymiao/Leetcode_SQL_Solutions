/* Write your T-SQL query statement below */
SELECT ID, Jan AS Jan_revenue, Feb AS Feb_revenue, Mar AS Mar_revenue, Apr AS Apr_revenue, May AS
May_revenue, Jun AS Jun_revenue, Jul AS Jul_revenue, Aug AS Aug_revenue, Sep AS Sep_revenue,
Oct AS Oct_revenue, Nov AS Nov_revenue, Dec AS Dec_revenue
FROM
(select id, month, revenue from Department) tb1
PIVOT
(
sum(revenue) for month in (Jan,Feb,Mar,Apr,May,Jun,
    Jul,Aug,Sep,Oct,Nov,Dec))as tab2