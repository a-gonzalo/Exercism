import gleam/string

pub fn message(log_line: String) -> String {
  case log_line {
    "[ERROR]: " <> message -> string.trim(message)
    "[WARNING]: " <> message -> string.trim(message)
    "[INFO]: " <> message -> string.trim(message)
    _ -> "Not a log line"
  }
}

pub fn log_level(log_line: String) -> String {
  string.lowercase(extract_value(log_line))
}

pub fn extract_value(input: String) -> String {
  case string.split(input, "[") {
    [_, rest] -> 
      case string.split(rest, "]") {
        [value, _] -> value
        _ -> ""
      }
    _ -> ""
  }
}

pub fn reformat(log_line: String) -> String {
  let log_level = log_level(log_line)
  let log_message =
    message(log_line)
      
  log_message <> " (" <> log_level <> ")"
}
