//
//  FavoriteViewController.m
//  TaxiViet
//
//  Created by PhamHuuPhuong on 23/12/14.
//  Copyright (c) 2014 PhamHuuPhuong. All rights reserved.
//

#import "FavoriteViewController.h"

@interface FavoriteViewController ()

@end

@implementation FavoriteViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initNavigationView];
    [self.topView addSubview:navigationView];
    navigationView.titleNvgLabel.text = @"Favorites";
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)initNavigationView {
    navigationView = [[NavigationView alloc]initWithFrame:CGRectZero];
    navigationView.delegate = self;
    CGRect navigationViewFrame = CGRectMake(0, 0, self.topView.frame.size.width, self.topView.frame.size.height);
    navigationView.frame = navigationViewFrame;
}

- (void)leftNvgAction {
    [[SliderViewController sharedSliderController] showLeftViewController];
}

@end
