//
//  MyCDCViewController.h
//  MyCDC
//
//  Created by Pedro Pena on 3/5/13.
//  Copyright (c) 2013 Pedro Pena. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyCDCViewController : UIViewController
{
    IBOutlet UIDatePicker *datePicker;
    IBOutlet UILabel *cdclabel;
}
- (IBAction)cdcPush:(id)sender;

@property(nonatomic,retain) UIDatePicker *datePicker;
@property(nonatomic,retain) IBOutlet UILabel *cdclabel;

@end
