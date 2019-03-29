//
//  CommandLineParser.swift
//  Multiplicative Persistence
//
//  Created by Christopher Fonseka on 29/03/2019.
//  Copyright © 2019 Christopher Fonseka. All rights reserved.
//

import Foundation

struct CommandLineParser {
    
    enum ParserError: Error {
        case noCommandLineArgument
        case invalidCommandLineArgument
    }
    
    static func getValue() throws -> Int {
        
        let args = CommandLine.arguments
        
        guard args.count >= 2 else {
            throw ParserError.noCommandLineArgument
        }
        
        guard let val = Int(args[1]) else {
            throw ParserError.invalidCommandLineArgument
        }
        
        return val
    }
    
}
