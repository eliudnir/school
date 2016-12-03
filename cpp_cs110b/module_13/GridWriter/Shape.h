//
//  Shape.h
//  GridWriter
//

#ifndef GridWriter__Shape__H
#define GridWriter__Shape__H

#include <iostream>

class Shape
{

  protected:
    int x;
    int y;

  public:
    Shape(int x, int y) {
        this->x = x;
        this->y = y;
    }
    
    void setX(int value) {x = value;}
    int getX() {return x;}
    
    void setY(int value) {y = value;}
    int getY() {return y;}
    
    virtual bool containsPoint(int x, int y) = 0;
    virtual double getArea() = 0;
};

#endif
