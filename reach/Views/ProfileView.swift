//
//  ProfileView.swift
//  reach
//
//  Created by Caelin Jackson-King on 2019-11-25.
//  Copyright © 2019 Caelin Jackson-King. All rights reserved.
//

import SwiftUI

struct ProfileView: View {
    @State var image: String
    @State var diameter: CGFloat
    
    var body: some View {
        Image(image)
        .resizable()
        .clipShape(Circle())
        .frame(width: diameter, height: diameter)
        .overlay(
            Circle()
                .stroke(Color.white,lineWidth:4)
                .shadow(radius: 5))
    }
    
    init(showing image: String, diameter: CGFloat = 60.0) {
        _image = State(initialValue: image)
        _diameter = State(initialValue: diameter)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(showing: "second")
    }
}
