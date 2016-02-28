//
//  GeneralConfig.swift
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

class GeneralConfig: ConfigSection {
    override init() {
        super.init()
        
        //    Date format=[0];set date format,0:YYYY/MM/DD, 1:DD/MM/YYYY, 2:MM/DD/YYYY
        let dateFormat = ConfigItem(title: "Date Format",
            comment: "set date format",
            params: [
            "YYYY/MM/DD",
            "DD/MM/YYYY",
            "MM/DD/YYYY"], index: 0)
        items.append(dateFormat)
        
        
        //    Date time=[2013/07/16-10:06:33];date time setting,yyyy/mm/dd-hh:mm:ss,dd/mm/yyyy-hh:mm:ss,or mm/dd/yyyy-hh:mm:ss
        // TODO
        //    let dateTime = ConfigItem(title: "Date Time", params: [
        //        "yyyy/mm/dd-hh:mm:ss",
        //        "dd/mm/yyyy-hh:mm:ss",
        //        "mm/dd/yyyy-hh:mm:ss"],
        //        index: 0)
        
        //    Default Mode=[0];set power-on default mode,0:Video Mode 1,1:Video Mode 2,2:Photo Mode
        let defaultMode = ConfigItem(title: "Default Mode", params: [
            "Video Mode 1",
            "Video Mode 2",
            "Photo Mode"
            ],
            index: 1)
        items.append(defaultMode)


    }
}
