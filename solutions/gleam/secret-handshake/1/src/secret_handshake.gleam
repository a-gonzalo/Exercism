import gleam/int
import gleam/list

pub type Command {
  Wink
  DoubleBlink
  CloseYourEyes
  Jump
}

pub fn commands(encoded_message: Int) -> List(Command) {
  let commands_list = []

  let commands_list = case int.bitwise_and(encoded_message, 1) {
    0 -> commands_list
    _ -> [Wink, ..commands_list]
  }

  let commands_list = case int.bitwise_and(encoded_message, 2) {
    0 -> commands_list
    _ -> [DoubleBlink, ..commands_list]
  }

  let commands_list = case int.bitwise_and(encoded_message, 4) {
    0 -> commands_list
    _ -> [CloseYourEyes, ..commands_list]
  }

  let commands_list = case int.bitwise_and(encoded_message, 8) {
    0 -> commands_list
    _ -> [Jump, ..commands_list]
  }

  let final_list = list.reverse(commands_list)

  case int.bitwise_and(encoded_message, 16) {
    0 -> final_list
    _ -> commands_list
  }
}