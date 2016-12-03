#ifndef GRADEDACTIVITY_HPP
#define GRADEDACTIVITY_HPP

class GradedActivity {
private:
	double score;

public:
	GradedActivity() { score = 0.0; }
	GradedActivity(double s) { score = s; }
	void setScore(double s) { score = s; }
	double getScore() { return score; }
	virtual char getLetterGrade() const;

};

#endif
