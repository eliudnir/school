//
//  NumberGuesser.h
//  CS110B Max Luttrell
//

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