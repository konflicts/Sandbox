//
//  main.cpp
//  RootsOfQuadratic
//
//  Created by Pedro Pena on 2/4/14.
//  Copyright (c) 2014 Pedo Peña. All rights reserved.
//

#include <iostream>

#include <cmath>

using namespace std;

int main(int argc, const char * argv[])
{
    double A,B,C, root1, root2, discriminant, denominator;
    
    
    // insert code here...
    cout << "Please Enter the coefficient of X^2 (A): \n";
    cin >> A;
    cout << "Enter the coefficient of X (B): \n";
    cin >> B;
    cout << "Please Enter the constant term. (C): \n";
    cin >> C;
    
    denominator = 2*A;
    discriminant = pow(B, 2.0) - 4 * A * C;
    
    std::cout<< "discriminant: "<<discriminant<<"\n";
    
    if (A != 0)
    {
        if (discriminant == 0)
        {
            root1 = -B/denominator;
            
            cout<< "Is single (repeated) root.\n";
            cout<< "root1 = "<<root1<<", root2 = "<<root1<<"\n";
        ;
            
        }
        else if (discriminant > 0)
        {
            root1 = (-B + sqrt(discriminant))/denominator;
            root2 = (-B - sqrt(discriminant))/denominator;
            
            cout<< "Is a two real roots.\n";
            cout<< "root1 = "<<root1<<", root2 = "<<root2<<"\n";

            
        }
        else
        {
            cout<<"Is a complex roots\n";
            
        }
    }
    else
    {
        std::cout << "Sorry,the value of A can't be zero (0) \n";
    }
    


    
    return 0;
}

