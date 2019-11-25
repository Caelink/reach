//
//  Events.swift
//  reach
//
//  Created by Caelin Jackson-King on 2019-11-23.
//  Copyright © 2019 Caelin Jackson-King. All rights reserved.
//

import Foundation


struct Two<T: Identifiable, U: Identifiable>: Identifiable, Equatable {
    var id: Int {
        get {
            return t.id.hashValue &* 31 &+ u.id.hashValue
        }
    }
    let t: T
    let u: U

    init(_ t: T, _ u: U) {
        (self.t, self.u) = (t, u)
    }
    
    static func ==<T: Identifiable, U: Identifiable>(lhs: Two<T, U>, rhs: Two<T, U>) -> Bool {
        return lhs.t.id == rhs.t.id && lhs.u.id == rhs.u.id
    }
}

struct Events {
    enum DateMode {
        case full
        case short
        case timeonly
    }
    
    struct Info: Identifiable, Equatable {
        var id = UUID()
        static func == (lhs: Info, rhs: Info) -> Bool {
            lhs.id == rhs.id
        }
        
        let title: String
        let host: String
        let time: Date
        let location: String?
        let description: String?
        let attendees: [Friends.Info]
        let tags: [Home.Section]
    }
    
    static let events = [
        Info(title: "Board Game Night",
             host: "MathSoc",
             time: Date(timeIntervalSinceNow: 3600),
             location: nil, description: nil,
             attendees: [Friends.alicia],
             tags: [.recommended, .nearby]),
        Info(title: "Resume Critique",
             host: "Tech+",
             time: Date(timeIntervalSinceNow: 21600),
             location: nil, description: nil,
             attendees: [Friends.robert],
             tags: [.recommended, .tech]),
        Info(title: "Coffee Chat with Profs",
             host: "CSC",
             time: Date(timeIntervalSinceNow: 21600),
             location: nil, description: nil,
             attendees: [],
             tags: [.recommended, .tech]),
        Info(title: "Making your first App",
             host: "iOS Gang",
             time: Date(timeIntervalSinceNow: 50000),
             location: nil, description: nil,
             attendees: [Friends.andy, Friends.caelin],
             tags: [.tech]),
        Info(title: "The Good Place Watch Party",
             host: "Andy Liang",
             time: Date(timeIntervalSinceNow: 86400),
             location: nil, description: nil,
             attendees: [Friends.andy],
             tags: [.nearby]),
        Info(title: "CS does Chainer",
             host: "Caelin Jackson-King",
             time: Date(timeIntervalSinceNow: 201600),
             location: nil, description: nil,
             attendees: [Friends.caelin],
             tags: [.nearby])
    ]
    
    static func events(matching section: Home.Section) -> [Info] {
        return events.filter { $0.tags.contains(section) }
    }
    
    static func events(for friends: [Friends.Info]) -> [Two<Friends.Info, Info>] {
        return friends
            .map { (friend) in
                events
                    .filter { $0.attendees.contains(friend) }
                    .map { Two(friend, $0) }
        }.reduce([], +)
            .sorted() { (lhs, rhs) in
                let lhsDate = lhs.u.time
                let rhsDate = rhs.u.time
                return lhsDate.compare(rhsDate) != .orderedDescending
        }
    }
    
    static func string(for time: Date, in mode: DateMode) -> String {
        let formatter = DateFormatter()
        switch mode {
        case .full:
            formatter.dateStyle = .short
            formatter.timeStyle = .short
        case .short:
            formatter.dateStyle = .short
            formatter.timeStyle = .short
        case .timeonly:
            formatter.dateStyle = .none
            formatter.timeStyle = .medium
        }
        return formatter.string(from: time)
    }
}
