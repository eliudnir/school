/*
    Tor Hagen
    CS110A Finel Project Game 2015 summer
    Instructor:
    JoAnne Strickland
|
    Play a game of 21/blackjack against the computer
|
    To compile and play:
    make && ./blackjack
    at the terminal prompt
|
    Inputs:
      Hours of caffeinated coding
    Outputs:
      Mere minutes of mild entertainment
*/

#include <iostream>
#include <algorithm>                                // So we can talk to the terminal command line
#include <cstdlib>                                  // So we get access to the system("clear") function -yeah i'm a bad citizen
#include <vector>

#include "./headers/card.hpp"                          // someone's poorely written header files, dubious at best
#include "./headers/deck.hpp"                          // think about this, would you import a students headers blindly? :P
                                                      // the code in there coud be crazy bad, in fact it probably is.
using namespace std;                                   // we're sticking with std even though I'll probably get pelted for it

void mainMenu();                                        // forward declare of our menu function
void aboutInfo();                                       // forward declare for about output function
void hitOrStay();                                       // helper for hitting or staying :)
void showHandNames(vector<Card> inputHand);             // loops hands and cout's their strings
int getChoice(int minNum, int maxNum);                  // forward declare for our select funct for the menu
void playGame();                                        // forward declare for hopefully obvious function
int showHandValues(vector<Card> inputHand);             // declare for the return function outputting blackjack hand values
bool descend(int i, int j) { return i > j; }            // inline helper function to reverse sort order, sneaky kung-fu

int main()
{
  srand(time(NULL));                                        // set the random seed
  int menuChoice;                                             // variable to hold users main menu choice
  system("clear");                                              // clear the terminal
                                                                // this do-while shows the menu and loops until 3
  do
  {
    mainMenu();
    menuChoice = getChoice(1, 3);
    switch (menuChoice) // simple main menu
    {
      case 1:
        playGame();                                             // play some blackjack!
        break;

      case 2:
        aboutInfo();                                          // show the about screen
        break;
    }
  }
  while (menuChoice != 3);
  system("clear");                                        // clear the term
  cout << "\nOK, quitting to term.\n" << endl;            // quitting
  return 0;                                               // good citizen OS exit signal
}

void mainMenu()                                        // shows the main menu
{
  system("clear");
  cout << "\n\nMake a choice:\n";
  cout << "1. Play a game\n";
  cout << "2. About\n";
  cout << "3. Quit\n\n";
}

void aboutInfo()                                      // helper to show about screen and pause for input
{
  system("clear");
  cout << "\n\n\nA simple card game for CS110A @ CCSF Summer 2015.\n\n\n";
  cout << "Ran out of time and made a lot of bad code.\n\n\n";
  cout << "Have a good rest of the summer everyone!\n\nKeep Coding!\n\n";
  cout << "Written by: \nTor Hagen\n\n";
  cout << "Instructor: \nJoAnne Strickland\n";
  cout << "\n\n\n\t\t\tPress Any Key To Continue\n" << endl;
  system("read");
}

void hitOrStay()
{
  cout << "Do you want to Hit (1) or Stay (2)?\n"; // yeah, what is this?
}

void showHandNames(vector<Card> inputHand)        // just input a hand and itll print out the cards
{
  int cardNums = inputHand.size(); // number of cards in the hand
  //cout << "You have the following cards: \n";
  for (int i = 0; i < cardNums; i++) // loop over the cards
  {
    cout << "Card " << i+1 << ": " << inputHand[i].getCardFullName() << "\n"; // output the cards in the hand
  }
}

int showHandValues(vector<Card> inputHand)        // should really be "get" (returns int) but I guess I wrote this before coffee
{
  //sort the hand from graetest to least so we deal with aces last -- read on in commennts for more
  int numCards = inputHand.size();
  vector<int> cardValues;     // a vector list of the card values 1-13
  int handValue = 0;      // we'll set this as we make decisions in the algorithm below

  for (int i = 0; i < numCards; i++)  // first we loop over the cards
    cardValues.push_back( inputHand[i].getCardValue() ); // input each cards value (1-13) into a vector
  sort(cardValues.begin(), cardValues.end(), descend);   // then we sort the vedtor, neat little trick to push aces to the end of the hands

  for (int y = 0; y < numCards; y++) // and now we loop that descending list of cards and determine the value of the hand, sneaky huh?
  {
    if( handValue <= 10 && cardValues[y] == 1)    // first we check if, at this position in the loop, our hand is <=10 and if the card is an ace
      handValue += 11;                            // cause then it would be worth 11
    else if ( handValue > 10 && cardValues[y] == 1) // else we do this again checking if our hand is >10 and it's an ace
      handValue += 1;                               // cause then it would be worth 1 instead, see?
    else if ( cardValues[y] > 10 )                // and other values over 10 become
      handValue += 10;                             // voila, 10
    else                                            // and in all other cases we get
      handValue += cardValues[y];                   // the number of the beast, cough, card.
  }
  return handValue; // now that we've looped the hand and the card values and figured out things, we return the calculated integer
}

int getChoice(int minNum, int maxNum)       // this function returns the users menu choice as an integer
{
  int input;
  // Get and validate the input
  cin >> input;
  while (input < minNum || input > maxNum)
  {
    cin.clear();                                                // clear input
    cin.ignore(256,'\n');                                   // and ignore so as to avoid a nasty loop if non-integer input is done
    cout << "Invalid input. Enter an integer between " << minNum << " and " << maxNum << ": ";
    cin >> input;
  }
  return input;
}

