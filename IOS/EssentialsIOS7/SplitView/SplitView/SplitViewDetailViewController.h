//
//  SplitViewDetailViewController.h
//  SplitView
//
//  Created by Pedro Pena on 2/4/14.
//  Copyright (c) 2014 Pedo Peña. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SplitViewDetailViewController : UIViewController <UISplitViewControllerDelegate>
@property (strong, nonatomic) IBOutlet UIWebView *webView;

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
