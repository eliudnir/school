//
//  Point.h
//  Battleship
//

#ifndef POINT_H
#define POINT_H

class point
{
  private:
    
    int x;
    int y;
    
  public:
    point() {
        x = 0;
        y = 0;
    }
    
    point(int xValue, int yValue) {
        x = xValue;
        y = yValue;
    }
    
    bool operator==(const point &p) const {
        return (x == p.x) && (y == p.y);
    }
    
    void setX(int value) {
        x = value;
    }
    
    int getX() const {
        return x;
    }
    
    void setY(int value) {
        y = value;
    }
    
    int getY() const {
        return y;
    }
    
};

#endif
