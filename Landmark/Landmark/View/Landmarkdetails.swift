//
//  Landmarkdetails.swift
//  Landmark
//
//  Created by Anthony Roushdy on 11/14/23.
//

import SwiftUI

struct Landmarkdetails: View {
    var landmark: LandMark
    
    var body: some View {
        ScrollView {//providing us with the scroller
            MapView(coordinate:landmark.locationCoordinate)
                .frame(height: 300)
            
            CircleImage(image:landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
        }
        .navigationTitle(landmark.name)
        
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct Landmarkdetails_Previews: PreviewProvider {
    static var previews: some View {
        Landmarkdetails()
    }
}
