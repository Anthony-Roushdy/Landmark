//
//  LandmarkList.swift
//  Landmark
//
//  Created by Anthony Roushdy on 11/16/23.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationSplitView {
            List(landmarks) {
                landmark in NavigationLink {
                    LandmarkDetail(landmark:landmark)
                } label: {
                    Landmarkrow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
