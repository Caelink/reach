//
//  TabDataProvider.swift
//  reach
//
//  Created by Caelin Jackson-King on 2019-11-18.
//  Copyright © 2019 Caelin Jackson-King. All rights reserved.
//

import Foundation

struct TabDataProvider {
    enum Tab: String {
        case home
        case discover
        case friends
        case inbox
        case profile
    }
    
    struct TabInfo {
        public var tab: Tab
        public var title: String
        public var image: String
        public var action: String?
    }
    
    private static func info(for tab: Tab) -> TabInfo {
        switch tab {
        case .home:
            return TabInfo(tab: tab,
                           title: "Home",
                           image: "house",
                           action: "magnifyingglass")
        case .discover:
            return TabInfo(tab: tab,
                           title: "Discover",
                           image: "globe")
        case .friends:
            return TabInfo(tab: tab,
                           title: "Friends",
                           image: "person.3")
        case .inbox:
            return TabInfo(tab: tab,
                           title: "Inbox",
                           image: "bubble.left.and.bubble.right",
                           action: "square.and.pencil")
        case .profile:
            return TabInfo(tab: tab,
                           title: "Profile",
                           image: "person.crop.circle",
                           action: "pencil")
        }
    }
    
    private static let tabOrder: [Tab] = [.home, .discover, .friends, .inbox, .profile]
    public static let tabs: [TabInfo] = Self.tabOrder.map { Self.info(for: $0) }
    
    public static func detail(for tab: Tab) -> Any? {
        return nil
    }
}
