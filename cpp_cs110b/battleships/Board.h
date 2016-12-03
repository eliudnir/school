//
//  Board.h
//  Battleship
//

#ifndef BOARD_H
#define BOARD_H

#include <iostream>
#include <vector>

#include "Ship.h"

class Board
{
private:
	char board[10][10];
	bool gameOverState;
	std::vector<Ship> gameShips;
	void fireAtTarget(int x, int y);
	
public:
	Board();
	void printBoard();
	void getUserInput(); 
	void shipsLeft();
	bool gameOver() { return gameOverState; };
    
};

#endif
