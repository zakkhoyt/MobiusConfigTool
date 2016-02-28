//
//  Config.swift
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

class Config: NSObject {

    var general = GeneralConfig()
    var video1 = VideoConfig()
    var video2 = VideoConfig()
    var photo = PhotoConfig()
    var system = SystemConfig()
    var hardware = HardwareConfig()
    
 
    func exportToFile() -> NSURL? {
        var output = ""

        output += self.general.configFileString() + "\n"
        
        output += "VIDEO MODE 1\n"
        output += self.video1.configFileString() + "\n"
        
        output += "VIDEO MODE 2\n"
        output += self.video2.configFileString() + "\n"
        
        output += "PHOTO MODE\n"
        output += self.photo.configFileString() + "\n"
        
        output += self.system.configFileString() + "\n"
        
        output += self.hardware.configFileString() + "\n"
        
        print("syscfg.txt: \n" + output)
        
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
    
    func importFromFile(url: NSURL) {
        
    }
}
