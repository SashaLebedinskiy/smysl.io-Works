select
  users.first_name, 
  users.last_name, 
  users.email,
  sum(order_sum.order_sum) as order_sum.total_sum,
from 
  [crested-booking-152317:sqlsmysloi.e1_users] as users
  join [crested-booking-152317:sqlsmysloi.e1_orders] as order_sum
  on users.id=order_sum.user_id
group by users.first_name, 
  users.last_name, 
  users.email,
order by order_sum.total_sum desc
