//
//  Config.swift
//  Mobius
//
//  Created by Zakk Hoyt on 2/24/16.
//  Copyright © 2016 Zakk Hoyt. All rights reserved.
//

import UIKit

class Config: NSObject {

    var general = GeneralConfig()
    var video1 = VideoConfig()
    var video2 = VideoConfig()
    var photo = PhotoConfig()
    var system = SystemConfig()
    
 
    func exportToFile() -> NSURL? {
        var output = ""
        output += self.general.configFileString() + "\n\n"
        output += self.video1.configFileString() + "\n\n"
        output += self.video2.configFileString() + "\n\n"
        output += self.photo.configFileString() + "\n\n"
        output += self.system.configFileString() + "\n\n"
        
        if let documentsPath = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true).first {
            var fileURL = NSURL(fileURLWithPath: documentsPath)
            fileURL = fileURL.URLByAppendingPathComponent("SYSCFG")
            fileURL = fileURL.URLByAppendingPathExtension("TXT")
            do {
                try output.writeToURL(fileURL, atomically: true, encoding: NSUTF8StringEncoding)
                print("Wrote config " + fileURL.description)
                return fileURL
            } catch _ {
                print("Unable to write to " + fileURL.description)
            
            }
        }
        return nil
    }
}
