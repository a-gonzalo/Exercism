import gleam/list
import gleam/set


pub fn equilateral(a: Float, b: Float, c: Float) -> Bool {
  check_triangle(a,b,c) 
  &&
  set.from_list([a,b,c])
  |> fn (s) {
      case set.size(s) {
          1 -> True
          _ -> False
      }
  }
}

pub fn isosceles(a: Float, b: Float, c: Float) -> Bool {
  check_triangle(a,b,c) 
  &&
  set.from_list([a,b,c])
  |> fn (s) {
      case set.size(s) {
          1 | 2 -> True
          _ -> False
      }
  }
}

pub fn scalene(a: Float, b: Float, c: Float) -> Bool {
  check_triangle(a,b,c) 
  &&
    set.from_list([a,b,c])
  |> fn (s) {
      case set.size(s) {
          3 -> True
          _ -> False
      }
  }
}

fn check_triangle(a: Float, b: Float, c: Float) -> Bool {
  let sides_are_positive = a >. 0.0 && b >. 0.0 && c >. 0.0
  let valid_sums = { a +. b >=. c } && { b +. c >=. a } && { a +. c >=. b }
  sides_are_positive && valid_sums
}