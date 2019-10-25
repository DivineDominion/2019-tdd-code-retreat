//
//  TDD3Tests.swift
//  TDD3Tests
//
//  Created by Flowinho on 05.10.19.
//  Copyright © 2019 Flowinho. All rights reserved.
//

import XCTest
@testable import TDD3

struct Cell {
    let isAlive: Bool
}

let alive = Cell(isAlive: true)
let dead = Cell(isAlive: false)

extension Cell: Equatable {}

extension Cell {
    fileprivate var killed: Cell {
        return dead
    }
}

class TDD3Tests: XCTestCase {

    func foo(cell: Cell, shouldKill: Bool) -> Cell {
        return shouldKill ? cell.killed : cell
    }
    
    func testFoo_StartsAlive_shouldKill_isDead(){
        XCTAssert(foo(cell: alive, shouldKill: true) == dead)
    }
    
    func testFoo_StartsAlive_shouldNotKill_isAlive(){
        XCTAssert(foo(cell: alive, shouldKill: false) == alive)
    }
    
    func testFoo_StartsDead_shouldKill_isDead(){
        XCTAssert(foo(cell: dead, shouldKill: true) == dead)
    }
    
    func testFoo_StartsDead_shouldNotKill_isDead(){
        XCTAssert(foo(cell: dead, shouldKill: false) == dead)
    }

}
