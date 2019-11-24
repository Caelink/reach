//
//  MessageListItem.swift
//  reach
//
//  Created by Caelin Jackson-King on 2019-11-24.
//  Copyright © 2019 Caelin Jackson-King. All rights reserved.
//

import SwiftUI

struct MessageListItem: View {
    @State var conversation: MessageDataProvider.ConversationInfo
    
    func format(time: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .none
        formatter.timeStyle = .medium
        return formatter.string(from: time)
    }
    
    var body: some View {
        HStack() {
            Image(conversation.image)
                .resizable()
                .clipShape(Circle())
                .frame(width: 50.0, height: 50.0)
                .overlay(
                    Circle()
                        .stroke(Color.white,lineWidth:4)
                        .shadow(radius: 5))
            VStack(alignment: .leading) {
                HStack() {
                    Text(conversation.name)
                        .font(.headline)
                    Spacer()
                    Text(self.format(time: conversation.lastUpdate))
                        .font(.callout)
                        .foregroundColor(.gray)
                }
                Text(conversation.preview)
                    .font(.subheadline)
                    .lineLimit(2)
            }
            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            .padding(5)
        }
    }
}

struct MessageListItem_Previews: PreviewProvider {
    static var previews: some View {
        MessageListItem(conversation: MessageDataProvider.conversations[5])
    }
}
