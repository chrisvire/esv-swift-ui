//
//  ContentView.swift
//  esv-swift-ui
//
//  Created by Chris Hubbard on 6/27/22.
//

import SwiftUI

struct ContentView: View {
    @State var message = "What to do?"
    @State var showSettings = false
    var body: some View {
        VStack {
            BibleViewTopBar( { (actor:BibleViewMenuAction) in
                message = actor.label
                if (actor == BibleViewMenuAction.Text_Settings) {
                    showSettings = true
                }
            })
            Spacer()
            Text(message)
                .font(.custom("Gotham-Book", size: 24))
            Spacer()
            BibleViewTabBar( { (actor:BibleViewTabBarAction) in
                message = actor.text
            })
        }
        .sheet(isPresented: $showSettings) {
            if #available(iOS 16.0, *) {
                TextSettingsView(showTextSettings: $showSettings)
                    .presentationDetents([.medium, .large])
            } else {
                // Fallback on earlier versions
                TextSettingsView(showTextSettings: $showSettings)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDisplayName("Main")
        ContentView()
            .previewDisplayName("iPhone 11")
            .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
    }
}
