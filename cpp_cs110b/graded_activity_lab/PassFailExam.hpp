#ifndef PASSFAILEXAM_HPP
#define PASSFAILEXAM_HPP

#include "GradedActivity.hpp"

class PassFailExam : public GradedActivity {
private:
  int numQuestions;
  int numMissed;
  int numToPass;

public:
  PassFailExam() { numQuestions = 0; numMissed = 0; numToPass = 0; };
  PassFailExam(int nq, int nm, int tp) : GradedActivity( (numQuestions-numMissed) ) { numQuestions = nq; numMissed = nm; numToPass = tp; };
  void set(int nq, int nm, int tp);
  char getLetterGrade() const;

};

#endif
