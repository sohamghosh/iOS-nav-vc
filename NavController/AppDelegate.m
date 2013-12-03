#import "AppDelegate.h"
#import "FeedViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // View Controller
    FeedViewController *feedViewController = [[FeedViewController alloc] init];
    
    // Container View Controller
    UINavigationController *navController = [[UINavigationController alloc]
                                                initWithRootViewController:feedViewController];
    
    // Canvas (Window)
    self.window = [[UIWindow alloc] initWithFrame: [[UIScreen mainScreen] bounds]];
    
    self.window.rootViewController = navController;
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
