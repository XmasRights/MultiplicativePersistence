//
//  SequenceLogger.swift
//  Multiplicative Persistence
//
//  Created by Christopher Fonseka on 11/04/2019.
//  Copyright © 2019 Christopher Fonseka. All rights reserved.
//

import Foundation

struct SequenceLogger<S: Sequence> {
    
    private let sequence: S
    
    init(_ sequence: S) {
        self.sequence = sequence
    }
    
    var log: [S.Element] {
        return sequence.map { $0 }
    }
}
