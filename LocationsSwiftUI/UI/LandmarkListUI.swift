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
    @State private var searchText = "";
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite) &&
            (searchText.isEmpty || landmark.name.lowercased().contains(searchText.self.lowercased()))
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
            .searchable(text: $searchText)
        }
    }
}

struct LandmarkListUI_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkListUI()
            .environmentObject(ModelData())
    }
}
