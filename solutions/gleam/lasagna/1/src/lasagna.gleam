const layer_time = 2
// Please define the expected_minutes_in_oven function
pub fn expected_minutes_in_oven() -> Int {
  40
}
// Please define the remaining_minutes_in_oven function
pub fn remaining_minutes_in_oven(actual_minutes:Int) -> Int {
  expected_minutes_in_oven() - actual_minutes
}
// Please define the preparation_time_in_minutes function
pub fn preparation_time_in_minutes(layers:Int) -> Int {
  layers * layer_time
}
// Please define the total_time_in_minutes function
pub fn total_time_in_minutes(layers: Int, minutes: Int) -> Int {  
  preparation_time_in_minutes(layers) + minutes
}
// Please define the alarm function
pub fn alarm() {
  "Ding!"
}