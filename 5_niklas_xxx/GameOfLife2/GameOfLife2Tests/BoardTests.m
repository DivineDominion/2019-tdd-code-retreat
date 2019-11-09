//
//  BoardTests.m
//  GameOfLife2
//
//  Created by Bernd Niklas on 05.10.19.
//  Copyright © 2019 solutio GmbH. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Board.h"
#import "Size.h"

@interface BoardTests : XCTestCase

@end

@implementation BoardTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}


- (void)testBoardCreation {
    Board *board = [[Board alloc] init];
    
    XCTAssertNotNil(board);
}

- (void)testBoardHasCells {
    Board *board = [[Board alloc] init];
    
    XCTAssertFalse([[board cells] count] == 0);
}

-(void) testCreateBoardWithCellCount {
    BoardSize *size = [[BoardSize alloc] initWithWidth: 4 andHeight: 5];
    Board *board = [[Board alloc] initWithSize: size];
    
    XCTAssertEqual([[board cells] count], [size width] * [size height]);
}

@end
