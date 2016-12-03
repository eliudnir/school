//
//  GridWriter.cpp
//  GridWriter
//

#include "GridWriter.h"
#include "Shape.h"

const int INITIAL_CAPACITY = 4;

GridWriter::GridWriter(){
    size = 0;
    capacity = INITIAL_CAPACITY;
    shapes = new Shape*[capacity];
}

GridWriter::GridWriter(const GridWriter &g) {
    size = g.size;
    capacity = g.capacity;
    shapes = new Shape*[capacity];
    
    // copy the shape pointers
    for (int i = 0; i < g.size; i++) {
        shapes[i] = g.shapes[i];
    }
}

GridWriter::~GridWriter(){
    delete [] shapes;
}


GridWriter& GridWriter::add(Shape *s){
    
    // Make sure that we have room
    if (size >= capacity) {
        doubleArrayCapacity();
    }
    
    // save the pointer into the array of Shape pointers
    shapes[size] = s;
    size++;
    
    // Return this to allow for chaining
    return *this;
}

Shape& GridWriter::get(int index) const{
    return *shapes[index];
}

// 

void GridWriter::display(int rowCount, int columnCount) {
    
    for (int r = rowCount; r >= 0; r--) {
        for (int c = 0; c < columnCount; c++) {
            
            int count = numberOfShapesCoveringPoint(c, r);
            
            if (count == 0) {
                std::cout << ". ";
            } else {
                std::cout << count << ' ';
            }
        }
        
        std::cout << std::endl;
    }
}



//
// Private Helpers
//

void GridWriter::doubleArrayCapacity() {

    // int the capacity
    capacity *= 2;
    
    // allocate a new array
    Shape** newArray = new Shape*[capacity];
    
    // copy the shape pointers
    for (int i = 0; i < size; i++)
        newArray[i] = shapes[i];
    
    // delete the old array
    delete [] shapes;
    
    // save the address of the new array into shapes
    shapes = newArray;
    
}

int GridWriter::numberOfShapesCoveringPoint(int x, int y) {
    int count = 0;
    
    for (int i = 0; i < size; i++) {
        if (shapes[i]->containsPoint(x, y)) {
            count++;
        }
    }
    
    return count;
}
