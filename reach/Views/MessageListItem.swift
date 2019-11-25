//
//  MessageListItem.swift
//  reach
//
//  Created by Caelin Jackson-King on 2019-11-24.
//  Copyright © 2019 Caelin Jackson-King. All rights reserved.
//

import SwiftUI

struct MessageListItem: View {
    @State var conversation: Conversations.Info
    
    var body: some View {
        HStack() {
            ProfileView(showing: conversation.image)
            VStack(alignment: .leading) {
                HStack() {
                    Text(conversation.name)
                        .font(.headline)
                    Spacer()
                    Text(Events.string(for: conversation.lastUpdate, in: .timeonly))
                        .font(.callout)
                        .foregroundColor(.gray)
                }
                Text(conversation.preview)
                    .font(.subheadline)
                    .lineLimit(2)
                Spacer()
            }
            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            .padding(5)
        }
    }
}

struct MessageListItem_Previews: PreviewProvider {
    static var previews: some View {
        MessageListItem(conversation: Conversations.conversations[5])
    }
}
