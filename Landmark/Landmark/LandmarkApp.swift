//
//  LandmarkApp.swift
//  Landmark
//
//  Created by Anthony Roushdy on 11/7/23.
//

import SwiftUI

@main
struct LandmarkApp: App {
    @State private var modelData = modeldata()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modeldata)
        }
    }
}
