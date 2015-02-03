//
//  iDecideViewController.m
//  IDecide
//
//  Created by Pedro Pena on 2/28/13.
//  Copyright (c) 2013 Pedro Pena. All rights reserved.
//

#import "iDecideViewController.h"

@interface iDecideViewController ()

@end

@implementation iDecideViewController

@synthesize decisionText=decisionText_;

-(IBAction)buttonPressed:(id)sender
{
    decisionText_.text = @"Go for it!";
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
      
    
    
    
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
   // [decisionText_ release];
    
    // Dispose of any resources that can be recreated.
}

@end
