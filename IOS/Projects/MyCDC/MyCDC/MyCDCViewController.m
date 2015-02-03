//
//  MyCDCViewController.m
//  MyCDC
//
//  Created by Pedro Pena on 3/5/13.
//  Copyright (c) 2013 Pedro Pena. All rights reserved.
//

#import "MyCDCViewController.h"

@interface MyCDCViewController ()

@end

@implementation MyCDCViewController
@synthesize datePicker;
@synthesize cdclabel;




- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)cdcPush:(id)sender {
    
    NSDateFormatter *df = [NSDateFormatter new];
    
    NSString* myCDCDate = [NSString stringWithFormat:@"%@",[df stringFromDate:datePicker.date]];

    
    NSLog(@"%@",myCDCDate);
}
@end
