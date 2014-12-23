//
//  LeftViewController.m
//  LeftRightSlider
//

#import "LeftVC.h"
#import "SliderViewController.h"

@interface LeftVC ()<UITableViewDataSource,UITableViewDelegate>

@end

@implementation LeftVC

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
    
    UITableView *tableV=[[UITableView alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height/3, self.view.frame.size.width, self.view.frame.size.height-(self.view.frame.size.height/3))];
    tableV.backgroundColor=[UIColor clearColor];
    tableV.delegate=self;
    tableV.dataSource=self;
    tableV.separatorStyle = NO;
    [self.view addSubview:tableV];
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellID=@"cellID";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:cellID];
   
    if(cell==nil){
        cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    cell.backgroundColor=[UIColor clearColor];
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    switch(indexPath.row){
        case 0:
            cell.textLabel.text=@"TaxiViet";
            cell.textLabel.textColor = [UIColor whiteColor];
            cell.imageView.image = [UIImage imageNamed:@"home_icon"];
            break;
        case 1:
            cell.textLabel.text=@"Favorite";
            cell.textLabel.textColor = [UIColor whiteColor];
            cell.imageView.image = [UIImage imageNamed:@"favorite_icon"];
            break;
        case 2:
            cell.textLabel.text=@"About";
            cell.textLabel.textColor = [UIColor whiteColor];
            cell.imageView.image = [UIImage imageNamed:@"about_icon"];
            break;
        case 3:
            cell.textLabel.text=@"Share";
            cell.textLabel.textColor = [UIColor whiteColor];
            cell.imageView.image = [UIImage imageNamed:@"share_icon"];
            break;

        default:
            break;
    }
    
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 4;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    switch (indexPath.row) {
        case 0:
            [[SliderViewController sharedSliderController] showContentControllerWithModel:@"MainViewController"];
            break;
        case 1:
            [[SliderViewController sharedSliderController] showContentControllerWithModel:@"FavoriteViewController"];
            break;
        case 2:
            [[SliderViewController sharedSliderController] showContentControllerWithModel:@"AboutViewController"];;
            break;
        case 3:
            [[SliderViewController sharedSliderController] showContentControllerWithModel:@"ShareViewController"];;
            break;
        default:
            break;
    }
}

@end
