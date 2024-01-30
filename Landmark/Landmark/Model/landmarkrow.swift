//
//  landmarkrow.swift
//  Landmark
//
//  Created by Anthony Roushdy on 11/14/23.
//

import SwiftUI

struct landmarkrow: View {
    var landmark: LandMark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            
            Spacer()
        }
    }
}

struct landmarkrow_Previews: PreviewProvider {
    static var previews: some View {
        landmarkrow()
    }
}
