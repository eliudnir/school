#include "PassFailExam.hpp"

void PassFailExam::set(int nq, int nm, int tp) {
  double numericScore, pointsEach;

  numQuestions = nq;
  numMissed = nm;
  numToPass = tp;
  pointsEach = 100.0 / numQuestions;
  numericScore = 100.0 - (numMissed * pointsEach);
  setScore(numericScore);

}

char PassFailExam::getLetterGrade() const {
  //char c = ( numQuestions - numMissed >= numToPass ) ? 'P' : 'F';
  char c = 'F';
  int score = numQuestions - numMissed;

  if (score > numToPass)
    c = 'P';

  return c;
}
