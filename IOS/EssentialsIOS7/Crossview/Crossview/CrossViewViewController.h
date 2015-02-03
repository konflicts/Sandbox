//
//  CrossViewViewController.h
//  Crossview
//
//  Created by Pedro Pena on 1/21/14.
//  Copyright (c) 2014 Pedo Peña. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CrossViewViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *myLabel;
@property (strong, nonatomic) IBOutlet UIButton *myButton;
@property (strong, nonatomic) IBOutlet UIView *viewB;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *centerConstraint;

@end
