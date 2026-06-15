use time::{PrimitiveDateTime as DateTime, Duration};

// Retorna una DateTime un billón de segundos después de start.
pub fn after(start: DateTime) -> DateTime {
    start + Duration::seconds(1_000_000_000)
}
