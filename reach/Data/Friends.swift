//
//  Friends.swift
//  reach
//
//  Created by Caelin Jackson-King on 2019-11-25.
//  Copyright © 2019 Caelin Jackson-King. All rights reserved.
//

import Foundation

struct Friends {
    struct Info: Identifiable, Equatable {
        var id = UUID()
        static func ==(lhs: Info, rhs: Info) -> Bool {
            return lhs.id == rhs.id
        }

        let name: String
        let image: String
    }
    
    static let andy = Info(name: "Andy Liang", image: "second")
    static let alicia = Info(name: "Alicia Yu", image: "second")
    static let diana = Info(name: "Diana Chang", image: "second")
    static let caelin = Info(name: "Caelin Jackson-King", image: "second")
    static let robert = Info(name: "Robert Riachi", image: "first")
    
    static let people = [andy, alicia, caelin, diana, robert]
}
