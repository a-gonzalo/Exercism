#pragma once
#include <string>
#include <vector>

namespace star_map {
    enum class System {
        BetaHydri,
        Sol,
        EpsilonEridani,
        AlphaCentauri,
        DeltaEridani,
        Omicron2Eridani
        // Añadir más enumeraciones según sea necesario
    };
}

namespace heaven {
    class Vessel {
    public:
        std::string name;
        int generation;
        star_map::System current_system;
        int busters = 0;

        Vessel(std::string name, int gen, star_map::System sys = star_map::System::Sol)
            : name(name), generation(gen), current_system(sys) {}

        Vessel replicate(std::string new_name) {
            return Vessel(new_name, this->generation + 1, this->current_system);
        }

        void make_buster() { busters++; }
        bool shoot_buster() {
            if (busters > 0) {
                busters--;
                return true;
            }
            return false;
        }
    };
    std::string get_older_bob(const Vessel& a, const Vessel& b);
    bool in_the_same_system(const Vessel& a, const Vessel& b);
}