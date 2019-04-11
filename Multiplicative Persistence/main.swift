//
//  main.swift
//  Multiplicative Persistence
//
//  Created by Christopher Fonseka on 29/03/2019.
//  Copyright © 2019 Christopher Fonseka. All rights reserved.
//

import Foundation

func print<T>(logger: SequenceLogger<T>) {
    let log = logger.log
    log.forEach { print($0) }
    print("That took \(log.count) steps!")
}

do {
    let val = try CommandLineParser.getValue()
    print(val)
    let sequence =  MultiplicativePersistenceSequence(start: val)
    let logger = SequenceLogger(sequence)
    print(logger: logger)
    
} catch {
    print(error.localizedDescription)
}


