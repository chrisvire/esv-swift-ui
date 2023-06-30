//
//  TabBarButton.swift
//  esv-swift-ui
//
//  Created by Chris Hubbard on 1/11/23.
//

import SwiftUI

struct TabBarButton: View {
    let text: String
    @Binding var isSelected: Bool
    var body: some View {
        Text(text)
            .fontWeight(isSelected ? .regular : .light)
            .font(.custom("Gotham-Book", size: 16))
            .padding(.bottom, 10)
            .border(width: isSelected ? 2 : 1, edges: [.bottom], color: .black)
    }
}
