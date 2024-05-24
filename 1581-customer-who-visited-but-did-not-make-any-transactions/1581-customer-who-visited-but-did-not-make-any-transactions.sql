# Write your MySQL query statement below
select customer_id, count(visits.visit_id) as count_no_trans
from visits left join Transactions on visits.visit_id = transactions.visit_id
WHERE transactions.visit_id IS NULL
GROUP BY visits.customer_id;
