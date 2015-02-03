//
//  hiddingKeyboardViewController.m
//  hiddingKeyboard
//
//  Created by Pedro Pena on 1/16/14.
//  Copyright (c) 2014 Pedo Peña. All rights reserved.
//

#import "hiddingKeyboardViewController.h"

@interface hiddingKeyboardViewController ()

@end

@implementation hiddingKeyboardViewController

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

// Hidding pressing return
- (IBAction)textReturn:(id)sender
{
    [sender resignFirstResponder];
}



// hiding keyboard touching anything but the textfield
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [[event allTouches] anyObject];
    
    if ([_textField isFirstResponder] && [touch view] != _textField)
    {
        [_textField resignFirstResponder];
    }
    [super touchesBegan:touches withEvent:event];
    
}


@end
