//
//  SplitViewMasterViewController.h
//  SplitView
//
//  Created by Pedro Pena on 2/4/14.
//  Copyright (c) 2014 Pedo Peña. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SplitViewDetailViewController;

@interface SplitViewMasterViewController : UITableViewController

@property (nonatomic, retain) NSArray *siteNames;
@property (nonatomic, retain) NSArray *siteAddresses;


@property (strong, nonatomic) SplitViewDetailViewController *detailViewController;

@end
