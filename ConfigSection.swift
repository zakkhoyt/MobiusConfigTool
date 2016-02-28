//
//  ConfigSection.swift
//  Mobius
//
//  Created by Zakk Hoyt on 2/25/16.
//  Copyright © 2016 Zakk Hoyt. All rights reserved.
//

#if os(OSX)
    import Cocoa
#elseif os(iOS)
    import UIKit
#endif

class ConfigSection: NSObject {

    var items = [ConfigItem]()

    func configFileString() -> String {
        var output = ""
        for item in items  {
            // Title
            var line = item.title
            
            // Value
            line = line + "=[\(item.selectedIndex)]" + ";"
            
            // Comment
            if let comment = item.comment {
                line = line + comment + ", "
            }
            
            // Options
            for x in 0..<item.params.count {
                let param = item.params[x]
                line = line + "\(x):" + param
                if x < item.params.count - 1 {
                    line = line + ", "
                }
            }
            
            output += line + "\n"
        }
        
        return output
    }
}
