#include "TestRect.hpp"
#include "Rectangle.hpp"

bool TestRect::tester(Rectangle &r) {
	return (r.width > 0.0 && r.length > 0.0) ? true : false;
}

bool TestRect::enoughYards(double w, double l) {
	return (Rectangle::yardsAvail > (2*w + 2*l)) ? true : false;
}