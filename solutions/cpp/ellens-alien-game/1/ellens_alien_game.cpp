namespace targets {
    class Alien {
        public:
            int x_coordinate;
            int y_coordinate;
            int health = 3;
            Alien(int x, int y) {
                x_coordinate = x;
                y_coordinate = y;
            }
            int get_health() {
                return health;
            }
            int hit() {
                return health--;
            }
            bool is_alive() {
                return (health > 0) ? true : false;
            }
            bool teleport(int x_new, int y_new) {
                x_coordinate = x_new;
                y_coordinate = y_new;
                return true;
            }
            bool collision_detection(Alien other_alien){
                if (other_alien.x_coordinate == x_coordinate && other_alien.y_coordinate == y_coordinate) {
                    return true;
                }
                return false;
            }
    };
}  // namespace targets