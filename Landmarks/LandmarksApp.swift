//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Lukasz on 05.04.24.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
