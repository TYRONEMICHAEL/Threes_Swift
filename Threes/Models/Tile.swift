//
// Created by TYRONE AVNIT on 2016/07/02.
// Copyright (c) 2016 TYRONE AVNIT. All rights reserved.
//

import Foundation

struct Tile {
    private(set) var number:Int

    init(number: Int = 0) {
        self.number = number
    }

    enum Special:Int {
        case Empty = 0, Blue, Red
    }

    func isBlue() -> Bool {
        return self.number == Special.Blue.rawValue
    }

    func isRed() -> Bool {
        return self.number == Special.Red.rawValue
    }

    func isEmpty() -> Bool {
        return self.number == Special.Empty.rawValue
    }

    mutating func setEmpty() {
        self.number = Special.Empty.rawValue
    }
}

