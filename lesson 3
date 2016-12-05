SELECT
  date(pickup_datetime) as Ride_date,
  count(*) as Numbers_of_rides,
  round(sum(total_amount)) as Cost,
  round(avg(total_amount)) as Average_check
FROM
  [nyc-tlc:yellow.trips]
WHERE
  pickup_datetime >= '2015-01-01 00:00'
  AND pickup_datetime <= '2015-12-31 23:59'
GROUP BY 
  Ride_date
ORDER BY
  Average_check DESC
