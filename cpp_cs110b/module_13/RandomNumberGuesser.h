/*
RandomNumberGuesser.h header file:

As specified by Instructor we can overwrite member methods of NumberGuesser Base-class:

#ifndef NUMBERGUESSER_H
#define NUMBERGUESSER_H

class NumberGuesser
{
  protected:
    int low;
    int originalLow;
    int high;
    int originalHigh;
    
  public:
    NumberGuesser(int l, int h) {
        low = originalLow = l; high = originalHigh = h;
    }

    // destructor for base-class is made virtual to avoid problems
    // in main when deleting pointer of instance to sub-class - 
    // this ensures we do not get "undefined" behaviour in said case. 
    virtual ~NumberGuesser() { }
    
    virtual int getCurrentGuess() {
        return (high + low) / 2;
    }
    
    // dynamic overwrite of higher() 
    virtual void higher() {
        low = getCurrentGuess() + 1;
    }
    // dynamic overwrite of lower()
    virtual void lower() {
        high = getCurrentGuess() - 1;
    }
    // dynamic overwrite of reset()
    virtual void reset() {
        low = originalLow; high = originalHigh;
    }
};

#endif

// Adding these modifications fixes a bug and ensures that we can instantiate the 
// sub-class as per requirement: NumberGuesser *ng = new RandomNumberGuesser(1, 10);
// and still dynamically get to the right resolution of functions.
*/

#ifndef RANDOMNUMBERGUESSER_H
#define RANDOMNUMBERGUESSER_H

// we need srand(), rand() and time()
#include <stdlib.h>     
#include <time.h>       

class RandomNumberGuesser : public NumberGuesser 
{
private:
	int currentGuess;
	int setCurrentGuess();

public:
	RandomNumberGuesser(int l, int h);

	int getCurrentGuess() { return currentGuess; }
	void higher();
	void lower();
	void reset();
};

#endif