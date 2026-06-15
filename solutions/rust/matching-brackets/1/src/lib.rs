pub fn brackets_are_balanced(string: &str) -> bool {
    let mut stack: Vec<char> = Vec::new();
    for c in string.chars() {
        match c {
            '[' | '{' | '(' => stack.push(c),
            ']' | '}' | ')' => {
                let expected_open = match c {
                    ']' => '[',
                    '}' => '{',
                    ')' => '(',
                    _ => ' ',
                };
                if stack.pop() != Some(expected_open) {
                    return false;
                }
            },
            _ => {} 
        }
    }
    stack.is_empty()
}
