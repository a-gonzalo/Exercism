import gleam/list
import gleam/string

pub fn is_paired(value: String) -> Bool {
    check_balance(string.to_graphemes(value), [])
}

fn check_balance(chars: List(String), stack: List(String)) -> Bool {
  case chars, stack {
    [], [] -> True
    [], _ -> False
    // Add head
    ["(", ..rest], _ -> check_balance(rest, ["(", ..stack])
    ["[", ..rest], _ -> check_balance(rest, ["[", ..stack])
    ["{", ..rest], _ -> check_balance(rest, ["{", ..stack])
    // Add tail
    [")", ..rest], ["(", ..stack_rest] -> check_balance(rest, stack_rest)
    ["]", ..rest], ["[", ..stack_rest] -> check_balance(rest, stack_rest)
    ["}", ..rest], ["{", ..stack_rest] -> check_balance(rest, stack_rest)
    // Not matched tails
    [")", ..], _ -> False
    ["]", ..], _ -> False
    ["}", ..], _ -> False
    // Ignore chars
    [_, ..rest], _ -> check_balance(rest, stack)
  }
}