import gleam/list

pub type Tree {
  Nil
  Node(data: Int, left: Tree, right: Tree)
}

pub fn to_tree(data: List(Int)) -> Tree {
  list.fold(over: data, from: Nil, with: insert)
}

fn insert(tree: Tree, data: Int) -> Tree {
  case tree {
    Nil -> Node(data, Nil, Nil)

    Node(n, left, right) -> {
      case data <= n {
        True -> Node(n, insert(left, data), right)

        False -> Node(n, left, insert(right, data))
      }
    }
  }
}

pub fn sorted_data(data: List(Int)) -> List(Int) {
  data
  |> to_tree
  |> tree_to_list
}

fn tree_to_list(tree: Tree) -> List(Int) {
  case tree {
    Nil -> []

    Node(value, left, right) -> {
      let left_list = tree_to_list(left)
      let right_list = tree_to_list(right)

      list.flatten([left_list, [value], right_list])
    }
  }
}
