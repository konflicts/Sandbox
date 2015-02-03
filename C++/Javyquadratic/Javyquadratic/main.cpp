//
//  main.cpp
//  Javyquadratic
//
//  Created by Pedro Pena on 2/4/14.
//  Copyright (c) 2014 Pedo Peña. All rights reserved.
//

#include <iostream>
#include <cmath>
using namespace std;

int main(int argc, const char * argv[])
{
    
    int a,b,c;
    
    double disc;
    
    
    
    cout<<"ingrese tres coeficientes : "<<endl;
    cin>>a>>b>>c;
    
    
    disc  = b*b - 4*a *c;
    
    cout<<"discriminant"<< disc<<endl;
    
    
    
    if(disc == 0)
        cout<<"tien una raiz sencilla repetida"<<endl;
    else if (disc > 0)
        cout<<"tiene dos raices reales"<<endl;
    else
        cout<<"tiene dos raices complejas"<<endl;
    

    return 0;
}

