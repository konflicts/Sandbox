//
//  DetailedViewController.h
//  ClientEBT
//
//  Created by Pedro Pena on 1/28/14.
//  Copyright (c) 2014 Pedo Peña. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailedViewController : UIViewController

@property (strong,nonatomic) NSString *labelText;
@property (strong, nonatomic) IBOutlet UILabel *detailLabel;

@end
