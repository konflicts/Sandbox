//
//  InstaEmailViewController.m
//  InstaEmail
//
//  Created by Pedro Pena on 3/4/13.
//  Copyright (c) 2013 Pedro Pena. All rights reserved.
//

#import "InstaEmailViewController.h"

@interface InstaEmailViewController ()

@end

@implementation InstaEmailViewController
@synthesize emailPicker = emailPicker_;
@synthesize notesField = notesField_;

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    activities_ = [[NSArray alloc] initWithObjects: @"sleeping",
                                                    @"eating",
                                                    @"working",
                                                    @"crying",
                                                    @"begging",
                                                    @"leaving",
                                                    @"shopping",
                                                    @"hello worlding",nil];
    feelings_ = [[NSArray alloc] initWithObjects: @"awesome",
                                                    @"sad",
                                                    @"happy",
                                                    @"ambivalent",
                                                    @"nauseous",
                                                    @"psyched",
                                                    @"confused",
                                                    @"hopeful",
                                                    @"anxious", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark -

#pragma mark Picker Datasource Protocol

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 2;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if (component == 0)
    {
        return [activities_ count];
    }
    else
    {
        return [feelings_ count];
    }
}


#pragma mark -

#pragma mark Picker Delegate Protocol

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    
    
    if (component == 0)
    {
        return [activities_ objectAtIndex:row];
    }
    else
    {
        return [feelings_ objectAtIndex:row];
    }
    return nil;

}

#pragma mark -

#pragma mark Actions
-(IBAction)sendButtonTapped:(id)sender
{
    NSString* theMessage = [NSString stringWithFormat:@"%@ I'm %@ and feeling %@ about it.", notesField_.text?[notesField_ text]:@"", [activities_ objectAtIndex:[emailPicker_ selectedRowInComponent:0]], [feelings_ objectAtIndex:[emailPicker_ selectedRowInComponent:1]]];
    
    NSLog(@"%@", theMessage);
    NSLog(@"Apreté el botón");
    
    if([MFMailComposeViewController canSendMail])
    {
        MFMailComposeViewController* mailController = [MFMailComposeViewController new];
        
        mailController.mailComposeDelegate = self;
        [mailController setSubject:@"Hello Pedro!"];
        [mailController setMessageBody:theMessage isHTML:NO];
       
        [self presentedViewController];
        [self presentViewController:mailController animated:YES completion:nil];
      
        
        
    }
    
    else
    {
        NSLog(@"Sorry, you need to setup mail first!");
    }
    
    
    
}

-(IBAction) textFieldDoneEditing:(id)sender
{
    [sender resignFirstResponder];
}

#pragma mark -
#pragma mark Mail composer delegate method

- (void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error;
{
    [self dismissViewControllerAnimated:YES completion: nil];
}






@end
