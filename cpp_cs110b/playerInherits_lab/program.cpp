#include <iostream>

#include "Player.hpp"
#include "BasketballPlayer.hpp"
#include "BaseballPlayer.hpp"

using namespace std;

int main(int argc, char const *argv[])
{
	Player *p;
	BasketballPlayer pointGuard("Stephen Curry", 190, 1.91, 2585, 5523);
	BaseballPlayer hitMan("Some Dude", 75, 1.87, 373, 105);

	cout << "Printing stats for BasketballPlayer!" << endl;
	p = &pointGuard;
	p->printStats();

	cout << "Printing stats for BaseballPlayer!" << endl;
	p = &hitMan;
	p->printStats();


	return 0;
}
