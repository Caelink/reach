//
//  FriendEventListView.swift
//  reach
//
//  Created by Caelin Jackson-King on 2019-11-25.
//  Copyright © 2019 Caelin Jackson-King. All rights reserved.
//

import SwiftUI

struct FriendEventListView: View {
    @State var pairings: [Two<Friends.Info, Events.Info>]
    var body: some View {
        List(pairings) { (pairing) in
            FriendEventInterestView(friend: pairing.t, attending: pairing.u)
        }
    }
    
    init(pairings: [Two<Friends.Info, Events.Info>]) {
        _pairings = State(initialValue: pairings)
    }
}

struct FriendEventListView_Previews: PreviewProvider {
    static var previews: some View {
        FriendEventListView(pairings: Events.events(for: Friends.people))
    }
}
