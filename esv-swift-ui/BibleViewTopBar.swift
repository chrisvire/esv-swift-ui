//
//  BibleViewTopBar.swift
//  esv-swift-ui
//
//  Created by Chris Hubbard on 7/27/22.
//

import SwiftUI

struct BibleViewTopBar : View {
    @State var presentingBookPicker = false
    let data:[BibleViewMenuAction] = [ .Text_Settings, .Language_Tools, .Bookmarks]
    let action: (_ actor: BibleViewMenuAction) -> Void
    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            Button(action: {}, label: {
                Image("ESV Logo")
            })
            .padding(.leading, 14)
            Spacer()
            Button("Psalm 73 ^") {
                presentingBookPicker.toggle()
            }
                .font(.custom("Gotham-Book", size: 16))
                .foregroundColor(Color(hex:"72ABBF"))
                .sheet(isPresented: $presentingBookPicker) {
                    BookPicker()
                }
            Spacer()
            Menu {
                ForEach(data, id:\.self) { (item:BibleViewMenuAction) in
                    Button( action: { action(item) }, label: {
                        Label {
                            Text(item.label)
                        } icon: {
                            Image(item.image)
                        }
                    })
                }
            } label: {
                Image("More")
            }
            .menuStyle(BibleViewMenuStyle())
            .padding(.trailing, 20)
        }
        .padding(.bottom, 10)
        .background(Color(hex:"F8F8F8"))
        .overlay(Rectangle().frame(width: nil, height: 1, alignment: .bottom).foregroundColor(Color.gray), alignment: .bottom)
    }
    public init(_ action: @escaping (_ actor: BibleViewMenuAction) -> Void) {
        self.action = action
    }
}

struct BibleViewTopBar_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            BibleViewTopBar( { actor in print(actor.label) } )
            Spacer()
        }
        
        VStack {
            BibleViewTopBar( { actor in print(actor.label) } )
            Spacer()
        }
        .previewDevice("iPhone 11")
    }
}
