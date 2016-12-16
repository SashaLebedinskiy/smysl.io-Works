/*1*/
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

/*2*/
select
  users.country, 
  sum(order_sum.order_sum) as order_sum.total_sum,
from 
  [crested-booking-152317:sqlsmysloi.e1_users] as users
  join [crested-booking-152317:sqlsmysloi.e1_orders] as order_sum
  on users.id=order_sum.user_id
where users.country='Russia'or users.country='Brazil'
group by users.country,
order by order_sum.total_sum desc

/*3*/
select
  count(users.first_name) as counts_of_no_pay_users, 
  orders.orders_id,
from 
  [crested-booking-152317:sqlsmysloi.e1_users] as users
  LEFT JOIN [crested-booking-152317:sqlsmysloi.e1_orders] as orders
  on users.id=orders.user_id
where orders.user_id is NULL
group by orders.orders_id

/*4*/
select
  users.first_name,
  count(orders.orders_id) as counts_of_no_user_orders,
from 
  [crested-booking-152317:sqlsmysloi.e1_orders] as orders
  LEFT JOIN [crested-booking-152317:sqlsmysloi.e1_users] as users
  on users.id=orders.user_id
where users.first_name is NULL
group by users.first_name
