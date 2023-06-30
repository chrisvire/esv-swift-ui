//
//  BookPickerTopTabBar.swift
//  esv-swift-ui
//
//  Created by Chris Hubbard on 1/11/23.
//

import SwiftUI

struct BookPickerTopTabBar: View {
    @State var tabIndex: BookPickerTopTabBarAction
    let action: (_ actor: BookPickerTopTabBarAction) -> Void
    var body: some View {
        HStack(spacing: 20) {
            TabBarButton(text: "Old Testament", isSelected: .constant(tabIndex == .OT))
                .onTapGesture { onButtonTapped(.OT) }
            TabBarButton(text: "New Testament", isSelected: .constant(tabIndex == .NT))
                .onTapGesture { onButtonTapped(.NT) }
        }
        .border(width: 1, edges: [.bottom], color: .black)
    }
    
    private func onButtonTapped(_ action: BookPickerTopTabBarAction) {
        withAnimation { tabIndex = action }
        self.action(action)
    }
    
    public init(_ action: @escaping (_ actor: BookPickerTopTabBarAction) -> Void) {
        self.action = action
        self.tabIndex = .OT
    }
}

struct BookPickerTopTabBar_Previews:
    PreviewProvider {
    @State static var tabIndex = 0

    static var previews: some View {
        BookPickerTopTabBar({ actor in print(actor.text) })
    }
}
