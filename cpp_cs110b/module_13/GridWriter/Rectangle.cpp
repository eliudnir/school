//
//  Rectangle.cpp
//  GridWriter
//
//  Created by Jason Schatz on 5/3/13.
//  Copyright (c) 2013 Jason Schatz. All rights reserved.
//

#include "Rectangle.h"

Rectangle:: Rectangle(int x, int y, int width, int height) : Shape(x, y) {
    this->width = width;
    this->height = height;
}

bool Rectangle::containsPoint(int x, int y) {
    return  x >= this->x && x <= (this->x + width) &&
            y >= this->y && y <= (this->y + height);
}

double Rectangle::getArea() {
    return height * width;
}
