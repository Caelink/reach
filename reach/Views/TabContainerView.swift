//
//  HomeView.swift
//  reach
//
//  Created by Caelin Jackson-King on 2019-11-18.
//  Copyright © 2019 Caelin Jackson-King. All rights reserved.
//

import SwiftUI

struct TabContainerView: View {
    @State private var selection = 0
    private var tabs: [Tabs.Info] = Tabs.tabs
    
    func view(for selection: Tabs.Tab) -> some View {
        switch selection {
        case .home:
            return AnyView(HomeView())
        case .discover:
            return AnyView(Text(selection.rawValue))
        case .friends:
            return AnyView(FriendEventListView(pairings: Events.events(for: Friends.people)))
        case .inbox:
            return AnyView(MessageListView(showing: Conversations.conversations))
        case .profile:
            return AnyView(Text(selection.rawValue))
        }
    }
    
    var body: some View {
        NavigationView() {
            TabView(selection: $selection) {
                ForEach(0..<tabs.count) { (index) in
                    self.view(for: self.tabs[index].tab)
                        .tabItem {
                            VStack {
                                Image(systemName: self.tabs[index].image)
                                Text(self.tabs[index].title)
                            }
                    }
                    .tag(index)
                }
            }
            .navigationBarTitle(tabs[selection].title)
            .navigationBarItems(trailing: Group {
                if tabs[selection].action != nil {
                    Image(systemName: tabs[selection].action!)
                        .foregroundColor(.orange)
                } else {
                    Text("None").hidden()
                }})
        }
    }
}

struct TabContainerView_Previews: PreviewProvider {
    static var previews: some View {
        TabContainerView()
    }
}
