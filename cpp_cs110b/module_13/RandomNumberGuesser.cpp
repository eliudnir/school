// RandomNumberGuesser.cpp implementation
// Inherits from NumberGuesser

#include "NumberGuesser.h"
#include "RandomNumberGuesser.h"

RandomNumberGuesser::RandomNumberGuesser(int l, int h) : NumberGuesser(l, h) {
	srand( time(NULL) );
	low = originalLow = l; 
	high = originalHigh = h;
	currentGuess = setCurrentGuess();
};

int RandomNumberGuesser::setCurrentGuess() {
	return rand() % (high - low + 1) + low;
};

void RandomNumberGuesser::higher() {
	low = currentGuess + 1 > high ? high : currentGuess + 1;
	currentGuess = setCurrentGuess();
};

void RandomNumberGuesser::lower() {
	high = currentGuess - 1 < low ? low : currentGuess - 1;
	currentGuess = setCurrentGuess();
};

void RandomNumberGuesser::reset() {
	low = originalLow;
	high = originalHigh;
	currentGuess = setCurrentGuess();
};