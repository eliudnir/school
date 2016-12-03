#ifndef BASEBALLPLAYER_HPP
#define BASEBALLPLAYER_HPP

class BaseballPlayer : public Player {

private:
  int atBats;
  int hits;

public:
  BaseballPlayer(std::string n, double w, double h, int ab, int hi) : Player(n, w, h) { atBats = ab; hits = hi; }

  void printStats() const {
		std::cout << name << std::endl;
		std::cout << "Weight: " << weight;
		std::cout << " Height: " << height << std::endl;
		std::cout << "AtBats: " << atBats;
		std::cout << " Hits: " << hits;
		std::cout << " Pct: " << (double) atBats / hits << std::endl;
	}

};

#endif
