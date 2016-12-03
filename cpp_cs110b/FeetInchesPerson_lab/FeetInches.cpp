#include "FeetInches.hpp"

FeetInches::operator double() {
	return feet + (inches/12.0);
}

FeetInches::operator int() {
	return feet;
}