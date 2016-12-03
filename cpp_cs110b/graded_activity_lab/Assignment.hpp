#ifndef ASSIGNMENT_HPP
#define ASSIGNMENT_HPP

class Assignment: public GradedActivity {
private:
	int functionalityScore;
	int efficiencyScore;
	int styleScore;
public:
	void set(int functionality, int efficiency, int style);

};

#endif