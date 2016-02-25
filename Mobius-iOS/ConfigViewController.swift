//
//  ConfigViewController.swift
//  Mobius
//
//  Created by Zakk Hoyt on 2/24/16.
//  Copyright © 2016 Zakk Hoyt. All rights reserved.
//

import UIKit

class ConfigViewController: UIViewController {
    
    
    var resolution = ConfigItem(title: "Video Resolution", params: ["1080p", "720p"], index: 0)
    var frameRate = ConfigItem(title: "Video Framerate", params: ["60fps", "30fps"], index: 0)
    var timeLapse = ConfigItem(title: "Video Timelapse", params:
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
    
    
    var config = Config()
    var configurableItem: ConfigItem? = nil
    
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var paramView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}


extension ConfigViewController: UITableViewDataSource {
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 3
        case 1:
            return 3
        case 2:
            return 0
        default:
            return 0
        }
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ConfigTableViewCell")
        switch indexPath.section    {
        case 0:
            
            switch indexPath.row {
            case 0:
                cell?.textLabel!.text = config.videoMode1?.resolution.name()
                cell?.detailTextLabel!.text = config.videoMode1?.resolution.description()
            case 1:
                cell?.textLabel!.text = config.videoMode1?.frameRate.name()
                cell?.detailTextLabel!.text = config.videoMode1?.frameRate.description()
            case 2:
                cell?.textLabel!.text = config.videoMode1?.timeLapse.name()
                cell?.detailTextLabel!.text = config.videoMode1?.timeLapse.description()
                
            default:
                cell?.textLabel!.text = "nope"
                
            }
        case 1:
            switch indexPath.row {
            case 0:
                cell?.textLabel!.text = resolution.title
                cell?.detailTextLabel!.text = resolution.currentParam()
            case 1:
                cell?.textLabel!.text = frameRate.title
                cell?.detailTextLabel!.text = frameRate.currentParam()
            case 2:
                cell?.textLabel!.text = timeLapse.title
                cell?.detailTextLabel!.text = timeLapse.currentParam()
                
            default:
                cell?.textLabel!.text = "nope"
                
            }
            
        default:
            cell?.textLabel!.text = "nope"
        }
        return cell!
    }
}

extension ConfigViewController: UITableViewDelegate {
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        switch indexPath.section {
        case 1:
            configurableItem = resolution
            paramView.hidden = false
            pickerView.reloadAllComponents()
        default:
            let _ = 0
            
        }
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Video Mode 1"
        case 1:
            return "Video Mode 2"
        case 2:
            return "Photo Mode"
        default:
            return nil
        }
    }
}



extension ConfigViewController: UIPickerViewDataSource {
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if let configurableItem = configurableItem {
            return configurableItem.params.count
        } else {
            return 0
        }

    }
}

extension ConfigViewController: UIPickerViewDelegate {
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return configurableItem?.params[row]
    }
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
    }
}