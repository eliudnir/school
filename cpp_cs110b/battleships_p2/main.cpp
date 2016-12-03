#include <iostream>

#include "PointCollection.h"
#include "Ship.h"
#include "Board.h"

using namespace std;

/*
Main function / entry point:
	- instantiates a Board 
	Then loops (until all ships are sunk):
		- displays the board to user
		- takes in and validates users X and Y integers
		- fires a shot at the ships hidden in the Board
*/

int main(int argc, char const *argv[]) {
	Board myBoard;
	int usrX, usrY = -1;

	while ( myBoard.unsunkShipCount() > 0 ) {
		myBoard.display();
		do 
		{
			cout << "Input an X and Y value (0 to 9):" << endl;
			cin >> usrX >> usrY;
			cin.clear();	
			cin.ignore(256,'\n'); 
			if ( (usrX > 9 || usrX < 0) || (usrY > 9 || usrY < 0) )
				cout << "I see we need to try that again ..." << endl;
		} while ( (usrX > 9 || usrX < 0) || (usrY > 9 || usrY < 0) );
		myBoard.fireShot(usrX, usrY);
	}
	cout << "Congratulations, you sunk the last ship and won the game!" << endl;
	myBoard.display();

	return 0;
}
