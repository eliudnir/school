//
//  Rectangle.h
//  GridWriter
//

#ifndef GridWriter__Rectangle__H
#define GridWriter__Rectangle__H

#include "Shape.h"

class Rectangle : public Shape
{
  private:
    int width;
    int height;
    
  public:
    Rectangle(int x, int y, int width, int height);
    
    bool containsPoint(int x, int y);
    double getArea();
};

#endif