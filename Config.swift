//
//  Config.swift
//  Mobius
//
//  Created by Zakk Hoyt on 2/24/16.
//  Copyright © 2016 Zakk Hoyt. All rights reserved.
//

import UIKit

class Config: NSObject {

    var videoMode1: VideoConfig? = nil
    var videoMode2: VideoConfig? = nil
    
    
    override init() {
        videoMode1 = VideoConfig()
        videoMode2 = VideoConfig()
    }
}
