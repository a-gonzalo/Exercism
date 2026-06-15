pub fn is_armstrong_number(num: u32) -> bool {
    let num_string = num.to_string();
    let mut processed_number: u64 = 0; 
    let chars = num_string.chars().count() as u32;
    for i in num_string.chars() {
        let i_number = i.to_digit(10).unwrap() as u64; 
        if let Some(result) = processed_number.checked_add(i_number.pow(chars)) {
            processed_number = result;
        } else {
            return false;
        }
    }
    processed_number == num as u64 
}