//
//  ConfigItem.swift
//  Mobius
//
//  Created by Zakk Hoyt on 2/24/16.
//  Copyright © 2016 Zakk Hoyt. All rights reserved.
//

#if os(OSX)
    import Cocoa
#elseif os(iOS)
    import UIKit
#endif

class ConfigItem: NSObject {

    var params: [String] = []
    var selectedIndex: Int = 0
    var title: String
    var comment: String? = nil
    
    init(title: String, params: [String], index: Int) {
        self.title = title
        self.params = params
        self.selectedIndex = index
    }
    
    init(title: String, comment: String, params: [String], index: Int) {
        self.title = title
        self.comment = comment
        self.params = params
        self.selectedIndex = index
    }

    
    func numParams() -> Int {
        return params.count
    }
    
    func param(index: Int) -> String {
        return params[index]
    }
    
    func currentParam() -> String {
        return params[selectedIndex]
    }

}
