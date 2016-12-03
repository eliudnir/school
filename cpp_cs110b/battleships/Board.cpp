//
//  Board.cpp
//  Battleship
//

#include <stdlib.h>
#include <time.h>

#include "Board.h"

// PRIVATE
// is triggered by getUserInput()
// handles making sure we fire at stuff, update what we hit or missed etc.
void Board::fireAtTarget(int x, int y) {
	if ( board[x][y] != '~' )
	{
		std::cout << "You already fired there, try another target!" << std::endl;
		return;
	}
	point p(x, y);

	for (unsigned int i = 0; i < gameShips.size(); ++i)
	{
		if( gameShips[i].containsPoint(p) )
		{
			std::cout << "You hit a ship at X: " << x << " and Y: " << y << std::endl;
			board[x][y] = '*';
			gameShips[i].shotFiredAtPoint(p);
			if ( gameShips[i].isSunk() )
				std::cout << "You sank a ship of length " << gameShips[i].hitCount() << "!" << std::endl;
		}
	}

	if ( board[x][y] == '~' )
	{
		board[x][y] = '.';
		std::cout << "You missed with that shot!" << std::endl;
	}
};

// CONSTRUCTOR - DEFAULT
// readies our game board for play - this includes:
// setting our gameOver to false, setting our entire game map to ~ chars
// setting our ships (and making sure they A. don't collide with each other and
// B. don't run outside the game board map size).
Board::Board() {
	gameOverState = false;

	for (int i = 0; i < 10; ++i)
		for (int j = 0; j < 10; ++j)
			board[i][j] = '~';

	srand( time(NULL) );

	tryAgain:
	while( gameShips.size() < 4 ) {
		int orientation = rand() % 2;
		int shipLen = gameShips.size() + 2;
		int xOrigin = (orientation == 0) ? rand() % (10 - shipLen) : rand() % 10;
		int yOrigin = (orientation == 1) ? rand() % (10 - shipLen) : rand() % 10;
		point tPoint(xOrigin, yOrigin);
		Ship tShip( tPoint, (direction) orientation, shipLen );

		for (unsigned int i = 0; i < gameShips.size(); ++i)
			if ( gameShips[i].collidesWith(tShip) )
				goto tryAgain;
		gameShips.push_back( tShip );
	}
};

// PUBLIC - a fairly simple algorithm to print out our 2D
// char map using 0,0 as bottom-left and 9,9 as top-right
// with "indexing" numbers on both axis
void Board::printBoard() {
	for (int y = 9; y >= 0; --y)
	{
		std::cout << y << " ";
		for (int x = 0; x <= 9; ++x)
			std::cout << board[x][y] << " ";
		std::cout << std::endl;
	}
	std::cout << "  0 1 2 3 4 5 6 7 8 9" << std::endl;
};

// PUBLIC
// This method takes in the users X,Y target they want to fire at, validates
// that input, and if it's good, triggers the private fireAtTarget(int x, int y);
void Board::getUserInput() {
	int usrX, usrY = -1;

	do
	{
		std::cout << "Input an X and Y value (0 to 9):" << std::endl;
		std::cin >> usrX >> usrY;
		std::cin.clear();
		std::cin.ignore(256,'\n');
		if ( (usrX > 9 || usrX < 0) || (usrY > 9 || usrY < 0) )
			std::cout << "I see we need to try that again ..." << std::endl;
	} while ( (usrX > 9 || usrX < 0) || (usrY > 9 || usrY < 0) );

	fireAtTarget(usrX, usrY);
};

// PUBLIC
// Our last call in main() to test if there are ships left
// that are not yet sunk. If all ships are sunk, change gameOverState to true
// so we can quit
void Board::shipsLeft() {
	unsigned int sunkShips = 0;
	for (unsigned int i = 0; i < gameShips.size(); ++i)
		if ( gameShips[i].isSunk() )
			sunkShips++;

	if ( sunkShips == gameShips.size() )
	{
		printBoard();
		std::cout << "You sank the last ship! You win!" << std::endl;
		gameOverState = true;
	}
};
