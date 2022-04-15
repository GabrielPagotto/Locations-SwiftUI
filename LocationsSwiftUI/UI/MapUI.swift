//
//  MapView.swift
//  LocationsSwiftUI
//
//  Created by Gabriel Pagotto on 11/04/22.
//

import SwiftUI
import MapKit

struct MapUI: View {
    var coordinate: CLLocationCoordinate2D
    
    @State private var region = MKCoordinateRegion()
    
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
                setRegion(coordinate)
            }
    }
    
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: coordinate, span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapUI(
            coordinate: CLLocationCoordinate2D(
                latitude: 34.011_286, longitude: -116.166_868
            )
        )
    }
}
