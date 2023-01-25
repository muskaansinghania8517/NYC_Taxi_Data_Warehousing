SELECT * EXCEPT (LocationID, Borough, Zone, service_zone),
dr_map.Borough Drop_Borough, dr_map.service_zone Drop_service_zone, dr_map.Zone as Drop_zone,
pu_map.Borough Pick_Borough, pu_map.service_zone Pick_service_zone, pu_map.Zone as Pick_zone
FROM `reflecting-ivy-368402.nyc_taxi_agg.Taxi_Location_Mapping` dr_map
RIGHT JOIN `reflecting-ivy-368402.nyc_taxi_agg.nyc_all_agg` agg
ON dr_map.LocationID = agg.DOLocationID
LEFT JOIN `reflecting-ivy-368402.nyc_taxi_agg.Taxi_Location_Mapping` pu_map
ON pu_map.LocationID = agg.PULocationID
where extract(year from pickup_datetime) IN (2021,2022)