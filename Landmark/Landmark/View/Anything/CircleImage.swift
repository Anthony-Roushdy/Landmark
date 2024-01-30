//
//  CircleImage.swift
//  Landmark
//
//  Created by Anthony Roushdy on 11/7/23.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("tutlerock")
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.gray, lineWidth: 4)
            }
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

