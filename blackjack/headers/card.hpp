/*
  Tor Hagen
  CS110A CCSF
  Summer 2015
  Final Project
|
  class definition for a playing card in meh game.
|
  Cards are cool creatures.
  a card has both a string and an integer associated with its Type (set and explaned in deck.hpp)
  :methods:
  getCardFullName() - gives the caller a string of the full name, card + suit
  getCardFaceName() - gives the caller a string of card name
  getCardSuitName() - gives the caller a string of the card suit name
  getCardSuitValue() - gives caller integer (1-4) corresponding to cards suit
  getCardValue() - gives caller an integer (1-13) corresponding to card value
*/
#ifndef CARD_HPP
#define CARD_HPP

class Card
{
  private:
    std::string suitName;
    std::string faceName;
    int suitValue;
    int cardValue;

  public:
    Card(std::string s, std::string f, int sv, int v)    // class constructor
    {
      suitName = s;
      faceName = f;
      suitValue = sv;
      cardValue = v;
    }

    std::string getCardFullName()
    {
      return faceName + " of " + suitName;
    }

    std::string getCardFaceName()
    {
      return faceName;
    }

    std::string getCardSuitName()
    {
      return suitName;
    }

    int getCardSuitValue()
    {
      return suitValue;
    }

    int getCardValue()
    {
      return cardValue;
    }

};

#endif
