//
//  iDecideViewController.h
//  IDecide
//
//  Created by Pedro Pena on 2/28/13.
//  Copyright (c) 2013 Pedro Pena. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface iDecideViewController : UIViewController
{
    UILabel *decisionText_;
}

@property (retain, nonatomic) IBOutlet UILabel *decisionText;

-(IBAction)buttonPressed:(id)sender;

@end
