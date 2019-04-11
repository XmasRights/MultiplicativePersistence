//
//  MultiplicativePersistenceSequence.swift
//  Multiplicative Persistence
//
//  Created by Christopher Fonseka on 29/03/2019.
//  Copyright © 2019 Christopher Fonseka. All rights reserved.
//

import Foundation

struct MultiplicativePersistenceSequence: Sequence, IteratorProtocol {
    
    private(set) var value: Int
    
    init(start: Int) {
        self.value = start
    }

    mutating func next() -> Int? {
        guard value.digits.count > 1 else {
            return nil
        }
        value = value.digits.reduce(1, *)
        return value
    }
}
