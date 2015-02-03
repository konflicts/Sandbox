//
//  CrossViewViewController.m
//  Crossview
//
//  Created by Pedro Pena on 1/21/14.
//  Copyright (c) 2014 Pedo Peña. All rights reserved.
//

#import "CrossViewViewController.h"

@interface CrossViewViewController ()

@end

@implementation CrossViewViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [_viewB removeConstraint:_centerConstraint];
    
    NSLayoutConstraint *constraint =
    [NSLayoutConstraint
     constraintWithItem:_myLabel
     attribute: NSLayoutAttributeCenterX
     relatedBy:NSLayoutRelationEqual
     toItem:_myButton
     attribute:NSLayoutAttributeCenterX
     multiplier:1.0
     constant:0.0];
    
    [self.view addConstraint:constraint];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
