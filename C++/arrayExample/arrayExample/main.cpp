//
//  main.cpp
//  arrayExample
//
//  Created by Pedro Pena on 9/3/14.
//  Copyright (c) 2014 Pedo Peña. All rights reserved.
//

#include <iostream>
using namespace std;

void changeArrayValues(int * arrayToChange[5], int i);

int main(int argc, const char * argv[])
{
    int myArray[5]={1,2,3,4,5};
    int *myPointer[5];
    
    for(int i=0; i<=4; i++)
    {
        myPointer[i] = &myArray[i];
    }
    
    cout<< "BEFORE:"<<endl;
    
    for(int i=0; i<=4; i++)
    {
        cout << myArray[i]<<endl;
    }
    
    
    for(int i=0; i<=4; i++)
    {
        changeArrayValues(myPointer,i);
    }
    cout<< "AFTER:"<<endl;
    
    for(int i=0; i<=4; i++)
    {
        cout << myArray[i]<<endl;
    }

    
    return 0;
}

void changeArrayValues(int * arrayToChange[5], int i)
{    *arrayToChange[i] = i + 6;
   
}