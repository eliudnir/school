#include <iostream>

#include "NumberGuesser.h"
#include "RandomNumberGuesser.h"

using namespace std;

int main(int argc, char const *argv[])
{
	NumberGuesser *ng = new RandomNumberGuesser(1, 10);

	cout << "The following four calls to getCurrentGuess should all be the same result: " << endl;
	cout << ng->getCurrentGuess();
	cout << endl;
	cout << ng->getCurrentGuess();
	cout << endl;
	cout << ng->getCurrentGuess();
	cout << endl;
	cout << ng->getCurrentGuess();
	cout << endl;
	cout << ng->getCurrentGuess();
	cout << endl;

	cout << "Calling higher() once ... " << endl;
	ng->higher();

	cout << "The following three calls to getCurrentGuess() should be the same as well: " << endl;
	cout << ng->getCurrentGuess();
	cout << endl;
	cout << ng->getCurrentGuess();
	cout << endl;
	cout << ng->getCurrentGuess();
	cout << endl;

	cout << "Calling lower() once ..." << endl;
	ng->lower();
	
	cout << "The following three calls to getCurrentGuess() should be the same as well: " << endl;
	cout << ng->getCurrentGuess();
	cout << endl;
	cout << ng->getCurrentGuess();
	cout << endl;
	cout << ng->getCurrentGuess();
	cout << endl;

	cout << "OK testing the reset() method now: " << endl;
	ng->reset();
	cout << "New guess twice, should both be same: " << endl;
	cout << ng->getCurrentGuess();
	cout << endl;
	cout << ng->getCurrentGuess();
	cout << endl;
	cout << "Calling higher() once again: " << endl;
	ng->higher();
	cout << "And showing new guess: " << endl;
	cout << ng->getCurrentGuess() << endl;

	delete ng;
	ng = NULL;

	return 0;
}