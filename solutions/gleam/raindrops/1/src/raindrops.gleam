import gleam/int
import gleam/string_builder

pub fn convert(number: Int) -> String {
  let sb = string_builder.new()
  
  let sb = case number % 3 == 0 {
    True -> string_builder.append(sb, "Pling")
    False -> sb
  }
  
  let sb = case number % 5 == 0 {
    True -> string_builder.append(sb, "Plang")
    False -> sb
  }
  
  let sb = case number % 7 == 0 {
    True -> string_builder.append(sb, "Plong")
    False -> sb
  }

  case string_builder.to_string(sb) {
    "" -> int.to_string(number)
    result -> result
  }
}
