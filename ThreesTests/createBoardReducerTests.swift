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
    let rows = 4
    let columns = 4
    let numEmptyTiles = 7

    func testCreatesBoardCorrectly() {
        let reducer = createBoardReducer()
        let board = reducer.create(rows, columns: columns, numEmptyTiles: numEmptyTiles)
        let filledTiles = board.grid.filter { !$0.isEmpty() }
        let emptyTiles = board.grid.filter { $0.isEmpty() }

        XCTAssertEqual(board.grid.count, rows * columns)
        XCTAssertEqual(filledTiles.count, rows * columns - numEmptyTiles)
        XCTAssertEqual(emptyTiles.count, numEmptyTiles)
    }
}
