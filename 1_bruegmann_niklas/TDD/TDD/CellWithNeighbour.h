#import <Foundation/Foundation.h>

@interface CellWithNeighbour : NSObject
{
    @private
    bool _state[3][3];    NSMutableSet *afterDelayUsers;
}

- (BOOL) isAliveWithOffsetX: (int) offsetX offSetY: (int) offSetY;
- (void) setAliveWithOffsetX: (int) offsetX offSetY: (int) offSetY;

@end
