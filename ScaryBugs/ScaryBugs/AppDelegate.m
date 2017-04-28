#import "AppDelegate.h"
#import "DetailViewController.h"
#import "MasterViewController.h"
#import "ScaryBugDoc.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    ScaryBugDoc *potatoBug = [[ScaryBugDoc alloc] initWithTitle:@"Potato Bug" rating:4 thumbImage:[UIImage imageNamed:@"potatoBugThumb.jpg"] fullImage:[UIImage imageNamed:@"potatoBug.jpg"]];
    ScaryBugDoc *houseCentipede = [[ScaryBugDoc alloc] initWithTitle:@"House Centipede" rating:3 thumbImage:[UIImage imageNamed:@"houseCentipedeThumb.jpg"] fullImage:[UIImage imageNamed:@"houseCentipede.jpg"]];
    ScaryBugDoc *sidewaysBug = [[ScaryBugDoc alloc] initWithTitle:@"Sideways Bug" rating:5 thumbImage:[UIImage imageNamed:@"sidewaysBugThumb.jpg"] fullImage:[UIImage imageNamed:@"sidewaysBug.jpg"]];
    ScaryBugDoc *ladyBug = [[ScaryBugDoc alloc] initWithTitle:@"Lady Bug" rating:1 thumbImage:[UIImage imageNamed:@"ladyBugThumb.jpg"] fullImage:[UIImage imageNamed:@"ladyBug.jpg"]];
    NSMutableArray *bugs = [NSMutableArray arrayWithObjects:potatoBug, houseCentipede, sidewaysBug, ladyBug, nil]; // nil necessary to terminate arrayWithObjects method

    UINavigationController *navController = (UINavigationController *) self.window.rootViewController;
    MasterViewController *masterController = [navController.viewControllers objectAtIndex:0];
    masterController.bugs = bugs;

    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
