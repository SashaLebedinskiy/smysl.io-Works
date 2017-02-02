-- cohort calc
INNER JOIN
  [sqlsmysloi.roga_orders] orders
ON
  users.uid=orders.uid

  select
  reg_month AS cohort_id,
  COUNT(*) as cohort_size,
  COUNT(*) * 1000 AS costs
from
  [sqlsmysloi.roga_users] users
GROUP BY 1

-- cohort revenue calc
select
  reg_month AS cohort_id,
  SUM(orders.sum) as cohort_revenue,
from
  [sqlsmysloi.roga_users] users
INNER JOIN
  [sqlsmysloi.roga_orders] orders
ON
  users.uid=orders.uid
GROUP BY 1

-- cohort revenue by month calc
select
  reg_month AS cohort_id,
  orders.month AS month,
  SUM(orders.sum) as cohort_revenue,
from
  [sqlsmysloi.roga_users] users
INNER JOIN
  [sqlsmysloi.roga_orders] orders
ON
  users.uid=orders.uid
GROUP BY 1,2
