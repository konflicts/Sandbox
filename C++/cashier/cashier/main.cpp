//
//  main.cpp
//  cashier
//
//  Created by Pedro Pena on 10/1/14.
//  Copyright (c) 2014 Pedo Peña. All rights reserved.
//

#include <iostream>
#include<cstring>
#include<iomanip>

using namespace std;
enum products {PAN,LECHE,HUEVOS,MANTEQUILLA};
int main()
{   int key = 0, cantidad = 0;
    int cantidades[4]={0};
    string prod [] = {"PAN","LECHE","HUEVOS","MANTEQUILLA"};
    float price[] = {2.50,3.00,1.50,2.00};
    float acumular = 0;
    float presentar(string[],float[],int[],int,int&);
    int solicitar(string[],int,int&);
    void procesar(string[],float[],int[]);
    void lista(string[],float[]);
    char resp;
    
    lista(prod,price);
    //do{
    key = solicitar(prod,key,cantidad);
    if(key > 0)
    {
        presentar(prod,price,cantidades,key,cantidad);
        cout<<endl;
        cout<<"desea continuar comprando? ";
        cin>> resp;
    }
    else
    {
        cout<<"producto invalido desea volver a intentar?";
        cin>>resp;
    }
    // }while(resp =='S'||resp == 's');
    
    procesar(prod,price,cantidades);
    
    
    
    
    return 0;
}

void lista(string arr1[],float arr2[])
{   cout<<left<<setw(13)<<"Productos"<<right<<setw(5)<<"Precios"<<endl;
    for(int a = 0; a < 21; a++)
        cout<<'*';
    cout<<endl;
    cout<<setprecision(2)<<fixed<<showpoint;
    for(int i = PAN; i <= MANTEQUILLA; i++)
        cout<<left<<setw(13)<<arr1[i]<<right<<setw(5)<<arr2[i]<<endl;
    for(int a = 0; a < 21; a++)
        cout<<'*';
    cout<<endl<<endl;
    
}




int solicitar(string arr1[],int key,int& cantidad )

{
    float extension = 0,acum = 0;
    string nombre;
    bool flag = false;
    char resp;
    
    
    key = 0;
    cout<<"que producto desea comprar ";
    cin>>nombre;
    for (string::size_type i = 0; i < nombre.length(); i++)
    {
        nombre[i] = toupper (nombre[i]);
    }
    cout<<"que cantidad de "<<nombre<<" desea? ";
    cin>>cantidad;
    for(int x = PAN; x <= MANTEQUILLA; x++)
    {
        
        if(nombre == arr1[x] )
        {
            key = x;
            return key;
        }
        
        else key = -1;
    }
    
    return key;
    
}

float presentar(string arr1[],float arr2[],int arr3[],int key,int& cantidad)
{
    float acum = 0;
    cout<<arr1[key]<<" X "<<cantidad<<" = $ "<<arr2[key]*cantidad;
    acum += arr2[key]*cantidad;
    arr3[key] += cantidad;
    return acum;
}

void procesar(string arr1[],float arr2[],int arr3[])

{
    float total;
    cout<<endl;
    for(int a = 0 ; a < 32; a++)
        cout<<'*';
    cout<<endl;
    for (int i = PAN ; i <= MANTEQUILLA+1; i++)
        if(arr3[i]> 0)
        {
            cout<<left<<setw (13)<<arr1[i]<<"X"<<right<<setw(4)<<arr3[i]<<" = "<<setw(2)<<"$"<<arr2[i]*arr3[i]<<endl;
            total += arr2[i]*arr3[i];
        }
    
    
    
    cout<<"el total de su compra es "<<total;
    
    
}
