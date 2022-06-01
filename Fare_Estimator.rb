def fareEstimator(ride_time, ride_distance, cost_per_minute, cost_per_mile)

  idxa=0
  fare_cost = []
  while idxa<cost_per_minute.length
    a=ride_time*cost_per_minute[idxa]+ride_distance*cost_per_mile[idxa]
    fare_cost.push(a)
    idxa+=1
  end
  return fare_cost

end

ride_time = 30
ride_distance = 7
cost_per_minute = [0.2, 0.35, 0.4, 0.45] 
cost_per_mile = [1.1, 1.8, 2.3, 3.5]
puts fareEstimator(ride_time, ride_distance, cost_per_minute, cost_per_mile)
puts "[13.7, 23.1, 28.1, 38]\n"


ride_time= 15
ride_distance= 9
cost_per_minute= [0.2, 0.34, 0.35, 0.45, 1]
cost_per_mile= [1.1, 1.8, 1.9, 1.7, 5]
puts fareEstimator(ride_time, ride_distance, cost_per_minute, cost_per_mile)
puts "[12.9, 21.3, 22.35, 22.05, 60]\n"