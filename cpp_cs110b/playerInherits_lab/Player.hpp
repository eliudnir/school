#ifndef PLAYER_HPP
#define PLAYER_HPP

#include <string>

class Player {
protected: 
	std::string name;
	double weight;
	double height;

public:
	Player(std::string n, double w, double h) { name = n; weight = w; height = h; };

	virtual void printStats() const = 0;

};

#endif