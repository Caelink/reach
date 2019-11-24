//
//  MessageDataProvider.swift
//  reach
//
//  Created by Caelin Jackson-King on 2019-11-24.
//  Copyright © 2019 Caelin Jackson-King. All rights reserved.
//

import Foundation

struct MessageDataProvider {
    struct ConversationInfo: Identifiable {
        private static var timeIncrements: Double = 0
        var id = UUID()
        let name: String
        let preview: String
        let image: String
        let lastUpdate: Date
        
        init(name: String, preview: String, image: String?, date: Date?) {
            self.name = name
            self.preview = preview
            self.image = image ?? "second"
            Self.timeIncrements += 1
            self.lastUpdate = date ?? Date(timeIntervalSinceNow: -580 * Self.timeIncrements)
        }
    }
    
    static let conversations = [
        ConversationInfo(name: "Chase Haddleton",
                         preview: "So how do I calculate the cover of uw relationships from linkedin?",
                         image: nil,
                         date: nil),
        ConversationInfo(name: "Robert Riachi",
                         preview: "Look at all these squares",
                         image: "first",
                         date: nil),
        ConversationInfo(name: "Jeffrey Epstein",
                         preview: "Can't believe those nerds think I killed myself",
                         image: nil,
                         date: nil),
        ConversationInfo(name: "Barack Obama",
                         preview: "Wanna see the Bin Laden clip? The marine pulled off a sick 360 noscope",
                         image: nil,
                         date: nil),
        ConversationInfo(name: "Diana Chang",
                         preview: "Come out to my event!!!!!!!!111!!11!11!one1!!!!",
                         image: nil,
                         date: nil),
        ConversationInfo(name: "Alicia Yu",
                         preview: "Sometimes I wonder why anyone does anything but eat bacon",
                         image: nil,
                         date: nil),
        ConversationInfo(name: "Andy Liang",
                         preview: "so anyways that's why thanos would have won if he used iOS",
                         image: nil,
                         date: nil),
        ConversationInfo(name: "Ariana Grande",
                         preview: "Can you get me a tall latte?",
                         image: nil,
                         date: nil)
    ]
}
