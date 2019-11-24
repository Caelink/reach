//
//  EventCarouselView.swift
//  reach
//
//  Created by Caelin Jackson-King on 2019-11-23.
//  Copyright © 2019 Caelin Jackson-King. All rights reserved.
//

import SwiftUI

struct EventCarouselView: View {
    let events: [EventDataProvider.EventInfo]
    
    func format(time: Date) -> String {
        return "Thursday, 7:00pm"
    }
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: true) {
            HStack(spacing: 20) {
                ForEach(events) { (event: EventDataProvider.EventInfo) in
                    VStack(alignment: .leading) {
                        Text(event.title)
                            .font(.title)
                        Spacer()
                            .frame(height: 30)
                        Text(event.host)
                            .font(.headline)
                        Text(self.format(time: event.time))
                            .font(.subheadline)
                    }
                    .frame(width: 250, height: 200)
                    .background(Color.orange)
                    .cornerRadius(5)
                }
            }
//            .padding(.leading, 10)
        }
    }
    
    init(events: [EventDataProvider.EventInfo]) {
        self.events = events
    }
}

struct EventCarouselView_Previews: PreviewProvider {
    static var previews: some View {
        EventCarouselView(events: EventDataProvider.events(matching: .nearby))
    }
}
