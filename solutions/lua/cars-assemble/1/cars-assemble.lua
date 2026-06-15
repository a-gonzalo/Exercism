local cars = {}

-- returns the amount of working cars produced by the assembly line every hour
function cars.calculate_working_cars_per_hour(production_rate, success_rate)
  return production_rate * success_rate / 100
end

-- returns the amount of working cars produced by the assembly line every minute
function cars.calculate_working_cars_per_minute(production_rate, success_rate)
  return production_rate * success_rate / 100 // 60
end

-- returns the cost of producing the given number of cars
function cars.calculate_cost(cars_count)
  local cheap_cars_number = (cars_count // 10)
  local cheap_cars_cost = cheap_cars_number * 95000
  local expensive_cars_cost = (cars_count - cheap_cars_number * 10) * 10000   
  return cheap_cars_cost + expensive_cars_cost 
end

return cars
