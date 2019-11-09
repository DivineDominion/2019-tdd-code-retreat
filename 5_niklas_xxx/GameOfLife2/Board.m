#import "Board.h"
#import "Cell.h"

@implementation Board

- (instancetype)init
{
    self = [super init];
    if (self) {
        cells = [NSArray arrayWithObject: [[Cell alloc] init]];
    }
    return self;
}

- initWithSize: (BoardSize *) aBoardSize;
{
    self = [super init];
    if (self) {
        NSMutableArray *cellsArray = [[NSMutableArray alloc] init];
        for (int i = 0; i < aBoardSize.width * ; <#increment#>) {
            <#statements#>
        }
    }
    return self;
}

- (NSArray *)cells {
    return cells;
}

@end
