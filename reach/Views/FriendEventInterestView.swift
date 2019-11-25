//
//  FriendEventInterestView.swift
//  reach
//
//  Created by Caelin Jackson-King on 2019-11-25.
//  Copyright © 2019 Caelin Jackson-King. All rights reserved.
//

import SwiftUI

struct FriendEventInterestView: View {
    @State var friend: Friends.Info
    @State var event: Events.Info
    
    var body: some View {
        HStack() {
            ProfileView(showing: friend.image)
            VStack(alignment: .leading) {
                Text(friend.name)
                    .font(.headline)
                HStack() {
                    VStack(alignment: .leading) {
                        Text(event.title)
                            .font(.callout)
                            .bold()
                        Text(Events.string(for: event.time, in: .short))
                    }
                    Spacer()
                }
                .padding(3)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(5)
            }
        .padding(5)
        }
    }
    
    init(friend: Friends.Info, attending event: Events.Info) {
        _friend = State(initialValue: friend)
        _event = State(initialValue: event)
    }
}

struct FriendEventInterestView_Previews: PreviewProvider {
    static var previews: some View {
        FriendEventInterestView(friend: Friends.people[0],
                                attending: Events.events[0])
    }
}
