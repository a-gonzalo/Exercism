pub fn reply(message: &str) -> &str {
    let trimmed_message = message.trim();
    if trimmed_message.is_empty() {
        return "Fine. Be that way!";
    }
    let is_question = trimmed_message.ends_with('?');
    let is_yelling = message.chars().any(char::is_alphabetic) && message.to_uppercase() == message;

    match (is_yelling, is_question) {
        (true, true) => "Calm down, I know what I'm doing!",
        (true, false) => "Whoa, chill out!",
        (false, true) => "Sure.",
        _ => "Whatever.",
    }
}
