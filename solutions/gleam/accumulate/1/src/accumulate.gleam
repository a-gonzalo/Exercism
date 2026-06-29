pub fn accumulate(list: List(a), fun: fn(a) -> b) -> List(b) {
  let acc = []
  let acc_reverse = []
  accumulate_with_acc(reverse(list, acc_reverse),fun,acc)
}

fn accumulate_with_acc(list: List(a), fun: fn(a) -> b, acc: List(b)) -> List(b) {
  case list {
     [] -> acc
     [head, ..tail] -> accumulate_with_acc(tail, fun, [fun(head), ..acc])
  }
}

fn reverse(list: List(a), acc: List(a)) -> List(a) {
    case list {
      [] -> acc
      [head, ..tail] -> reverse(tail, [head, ..acc])
    }
}
