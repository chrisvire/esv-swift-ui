//
//  BiblePicker.swift
//  esv-swift-ui
//
//  Created by Chris Hubbard on 12/15/22.
//

import SwiftUI

struct BookPicker: View {
    @State private var selectedTab = "Old Testament"
    let otBooks = ESVData.oldTestamentBooks() as! [String]
    let ntBooks = ESVData.newTestamentBooks() as! [String]
    @State private var scrollTarget: BookPickerTopTabBarAction?
    var body: some View {
        VStack {
            BookPickerTopTabBar( { action in scrollTarget = action })
            Divider()
            ScrollViewReader { (proxy: ScrollViewProxy) in
                List {
                    ForEach(otBooks, id: \.self) { book in
                        HStack {
                            Text(book)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .onTapGesture {
                                    
                                }
                        }
                        .listRowSeparator(.hidden)
                    }
                    .id(BookPickerTopTabBarAction.OT)
                    
                    Divider()
                        .overlay(.gray)
                        .padding([.top, .bottom], 20)
                    
                    ForEach(ntBooks, id:\.self) { book in
                        HStack {
                            Text(book)
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        .listRowSeparator(.hidden)
                    }
                    .id(BookPickerTopTabBarAction.NT)
                    
                    
                }
                .frame(maxWidth: .infinity)
                .edgesIgnoringSafeArea(.top)
                .listStyle(PlainListStyle())
                .onChange(of: scrollTarget) { target in
                    if let target = target {
                        scrollTarget = nil
                        
                        withAnimation {
                            proxy.scrollTo(target, anchor: .top)
                        }
                    }
                    
                }
            }
        }
    }
}

struct BiblePicker_Previews: PreviewProvider {
    static var previews: some View {
        BookPicker()
    }
}
