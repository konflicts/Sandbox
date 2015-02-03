//
//  iDecide2ViewController.h
//  iDecide2
//
//  Created by Pedro Pena on 2/28/13.
//  Copyright (c) 2013 Pedro Pena. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface iDecide2ViewController : UIViewController



@property (nonatomic, retain) IBOutlet UIDatePicker *SelectedDate;



@property (weak, nonatomic) IBOutlet UILabel *decisionText2;

- (IBAction)buttonPressed:(id)sender;


@end
