#include "FieldGoal.hpp"

FieldGoal::operator double() {
	return fieldGoals / (double)attempts; 
}