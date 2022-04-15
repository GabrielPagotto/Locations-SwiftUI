//
//  LandmarkRow.swift
//  LocationsSwiftUI
//
//  Created by Gabriel Pagotto on 15/04/22.
//

import SwiftUI

struct LandmarkRowUI: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            
            Text(landmark.name)
            
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                    .padding()
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
    
    static var previews: some View {
        Group {
            LandmarkRowUI(landmark: landmarks[0])
            LandmarkRowUI(landmark: landmarks[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
