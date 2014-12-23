//
//  RightViewController.m
//  LeftRightSlider
//

#import "RightVC.h"

@interface RightVC ()

@end

@implementation RightVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIImageView *imgV=[[UIImageView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [imgV setImage:[UIImage imageNamed:@"2222"]];
    [self.view addSubview:imgV];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
