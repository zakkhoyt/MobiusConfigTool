//
//  AppDelegate.swift
//  Mobius
//
//  Created by Zakk Hoyt on 2/19/16.
//  Copyright © 2016 Zakk Hoyt. All rights reserved.
//

import Cocoa



let AppDelegateConfigDidChange = "AppDelegateConfigDidChange"

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {


    var config: Config? = nil

    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }

    @IBAction func newV3FileAction(sender: AnyObject) {
        config = Config()
        NSNotificationCenter.defaultCenter().postNotificationName(AppDelegateConfigDidChange, object: nil)
    }

}

