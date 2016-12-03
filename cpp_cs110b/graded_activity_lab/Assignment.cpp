#include "GradedActivity.hpp"
#include "Assignment.hpp"

void Assignment::set(int functionality, int efficiency, int style) {
	functionalityScore = functionality;
	efficiencyScore = efficiency;
	styleScore = style;
	this->setScore(functionality + efficiency + style);
}