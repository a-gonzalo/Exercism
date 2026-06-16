import gleam/list
import gleam/int
import gleam/string

pub fn convert(number: Int) -> String {
    let nums = [3,5,7]
    nums
    |> list.map(
      fn(n) {
          case int.modulo(number, n), n {
            Ok(0), 3 -> "Pling"
            Ok(0), 5 -> "Plang"
            Ok(0), 7 -> "Plong"
            _, _     -> ""
          }
      }
    )
    |> list.fold("",string.append)
    |> fn (str) {
        case str {
            "" -> int.to_string(number)
            _  -> str
        }
    }
}
