#include <string>
#include <vector>

namespace election {

    struct ElectionResult {
        std::string name{};
        int votes{};
    };

    int vote_count (ElectionResult& candidate){
        return candidate.votes;
    }

    void increment_vote_count(ElectionResult& candidate, int increment) {
        candidate.votes += increment;
    }

    ElectionResult& determine_result(std::vector<ElectionResult>& final_count) {
        size_t winnerIndex = 0;
        for (size_t i = 1; i < final_count.size(); ++i) {
            if (final_count[i].votes > final_count[winnerIndex].votes) {
                winnerIndex = i;
            }
        }
        final_count[winnerIndex].name = "President " + final_count[winnerIndex].name;

        return final_count[winnerIndex];
    }


}  // namespace election