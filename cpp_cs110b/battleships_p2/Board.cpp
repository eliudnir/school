//
//  Board.cpp
//  Battleship
//

// we need srand(), rand() and time()
#include <stdlib.h>
#include <time.h>

#include "Board.h"

/*
Constructor:
	-inits random seed
	-makes 4 ships length 2 to 5 and adds to game
	-makes sure ships are not colliding on map
*/
Board::Board() {
	srand( time(NULL) );

	int i = 0;
	while (i < 4) {
		Ship* tShip = generateShipWithLength( i+2 );
		int j = 0;
		while (j < i) {
			if ( tShip->collidesWith( *ships[j] ) ) {
				delete tShip;
				tShip = NULL;
				break;
			}
			++j;
		}
		if ( tShip != NULL ) {
			ships[i] = tShip;
			++i;
		}
	}
};

/*
Destructor
	-clear out the memory we allocated for ships
*/
Board::~Board() {
	for (int i = 0; i < 4; ++i)
		delete ships[i];
};

/*
Helper function that takes in an integer for the size of a ship to make and returns a
pointer to that ship.
	-makes sure ships are randomly located
	-makes sure ships fit on map
*/
Ship* Board::generateShipWithLength(int l) {
	int orientation = rand() % 2;
	int xOrigin = (orientation == 0) ? rand() % (10 - l) : rand() % 10; 
	int yOrigin = (orientation == 1) ? rand() % (10 - l) : rand() % 10;
	point spawnPoint(xOrigin, yOrigin);
	Ship* myShip = new Ship(spawnPoint, (direction)orientation, l);
	return myShip;
};

/*
Fires a shot at a given X and Y location in the game
	-tests if a location has been shot at prior
	-adds to missed if user misses, dings a ship if user hits
*/
bool Board::fireShot(int x, int y) {
	point tPoint(x, y);

	if ( misses.contains(tPoint) )
	{
		std::cout << "You have already fired there and missed!" << std::endl;
		return false;
	}

	for (int i = 0; i < 4; ++i)
	{
		if ( ships[i]->isHitAtPoint(tPoint) )
		{
			std::cout << "You already fired there and hit a ship!" << std::endl;
			return false;
		}

		if ( ships[i]->containsPoint(tPoint) )
		{
			ships[i]->shotFiredAtPoint(tPoint);
			std::cout << "You hit a ship!" << std::endl;
			if ( ships[i]->isSunk() )
				std::cout << "Looks like you sunk it too, a ship of length " << ships[i]->hitCount() << "!" << std::endl;
			return true;
		}
	}
	
	misses.add(tPoint);
	std::cout << "Looks like that was a miss!" << std::endl;
	return false;
};

/*
Returns the number of ships that not are not sunk
*/
int Board::unsunkShipCount() {
	int unsunkShips = 0;
	for (int i = 0; i < 4; ++i)
		if ( !ships[i]->isSunk() )
			++unsunkShips;
	return unsunkShips;
};

/*
Displays our game map output to the stdout 
	-shows x y integer digit coordinates
	-shows (~)water, (X)hit or (.)miss
*/
void Board::display() {
	for (int y = 9; y >= 0; --y)
	{
		std::cout << y;
		for (int x = 0; x < 10; ++x)
		{
			point tPoint(x, y);
			bool pointHasHit = false;
			for (int i = 0; i < 4; ++i)
				if ( ships[i]->isHitAtPoint( tPoint ) )
					pointHasHit = true;
			
			if ( misses.contains( tPoint ) )
				std::cout << " .";
			else if ( pointHasHit )
				std::cout << " X";
			else
				std::cout << " ~";
		}
		std::cout << std::endl;
	}
	std::cout << "  0 1 2 3 4 5 6 7 8 9" << std::endl;
};