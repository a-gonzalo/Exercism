import gleam/list

pub fn today(days: List(Int)) -> Int {
  case days {
    [first, ..rest] -> first
    []              -> 0
  }
}

pub fn increment_day_count(days: List(Int)) -> List(Int) {
  case days {
    [first, ..rest] -> [first + 1, ..rest]
    []              -> [1]
  }
}

pub fn has_day_without_birds(days: List(Int)) -> Bool {
  days
  |> list.contains(0)
}

pub fn total(days: List(Int)) -> Int {
  days
  |> list.fold(0,fn(n, acc){n + acc})
}

pub fn busy_days(days: List(Int)) -> Int {
  days
  |> list.count(fn(n) {n >= 5})
}
