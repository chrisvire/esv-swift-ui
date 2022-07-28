//
//  VerticalLabelStyle.swift
//  esv-swift-ui
//
//  Created by Chris Hubbard on 6/27/22.
//

import SwiftUI

struct VerticalLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack(alignment: .center, spacing: 8) {
            configuration.icon
            configuration.title
        }
    }
}
