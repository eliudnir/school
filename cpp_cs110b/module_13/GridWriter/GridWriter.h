//
//  GridWriter.h
//  GridWriter
//
//  Created by Jason Schatz on 5/3/13.
//  Copyright (c) 2013 Jason Schatz. All rights reserved.
//

#ifndef GridWriter__GridWriter__H
#define GridWriter__GridWriter__H

#include <iostream>
#include "Shape.h"

class GridWriter
{
  private:
    
    Shape** shapes;
    int size;
    int capacity;
    
    void doubleArrayCapacity();
    int numberOfShapesCoveringPoint(int x, int y);
    
  public:
    GridWriter();
    GridWriter(const GridWriter &g);
    ~GridWriter();
    
    GridWriter& add(Shape *s);
    Shape& get(int index) const;

    int getSize() const {return size;}
    int getCapacity() const {return capacity;};
    
    void display(int rowCount, int columnCount);
};

#endif