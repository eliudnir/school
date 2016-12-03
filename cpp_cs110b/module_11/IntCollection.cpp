// IntCollection class implementation
// CS 110B Max Luttrell

#include "IntCollection.hpp"

#include <stdlib.h>
#include <iostream>

using namespace std;

IntCollection::IntCollection()
{
  //initialize member data to reflect an empty IntCollection
  size = capacity = 0;
  data = NULL;
}

IntCollection::~IntCollection() 
{
  if(data != NULL)
    delete [] data;
  data = NULL;
}

IntCollection::IntCollection(const IntCollection &c) 
{
  size = c.size;
  capacity = c.capacity;
  data = new int[capacity];
  for (int i = 0; i < size; ++i)
  {
    data[i] = c.data[i];
  }
}

IntCollection& IntCollection::operator=(const IntCollection &c) 
{
  if (&c != this) {
    size = c.size;
    capacity = c.capacity;
    
    if(data != NULL) {
      delete [] data;
      data = NULL;
    }
  
    data = new int[capacity];
    for (int i = 0; i < size; ++i)
    {
      data[i] = c.data[i];
    }
  }
  return *this;
}

bool IntCollection::operator==(const IntCollection &c) 
{
  bool returnVal = false;

  if (size == c.size) 
  {
    int orgCopy[size];
    int cmpCopy[size];
    int temp;
    // copy into scope
    for (int i = 0; i < size; ++i)
    {
      orgCopy[i] = data[i];
      cmpCopy[i] = c.data[i];
    }
    // sort
    for (int i = 0; i < size-1; ++i)
    {
      for (int j = (i+1); j < size; ++j)
      {
        if(orgCopy[i] < orgCopy[j]) 
        {
          temp = orgCopy[i];
          orgCopy[i] = orgCopy[j];
          orgCopy[j] = temp;
        }
        if(cmpCopy[i] < cmpCopy[j]) 
        {
          temp = cmpCopy[i];
          cmpCopy[i] = cmpCopy[j];
          cmpCopy[j] = temp;
        }
      }
    }
    // determine bool return
    for (int i = 0; i < size; ++i)
    {
      if (orgCopy[i] == cmpCopy[i])
      {
        returnVal = true;
      }
      else
      {
        return false;
      }
    }
  }
  return returnVal;
}

IntCollection& IntCollection::operator<<(int value) {
  if(size == capacity) 
    addCapacity();
  data[size++] = value;
  return *this;
}

void IntCollection::addCapacity()
{
  //create a new, bigger buffer, copy the current data to it, delete 
  //the old buffer, and point our data pointer to the new buffer
  //
  //note: there is a more efficient way to do this using the C 
  //memory management function realloc(), but that is beyond the 
  //scope of our course
  int *newData;
  capacity += CHUNK_SIZE;
  newData = new int[capacity];
  for (int i=0; i<size; i++)
    newData[i] = data[i];
  delete [] data;
  data = newData;
}

void IntCollection::add(int value)
{  
  //first, allocate more memory if we need to
  if (size == capacity)
    addCapacity();

  //now, add the data to our array and increment size
  data[size++] = value;
}

int IntCollection::get(int index)
{  
  if (index<0 || index>=size)
  {
  	cout << "ERROR: get() trying to access index out of range.\n";
  	exit(1);
  }
  return data[index];
}

int IntCollection::getSize()
{
	return size;
}

