//
//  LandmarkDetailUI.swift
//  LocationsSwiftUI
//
//  Created by Gabriel Pagotto on 15/04/22.
//

import SwiftUI

struct LandmarkDetailUI: View {
    var landmark: Landmark
    
    var body: some View {
        VStack {
            MapUI(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
            
            CircleImageUI(image: landmark.image)
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
    static var previews: some View {
        LandmarkDetailUI(landmark: landmarks[0])
    }
}
