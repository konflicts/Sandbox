//
//  main.cpp
//  BinMan
//
//  Created by Pedro Pena on 10/25/13.
//  Copyright (c) 2013 3P. All rights reserved.
//

#include <iostream>

using namespace std;
int main()

{
    
    int nDeci;
    int nRestante;
    int nRestante1;
    int nRestante2;
    int nRestante3;
    int nRestante4;
    int nRestante5;
    int nRestante6;
    int a,b,c,d,e ,f,g,h;
    cout<<"ingrese un decimal: "<<endl;
    cin>>nDeci;
    
    if (nDeci>= 128){a = 1 ;nRestante = nDeci - 128; }
    
    
    
    else  {a = 0 ; nRestante = nDeci;}
    
    if(nRestante >= 64) {b = 1 ; nRestante1 = nRestante - 64;}
    
    
    else {b = 0 ; nRestante1 = nDeci;}
    
    if(nRestante1 >= 32) {c = 1 ; nRestante2 = nRestante1 - 32;}
    
    
    else {c = 0; nRestante2 = nDeci;}
    
    if (nRestante2 >= 16) {d = 1 ; nRestante3 = nRestante2 - 16;}
    
    
    
    else {d = 0 ; nRestante3 = nDeci;}
    
    if(nRestante3 >= 8) {e = 1 ; nRestante4 = nRestante3 - 8;}
    
    
    else {e = 0 ; nRestante4 = nDeci;}
    
    if (nRestante4 >= 4){f = 1 ; nRestante5 = nRestante4 - 4;}
    
    
    else {f =0 ; nRestante5 = nDeci;}
    
    
    if (nRestante5 >= 2)
    {
        g = 1;
        nRestante6 = nRestante5 - 2;
    }
    
    
    
    else { g = 0 ; nRestante5 = nDeci;}
    
    
    if (nRestante6 >= 1)
        
        h = 1;
    
    else  h = 0;
    
    cout<< a << b << c <<d<<" " << e << f << g << h <<endl;
    
    
    return 0;
}
