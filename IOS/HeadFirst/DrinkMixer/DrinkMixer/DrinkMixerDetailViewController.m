//
//  DrinkMixerDetailViewController.m
//  DrinkMixer
//
//  Created by Pedro Pena on 3/7/13.
//  Copyright (c) 2013 Pedro Pena. All rights reserved.
//

#import "DrinkMixerDetailViewController.h"
#import "DrinkConstants.h"


@interface DrinkMixerDetailViewController ()
- (void)configureView;
@end

@implementation DrinkMixerDetailViewController

@synthesize nameTextField = nameTextField_, ingredientsTextView = ingredientsTextView_, directionsTextView = directionsTextView_, drink=drink_;


#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
      // self.title = NSLocalizedString(@"hola", @"hola");
        //self.title = NSLocalizedString([self.drink objectForKey:NAME_KEY], [self.drink objectForKey:NAME_KEY]);
        
    }
    return self;
}

-(void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    //Set up our UI with the provided drink
    
    self.title = NSLocalizedString([self.drink objectForKey:NAME_KEY], [self.drink objectForKey:NAME_KEY]);
    
    self.nameTextField.text = [self.drink objectForKey:NAME_KEY];
    self.ingredientsTextView.text = [self.drink objectForKey:INGREDIENTS_KEY];
    self.directionsTextView.text = [self.drink objectForKey:DIRECTIONS_KEY];
    
    
}
							
@end
