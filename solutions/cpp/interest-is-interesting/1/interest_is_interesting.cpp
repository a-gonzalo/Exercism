double interest_rate(double balance) {
    if (balance < 0) {
        return 3.213;
    } else if (balance >= 0 && balance < 1000) {
        return 0.5;
    } else if (balance >= 1000 && balance < 5000) {
        return 1.621;
    } else if (balance >= 5000 ) {
        return 2.475;
    }
    return 0.0;
}

double yearly_interest(double balance) {
    return interest_rate(balance) / 100 * balance;
}

double annual_balance_update(double balance) {
    return yearly_interest(balance) + balance;
}

int years_until_desired_balance(double balance, double target_balance) {
    int years = 0;
    while (balance < target_balance) {
        balance = annual_balance_update(balance);
        years++;
    }
    return years;
}