void playGame()                             // the horror of cyanide laden spaghetti that is the game itself
{
  system("clear");
  Deck myDeck;          // we're not getting far without making ourselves a deck of cards.
  myDeck.shuffleDeck(); // we want random order for the deck, right? :)
  vector<Card> player;  // we need something to put player cards in
  vector<Card> dealer;  // and something to put dealer cards in
  int playerChoice;     // great to know if you want to stay or hit I guess
  bool staying = 0;     // bools are true or false I think, I think 0 means true... I think... :P
  int currHandVal;      // current hand value for the player
  int dealerHandVal;    // dealers hand value

  cout << "The game starts and the dealer draws two cards and places \n" <<
          "one card face up on the felt and the other card face down.\n";
  Card dealerFaceUp = myDeck.dealCard();      // set the initial game state
  Card dealerFaceDown = myDeck.dealCard();    // more of initial game state
  dealer.push_back( dealerFaceUp );           // etcetera
  dealer.push_back( dealerFaceDown );         // rinse and repeat
  cout << "The dealers first card is the " << dealer[0].getCardFullName() << ".\n\n";
  cout << "It's your turn, punk. Do you feel lucky?!\n\n";    // finally players turn!!
  cout << "The dealer gives you two cards...\n\n";
  Card playerFirstCard = myDeck.dealCard();                     // more game state setup
  Card playerSecondCard = myDeck.dealCard();                    // and more - you're given 2 cards as well, see?
  player.push_back( playerFirstCard );
  player.push_back( playerSecondCard );
  while (!staying)
  {      // while the player hasn't signaled he/she wants to hold/stay yet, run this
    do
    {                     // yeah it's a little confusing but I jump from a while straight into a do-while, this is called "spaghetti" pattern by sane people
      showHandNames( player );    // show the players hand
      cout << "Your current blackjack hand is: " << showHandValues( player ) << "\n\n";  // and blackjack hand
      currHandVal = showHandValues( player ); // and we have to update our variable
      if (currHandVal > 21)   // now if we busted out, we signal that and quit in this if
      {
        cout << "\n\tOh dear!\n\n\n\t\tYou busted, ha!\n\n\nHilarious.\n\n\n";
        exit(1);
      }
      hitOrStay();          // if we didn't bust out above, we ask if player wants more cards
      playerChoice = getChoice(1, 2);
      if (playerChoice == 1)  // and if he/she does
      {
        Card nCard = myDeck.dealCard();  // we obey
        player.push_back( nCard );    // and give more cards from our deck of many such cards
      }
    } while(playerChoice != 2); // so here's the other end of the do-while we jumped straight into
    staying = 1; // player stays, switches the bool to 1 and our while stops.
    cout << "\nOK, staying.\n\n";
    //currHandVal = showHandValues( player ); // needed ? we shall see in a bit -- and it's OUT!
  }
  // dealers turn
  cout << "The dealer flips over the other card and reveals the\n" <<
  dealerFaceDown.getCardFullName() << ".\n\n";
  dealerHandVal = showHandValues( dealer ); // update the dealers hand
  cout << "The dealer now has:\n"; // and show + tell
  showHandNames( dealer );
  cout << "Dealers blackjack hand is: " << dealerHandVal << ".\n\n"; // and our blackjack value
  if (dealerHandVal > currHandVal) // heyo we have a winner
  {
    cout << "Dealer wins this one, ha-ha!\n\n";
    exit(1);
  }
  else if (dealerHandVal == currHandVal && dealerHandVal >= 17) // push, dealer and player have same hand value
  {
    cout << "It's a push!\nPlay again :)\n\n";
    exit(1);
  }
  else if (dealerHandVal >= 17) // this is where the dealer stops hitting, so you win I guess
  {
    cout << "Dealer rules say stop at 17, you win!\n\n";
    exit(1);
  }
  else // trailing else clause setting up a while loop, have you ever seen such nonsense?
  {
    while(dealerHandVal < currHandVal) // and then basically catching all cases like cave-man in the while? yeah this is mad :P
    {                                  // while dealers hand is less than ours tho, we want the dealer to keep hitting (if he's not already hit 17)
      Card dCard = myDeck.dealCard(); // more cards for the dealer
      cout << "The dealer hits again and gets the " << dCard.getCardFullName() << ".\n";
      dealer.push_back( dCard ); // into the dealer vector the card goes
      showHandNames( dealer ); // and we gotta show you what the dealer now has as well
      dealerHandVal = showHandValues( dealer ); // and update the dealers hand value
      cout << "The dealers blackjack hand is: " << dealerHandVal << ".\n\n"; // and tell you that as well (blackjack hand val)
      // these if clauses then basically catch the trailing cases where the dealer can win, lose or push the game.
      if(dealerHandVal > 21)
      {
        cout << "Dealer is bust!\n\n\t\tYou WIN!\n\n";
        exit(1);
      }
      if(dealerHandVal > currHandVal)
      {
        cout << "Dealer wins!\n\n\t\tToo bad, loser. Ha!\n";
        exit(1);
      }
      if(dealerHandVal == currHandVal)
      {
        cout << "It's a puuuush! Try again.\n\n";
        exit(1);
      }
      if(dealerHandVal >= 17)
      {
        cout << "Dealer rules say stop at 17, you win!\n\n";
        exit(1);
      }
    }
  }
}
