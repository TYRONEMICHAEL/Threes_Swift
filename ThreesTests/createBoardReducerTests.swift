//
//  createBoardReducerTests.swift
//  Threes
//
//  Created by TYRONE AVNIT on 2016/07/03.
//  Copyright (c) 2016 TYRONE AVNIT. All rights reserved.
//

import XCTest
import Dollar

class createBoardReducerTests: XCTestCase {
    
    func testCreatesBoardCorrectly() {
        let reducer = createBoardReducer()
        let board = reducer.create()
        let filledTiles = board.grid.filter { $0.number > 0 }
        let emptyTiles = board.grid.filter { $0.number == 0 }

        XCTAssertEqual(board.grid.count, 16)
        XCTAssertEqual(filledTiles.count, 9)
        XCTAssertEqual(emptyTiles.count, 7)
    }
}
