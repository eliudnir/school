#ifndef FEETINCHES_HPP
#define FEETINCHES_HPP

class FeetInches {
private: 
	int feet;
	int inches;
public:
	FeetInches() { feet = inches = 0; }
	FeetInches(int f, int i) { feet = f; inches = i; }
	void setFeet(int f) { feet = f; }
	void setInches(int i) { inches = i; }
	int getFeet() { return feet; }
	int getInches() { return inches; }
	operator double();
	operator int();

};

#endif