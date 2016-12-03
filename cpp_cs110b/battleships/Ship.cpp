//
//  Ship.cpp
//  Battleship
//

#include "Ship.h"

//*******************************************************************************************
//	constructor, takes 3 arguments and sets up a Ship object
//*******************************************************************************************

Ship::Ship(point originPoint, direction o, int l) 
{
	origin.setX( originPoint.getX() );
	origin.setY( originPoint.getY() );
	orientation = o;
	length = l;
	points.add(origin);

	for (int i = 1; i < length; ++i)
	{
		if(orientation == HORIZONTAL) {
			int nX = origin.getX() + i;
			int nY = origin.getY();
			point tp(nX, nY);
			points.add(tp);
		}
		else
		{
			int nX = origin.getX();
			int nY = origin.getY() + i;
			point tp(nX, nY);
			points.add(tp);	
		}
	}
}

//*******************************************************************************************
// A constructor that takes another, whoa
//*******************************************************************************************

Ship::Ship(const Ship& s) 
{
 	length = s.length;
 	orientation = s.orientation;

 	origin.setX( s.origin.getX() );
 	origin.setY( s.origin.getY() );

 	points = s.points;
	hits = s.hits;
}

//*******************************************************************************************
// Contains Point
// if a ship contains a point or not
//*******************************************************************************************

bool Ship::containsPoint(const point& p) const
{
	return points.contains(p) ? true : false;
}

//*******************************************************************************************
// Collides With
// if a ship collides with said ship or not
//*******************************************************************************************

bool Ship::collidesWith(const Ship& s) const
{
	for (int i = 0; i < points.getSize(); ++i)
	{
		if( s.containsPoint( points.get(i) ) )
			return true;
	}
	return false;
}

//*******************************************************************************************
// Shot Fired At Point
// how we fill our hits PointCollection
// (making sure to test that the point we're shooting at hasn't been hit before) this is 
// redundant for the sake of the map, but we don't want to keep adding to our hits either
//*******************************************************************************************

void Ship::shotFiredAtPoint(const point& p)
{
	if (this->containsPoint(p) && !this->isHitAtPoint(p))
		hits.add(p);
}

//*******************************************************************************************
// Is Hit At Point
// helper that let's us know if a ship is hit at a point or not
//*******************************************************************************************

bool Ship::isHitAtPoint(const point& p)
{
  return hits.contains(p) ? true : false;
}

//*******************************************************************************************
// Hit Count
// yeah this is fairly straight forward, should probably be an inline in the .h tbh...
//*******************************************************************************************

int Ship::hitCount() const
{
  return hits.getSize();
}

//*******************************************************************************************
// Operator =
// = assignment operator
//*******************************************************************************************

const Ship& Ship::operator=(const Ship& s)
{

	if (&s != this)
	{
		length = s.length;
		orientation = s.orientation;
		origin.setX( s.origin.getX() );
		origin.setY( s.origin.getY() );
		points = s.points;
		hits = s.hits;
	}

	return *this;
}


//*******************************************************************************************
//  Is Sunk
//  helper that let's us determine in a ship is still in play or not.
//*******************************************************************************************

bool Ship::isSunk() 
{
	return this->hitCount() == points.getSize() ? true : false;	
}











