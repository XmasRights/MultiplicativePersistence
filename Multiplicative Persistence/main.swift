//
//  main.swift
//  Multiplicative Persistence
//
//  Created by Christopher Fonseka on 29/03/2019.
//  Copyright © 2019 Christopher Fonseka. All rights reserved.
//

import Foundation

do {
    let val = try CommandLineParser.getValue()
    print(val)
    
    print(val.digits)
    
} catch {
    print(error.localizedDescription)
}


