#include <iostream>
#include <stdlib.h>
#include <cstring>

#include "Rectangle.hpp"

int Rectangle::numRectangles = 0;
double Rectangle::yardsAvail = 0;

Rectangle::Rectangle() {
	width = 0;
	length = 0;
	numRectangles++;
	initName((char*)"Default");
}

Rectangle::Rectangle(double w, double l, char *n) {
	double yardsReqd = 2*w + 2*l; 
	
	if (yardsAvail - yardsReqd < 0) {
		std::cout << "ERROR: \"Yards Required\" bigger than \"Yards Available\"" << std::endl;
		exit(1);
	}
	width = w;
	length = l;
	numRectangles++;
	initName(n);
}

void Rectangle::initName(char *n) {
	name = new char[128];
	strcpy(name, n);
}

void Rectangle::setName(char *n) {
	strcpy(name, n);
}

void Rectangle::setWidth(double d) {
	if(d > 0.0) {
		width = d;	
	}
	else {
		std::cout << "ERROR: Width needs to be greater than 0.0!" << std::endl;
		exit(1);
	}
}

void Rectangle::setLength(double d) {
	if(d > 0.0) {
		length = d;	
	}
	else {
		std::cout << "ERROR: Length needs to be greater than 0.0!" << std::endl;
		exit(1);
	}
}

void Rectangle::setWidth(char *c) {
	double tmpWidth = atof(c);
	if(tmpWidth > 0.0) {
		width = tmpWidth;
	}
	else {
		std::cout << "ERROR: Width needs to be greater than 0.0!" << std::endl;
		exit(1);
	}
} 

void Rectangle::setLength(char *c) {
	double tmpLength = atof(c);
	if(tmpLength > 0.0) {
		width = tmpLength;
	}
	else {
		std::cout << "ERROR: Length needs to be greater than 0.0!" << std::endl;
		exit(1);
	}
}

void Rectangle::printName() const {
	std::cout << name;
}

Rectangle::~Rectangle() {
	delete [] name;
}

void Rectangle::setYards(double yards) {
	yardsAvail = yards;
}

Rectangle::Rectangle(Rectangle &r) {
	width = r.width;
	length = r.length;
	initName(r.name);
	numRectangles++;
}

Rectangle &Rectangle::operator=(const Rectangle &r) {
	length = r.length;
	width = r.width;
	strcpy(name, r.name);
	return *this;
}

bool Rectangle::operator<(const Rectangle &r) {
	return (r.getArea() > this->getArea()) ? true : false;
}

bool Rectangle::operator>(const Rectangle &r) {
	return (r.getArea() < this->getArea()) ? true : false;
}