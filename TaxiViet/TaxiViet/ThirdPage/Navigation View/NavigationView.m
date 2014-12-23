//
//  NavigationView.m
//  9HugMoment
//  Copyright (c) 2014 BHTech Mobile. All rights reserved.
//

#import "NavigationView.h"

@implementation NavigationView

- (id)initWithFrame:(CGRect)frame
{
    self = [[[NSBundle mainBundle] loadNibNamed:[[self class] description] owner:self options:nil] objectAtIndex:0];
    
    [self initStyle];
    return self;
}

#pragma mark - Customs Methods

- (void)initStyle{

}


#pragma mark - Control Button

- (IBAction)backNvgButtonAction:(id)sender {
    [self.delegate leftNvgAction];
}

@end
