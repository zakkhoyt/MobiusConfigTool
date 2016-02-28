//
//  TabViewController.swift
//  Mobius
//
//  Created by Zakk Hoyt on 2/27/16.
//  Copyright © 2016 Zakk Hoyt. All rights reserved.
//

import Cocoa

class TabViewController: NSTabViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        loadConfigFile()
        
        NSNotificationCenter.defaultCenter().addObserverForName(AppDelegateConfigDidChange, object: nil, queue: NSOperationQueue.mainQueue()) { (note) -> Void in
            self.loadConfigFile()
        }

    }
    
    
    func loadConfigFile() {
        for item in self.tabViewItems {
            print(item.viewController)
            if let tableVC = item.viewController as? TableViewController {
                print("child accessed")
                
                if let appDelegate = NSApplication.sharedApplication().delegate as? AppDelegate {
                    
                    switch item.label {
                    case "General":
                        tableVC.configSection = appDelegate.config?.general
                    case "Video 1":
                        tableVC.configSection = appDelegate.config?.video1
                    case "Video 2":
                        tableVC.configSection = appDelegate.config?.video2
                    case "Photo":
                        tableVC.configSection = appDelegate.config?.photo
                    case "System":
                        tableVC.configSection = appDelegate.config?.system
                    case "Hardware":
                        tableVC.configSection = appDelegate.config?.hardware
                    default:
                        print("Failed to find view controller for " + item.label)
                    }
                }
            } else {
                print("child denied")
            }
            
        }
        
    }
    
}
