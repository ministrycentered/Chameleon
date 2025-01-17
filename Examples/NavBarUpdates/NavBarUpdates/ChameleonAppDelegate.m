//  Created by Sean Heber on 1/13/11.
#import "ChameleonAppDelegate.h"
#import "TestViewController.h"

@implementation ChameleonAppDelegate

- (void)applicationDidFinishLaunching:(UIApplication *)application
{
    window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].applicationFrame];
    window.backgroundColor = [UIColor whiteColor];
    window.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;

	// just use init, since we can't really use nibs in Cham
    TestViewController * controller = [[[TestViewController alloc] init] autorelease];
    controller.title = @"Initial Title";
    
    navController = [[UINavigationController alloc] initWithRootViewController: controller];
    navController.view.frame = window.bounds;
    navController.view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    navController.view.autoresizesSubviews = YES;
    
    [window addSubview: navController.view];
    
    [window makeKeyAndVisible];
}

- (void)dealloc
{
    [window release];
    [navController release];
    [super dealloc];
}

@end
