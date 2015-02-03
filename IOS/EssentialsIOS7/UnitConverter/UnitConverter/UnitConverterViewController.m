//
//  UnitConverterViewController.m
//  UnitConverter
//
//  Created by Pedro Pena on 1/16/14.
//  Copyright (c) 2014 Pedo Peña. All rights reserved.
//

#import "UnitConverterViewController.h"

@interface UnitConverterViewController ()

@end

@implementation UnitConverterViewController

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

- (IBAction)convertTemp:(id)sender {
    double fahrenheit = [_tempText.text doubleValue];
    double celsius =  (fahrenheit - 32) / 1.8;
    
    NSString *resultString = [[NSString alloc] initWithFormat: @"Celsius %f", celsius];
    
    _resultLabel.text = resultString;
}

// Hiding keyboard with return key pressed

-(IBAction)textFieldReturn:(id)sender
{
    [sender resignFirstResponder];
}


// hiding keyboard touching anything but the textfield
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [[event allTouches] anyObject];
    
    if ([_tempText isFirstResponder] && [touch view] != _tempText)
    {
        [_tempText resignFirstResponder];
    }
    [super touchesBegan:touches withEvent:event];
    
}
@end
