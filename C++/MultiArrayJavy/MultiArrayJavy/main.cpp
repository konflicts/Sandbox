//
//  main.cpp
//  MultiArrayJavy
//
//  Created by Pedro Pena on 5/1/14.
//  Copyright (c) 2014 Pedo Peña. All rights reserved.
//

#include <iostream>
using namespace std;


int main(int argc, const char * argv[])
{

    
   
        const int numRows = 5;
        const int numCols = 6;
        
        int matriz [numRows] [numCols]= { {750,800,850,540,320,900},
            {800,720,650,980,825,925},
            {500,600,700,800,900,990},
            {340,420,530,280,995,998},
            {600,700,500,400,300,800}
            
        };
        
        int totalv[5] ={0}; // va a retener las ventas para los 6 meses por vendedor
        int row, col = 0,totalVentas = 0;
        string mes,mes2;
        
        cout<<"Numero  "<<"Abril "<<"Mayo  "<<"Junio  "<<"Julio  "<<"Agosto   "<<"septiembre"<<"total  "<<endl;
        
        for(row = 0; row < numRows; row++)
        {   cout<< row + 1 <<"       ";
            
            for(col = 0; col < numCols; col++)
            {
                cout<<matriz [row][col]<<"  ";
                totalv[row] = totalv[row] + matriz [row] [col];//acumular las ventas
                totalVentas = totalVentas + matriz [row] [col];
                
            }
            cout<<totalv[row]<<endl;
        }
        
        cout<<"El total de ventas global fue: "<<totalVentas<<endl;
        
        int maxMonth = 0, minMonth = 0, maxVendor = 0,minVendor = 0,maxSale = 0,minSale = 0;
        
        
        for (row = 0; row < numRows; row ++)
        {
            
            
            for (col = 0; col < numCols ; col++)
            {
                if (maxSale < matriz [row][col])
                {
                
                maxSale = matriz [row] [col];
                maxMonth = col;
                maxVendor = row;
                
                }
                
               if(minSale == 0)
               {
                   minSale = matriz[row][col];
               }
               else if(minSale > matriz[row][col])
               {
                   minSale = matriz[row][col];
                   minMonth = col ;
                   minVendor = row;
               }
                   
            

                
            }
            

            
        }
        
        
        
        
        
        
        if(maxMonth == 0 )
            mes = "abril";
        
        else if (maxMonth  == 1)
            mes = "mayo";
        
        else if (maxMonth  == 2)
            mes = "junio";
        
        else if (maxMonth  == 3)
            mes = "julio";
        else if (maxMonth  == 4)
            mes = "agosto";
        else
            mes = "septiembre";
        
        if(minMonth  == 0 )
            mes2 = "abril";
        
        else if (minMonth  == 1)
            mes2 = "mayo";
        
        else if (minMonth  == 2)
            mes2 = "junio";
        
        else if (minMonth  == 3)
            mes2 = "julio";
        else if (minMonth  == 4)
            mes2 = "agosto";
        else
            mes2 = "septiembre";
        
        cout<<"el vendedor con mas ventas lo fue el # "<<maxVendor +1<<" "<<"con unas ventas de "<<matriz[maxVendor][maxMonth]<<" dolares en el mes de "<<mes<<endl;
        cout<<"el vendedor con menos ventas lo fue el # "<<minVendor+1<<" "<<"con unas ventas de "<<matriz[minVendor][minMonth]<<" dolares en el mes de "<<mes2<<endl;
        
        
    }

