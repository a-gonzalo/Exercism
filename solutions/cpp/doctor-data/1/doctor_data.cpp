#include "doctor_data.h"

namespace heaven {
    std::string get_older_bob(const Vessel& a, const Vessel& b) {
        return (a.generation < b.generation) ? a.name : b.name;
    }
    bool in_the_same_system(const Vessel& a, const Vessel& b) {
        return a.current_system == b.current_system;
    }
}
