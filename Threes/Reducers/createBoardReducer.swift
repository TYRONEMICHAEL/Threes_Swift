//
// Created by TYRONE AVNIT on 2016/07/03.
// Copyright (c) 2016 TYRONE AVNIT. All rights reserved.
//

import Foundation
import Dollar

struct createBoardReducer {

    func create() -> Board {
        let deck = [1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3];
        let numFilledTiles = 9
        let numEmptyTiles = 7
        let numRows = 4
        let numColumns = 4

        var board = Board(rows: numRows, columns: numColumns)

        let emptyTiles = $.range(numEmptyTiles)
            .map { _ in Tile() }
        
        let filledTiles = $.chain($.shuffle(deck))
            .slice(0, end: numFilledTiles)
            .value
            .map { number in Tile(number: number) }

        let tiles = $.shuffle(filledTiles + emptyTiles)

        board.grid = tiles
        
        return board
    }
}
