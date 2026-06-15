#include "vehicle_purchase.h"

namespace vehicle_purchase {
    bool needs_license(std::string kind){
        if (kind == "car" || kind == "truck" ){
            return true;
        }
        return false;
    }

    std::string choose_vehicle(std::string option1, std::string option2) {
        std::string best_option = (option1 < option2) ? option1 : option2;
        return best_option + " is clearly the better choice.";
    }

    // calculate_resell_price calculates how much a vehicle can resell for at a certain age.
    double calculate_resell_price(double original_price, double age) {
        double price_disc = (age >= 10) ? 0.5 : (age <= 3) ? 0.8 : 0.7;
        return original_price * price_disc;
    }

} 