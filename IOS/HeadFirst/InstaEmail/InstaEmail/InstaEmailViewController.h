//
//  InstaEmailViewController.h
//  InstaEmail
//
//  Created by Pedro Pena on 3/4/13.
//  Copyright (c) 2013 Pedro Pena. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MFMailComposeViewController.h>

@interface InstaEmailViewController : UIViewController
<UIPickerViewDataSource, UIPickerViewDelegate, MFMailComposeViewControllerDelegate>
{
    NSArray* activities_;
    NSArray* feelings_;
    UIPickerView *emailPicker_;
    UITextField *notesField_;
}

@property (nonatomic, retain) IBOutlet UIPickerView *emailPicker;
@property (nonatomic, retain) IBOutlet UITextField *notesField;

- (IBAction) sendButtonTapped: (id) sender;
- (IBAction) textFieldDoneEditing :(id)sender;

@end
