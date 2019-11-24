//
//  HomeDataProvider.swift
//  reach
//
//  Created by Caelin Jackson-King on 2019-11-23.
//  Copyright © 2019 Caelin Jackson-King. All rights reserved.
//

import Foundation

struct HomeDataProvider {
    enum Section {
        case recommended
        case nearby
        case tech
    }
    
    struct SectionInfo: Identifiable {
        var id = UUID()
        let title: String
        let items: [EventDataProvider.EventInfo]
    }
    
    private static let sectionOrder: [Section] = [.recommended, .nearby, .tech]
    static let sections: [SectionInfo] = Self.sectionOrder.map { Self.info(for: $0) }
    
    static func info(for section: Section) -> SectionInfo {
        switch section {
        case .recommended:
            return SectionInfo(title: "Recommended for You", items: EventDataProvider.events(matching: section))
        case .nearby:
            return SectionInfo(title: "Events Nearby", items: EventDataProvider.events(matching: section))
        case .tech:
            return SectionInfo(title: "Tech Events", items: EventDataProvider.events(matching: section))
        }
    }
}
