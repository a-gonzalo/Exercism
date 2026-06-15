#include <string>
#define String std::string

namespace log_line {
    String message(String line) {
        int space_index = line.find(" ");
        return line.substr(space_index + 1);
    }

    String log_level(String line) {
        int first_bracket = line.find("[");
        int last_bracket = line.find("]");
        return line.substr(first_bracket +1 ,last_bracket -1);
    }

    String reformat(String line) {
        String msg = message(line);
        String lvl = log_level(line);
        return msg + " (" + lvl + ")";
    }
}
