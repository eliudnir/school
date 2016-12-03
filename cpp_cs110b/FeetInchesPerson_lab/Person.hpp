#ifndef PERSON_HPP
#define PERSON_HPP

#include "FeetInches.hpp"
#include "FieldGoal.hpp"

class Person {
private:
	std::string firstName;
	std::string lastName;
	FeetInches height;
	int weight;
	FieldGoal fieldGoals;

public:
	Person() { firstName = lastName = ""; weight = 0; }
	Person(std::string frName, std::string lsName, FeetInches h, int w, FieldGoal fg);
	~Person() { };
	void print();

};

#endif