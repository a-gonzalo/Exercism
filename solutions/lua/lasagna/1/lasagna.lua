local lasagna = {}
  
lasagna.oven_time = 40
  
function lasagna.remaining_oven_time(actual_minutes_in_oven)
  return lasagna.oven_time - actual_minutes_in_oven
end

-- calculates and returns the time needed to prepare the lasagna on the amount
-- of layers
function lasagna.preparation_time(number_of_layers)
  return number_of_layers * 2
end

-- calculates the time elapsed cooking the lasagna - including preparation time
-- and baking time.
function lasagna.elapsed_time(number_of_layers, actual_minutes_in_oven)
  return 40 - lasagna.remaining_oven_time(actual_minutes_in_oven) + lasagna.preparation_time(number_of_layers)
end

return lasagna
