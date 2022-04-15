//
//  FavoriteButtonUI.swift
//  LocationsSwiftUI
//
//  Created by Gabriel Pagotto on 15/04/22.
//

import SwiftUI

struct FavoriteButtonUI: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundColor(isSet ? .yellow : .gray)
        }
    }
}

struct FavoriteButtonUI_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButtonUI(isSet: .constant(true))
    }
}
