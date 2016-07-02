//
//  TileTest.swift
//  Threes
//
//  Created by TYRONE AVNIT on 2016/07/02.
//  Copyright (c) 2016 TYRONE AVNIT. All rights reserved.
//

import XCTest

class TileTest: XCTestCase {
    
    func testTileIsABlueTile() {
        let tile = Tile(number: 1)
        XCTAssertTrue(tile.isBlue())
        XCTAssertTrue(!tile.isRed())
    }

    func testTileIsARedTile() {
        let tile = Tile(number: 2)
        XCTAssertTrue(!tile.isBlue())
        XCTAssertTrue(tile.isRed())
    }

    func testTileisNeitherABlueTileOrRedTile() {
        let tile = Tile(number: 3)
        XCTAssertTrue(!tile.isBlue())
        XCTAssertTrue(!tile.isRed())
    }

    func testTileIsEmptyTile() {
        let tile = Tile()
        XCTAssertTrue(tile.isEmpty())
    }

    func testTileIsNotAnEmptyTile() {
        let tile = Tile(number: 48)
        XCTAssertTrue(!tile.isEmpty())
    }

    func testSetTileAsEmptyTile() {
        var tile = Tile(number: 3)
        XCTAssertTrue(!tile.isEmpty())
        tile.setEmpty()
        XCTAssertTrue(tile.isEmpty())
    }
}
