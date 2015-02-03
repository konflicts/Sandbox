//
//  CDCViewController.m
//  CDCNumber
//
//  Created by Pedro Pena on 4/9/13.
//  Copyright (c) 2013 Apress. All rights reserved.
//

#import "CDCViewController.h"

@interface CDCViewController ()

@end

@implementation CDCViewController


- (IBAction)lookCDCButton:(UIButton *)sender {
    
    int CDC;
    
    NSDateFormatter *formatDate = [NSDateFormatter new];
    [formatDate setDateFormat:@"dd/MM/yyyy"];
  
    NSCalendar *gregorian = [[NSCalendar alloc]
                             initWithCalendarIdentifier:NSGregorianCalendar];
    
    NSInteger startDay=[gregorian ordinalityOfUnit:NSDayCalendarUnit
                                            inUnit: NSCalendarCalendarUnit forDate:[formatDate dateFromString:@"12/31/1993"]];
    NSInteger endDay=[gregorian ordinalityOfUnit:NSDayCalendarUnit
                                          inUnit: NSCalendarCalendarUnit forDate:_myDatePicker.date];
    
   CDC =  endDay-startDay;
    
    _myCDC.text = [NSString stringWithFormat:@"%d",CDC];
    
    
    
    
    
    
 
}
            
        
            
@end
