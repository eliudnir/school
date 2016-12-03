#include <iostream>

#include "GradedActivity.hpp"
#include "PassFailExam.hpp"
#include "Assignment.hpp"

using namespace std;

int main(int argc, char const *argv[])
{
	PassFailExam quiz;
	GradedActivity *gaPtr = NULL;

	quiz.set(50, 3, 45);

	gaPtr = &quiz;

	cout << "We get lettered grade " << gaPtr->getLetterGrade() << endl;

	return 0;
}
