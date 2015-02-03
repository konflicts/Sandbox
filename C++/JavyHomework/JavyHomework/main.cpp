//
//  main.cpp
//  JavyHomework
//
//  Created by Pedro Pena on 8/28/14.
//  Copyright (c) 2014 Pedo Peña. All rights reserved.
//



#include <iostream>
#include <cmath>

using namespace std;

int main ()
{
    char resp;
    int num = 0, sum = 0;
    int elCubo (int);
    int multiplica(int,int&);
    int totalSum (int);
    do{
        do
        {
            
            cout<<"ingrese un numero entre el 1 - 50 : ";
            cin>> num;
            
            if (num > 0 && num <51)
            {
                cout<<"el cubo de "<<num<<" es "<<elCubo(num)<<endl;
                cout<<multiplica(num,sum)<<endl;
                
                
                
            }
            
            else
                cout<<"ingreso un numero invalido intente de nuevo";
        } while (num !=0 && num > 50);
        
        cout<<endl;
        cout<<totalSum(sum)<<endl;
        cout<<endl;
        cout<<"desea continuar? Ss/Nn? ";
        cin>> resp;
    } while (resp == 'S' || resp == 's');
    
    
    
    
    return 0;
    
    
}

int elCubo(int a)

{
    a = a*a*a;
    return a;
}

int multiplica(int b,int&x)

{
    int total = 0, i = 0 ;
    while ( i < 13)
    {
        cout<<"la multiplicacion de "<< b<<" por "<< i<< " es " << b * i<<endl;
        total += b*i;
        i++;
        x = total;
        
    }
    return total;
}

void totalSum (int c)

{
    if (c >  300)
        
        cout<<"el numero total es mayor de 300"<<endl;
    
    else if (c < 300)
        
        cout<<"el numero total es menor a 300"<<endl;
    else
        
        cout<<"el numero es igual a 300"<<endl;
    
    //return 0;
}