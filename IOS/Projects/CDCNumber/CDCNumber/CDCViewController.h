//
//  CDCViewController.h
//  CDCNumber
//
//  Created by Pedro Pena on 4/9/13.
//  Copyright (c) 2013 Apress. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CDCViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *myCDC;
@property (weak, nonatomic) IBOutlet UIDatePicker *myDatePicker;

- (IBAction)lookCDCButton:(UIButton *)sender;
-(NSInteger)daysWithinEraFromDate:(NSDate *) startDate toDate:(NSDate *) endDate;


@end
