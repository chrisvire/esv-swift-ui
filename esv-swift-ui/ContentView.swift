//
//  ContentView.swift
//  esv-swift-ui
//
//  Created by Chris Hubbard on 6/27/22.
//

import SwiftUI

struct ContentView: View {
    @State var message = "What to do?"
    var body: some View {
        VStack {
            BibleViewTopBar( { (actor:BibleViewMenuAction) in
                message = actor.label
            })
            Spacer()
            Text(message)
                .font(.custom("Gotham-Book", size: 24))
            Spacer()
            BibleViewTabBar( { (actor:BibleViewTabBarAction) in
                message = actor.text
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .previewDevice("iPhone 11")
    }
}
