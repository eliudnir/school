#ifndef RECTANGLE_HPP
#define RECTANGLE_HPP

#include "TestRect.hpp"

class Rectangle {
private:
	static double yardsAvail;
	static int numRectangles;
	double width;
	double length;
	char *name;
	void initName(char *n);

public:
	Rectangle();
	Rectangle(double w, double l, char *n);
	~Rectangle();
	void setName(char *n);
	void setWidth(double d); 
 	void setLength(double d); 
 	void setWidth(char *c); 
 	void setLength(char *c);
 	int getNumRectangles() const { return numRectangles; };
 	double getWidth() const { return width; }; 
 	double getLength() const { return length; };
 	double getArea() const { return getWidth() * getLength(); };
	void printName() const;
	Rectangle(Rectangle &r);
	Rectangle &operator=(const Rectangle &r);
	bool operator<(const Rectangle &r);
	bool operator>(const Rectangle &r);

	static void setYards(double yards);
	friend class TestRect;
	friend bool TestRect::tester(Rectangle &r);
	friend bool TestRect::enoughYards(double w, double l);
};

#endif
