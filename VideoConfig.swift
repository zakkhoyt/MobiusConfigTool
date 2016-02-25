//
//  VideoConfigItem.swift
//  Mobius
//
//  Created by Zakk Hoyt on 2/24/16.
//  Copyright © 2016 Zakk Hoyt. All rights reserved.
//

import UIKit

class VideoConfig: NSObject {
    
    var resolution = ConfigItem(title: "Resolution", params: ["1080p", "720p"], index: 0)
    var frameRate = ConfigItem(title: "Framerate", params: ["60fps", "30fps"], index: 0)
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
    var timeLapseCustomValue: String? = nil
    
    var sound = ConfigItem(title: "Sound", params:["Mute", "On"], index: 1)
    var cycleTime = ConfigItem(title: "Cycle Time", params: [
        "3 minutes",
        "5 minutes",
        "10 minutes",
        "15 minutes",
        "Max"
        ], index: 2)
    
    
    var loopRecording = ConfigItem(title: "Loop Recording", params: ["Off", "On"], index: 0)
    var flip = ConfigItem(title: "Flip", params: ["Off", "On"], index: 0)
    var timeStamp = ConfigItem(title: "Timestamp", params: ["Off", "On"], index: 0)
    var quality = ConfigItem(title: "Quality", params: ["Super", "Standard", "Low"], index: 1)
    var HDR = ConfigItem(title: "HDR", params: ["Off", "On", "Enhanced Brightness"], index: 0)
    var fileFormat = ConfigItem(title: "File Format", params: [".mov", ".avi", ".mp4", ".wav"], index: 0)
    
}
