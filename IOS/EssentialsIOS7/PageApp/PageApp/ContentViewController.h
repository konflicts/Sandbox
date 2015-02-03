//
//  ContentViewController.h
//  PageApp
//
//  Created by Pedro Pena on 2/5/14.
//  Copyright (c) 2014 Pedo Peña. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContentViewController : UIViewController
@property (strong,nonatomic) id dataObject;
@property (strong, nonatomic) IBOutlet UIWebView *webView;

@end
