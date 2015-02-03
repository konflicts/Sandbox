//
//  UnitConverterViewController.h
//  UnitConverter
//
//  Created by Pedro Pena on 1/16/14.
//  Copyright (c) 2014 Pedo Peña. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UnitConverterViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *tempText;
@property (strong, nonatomic) IBOutlet UILabel *resultLabel;

- (IBAction)convertTemp:(id)sender;
- (IBAction)textFieldReturn:(id)sender;



@end
