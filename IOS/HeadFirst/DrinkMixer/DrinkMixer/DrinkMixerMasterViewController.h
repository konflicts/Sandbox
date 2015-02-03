//
//  DrinkMixerMasterViewController.h
//  DrinkMixer
//
//  Created by Pedro Pena on 3/7/13.
//  Copyright (c) 2013 Pedro Pena. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DrinkMixerDetailViewController;

@interface DrinkMixerMasterViewController : UITableViewController
{
    NSMutableArray* drinks_;
}

@property (strong, nonatomic) DrinkMixerDetailViewController *detailViewController;
@property (nonatomic,retain) NSMutableArray* drinks;

@end
