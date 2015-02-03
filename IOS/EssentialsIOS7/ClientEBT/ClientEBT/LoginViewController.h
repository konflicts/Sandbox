//
//  LoginViewController.h
//  ClientEBT
//
//  Created by Pedro Pena on 1/24/14.
//  Copyright (c) 2014 Pedo Peña. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface LoginViewController : UIViewController

-(IBAction)textFieldReturn:(id)sender;
@property (strong, nonatomic) IBOutlet UITextField *UserTextField;
@property (strong, nonatomic) IBOutlet UITextField *PasswordTextField;
@property (strong, nonatomic) IBOutlet UITextField *textField;

- (IBAction)enterButton:(id)sender;


@end
