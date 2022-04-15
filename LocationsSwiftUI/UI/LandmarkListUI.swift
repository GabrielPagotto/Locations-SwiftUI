//
//  LandmarkListUI.swift
//  LocationsSwiftUI
//
//  Created by Gabriel Pagotto on 15/04/22.
//

import SwiftUI

struct LandmarkListUI: View {
    var text: String?
    
    var body: some View {
        NavigationView {
            List (landmarks) { landmark in
                NavigationLink {
                    LandmarkDetailUI(landmark: landmark)
                } label: {
                    LandmarkRowUI(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkListUI_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkListUI()
    }
}
