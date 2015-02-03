//
//  calculation.h
//  DinnerPrice
//
//  Created by Pedro Pena on 10/18/13.
//  Copyright (c) 2013 3P. All rights reserved.
//

#ifndef DinnerPrice_calculation_h
#define DinnerPrice_calculation_h

double dTotal_Arroz(double dArroz , int nPersonas)
{
    return dArroz * nPersonas ;
}
double dTotal_Carne(double dCarne, int nPersonas)
{
    return dCarne * nPersonas ;
}
double dTotal_Ens(double dEns , int nPersonas)
{
    return dEns * nPersonas;
}
double dPrecio_Total_Arroz(double dPrecio_Arroz,int x,double dTotal_Arroz)
{
    return dPrecio_Arroz / x * dTotal_Arroz;
}
double dPrecio_Total_Carne(double dPrecio_Carne,double dTotal_Carne)
{
    return dPrecio_Carne * dTotal_Carne;
}
double dPrecio_Total_Ens(double dPrecio_Ens,double dTotal_Ens)
{
    return dPrecio_Ens * dTotal_Ens;
}


#endif
