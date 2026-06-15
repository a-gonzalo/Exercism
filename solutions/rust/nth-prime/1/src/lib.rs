pub fn nth(n: u32) -> u32 {
    const SECOND_PRIME: u32 = 3;
    let mut calc_number = SECOND_PRIME;
    let mut prime_count = 1;

    if n == 0 {
        return 2;
    }
    if n == 1 {
        return 3;
    }

    while prime_count < n {
        calc_number += 2;
        if is_prime(calc_number) {
            prime_count += 1;
        }
    }

    calc_number
}



fn is_prime(num: u32) -> bool {
    if num <= 1 {
        return false;
    }
    if num == 2 || num == 3 {
        return true;
    }
    if num % 2 == 0 || num % 3 == 0 {
        return false;
    }

    let mut i = 5;
    while i * i <= num {
        if num % i == 0 || num % (i + 2) == 0 {
            return false;
        }
        i += 6;
    }

    true
}