//
//  PointCollection.h
//  Battleship
//

#ifndef POINT_COLLECTION_H
#define POINT_COLLECTION_H

#include "Point.h"

class PointCollection
{
private:
    int size;
    int capacity;
    point* data;
    
    void doubleArraySize();
    
public:
    //default constructor
    PointCollection();
    //copy constructor
    PointCollection(const PointCollection& c);
    //destructor
    ~PointCollection();

    //member functions
    void add(const point &p);
    point& get(int index) const;
    
    int getSize() const;
    
    bool contains(const point &p) const;
    
    PointCollection& operator<<(const point &p);
    point& operator[](int index) const;
    const PointCollection& operator=(const PointCollection &c);
};

#endif
