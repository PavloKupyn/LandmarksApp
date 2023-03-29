//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Eric Cartman on 02.03.2022.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
