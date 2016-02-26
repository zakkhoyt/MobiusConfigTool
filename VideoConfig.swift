//
//  VideoConfigItem.swift
//  Mobius
//
//  Created by Zakk Hoyt on 2/24/16.
//  Copyright © 2016 Zakk Hoyt. All rights reserved.
//

import UIKit

class VideoConfig: ConfigSection {
    
    override init() {
        super.init()

        
        //    VIDEO MODE 1
        //    VIDEO MODE 2
        //    Movie Resolution=[0];0:1080p(Wide AOV),1:1080p(Narrow AOV),2:720p(Wide AOV),3:720p(Narrow AOV),4:WVGA (Wide AOV), 5:WVGA (Narrow AOV),
        let resolution = ConfigItem(title: "Resolution", params: ["1080p", "720p"], index: 0)
        items.append(resolution)
        
        //    Movie Frame Rate=[3];1:60fps (only for wvga and 720p Narrow AOV),2:50fps (only for wvga and 720p Narrow AOV),3:30fps,4:25 fps,5:20 fps,6:15 fps,7:10 fps,8:5 fps,
        let frameRate = ConfigItem(title: "Framerate", params: ["60fps", "30fps"], index: 0)
        items.append(frameRate)
        
        //    Movie Time Lapse Record=[0];0:off,1:0.25s,2:0.5s,3:1s,4:2s,5:5s,6:10s,7:30s,8:Custom
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

        // TODO
//        //    Movie Time Lapse Record Customized Value=[1]    ; in minutes, values from 1 to 1440 (1 day)
//        let timeLapseCustomValue: String? = nil
//        items.append(timeLapseCustomValue)
        
        //    Movie Sound=[1];set movie sound,0:Mute,1:On,
        let sound = ConfigItem(title: "Sound", params:["Mute", "On"], index: 1)
        items.append(sound)
        
        //    Movie Cycle time=[2];movie cycle time,0:3 minutes,1:5 minutes,2:10 minutes,3:15 minutes,4:max to 4G byte,
        let cycleTime = ConfigItem(title: "Cycle Time", params: [
            "3 minutes",
            "5 minutes",
            "10 minutes",
            "15 minutes",
            "Max"
            ], index: 2)
        items.append(cycleTime)
        
        //    Movie Loop Recording=[0];set loop recording on or off,0:off,1:on,
        let loopRecording = ConfigItem(title: "Loop Recording", params: ["Off", "On"], index: 0)
        items.append(loopRecording)
        
        //    Movie Flip=[0];set movie rotate,0:off,1:on,
        let flip = ConfigItem(title: "Flip", params: ["Off", "On"], index: 0)
        items.append(flip)
        
        //    Movie Time stamp=[1];set date/time stamp on or off,0:off,1:on,
        let timeStamp = ConfigItem(title: "Timestamp", params: ["Off", "On"], index: 0)
        items.append(timeStamp)
        
        //    Movie quality=[1];set movie quality,set movie data rate,0:Super,1:Standard,2:Low,
        let quality = ConfigItem(title: "Quality", params: ["Super", "Standard", "Low"], index: 1)
        items.append(quality)
        
        //    Movie high dynamic range=[0];set movie high dynamic range,0:off,1:on,2:Enhanced Brightness,
        let hdr = ConfigItem(title: "HDR", params: ["Off", "On", "Enhanced Brightness"], index: 0)
        items.append(hdr)
        
        //    Movie file format=[0];set movie file format,0:MOV,1:AVI,2:MP4,3:WAV (Sound Only)
        let fileFormat = ConfigItem(title: "File Format", params: [".mov", ".avi", ".mp4", ".wav"], index: 0)
        items.append(fileFormat)
        
    }
}


















