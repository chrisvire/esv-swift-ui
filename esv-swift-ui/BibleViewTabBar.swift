//
//  BibleViewTabBar.swift
//  esv-swift-ui
//
//  Created by Chris Hubbard on 7/27/22.
//

import SwiftUI

struct BibleViewTabBar: View {
    let data:[BibleViewTabBarAction] = [.Home, .Explore, .Library, .Listen, .Search]
    let action: (_ actor: BibleViewTabBarAction) -> Void
    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            ForEach(data, id:\.self) { item in
                Button(action: { action(item) }, label: {
                    Label {
                        Text(item.text)
                            .font(.custom("Gotham-Book", size:8.0))
                            .frame(maxWidth: .infinity)
                            .foregroundColor(Color(hex:"9A9FA3"))
                    } icon: {
                        Image(item.image)
                    }
                    .labelStyle(VerticalLabelStyle())
                })
            }
        }
        .padding(.top, 10)
        .overlay(Rectangle().frame(width: nil, height: 1, alignment: .top).foregroundColor(Color.gray), alignment: .top)
        .background(Color(hex:"FAFAFA"))
    }
    public init(_ action: @escaping (_ actor: BibleViewTabBarAction) -> Void) {
        self.action = action
    }
}

struct BibleViewTabBar_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            Spacer()
            BibleViewTabBar( { actor in print(actor.text) } )
        }
        
        VStack {
            Spacer()
            BibleViewTabBar( { actor in print(actor.text) } )
        }
        .previewDevice("iPhone 11")
    }
}
