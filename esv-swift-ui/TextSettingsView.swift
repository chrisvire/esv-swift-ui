//
//  TextSettingsView.swift
//  esv-swift-ui
//
//  Created by Chris Hubbard on 9/27/22.
//

import SwiftUI

struct TextSettingsView: View {
    @Binding var showTextSettings: Bool
    @State private var font = "Sentinal"
    @State private var selected = 0
    var body: some View {
        VStack {
            HStack {
                Image("Close").frame(alignment: .leading).padding().hidden()
                Text("Text Settings")
                .font(.custom("Gotham-Book", size: 16))
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()

                Button(action: { self.showTextSettings = false}){
                   Image("Close")
                }
                .frame(alignment: .trailing)
                .padding()

            }
            //.padding(.bottom, 10)
            .overlay(Rectangle().frame(width: nil, height: 1, alignment: .bottom).foregroundColor(Color.gray), alignment: .bottom)
            HStack {
                Button(action: {}) {
                    Image("TextSettings_Smaller")
                }
                .frame(height: 23)
                .padding(10)
                .frame(maxWidth: .infinity, alignment: .center)
                .background(Color(hex:"F2F2F2"))
                .cornerRadius(4)

                Button(action: {}) {
                    Image("TextSettings_Larger")
                }
                .frame(height: 23)
                .padding(10)
                .frame(maxWidth: .infinity, alignment: .center)
                .background(Color(hex:"F2F2F2"))
                .cornerRadius(4)

                Button(action: {}) {
                    Image("TextSettings_LineHeight")
                }
                .frame(height: 23)
                .padding(10)
                .frame(maxWidth: .infinity, alignment: .center)
                .background(Color(hex:"F2F2F2"))
                .cornerRadius(4)
            }
            .padding()
            HStack {
                Image("Chevron_Right")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .hidden()
                    .padding()
                Text("Sentinel")
                    .frame(height: 46)
                    .frame(maxWidth: .infinity, alignment: .center)
                Image("Chevron_Right")
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .padding()

            }
            .background(Color(hex:"F2F2F2"))
            .cornerRadius(4)
            .padding()
            HStack {
                Button(action: {}) {
                    Image("TextSettings_LightTheme")
                }
                .frame(maxWidth: .infinity, alignment: .center)
                
                Button(action: {}) {
                    Image("TextSettings_SepiaTheme")
                }
                .frame(maxWidth: .infinity, alignment: .center)
                 
                Button(action: {}) {
                    Image("TextSettings_DarkTheme")
                }
                .frame(maxWidth: .infinity, alignment: .center)

                
                Button(action: {}) {
                    Text("Auto")
                        .font(.custom("Gotham-Book", size: 14))
                        .foregroundColor(Color(hex: "424547"))

                }
                .frame(width:70, height:80)
                .frame(alignment: .center)
                .background(Color(hex:"F2F2F2"))
                .cornerRadius(4)
            }
            .padding()
            Spacer()
        }
    }
}

struct TextSettingsView_Previews: PreviewProvider {
    @State static var showTextSettings = false
    static var previews: some View {
        TextSettingsView(showTextSettings: $showTextSettings)
            .previewDevice(PreviewDevice(rawValue: "iPad Pro (11-inch)"))
    }
}
