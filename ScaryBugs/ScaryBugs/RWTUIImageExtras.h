#import <Foundation/Foundation.h>
#import <UiKit/UiKit.h>

@interface UIImage (Extras)

- (UIImage*)imageByScalingAndCroppingForSize:(CGSize)targetSize;

@end
