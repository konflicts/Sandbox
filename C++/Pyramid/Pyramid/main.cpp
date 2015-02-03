//
//  main.cpp
//  Pyramid
//
//  Created by Pedro Pena on 2/26/14.
//  Copyright (c) 2014 Pedo Peña. All rights reserved.
//

#include <iostream>
#include <string>
#include <iomanip>

int main(int argc, const char * argv[])
{
    using namespace std;
    
    
    string pyramidStr = "*";
    
    for (int i=0; i < 10; i++) {
        
        
        cout<< setw(10 + i/2) << pyramidStr << endl;
        
        pyramidStr = pyramidStr + "*";
        
        
        
    }

  
}

