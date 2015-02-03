//
//  hiddingKeyboardViewController.h
//  hiddingKeyboard
//
//  Created by Pedro Pena on 1/16/14.
//  Copyright (c) 2014 Pedo Peña. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface hiddingKeyboardViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *textField;

-(IBAction)textReturn:(id)sender;

@end
