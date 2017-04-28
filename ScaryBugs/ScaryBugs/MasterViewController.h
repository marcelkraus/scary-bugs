#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong) NSMutableArray *bugs;
@property (strong, nonatomic) DetailViewController *detailViewController;

@end
