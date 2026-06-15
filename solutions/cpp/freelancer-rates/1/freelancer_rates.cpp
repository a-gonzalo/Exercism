#include <cmath>

double daily_rate(double hourly_rate) {
    return hourly_rate * 8;
}

double apply_discount(double before_discount, double discount) {
    return before_discount - (before_discount * discount / 100);
}

int monthly_rate(double hourly_rate, double discount) {
    double total_rate = (daily_rate(hourly_rate) * 22);
    double final_rate = std::ceil(apply_discount(total_rate,discount));
    return final_rate;
}

int days_in_budget(int budget, double hourly_rate, double discount) {
    double daily_discounted_rate = apply_discount(daily_rate(hourly_rate), discount);
    int days_covered = budget / daily_discounted_rate;
    return days_covered;
}
