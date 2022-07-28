//
//  BibleViewMenuAction.swift
//  esv-swift-ui
//
//  Created by Chris Hubbard on 7/27/22.
//

import Swift


enum BibleViewMenuAction : String {
    case Text_Settings
    case Language_Tools
    case Bookmarks
    case Listen
    case Search
    
    var label: String {
        rawValue.replacingOccurrences(of: "_", with: " ")
    }
    
    var image: String {
        "Menu_" + rawValue.replacingOccurrences(of: "_", with: "")
    }
}
