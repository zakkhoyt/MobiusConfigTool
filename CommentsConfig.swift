//
//  HardwareConfig.swift
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

class HardwareConfig: ConfigSection {

//    {TLCAM MOV:TLCAM Mobius ActionCam 2015/05/13 v2.37}
//    {LDTLCAM,v003}

    override func configFileString() -> String {
        var output = "{TLCAM MOV:TLCAM Mobius ActionCam 2015/05/13 v2.37}\n"
        output = output + "{LDTLCAM,v003}"
        return output
    }

    
}
