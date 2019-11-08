#import <Foundation/Foundation.h>
#import "CellWithNeighbour.h"

@interface CellUpdate : NSObject
- (CellWithNeighbour*) update:(CellWithNeighbour*) cell;
@end
