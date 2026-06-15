import gleam/int
import gleam/list

pub fn square_of_sum(n: Int) -> Int {
let sums =
  list.range(0,n)
  |> int.sum(_)
sums * sums
}

pub fn sum_of_squares(n: Int) -> Int {
  list.range(0,n)
  |> list.filter_map(_,fn(x) { Ok(x * x) } )
  |> int.sum(_)
}

pub fn difference(n: Int) -> Int {
  square_of_sum(n) - sum_of_squares(n)
}
