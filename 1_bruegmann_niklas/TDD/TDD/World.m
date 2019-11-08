#import "World.h"

@implementation World

- (NSEnumerator*) cellsForUpdate;
{
    NSMutableArray *cellArray = [[NSMutableArray alloc] init];
    CellWithNeighbour *cell = [[CellWithNeighbour alloc] init];
    int row, col;

    for (row = 1; row < LENGTH - 1; row++) {
        for (col = 1; col < LENGTH - 1; col++) {
            if (_cells[row][col]) {
                [cell setAliveWithOffsetX:row offSetY:col];
            }
            if (_cells[row-1][col-1]) {
                [cell setAliveWithOffsetX:row-1 offSetY:col-1];
            }
            if (_cells[row-1][col-1]) {
                [cell setAliveWithOffsetX:row-1 offSetY:col-1];
            }
            [cellArray addObject: _cells[row][col-]];
        }
    }
    return [cellArray objectEnumerator];
}

- (void) seedWorld; {
    int row, col;
    
    for (row = 0; row < LENGTH; row++) {
        for (col = 0; col < LENGTH; col++) {
            _cells[row][col] = arc4random_uniform(10000) % 2;
        }
    }
}

@end
