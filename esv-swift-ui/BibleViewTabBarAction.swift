//
//  BibleViewAction.swift
//  esv-swift-ui
//
//  Created by Chris Hubbard on 7/27/22.
//

import Swift


enum BibleViewTabBarAction : String {
    case Home
    case Explore
    case Library
    case Listen
    case Search
    
    var text: String {
        rawValue
    }
    
    var image: String {
        "TabBar_" + rawValue
    }
}

