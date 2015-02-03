//
//  BIDViewController.m
//  Button Fun
//
//  Created by Pedro Pena on 3/27/13.
//  Copyright (c) 2013 Apress. All rights reserved.
//

#import "BIDViewController.h"

@implementation BIDViewController


- (IBAction)buttonPressed:(UIButton *)sender {
    
    NSString *title = [sender titleForState:UIControlStateNormal];
    NSString *plainText = [NSString stringWithFormat:@"%@ button pressed.", title];
    
    NSMutableAttributedString *styledText = [[NSMutableAttributedString alloc] initWithString:plainText];
    
    NSDictionary *attributes = @{
                                 NSFontAttributeName: [UIFont boldSystemFontOfSize:_statusLabel.font.pointSize]
                                 };
    
    NSRange nameRange = [plainText rangeOfString:title];
    
    [styledText setAttributes:attributes range:nameRange];
    
    _statusLabel.attributedText = styledText;
    
    

}
@end
