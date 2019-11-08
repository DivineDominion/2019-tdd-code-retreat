#import <Foundation/Foundation.h>
#define LENGTH 3
@interface Coord : NSObject
{
    int _x;
    int _y;
}
- initWithX:(int)x Y:(int)y;
- (int)xCoord;
- (int)yCoord;
@end

@interface World : NSObject
{
    @private
    BOOL _state[LENGTH*LENGTH];
}
- (BOOL) isAliveWithCoord:(Coord *) coord;
- (void) seed;
- (int) countNeighboursAlive:(Coord *)coord;

@end
