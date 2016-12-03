//
//  Board.h
//  Battleship
//
// added a destructor to clear out the ships[4] memory allocation
// all else is instructors design .... /sigh

#ifndef BOARD_H
#define BOARD_H

#include "Ship.h"

class Board
{

private:
	Ship *ships[4];
	PointCollection misses;
	Ship* generateShipWithLength(int l);

public:
	Board();
	~Board();
	bool fireShot(int x, int y);
	int unsunkShipCount();
	void display();

};

#endif
