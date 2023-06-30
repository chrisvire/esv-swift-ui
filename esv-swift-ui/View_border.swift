//
//  View_border.swift
//  esv-swift-ui
//
//  Created by Chris Hubbard on 1/11/23.
//
//  From: https://medium.com/geekculture/custom-top-tab-bar-in-ios-swift-swiftui-93e4fc3e5d5b

import SwiftUI

extension View {
    func border(width: CGFloat, edges: [Edge], color: SwiftUI.Color) -> some View {
        overlay(EdgeBorder(width: width, edges: edges).foregroundColor(color))
    }
}
