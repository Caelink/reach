//
//  MessageListView.swift
//  reach
//
//  Created by Caelin Jackson-King on 2019-11-24.
//  Copyright © 2019 Caelin Jackson-King. All rights reserved.
//

import SwiftUI

struct MessageListView: View {
    @State var conversations: [MessageDataProvider.ConversationInfo] = []

    var body: some View {
        List() {
            ForEach(conversations) { (conversation) in
                MessageListItem(conversation: conversation)
            }
        }
    }
    
    init(showing conversations: [MessageDataProvider.ConversationInfo]) {
        _conversations = State(initialValue: conversations)
    }
}

struct MessageListView_Previews: PreviewProvider {
    static var previews: some View {
        MessageListView(showing: MessageDataProvider.conversations)
    }
}
