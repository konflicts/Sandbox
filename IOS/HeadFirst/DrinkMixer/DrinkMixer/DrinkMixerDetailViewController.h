//
//  DrinkMixerDetailViewController.h
//  DrinkMixer
//
//  Created by Pedro Pena on 3/7/13.
//  Copyright (c) 2013 Pedro Pena. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DrinkMixerDetailViewController : UIViewController
{
    @private
    UITextField *nameTextField_;
    UITextView *ingredientsTextView_;
    UITextView *directionsTextView_;
    NSDictionary *drink_;
}

@property (strong, nonatomic) id detailItem;
@property (nonatomic,retain) IBOutlet UITextField *nameTextField;
@property (nonatomic,retain) IBOutlet UITextView *ingredientsTextView;
@property (nonatomic,retain) IBOutlet UITextView *directionsTextView;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@property (nonatomic, retain) NSDictionary *drink;

@end
