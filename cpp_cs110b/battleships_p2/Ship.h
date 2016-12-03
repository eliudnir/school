//
//  Ship.h
//  Battleship
//

#ifndef SHIP_H
#define SHIP_H

#include <iostream>
#include "Point.h"
#include "PointCollection.h"

enum direction { HORIZONTAL, VERTICAL};

class Ship
{
  private:
    int length;
    direction orientation;
    point origin;
    
    PointCollection points;
    PointCollection hits;
    
  public:
    //constructors
    Ship(point originPoint, direction orientationDirection, int lengthValue);
    Ship(const Ship& s);
    
    //member functions
    bool containsPoint(const point& p) const;
    bool collidesWith(const Ship& s) const;
    
    void shotFiredAtPoint(const point& p);
    bool isHitAtPoint(const point& p);
    int hitCount() const;
    
    const Ship& operator=(const Ship& s);

    bool isSunk();
};

#endif