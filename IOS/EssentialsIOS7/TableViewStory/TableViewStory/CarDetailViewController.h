//
//  CarDetailViewController.h
//  TableViewStory
//
//  Created by Pedro Pena on 1/28/14.
//  Copyright (c) 2014 Pedo Peña. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CarDetailViewController : UIViewController

@property (nonatomic,strong) NSArray *carDetailModel;

@property (strong, nonatomic) IBOutlet UILabel *makeLabel;

@property (strong, nonatomic) IBOutlet UILabel *modelLabel;

@property (strong, nonatomic) IBOutlet UIImageView *imageView;

@end
