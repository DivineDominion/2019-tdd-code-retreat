//
//  GameOfLife2Tests.m
//  GameOfLife2Tests
//
//  Created by Bernd Niklas on 05.10.19.
//  Copyright © 2019 solutio GmbH. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Cell.h"

@interface CellsTests : XCTestCase

@end

@implementation CellsTests

- (void)testCreateIsInitiallyDead {
    Cell *aCell = [[Cell alloc] init];
    XCTAssertFalse([aCell isAlive]);
}

- (void)testCellCanBeSetAlive {
    Cell *aCell = [[Cell alloc] init];
    [aCell setAlive:YES];
    XCTAssertTrue([aCell isAlive]);
}

@end
