//
//  SwiftUIView.swift
//  LocationsSwiftUI
//
//  Created by Gabriel Pagotto on 11/04/22.
//

import SwiftUI

struct CircleImageView: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(
                Circle()
            )
            .overlay{
                Circle().stroke(.gray, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView()
    }
}
