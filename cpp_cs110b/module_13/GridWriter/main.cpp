//
//  main.cpp
//  GridWriter
//
//  Created by Jason Schatz on 5/3/13.
//  Copyright (c) 2013 Jason Schatz. All rights reserved.
//

#include <iostream>

#include "GridWriter.h"
#include "Shape.h"
#include "Circle.h"
#include "Rectangle.h"

int main() {
    
    GridWriter gw;
    
 //   Add some circles...
   	gw.add(new Circle(10, 10, 9));
   	gw.add(new Circle(25, 20, 12));
   	gw.add(new Circle(25, 20, 5));
    
    // Add a rectangle...
    gw.add(new Rectangle(40, 0, 10, 10));
    
    // Display the grid with 40 rows and 50 columns
    gw.display(40, 50);
}
