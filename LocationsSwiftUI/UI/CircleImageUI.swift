//
//  SwiftUIView.swift
//  LocationsSwiftUI
//
//  Created by Gabriel Pagotto on 11/04/22.
//

import SwiftUI

struct CircleImageUI: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageUI(image: Image("turtlerock"))
    }
}
