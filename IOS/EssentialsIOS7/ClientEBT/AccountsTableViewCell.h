//
//  AccountsTableViewCell.h
//  ClientEBT
//
//  Created by Pedro Pena on 1/24/14.
//  Copyright (c) 2014 Pedo Peña. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AccountsTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UIImageView *accountImage;
@property (strong, nonatomic) IBOutlet UILabel *accountNameLabel;

@property (strong, nonatomic) IBOutlet UILabel *accountNumberLabel;
@property (strong, nonatomic) IBOutlet UILabel *accountBalanceLabel;
@end
