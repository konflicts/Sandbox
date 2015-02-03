//
//  ClientEBTMasterDetailViewController.h
//  ClientEBTMaster
//
//  Created by Pedro Pena on 1/24/14.
//  Copyright (c) 2014 Pedo Peña. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ClientEBTMasterDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
