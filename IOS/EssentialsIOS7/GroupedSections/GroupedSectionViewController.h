//
//  GroupedSectionViewController.h
//  GroupedSections
//
//  Created by Pedro Pena on 1/28/14.
//  Copyright (c) 2014 Pedo Peña. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GroupedSectionViewController : UITableViewController
{

    NSDictionary *tableContents;
    NSArray *sortedKeys;
}

@property (nonatomic,strong) NSDictionary *tableContents;
@property (nonatomic,strong) NSArray *sortedKeys;

@end


