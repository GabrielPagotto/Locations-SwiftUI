//
//  LocationsSwiftUIApp.swift
//  LocationsSwiftUI
//
//  Created by Gabriel Pagotto on 11/04/22.
//

import SwiftUI

@main
struct LocationsSwiftUIApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            LandmarkListUI()
                .environmentObject(modelData)
        }
    }
}

