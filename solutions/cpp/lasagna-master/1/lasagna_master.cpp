#include "lasagna_master.h"

namespace lasagna_master {
    int preparationTime(std::vector<std::string> layers, int time) {
        int total_time = 0;
        for (size_t i = 0; i < layers.size() ; i++) {
            total_time += time;
        }
        return total_time;
    }
    amount quantities(std::vector<std::string> layers) {
        amount total;
        int noodles_needed = 0;
        double sauce_needed = 0;
        for (size_t i = 0; i < layers.size() ; i++){
            if (layers[i] == "noodles" ) {
                noodles_needed += 50;
            }
            if  (layers[i] == "sauce" ) {
                sauce_needed += 0.2;
            }
        }
        total.noodles = noodles_needed;
        total.sauce = sauce_needed;
        return total;
    }
    void addSecretIngredient(std::vector<std::string>& list1, const std::vector<std::string>& list2) {
        if (list1.back() == "?") {
            list1.pop_back();
            list1.push_back(list2.back());
        }
    }
    void addSecretIngredient(std::vector<std::string>& list1, const std::string& secret_ingredient) {
        if (list1.back() == "?") {
            list1.pop_back();
            list1.push_back(secret_ingredient);
        }
    }
    std::vector<double> scaleRecipe (const std::vector<double> quantities, int portions){
        std::vector<double> final_quantities;
        for (size_t i = 0; i < quantities.size() ; i++) {
            double quantities_per_portions = quantities[i] / 2 * portions;
            final_quantities.push_back(quantities_per_portions);
        }
        return final_quantities;
    }




} 
