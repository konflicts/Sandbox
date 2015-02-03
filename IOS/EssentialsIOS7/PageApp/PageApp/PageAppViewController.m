//
//  PageAppViewController.m
//  PageApp
//
//  Created by Pedro Pena on 2/5/14.
//  Copyright (c) 2014 Pedo Peña. All rights reserved.
//

#import "PageAppViewController.h"

@interface PageAppViewController ()

@end

@implementation PageAppViewController

- (ContentViewController *)viewControllerAtIndex:(NSUInteger) index
{
    //Return the data view controller for given  index
    
    if (([self.pageContent count] == 0) || (index >= [self.pageContent count]))
    {
        return nil;
    }
    
    //Create a new view controller and pass suitable data.
    
    /*
     ContentViewController *dataViewController = [[ContentViewController alloc] init];
     */
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    
    ContentViewController *dataViewController = [storyboard instantiateViewControllerWithIdentifier:@"contentView"];
    
    dataViewController.dataObject = _pageContent[index];
    
    return dataViewController;
}

- (NSUInteger)indexOfViewController: (ContentViewController *) viewController
{
    return  [_pageContent indexOfObject:viewController.dataObject];
}


- (void) createContentPages
{
    NSMutableArray *pageStrings = [[NSMutableArray alloc]init];
    
    for (int i = 1; i < 11; i++)
    {
        
        NSString *contentString = [[NSString alloc] initWithFormat:@"<html><head></head><body><br><h1>Chapter %d</h1><p>This is the page %d of content displayed using UIPageViewController in iOS 7.</p></body></html>",i,i];
        [pageStrings addObject:contentString];
    }
    
    _pageContent = [[NSArray alloc] initWithArray:pageStrings];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    [self createContentPages];
    
    NSDictionary *options = [NSDictionary dictionaryWithObject:[NSNumber numberWithInteger:UIPageViewControllerSpineLocationMin] forKey:UIPageViewControllerOptionSpineLocationKey];
    _pageController = [[UIPageViewController alloc] initWithTransitionStyle:UIPageViewControllerTransitionStylePageCurl navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal options:options];
    
    _pageController.dataSource = self;
    
    [[_pageController view] setFrame:[[self view] bounds]];
    
    ContentViewController *initialViewController = [self viewControllerAtIndex:0];
    
    NSArray *viewControllers = [NSArray arrayWithObject:initialViewController];
    
    [_pageController setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
    
    [self addChildViewController:_pageController];
    
    [[self view] addSubview:[_pageController view]];
    
    [_pageController didMoveToParentViewController:self];
    
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
