SELECT extract(date from pickup_datetime) Ride_Date, Count(*) No_Of_Trips, round(Avg(fare_amount), 2) Avg_Fare_Amount, round(Avg(trip_distance), 2) Avg_Trip_Distance
FROM `reflecting-ivy-368402.nyc_taxi_agg.nyc_taxi_master`
group by 1