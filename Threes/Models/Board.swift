//
// Created by TYRONE AVNIT on 2016/07/03.
// Copyright (c) 2016 TYRONE AVNIT. All rights reserved.
//

import Foundation

struct Board {
    private let rows: Int
    private let columns: Int

    var grid: [Tile]

    init(rows: Int, columns:Int) {
        self.rows = rows
        self.columns = columns
        self.grid = Array(count: rows * columns, repeatedValue: Tile())
    }

    subscript(row: Int, column:Int) -> Tile {
        get {
            return self.grid[(row * self.columns) + column]
        }

        set {
            self.grid[(rows * self.columns) + column] = newValue
        }
    }
}