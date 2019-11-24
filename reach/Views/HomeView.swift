//
//  HomeView.swift
//  reach
//
//  Created by Caelin Jackson-King on 2019-11-23.
//  Copyright © 2019 Caelin Jackson-King. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    let sections: [Home.SectionInfo] = Home.sections
    
    var body: some View {
        ScrollView() {
            VStack() {
                ForEach(sections) { (section: Home.SectionInfo) in
                    VStack(alignment: .leading) {
                        Text(section.title)
                            .font(.title)
                        EventCarouselView(events: section.items)
                    }
                    .padding()
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
