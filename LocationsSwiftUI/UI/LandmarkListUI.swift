//
//  LandmarkListUI.swift
//  LocationsSwiftUI
//
//  Created by Gabriel Pagotto on 15/04/22.
//

import SwiftUI

struct LandmarkListUI: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites Only")
                }
                
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetailUI(landmark: landmark)
                    } label: {
                        LandmarkRowUI(landmark: landmark)
                    }
                }
                
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkListUI_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkListUI()
            .environmentObject(ModelData())
    }
}
