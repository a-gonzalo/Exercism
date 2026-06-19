import gleam/string
import gleam/set
import gleam/list

pub fn is_isogram(phrase phrase: String) -> Bool {
  let clean_letters =
    phrase
    |> string.lowercase
    |> string.to_graphemes
    |> list.filter(fn(char) { char != " " && char != "-" })

  set.size(set.from_list(clean_letters)) == list.length(clean_letters)
}
