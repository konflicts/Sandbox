//
//  LoginViewController.m
//  ClientEBT
//
//  Created by Pedro Pena on 1/24/14.
//  Copyright (c) 2014 Pedo Peña. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)textFieldReturn:(id)sender
{
    [sender resignFirstResponder];
    
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [[event allTouches] anyObject];
    if (([_UserTextField isFirstResponder] || [_PasswordTextField isFirstResponder]) && ([touch view] != _UserTextField && [touch view] != _PasswordTextField))
    {
        
        [_UserTextField resignFirstResponder];
        [_PasswordTextField resignFirstResponder];
        
     
        
        
    }
    [super touchesBegan:touches withEvent:event]; }


- (IBAction)enterButton:(id)sender {
   [self performSegueWithIdentifier:@"AccountsAndCards" sender:self];
}
@end
