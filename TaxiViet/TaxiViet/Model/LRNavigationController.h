//
//  LRNavigationController.h
//  LeftRightSlider
//

#import <UIKit/UIKit.h>

@interface LRNavigationController : UINavigationController

@property (nonatomic, assign) BOOL canDragBack;

@property (nonatomic, assign) float startX;

@property (nonatomic, assign) float judgeOffset;

@property (nonatomic, assign) float contentScale;

@property (nonatomic, retain) NSDictionary *unGestureDic;

- (void)popViewControllerWithLRAnimated;

- (void)popToRootViewControllerWithLRAnimated;

- (void)pushViewControllerWithLRAnimated:(UIViewController *)viewController;

@end
