//
//  Circle.cpp
//  GridWriter
//

#include <math.h>
#include "Circle.h"


Circle::Circle(int x, int y, int radius) : Shape(x, y) {
    this->radius = radius;
}

bool Circle::containsPoint(int x, int y) {
    int dx = this->x - x;
    int dy = this->y - y;
    
    return pow(radius, 2) >= (pow(dx, 2) + pow(dy, 2));
}

double Circle::getArea() {
    return pow(radius, 2) * M_PI;
}
