//
//  StaticTableViewController.h
//  StaticTable
//
//  Created by Pedro Pena on 2/4/14.
//  Copyright (c) 2014 Pedo Peña. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StaticTableViewController : UITableViewController
@property (strong, nonatomic) IBOutlet UILabel *carMakeLabel;
@property (strong, nonatomic) IBOutlet UILabel *carModelLabel;
@property (strong, nonatomic) IBOutlet UIImageView *carImageView;

@end
