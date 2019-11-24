//
//  CarouselItemView.swift
//  reach
//
//  Created by Caelin Jackson-King on 2019-11-18.
//  Copyright © 2019 Caelin Jackson-King. All rights reserved.
//

import SwiftUI

struct ItemInfo {
    public var title: String
//    public var host: String
//    public var time: Date
    public var backgroundName: String
}

struct CarouselItemView : View {
    @State private var info: ItemInfo
    
    var body: some View {
        VStack {
            Text(info.title)
                .font(.title)
        }
    }
    
    public init(showing info: ItemInfo) {
        _info = State(initialValue: info)
    }
}

struct CarouselItemView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselItemView(showing: ItemInfo(title: "Event Title", backgroundName: "first"))
    }
}
