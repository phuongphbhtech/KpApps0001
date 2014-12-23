//
//  NavigationView.h
//  9HugMoment
//  Copyright (c) 2014 BHTech Mobile. All rights reserved.
//

#import <UIKit/UIKit.h>

@class UserProfileView;
@protocol NavigationCustomViewDelegate <NSObject>

@optional

- (void)leftNvgAction;

@end

@interface NavigationView : UIView

@property (nonatomic, weak) id<NavigationCustomViewDelegate> delegate;

@property (weak, nonatomic) IBOutlet UIButton *backNvgButton;
@property (weak, nonatomic) IBOutlet UILabel *titleNvgLabel;

- (IBAction)backNvgButtonAction:(id)sender;

@end
