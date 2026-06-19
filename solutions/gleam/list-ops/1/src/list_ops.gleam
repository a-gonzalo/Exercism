pub fn append(first first: List(a), second second: List(a)) -> List(a) {
  append_r(reverse(first), second)
}

fn append_r(first: List(a), second: List(a) ) -> List(a) {
  case first {
    [] -> second
    [f, ..rest] ->  append_r(rest, [f, ..second]) 
  }
}
  
pub fn concat(lists: List(List(a))) -> List(a) {
  case lists {
    [] -> []
    [first, ..rest] -> append(first, concat(rest))
  }
}

pub fn filter(list: List(a), function: fn(a) -> Bool) -> List(a) {
  case list {
    [] -> []
    [first, ..rest] -> {
      case function(first) {
        True -> [first, ..filter(rest, function)]
        False -> filter(rest, function)
      }
    }
  }
}

pub fn length(list: List(a)) -> Int {
  case list {
    [] -> 0
    [_ , ..rest] -> length(rest) + 1
  }
}

pub fn map(list: List(a), function: fn(a) -> b) -> List(b) {
  case list {
    [] -> []
    [first, ..rest] -> [function(first), ..map(rest, function)]
  }
}

pub fn foldl(
  over list: List(a),
  from initial: b,
  with function: fn(b, a) -> b,
) -> b {
  case list {
    [] -> initial
    [first, ..rest] -> foldl(rest, function(initial,first), function)
  }
}

pub fn foldr(
  over list: List(a),
  from initial: b,
  with function: fn(b, a) -> b,
) -> b {
  foldl(reverse(list), initial, function)
}

pub fn reverse(list: List(a)) -> List(a) {
  let acc = []
  reverse_acc(list, acc)
}

fn reverse_acc(list: List(a), acc: List(a)) -> List(a) {
  case list {
    [] -> acc
    [first, ..rest] -> reverse_acc(rest, [first, ..acc])
  }
}
