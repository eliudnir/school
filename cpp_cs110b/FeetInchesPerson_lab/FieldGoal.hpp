#ifndef FIELDGOAL_HPP
#define FIELDGOAL_HPP

class FieldGoal {
private:
	int fieldGoals;
	int attempts;
public:
	FieldGoal() { fieldGoals = attempts = 0; }
	FieldGoal(int fg, int at) { fieldGoals = fg; attempts = at; }
	operator double();
};

#endif