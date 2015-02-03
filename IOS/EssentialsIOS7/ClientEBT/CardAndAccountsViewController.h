//
//  CardAndAccountsViewController.h
//  ClientEBT
//
//  Created by Pedro Pena on 1/24/14.
//  Copyright (c) 2014 Pedo Peña. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CardAndAccountsViewController : UITableViewController

@property (nonatomic, strong) NSArray *cardImages;
@property (nonatomic, strong) NSArray *cardPAN;
@property (nonatomic, strong) NSArray *cardBalance;

@property (nonatomic, strong) NSArray *accountImages;
@property (nonatomic, strong) NSArray *accountName;
@property (nonatomic, strong) NSArray *accountNumber;
@property (nonatomic, strong) NSArray *accounBalance;
@end
