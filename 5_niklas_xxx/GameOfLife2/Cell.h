#import <Foundation/Foundation.h>

@interface Cell : NSObject
{
    BOOL isAlive;
}

- (BOOL) isAlive;
- (void) setAlive: (BOOL) flag;

@end
