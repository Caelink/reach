//
//  EventDataProvider.swift
//  reach
//
//  Created by Caelin Jackson-King on 2019-11-23.
//  Copyright © 2019 Caelin Jackson-King. All rights reserved.
//

import Foundation

struct EventDataProvider {
    struct EventInfo: Identifiable {
        var id = UUID()
        let title: String
        let host: String
        let time: Date
        let location: String?
        let description: String?
        let attendees: [Any]?
    }
    
    static func events(matching section: HomeDataProvider.Section) -> [EventInfo] {
        switch section {
        case .recommended:
            return [
                EventInfo(title: "Resume Critique",
                          host: "Tech+",
                          time: Date(),
                          location: nil, description: nil, attendees: nil),
                EventInfo(title: "Board Game Night",
                          host: "MathSoc",
                          time: Date(),
                          location: nil, description: nil, attendees: nil),
                EventInfo(title: "Coffee Chat with Profs",
                          host: "CSC",
                          time: Date(),
                          location: nil, description: nil, attendees: nil)
            ]
        case .nearby:
            return [
                EventInfo(title: "The Good Place Watch Party",
                          host: "Andy Liang",
                          time: Date(),
                          location: nil, description: nil, attendees: nil),
                EventInfo(title: "CS does Chainer",
                          host: "Caelin Jackson-King",
                          time: Date(),
                          location: nil, description: nil, attendees: nil),
                EventInfo(title: "Board Game Night",
                          host: "MathSoc",
                          time: Date(),
                          location: nil, description: nil, attendees: nil)
            ]
        case .tech:
            return [
                EventInfo(title: "Resume Critique",
                          host: "Tech+",
                          time: Date(),
                          location: nil, description: nil, attendees: nil),
                EventInfo(title: "Coffee Chat with Profs",
                          host: "CSC",
                          time: Date(),
                          location: nil, description: nil, attendees: nil),
                EventInfo(title: "Making your first App",
                          host: "iOS Gang",
                          time: Date(),
                          location: nil, description: nil, attendees: nil)
            ]
        }
    }
}
