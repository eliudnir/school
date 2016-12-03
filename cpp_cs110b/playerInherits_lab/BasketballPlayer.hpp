#ifndef BASKETBALLPLAYER_HPP
#define BASKETBALLPLAYER_HPP

class BasketballPlayer : public Player {
private:
	int fieldGoals;
	int attempts;

public:
	BasketballPlayer(std::string n, double w, double h, int fg, int a) : Player(n, w, h) { fieldGoals = fg; attempts = a; }

	void printStats() const {
		std::cout << name << std::endl;
		std::cout << "Weight: " << weight;
		std::cout << " Height: " << height << std::endl;
		std::cout << "FG: " << fieldGoals;
		std::cout << " Attempts: " << attempts;
		std::cout << " Pct: " << (double) fieldGoals / attempts << std::endl;
	}

};

#endif