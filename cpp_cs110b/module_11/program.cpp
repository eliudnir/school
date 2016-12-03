/*
    Author:         Tor Hagen
    Class:          CS110B
    Date:           Wed. 18 Nov. 2015
    Instructor:     Max Luttrell
    NoF:            program.cpp 

    Description:
    This is our main program entry for testing the IntCollection class implementation
    It is just a procedural set of tests for functionality on the class implementation.

    Inputs:
    None

    Outputs:
    Testcase outputs for various operations on the IntCollection objects

*/

#include <iostream>

#include "IntCollection.hpp"

using namespace std;

int main(int argc, char const *argv[])
{
	IntCollection myCollection1;
	cout << "Created first IntCollection object" << endl;
	IntCollection myCollection2;
	cout << "Created second IntCollection object" << endl;

	cout << "Adding the values 3, 4, -555, 43, 4 to the first IntCollection object" << endl;
	myCollection1.add(3);
	myCollection1.add(4);
	myCollection1.add(-555);
	myCollection1.add(43);
	myCollection1.add(4);

	cout << "Creating a third IntCollection object that is a copy of the first IntCollection object" << endl;
	IntCollection myCollection3(myCollection1);

	cout << "Testing that the first and third IntCollection object are the same" << endl;
	int firstCollectionSize = myCollection1.getSize();

	for (int i = 0; i < firstCollectionSize; ++i)
	{
		if(myCollection1.get(i) == myCollection3.get(i)) 
			cout << "Number " << i+1 << " is the same in both IntCollection objects." << endl;
 		else 
 			cout << "We have a number that doesn't match at index: " << i << endl;
	}

	cout << "Adding 4, 98 to the third IntCollection object" << endl;
	myCollection3.add(4);
	myCollection3.add(98);

	cout << "Creating a fourth IntCollection, this one and the second one will be used to copy the third one using = operator" << endl; 
	IntCollection myCollection4 = myCollection2 = myCollection3;

	cout << "Testing that the second and fourth IntCollection object are the same as the third IntCollection object" << endl;
	int secondCollectionSize = myCollection2.getSize();

	for (int i = 0; i < secondCollectionSize; ++i)
	{
		if(myCollection2.get(i) == myCollection3.get(i) && myCollection2.get(i) == myCollection4.get(i)) 
			cout << "Number " << i+1 << " is the same in all three IntCollection objects." << endl;
 		else 
 			cout << "We have a number that doesn't match in one of the IntCollection objects at index: " << i << endl;
	}

	cout << "Testing the == operator on the first and second IntCollection objects" << endl;
	if(myCollection1 == myCollection2) {
		cout << "They have the same size and content" << endl;
	} 
	else {
		cout << "Their size or content differ" << endl;
	}
	cout << "Testing the == operator on the second and third IntCollection objects" << endl;
	if(myCollection3 == myCollection2) {
		cout << "They have the same size and content" << endl;
	} 
	else {
		cout << "Their size or content differ" << endl;
	}

	cout << "Destructor is added per code and cleans up any allocated memory for the objects created." << endl;
	//cout << "Illustrating that addCapacity is a private member function of IntCollection and not accessible from main() now" << endl;
	//myCollection1.addCapacity();

	return 0;
}