#import "FeedViewController.h"
#import "FavouritesViewController.h"

@interface FeedViewController ()

@end

@implementation FeedViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Feed";
        self.tabBarItem.image = [UIImage imageNamed:@"tab_icon_feed"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.view.backgroundColor = [UIColor grayColor];
    
    UIButton *favouritesButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    favouritesButton.frame = CGRectMake(60, 100, 200, 44);
    [favouritesButton setTitle:@"View Favs" forState:UIControlStateNormal];
    [favouritesButton addTarget:self action:@selector(showFavourites:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:favouritesButton];
}

- (void) showFavourites:(UIButton *)sender
{
    FavouritesViewController *favouritesViewController = [[FavouritesViewController alloc] init];
    [self.navigationController pushViewController:favouritesViewController animated:YES];
}

@end
