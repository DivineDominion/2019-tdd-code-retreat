#import "World.h"

@implementation Coord

- initWithX:(int)x Y:(int)y;
{
    _x = x;
    _y = y;
    return self;
}

- initWithCoord:(Coord *)coord;
{
    _x = [coord xCoord];
    _y = [coord yCoord];
    return self;
}

- (int)xCoord;
{
    return _x;
}

- (int)yCoord;
{
    return _y;
}

@end

@implementation World

- (BOOL) getState:(Coord *)coord; {
  //  return _state[[coord xCoord]*LENGTH+[coord yCoord]];
    // return arc4random_uniform(10000) % 2;
    return ([coord xCoord] * LENGTH + [coord yCoord]) % 2;
}

- (void) seed;
{
    Coord *coord = [Coord alloc];
    for (int i = 0; i < LENGTH; ++i)
        for (int j = 0; j < LENGTH; ++j) {
            coord = [coord initWithX:i Y:j];
            _state[i*LENGTH+j] = [self getState:coord];
        }
}

- (BOOL) isAliveWithCoord:(Coord *) coord;
{
    return _state[[coord xCoord] *LENGTH + [coord yCoord]];
}

- (int) countNeighboursAlive:(Coord *)coord;
{
    int count = 0;
    Coord *upperLeft = [[Coord alloc] initWithX:([coord xCoord] - 1 + LENGTH) % LENGTH Y:([coord yCoord] - 1 + LENGTH) % LENGTH];
    Coord *middleLeft = [[Coord alloc] initWithX:([coord xCoord] + LENGTH) % LENGTH Y:([coord yCoord] - 1 + LENGTH) % LENGTH];
    Coord *lowerLeft = [[Coord alloc] initWithX:([coord xCoord] + 1 + LENGTH) % LENGTH Y:([coord yCoord] - 1 + LENGTH) % LENGTH];

    Coord *upperMiddle = [[Coord alloc] initWithX:([coord xCoord] - 1 + LENGTH) % LENGTH Y:([coord yCoord] + LENGTH) % LENGTH];
    Coord *middleMiddle = [[Coord alloc] initWithX:([coord xCoord] + LENGTH) % LENGTH Y:([coord yCoord] + LENGTH) % LENGTH];
    Coord *lowerMiddle = [[Coord alloc] initWithX:([coord xCoord] + 1 + LENGTH) % LENGTH Y:([coord yCoord] + LENGTH) % LENGTH];

    Coord *upperRight = [[Coord alloc] initWithX:([coord xCoord] - 1 + LENGTH) % LENGTH Y:([coord yCoord] + 1 + LENGTH) % LENGTH];
    Coord *middleRight = [[Coord alloc] initWithX:([coord xCoord] + LENGTH) % LENGTH Y:([coord yCoord] + 1 + LENGTH) % LENGTH];
    Coord *lowerRight = [[Coord alloc] initWithX:([coord xCoord] + 1 + LENGTH) % LENGTH Y:([coord yCoord] + 1 + LENGTH) % LENGTH];
    
    if ([self isAliveWithCoord: upperLeft]) {
        count++;
    }
    if ([self isAliveWithCoord: middleLeft]) {
        count++;
    }
    if ([self isAliveWithCoord: lowerLeft]) {
        count++;
    }
    if ([self isAliveWithCoord: upperMiddle]) {
        count++;
    }
    if ([self isAliveWithCoord: middleMiddle]) {
        count++;
    }
    if ([self isAliveWithCoord: lowerMiddle]) {
        count++;
    }
    if ([self isAliveWithCoord: upperRight]) {
        count++;
    }
    if ([self isAliveWithCoord: middleRight]) {
        count++;
    }
    if ([self isAliveWithCoord: lowerRight]) {
        count++;
    }
    return count;
  }
@end
