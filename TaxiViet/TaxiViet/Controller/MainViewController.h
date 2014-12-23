//
//  MainViewController.h
//  TaxiViet
//
//  Created by PhamHuuPhuong on 23/12/14.
//  Copyright (c) 2014 PhamHuuPhuong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NavigationView.h"

@interface MainViewController : UIViewController<NavigationCustomViewDelegate>{
    NavigationView *navigationView;
}
@property (weak, nonatomic) IBOutlet UIView *containerView;
@property (weak, nonatomic) IBOutlet UIView *topView;
@property (weak, nonatomic) IBOutlet UIView *bottomView;
@property (weak, nonatomic) IBOutlet UIView *contentView;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollBottomView;
- (IBAction)hanoiButtonAction:(id)sender;
- (IBAction)hcmButtonAction:(id)sender;
- (IBAction)vinhphucButtonAction:(id)sender;
@property (weak, nonatomic) IBOutlet UIView *saigonView;
@property (weak, nonatomic) IBOutlet UIView *vinhphucView;
@property (weak, nonatomic) IBOutlet UITableView *hanoiTableView;
@property (weak, nonatomic) IBOutlet UISearchBar *searchBarInHn;

@end
