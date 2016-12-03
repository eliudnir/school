//
//  Circle.h
//  GridWriter
//

#ifndef GridWriter__Circle__H
#define GridWriter__Circle__H

#include "Shape.h"

class Circle : public Shape
{
  private:
    int radius;
    
  public:
    Circle(int x, int y, int radius);

    void setRadius(int value ) {radius = value;}
    int getRadius() {return radius;}

    void setX(int value) {x = value;}
    int getX() {return x;}

    void setY(int value) {y = value;}
    int getY() {return y;}

    bool containsPoint(int x, int y);
    double getArea();
};


#endif