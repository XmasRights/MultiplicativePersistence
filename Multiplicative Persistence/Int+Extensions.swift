//
//  Int+Extensions.swift
//  Multiplicative Persistence
//
//  Created by Christopher Fonseka on 29/03/2019.
//  Copyright © 2019 Christopher Fonseka. All rights reserved.
//

import Foundation

extension Int {
    var digits: [Int] {
        return String(self).compactMap{ Int(String($0)) }
    }
}
