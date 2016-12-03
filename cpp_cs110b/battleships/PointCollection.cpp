//
//  PointCollection.cpp
//  Battleship
//

#include "PointCollection.h"
#include "Point.h"
#include <iostream>


//***************************************************************************
// Creates an empty Point Collection with a capacity of 4
//***************************************************************************

PointCollection::PointCollection()
{
    size = 0;
    capacity = 4;
    data = new point[4];
}

//***************************************************************************
// Copy Constructor
//***************************************************************************

PointCollection::PointCollection(const PointCollection &c) {
    *this = c;
}

//***************************************************************************
// Delete the data array
//***************************************************************************

PointCollection::~PointCollection()
{
    delete [] data;
}

//***************************************************************************
// Adds a point to the collection. Doubles the array size if necessary
//***************************************************************************

void PointCollection::add(const point &p)
{
    // Check to see if we need more space
    if (size == capacity)
    {
        doubleArraySize();
    }
    
    // Add the new value
    data[size] = p;
    size++;
}

//***************************************************************************
// Returns points by index
//***************************************************************************

point& PointCollection::get(int index) const
{
    return data[index];
}

//***************************************************************************
// Returns the number of points currently stored in the collection
//***************************************************************************

int PointCollection::getSize() const
{
    return size;
}

//***************************************************************************
// Returns true if the collection contains a point that matches the argument
//***************************************************************************

bool PointCollection::contains(const point &p) const
{
    
    for (int i = 0; i < getSize(); i++) {
        if (get(i) == p) {
            return true;
        }
    }
    
    return false;
}

//***************************************************************************
//  Inserts a point into the collection
//***************************************************************************

PointCollection& PointCollection::operator<<(const point &p)
{
    this->add(p);
    return *this;
}


//***************************************************************************
// Allows a PointCollection to be indexed like an array
//***************************************************************************

point& PointCollection::operator[](int index) const
{
    return this->get(index);
}

//***************************************************************************
// Sets the state of the receiving instance so that it matches the argument
//***************************************************************************

const PointCollection& PointCollection::operator=(const PointCollection &c)
{
    // deallocate the existing data
    delete [] data;
    
    // copy the primitive values
    size = c.size;
    capacity = c.capacity;
    
    // create a new data array with capacity to match c
    data = new point[c.capacity];
    
    // copy the points.
    for (int i = 0; i < size; i++)
    {
        data[i] = c.data[i];
    }
    
    // return the argument, to allow chaining of assignments
    return c;
}


//***************************************************************************
// Helper. Doubles the size of the data array and copies the values
//***************************************************************************


void PointCollection::doubleArraySize()
{
    // Allocate a new array, twice as big
    point *newArray = new point[capacity * 2];
    
    // Copy values from data to new array
    for (int i = 0; i < size; i++)
    {
        newArray[i] = data[i];
    }

    // delete old array
    delete [] data;
    
    // point data at the new array
    data = newArray;
    
    // double capacity value
    capacity *= 2;
}
