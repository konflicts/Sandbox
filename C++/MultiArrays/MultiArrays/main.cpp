//
//  main.cpp
//  MultiArrays
//
//  Created by Pedro Pena on 5/1/14.
//  Copyright (c) 2014 Pedo Peña. All rights reserved.
//

#include <iostream>
using namespace std;

int main(int argc, const char * argv[])
{

    
   
           const int vendor = 5;
           const int month = 6;
        
        int sales [vendor] [month]= { {750,800,850,540,320,900},
                                      {800,720,650,980,825,925},
                                      {500,600,700,800,900,990},
                                      {340,420,1000,280,995,998},
                                      {600,700,500,400,300,800}
                                    };
        string monthName[6] = {"April","May","June","July","August","September"};
    
        int SalesTotal;
        int VendorSalesTotal[vendor] = {0}; // va a retener las ventas para los 6 meses por vendedor
        int GlobalTotal = 0,
            maxSalesVendor = 0,
            maxSalesMonth = 0,
            maxSales = 0;
    
    
    
        string mes;
        
        cout<<"Numero  "<<"Abril "<<"Mayo  "<<"Junio  "<<"Julio  "<<"Agosto   "<<"septiembre"<<"total  "<<endl;
        
        for(int row = 0; row < vendor; row++)
        {
            
            cout<< "vendor" << row + 1 << "       ";
            SalesTotal = 0;
            
            for(int col = 0; col < month; col++)
            {
                cout <<  sales[row][col] <<"  ";
                
                if(sales[row][col] > maxSales)
                {
                    maxSales = sales[row][col];
                    maxSalesVendor = row;
                    maxSalesMonth = col;
                }
                
                SalesTotal = SalesTotal + sales[row][col];
    
                GlobalTotal = GlobalTotal + SalesTotal;
                
            }
            
            VendorSalesTotal[row] = SalesTotal;
            
            cout<< VendorSalesTotal[row] <<endl;
        }
        
        cout<<"El total de ventas global fue: "<< GlobalTotal <<endl;
        cout << "The maximum sale is : "  << maxSales << " in " << monthName[maxSalesMonth] << " by Vendor" << maxSalesVendor + 1 << endl;
    
    
    
        
        
        
        
        
        
        
        
    }

