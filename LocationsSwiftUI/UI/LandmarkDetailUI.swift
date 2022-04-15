//
//  LandmarkDetailUI.swift
//  LocationsSwiftUI
//
//  Created by Gabriel Pagotto on 15/04/22.
//

import SwiftUI

struct LandmarkDetailUI: View {
    @EnvironmentObject var modelData: ModelData
    
    var landmark: Landmark
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    
    var body: some View {
        VStack {
            MapUI(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
            
            CircleImageUI(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                
                HStack {
                    Text(landmark.name)
                        .font(.title)
                    
                    FavoriteButtonUI(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
                
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.title2)
                
                Text(landmark.description)
            }
            .padding()
            
            Spacer()
        }
    }
}

struct LandmarkDetailUI_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
    
    static var previews: some View {
        LandmarkDetailUI(landmark: landmarks[0])
            .environmentObject(ModelData())
    }
}
