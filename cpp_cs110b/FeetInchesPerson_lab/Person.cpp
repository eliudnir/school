#include <iostream>

#include "Person.hpp"

Person::Person(std::string frName, std::string lsName, FeetInches h, int w, FieldGoal fg) {
	firstName = frName;
	lastName = lsName;
	height = h;
	weight = w;
	fieldGoals = fg;
}

void Person::print() {
	double fieldGoalPercentage = fieldGoals;
	std::cout << "Name: " << firstName << " " << lastName;
	std::cout << "\nHeight: " << height.getFeet();
	std::cout << "\'" << height.getInches() << "\" tall\n";
	std::cout << "Weight: " << weight<< " lbs.\n";
	std::cout << "Field goal percentage: " << fieldGoalPercentage <<"%\n";
}