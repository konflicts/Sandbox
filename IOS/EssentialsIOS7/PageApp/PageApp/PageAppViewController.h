//
//  PageAppViewController.h
//  PageApp
//
//  Created by Pedro Pena on 2/5/14.
//  Copyright (c) 2014 Pedo Peña. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ContentViewController.h"

@interface PageAppViewController : UIViewController <UIPageViewControllerDataSource>

@property (strong,nonatomic) UIPageViewController *pageController;
@property (strong,nonatomic) NSArray *pageContent;

@end
