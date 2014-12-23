//
//  FavoriteViewController.h
//  TaxiViet
//
//  Created by PhamHuuPhuong on 23/12/14.
//  Copyright (c) 2014 PhamHuuPhuong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NavigationView.h"

@interface FavoriteViewController : UIViewController<NavigationCustomViewDelegate>{
    NavigationView *navigationView;
}

@property (weak, nonatomic) IBOutlet UIView *containerView;
@property (weak, nonatomic) IBOutlet UIView *topView;
@property (weak, nonatomic) IBOutlet UIView *contentView;
@property (weak, nonatomic) IBOutlet UITableView *taxiContentTableView;
@property (weak, nonatomic) IBOutlet UISearchBar *searchBarInFav;

@end
