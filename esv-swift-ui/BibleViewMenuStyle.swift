//
//  BibleViewMenuStyle.swift
//  esv-swift-ui
//
//  Created by Chris Hubbard on 7/13/22.
//

import SwiftUI

struct BibleViewMenuLabelStyle : LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack(alignment: .center, spacing: 8) {
            configuration.title
                .font(.custom("Gotham-Book", size: 14 ))
            configuration.icon
        }
    }
}

struct BibleViewButtonStyle : ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack(alignment: .center, spacing: 8) {
            configuration.label
                .font(.custom("Gotham-Book", size: 8 ))
        }
    }
}

struct BibleViewMenuStyle : MenuStyle {
    func makeBody(configuration: Configuration) -> some View {
            Menu(configuration)
            .body.buttonStyle(BibleViewButtonStyle())
            .buttonStyle(BibleViewButtonStyle())
    }
}
