// Please define the TreasureChest generic custom type
pub type TreasureChest(a) {
    TreasureChest(
        secret: String,
        treasure: a
    )
}
// Please define the UnlockResult generic custom type
pub type UnlockResult(a) {
  WrongPassword
  Unlocked(a)
}


pub fn get_treasure(
  chest: TreasureChest(a),
  password: String
) -> UnlockResult(a) {
  case chest {
    TreasureChest(secret, treasure) if secret == password -> Unlocked(treasure)
    _ -> WrongPassword
  }
}
