#import <Foundation/Foundation.h>
#import "Size.h"

@interface Board : NSObject
{
    NSArray *cells;
}

- initWithSize: (BoardSize *) aBoardSize;
- (NSArray *)cells;

@end
