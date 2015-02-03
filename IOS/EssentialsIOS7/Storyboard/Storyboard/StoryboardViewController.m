//
//  StoryboardViewController.m
//  Storyboard
//
//  Created by Pedro Pena on 1/21/14.
//  Copyright (c) 2014 Pedo Peña. All rights reserved.
//

#import "StoryboardViewController.h"

@interface StoryboardViewController ()

@end

@implementation StoryboardViewController

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


- (void)prepareForSegue:(UIStoryboardSegue *)segue
                 sender:(id)sender
{
    Scene2ViewController *destination = [segue destinationViewController];
    destination.labelText = @"Arrived from Scene 1";
   
    
}

@end
