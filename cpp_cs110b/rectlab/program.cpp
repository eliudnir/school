#include <iostream>

#include "Rectangle.hpp"
#include "TestRect.hpp"

using namespace std;

int main(int argc, char const *argv[]) {
	
	// just setting vars and making objects to make sure it all works, no testing here yet.
	Rectangle::setYards(500);
	Rectangle r1(20, 20, (char*)"Test");
	Rectangle r2(20, 30, (char*)"test2");
	//TestRect tr;

	// sample of friend class tester method in use
	//cout << "Test1: " << tr.enoughYards(10, 10) << endl;

	if( r1 < r2 ) 
		cout << "WOOOO" << endl;
	else 
		cout << "BOOO" << endl;

	return 0;
}

