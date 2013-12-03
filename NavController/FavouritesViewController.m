#import "FavouritesViewController.h"
#import "ProfileViewController.h"

@interface FavouritesViewController ()

@end

@implementation FavouritesViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Favourites";
        self.tabBarItem.image = [UIImage imageNamed:@"tab_icon_favs"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.view.backgroundColor = [UIColor redColor];
    
    UIButton *profileButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    profileButton.frame = CGRectMake(60, 100, 200, 44);
    [profileButton setTitle:@"View Profile" forState:UIControlStateNormal];
    [profileButton addTarget:self action:@selector(showProfile:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:profileButton];
}

- (void) showProfile:(UIButton *)sender
{
    ProfileViewController *profileViewController = [[ProfileViewController alloc] init];
    [self.navigationController pushViewController:profileViewController animated:YES];            
}
@end
