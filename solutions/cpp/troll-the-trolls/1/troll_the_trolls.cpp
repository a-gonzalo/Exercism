namespace hellmath {

    enum class AccountStatus {
        guest,
        user,
        troll,
        mod
    };

    enum class Action {
        read,
        write,
        remove
    };

    bool display_post(AccountStatus poster, AccountStatus viewer) {
        if (poster == AccountStatus::troll && viewer != AccountStatus::troll) {
            return false;
        }
        return true;
    }

    bool permission_check(Action action, AccountStatus account){
        if (account == AccountStatus::mod){
            return true;
        }
        if (account == AccountStatus::guest){
            if (action == Action::read){
                return true;
            }
        }
        if (account == AccountStatus::user || account == AccountStatus::troll){
            if (action == Action::read || action == Action::write){
                return true;
            }
        }
        return false;
    }

    bool valid_player_combination(AccountStatus player1, AccountStatus player2){
        if (player1 == AccountStatus::guest || player2 == AccountStatus::guest){
            return false;
        }
        if ((player1 == AccountStatus::troll && player2 != AccountStatus::troll) ||
            (player1 != AccountStatus::troll && player2 == AccountStatus::troll)){
            return false;
        }
        return true;
    }

bool has_priority(AccountStatus player1, AccountStatus player2) {
    if (player1 == AccountStatus::mod && player2 != AccountStatus::mod) {
        return true;
    }
    if (player1 == AccountStatus::user && player2 == AccountStatus::guest) {
        return true;
    }
    if ((player1 == AccountStatus::user || player1 == AccountStatus::guest) && player2 == AccountStatus::troll) {
        return true;
    }
    
    return false;
}
}  // namespace hellmath