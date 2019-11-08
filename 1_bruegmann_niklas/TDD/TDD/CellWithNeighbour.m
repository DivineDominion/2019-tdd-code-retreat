#import "CellWithNeighbour.h"

@implementation CellWithNeighbour

- (BOOL) isAliveWithOffsetX: (int) offsetX offSetY: (int) offSetY; {
    // TODO: check params first
    return _state[offsetX + 1][offSetY+1];
}

- (void) setAliveWithOffsetX: (int) offsetX offSetY: (int) offSetY; {
    // TODO: check params first
    _state[offsetX + 1][offSetY+1] = YES;
}
@end
