//
//  PhotoConfig.swift
//  Mobius
//
//  Created by Zakk Hoyt on 2/24/16.
//  Copyright © 2016 Zakk Hoyt. All rights reserved.
//

import UIKit

class PhotoConfig: NSObject {
    var captureSize = ConfigItem(title: "Capture Size", params: ["2304x1536", "1920x1080", "1280x720", "848x480"], index: 0)
    var timeLapse = ConfigItem(title: "Timelapse", params:
        [
            "Off",
            "4 frames every second",
            "2 frames every second",
            "1 frame every second",
            "1 frame every 2 seconds",
            "1 frame every 5 seconds",
            "1 frame every 10 seconds",
            "1 frame every 30 seconds",
            "Custom"
        ],
        index: 0)
    var flip = ConfigItem(title: "Flip", params: ["Off", "On"], index: 0)
    var timeStamp = ConfigItem(title: "Timestamp", params: ["Off", "On"], index: 0)
    var powerOn = ConfigItem(title: "Power On", params: ["Delay", "Fast"], index: 1)
    var powerOff = ConfigItem(title: "Power Off", params: ["Off", "30 seconds", "1 minute", "2 minutes"], index: 1)
    
    
}
