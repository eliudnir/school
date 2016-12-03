
#include "PointCollection.h"
#include "Ship.h"
#include "Board.h"
#include <iostream>

using namespace std;

void testContains(const Ship &s, int x, int y, bool desiredResult, int num) {
	point p(x, y);

	if (s.containsPoint(p) != desiredResult)
		cout << "Problem with contains test " << num << endl;
}

void testThreeArgConstructorAndContainsPoint() {
	point origin(0, 0);
	Ship s1(origin, HORIZONTAL, 3);
	Ship s2(origin, VERTICAL, 4);

	testContains(s1, 0, 0, true, 0);
	testContains(s1, 1, 0, true, 1);
	testContains(s1, 2, 0, true, 2);
	testContains(s1, 3, 0, false, 3);
	testContains(s2, 0, 0, true, 4);
	testContains(s2, 0, 1, true, 5);
	testContains(s2, 0, 2, true, 6);
	testContains(s2, 0, 3, true, 7);
	testContains(s2, 0, 4, false, 8);
	testContains(s2, 1, 1, false, 9);
	testContains(s1, -1, 0, false, 10);
	testContains(s2, 0, -1, false, 11);
}

void testCopyAssignmentAndConstructor() {
	point origin(0, 0);
	Ship s1(origin, HORIZONTAL, 3);
	Ship s2(s1);

	testContains(s2, 0, 0, true, 20);
	testContains(s2, 1, 0, true, 21);
	testContains(s2, 2, 0, true, 22);
	testContains(s2, 3, 0, false, 23);
}

void testCollidesWith() {
	point origin(0, 0);

	Ship s1(origin, HORIZONTAL, 3);
	Ship collisionShip(origin, VERTICAL, 4);

	if (!s1.collidesWith(collisionShip))
		cout << "problem with collides with 1" << endl;

	point oneOne(1, 1);
	Ship noCollisionShip(oneOne, HORIZONTAL, 3);

	if (s1.collidesWith(noCollisionShip))
		cout << "problem with collides with 2" << endl;
}

void testHitMethods() {
	point origin(0, 0);
	point somep(1, 0);
	point nextp(2, 0);
	Ship s1(origin, HORIZONTAL, 3);

	point p = origin;

	s1.shotFiredAtPoint(p);
	s1.shotFiredAtPoint(somep);
	s1.shotFiredAtPoint(nextp);
	if (s1.hitCount() != 3) cout << "Problem: hitCount 1" << endl;
	if (!s1.isSunk()) cout << "Problem with isSunk 1" << endl;

	// Further testing required
}

// We will be writing a one player version of the Battleship game in which
// the computer randomly places four ships of lengths 2-5, and the user tries
// to sink the ships.  The program will be written over the course of two
// assignments.  You do not need to write the complete game this week

int main(int argc, char const *argv[]) {
	// testHitMethods();
	// testCollidesWith();
	// testCopyAssignmentAndConstructor();
	// testThreeArgConstructorAndContainsPoint();

	Board myBoard;

	while ( !myBoard.gameOver() ) {
		myBoard.printBoard();
		myBoard.getUserInput();
		myBoard.shipsLeft();
	}

	return 0;
}
