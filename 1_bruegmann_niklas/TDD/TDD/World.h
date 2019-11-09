#import <Foundation/Foundation.h>
#import "CellWithNeighbour.h"
#define LENGTH 3
@interface World : NSObject {
    @private
    BOOL _cells[LENGTH][LENGTH];
}
- (NSEnumerator*) cellsForUpdate;
- (void) seedWorld;
@end
