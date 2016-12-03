/*
  Tor Hagen
  CS110A CCSF
  Summer 2015
  Final Project
|
  class definition for a deck of normal playing cards.
|
  a deck has 52 unique playing cards - a deck knows how many cards it has
  suits are numbered 1-4 as follows:
  1 = hearts
  2 = diamonds
  3 = clubs
  4 = spades
  and playing cards are numbered 1-13 where aces = 1 and kings = 13.
  :methods:
  shuffleDeck() - shuffles all the cards in the deck
  printDeck() - prints all the cards in the deck to cout, mostly a debug helper
  getCardsLeft() - returns the intger number of cards left in the deck
  dealCard() - returns a Card from the include card.hpp (explained there)
*/
#ifndef DECK_HPP
#define DECK_HPP

#include <iostream>
#include <vector>
#include <stdlib.h>
#include <algorithm>
#include <time.h>

#include "./card.hpp"

class Deck
{
  private:
    int cardsLeft;
    std::vector<Card> deck;

  public:
    Deck()                      // constructor for the class
    {
      static const int suitNums = 4;
      static const int suitCards = 13;
      std::string suits[suitNums] = {"hearts", "diamonds", "clubs", "spades"};
      std::string faceNames[suitCards] = {"ace", "two", "three", "four", "five", "six", "seven",
                                          "eight", "nine", "ten", "jack", "queen", "king"};
      deck.clear();
      for ( int i = 0; i < suitNums; i++ )
        for ( int y = 0; y < suitCards; y++ )
        {
          Card someCard( suits[i], faceNames[y], i + 1, y + 1 );
          deck.push_back( someCard );
        }
        cardsLeft = 52;
    }

    void shuffleDeck()
    {
      random_shuffle( deck.begin(), deck.end() );
    }

    // void resetDeck() // was going to make a reset function here but didn't need it and ran out of time
    // {
    //   deck.clear();
    // }

    void printDeck()
    {
      for (int i = 0; i < cardsLeft; i++)
        std::cout << "Card " << i+1 << ": " << deck[i].getCardFullName() << "\n";
    }

    int getCardsLeft()
    {
       return cardsLeft;
    }

    Card dealCard()
    {
      if (cardsLeft >= 1)
      {
        Card tempCard( deck[0].getCardSuitName(), deck[0].getCardFaceName(), deck[0].getCardSuitValue(), deck[0].getCardValue() );
        deck.erase( deck.begin() );
        cardsLeft--;
        return tempCard;
      }
      else
      {
        Card *ptr = NULL;
        std::cout << "No more cards in the deck. Make a new one or reset and shuffle this.\n";
        return *ptr; // and yes, while I complain I realize I have picazzo'ed my way up ****'s creek with a kinesis keyboard as a paddle....
        //this mess segfaults when the deck is empty, good that this is a single player game :S
      }
    }

};
#endif
