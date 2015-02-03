//
//  StaticTableViewController.m
//  StaticTable
//
//  Created by Pedro Pena on 2/4/14.
//  Copyright (c) 2014 Pedo Peña. All rights reserved.
//

#import "StaticTableViewController.h"

@interface StaticTableViewController ()

@end

@implementation StaticTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    _carImageView.image = [UIImage imageNamed:@"volvo_s60.jpg"];
    _carMakeLabel.text = @"Volvo";
    _carModelLabel.text = @"S60";
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
