#include <iostream>

#include "Person.hpp"

using namespace std;

int main(int argc, char const *argv[]) {
	FeetInches height(6, 3);
	FieldGoal fgs(34, 60);
	Person someone("Tor", "Hagen", height, 190, fgs);
	
	someone.print();

	return 0;
}