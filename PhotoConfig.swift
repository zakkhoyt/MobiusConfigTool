//
//  PhotoConfig.swift
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

class PhotoConfig: ConfigSection {
    override init() {
        super.init()
        //    PHOTO MODE
        //    Photo Mode Capture Size=[0];set photo size,0:2304x1536,1:1920x1080,2:1280x720,3:848x480
        let captureSize = ConfigItem(title: "Capture Size", params: ["2304x1536", "1920x1080", "1280x720", "848x480"], index: 0)
        items.append(captureSize)
        
        //    When time lapse shooting set to 5Min or above, Mobius will work in power saving mode (auto turns on/off).
        //    Photo Set Time Lapse Shooting=[0],0:off,1:0.25s,2:0.5s,3:1s,4:2s,5:5s,6:10s,7:30s,8:Custom
        let timeLapse = ConfigItem(title: "Timelapse", params:
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
        items.append(timeLapse)
        
        //    Photo Time Lapse Shooting Customized Value=[1]    ; in minutes, values from 1 to 43,200 (30 days)
        // TODO
        
        //    Photo Flip=[0];set Photo rotate,0:off,1:flip on
        let flip = ConfigItem(title: "Flip", params: ["Off", "On"], index: 0)
        items.append(flip)
        
        //    Photo Time stamp=[1];set date/time stamp on or off,0:off,1:on,
        let timeStamp = ConfigItem(title: "Timestamp", params: ["Off", "On"], index: 0)
        items.append(timeStamp)
        
    }
    
}
