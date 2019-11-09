//
//  GameOfLifeTests.m
//  GameOfLifeTests
//
//  Created by Bernd Niklas on 05.10.19.
//  Copyright © 2019 solutio GmbH. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "World.h"

@interface GameOfLifeTests : XCTestCase

@end

@implementation GameOfLifeTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    World *world = [[World alloc] init];
    [world seed];
    
    
    Coord *coord = [[Coord alloc] initWithX: 1 Y: 1];
    
    [world countNeighboursAlive: coord];
    
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
