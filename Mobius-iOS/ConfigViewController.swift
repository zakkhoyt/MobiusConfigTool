//
//  ConfigViewController.swift
//  Mobius
//
//  Created by Zakk Hoyt on 2/24/16.
//  Copyright © 2016 Zakk Hoyt. All rights reserved.
//

import UIKit

let SegueConfigParam = "SegueConfigParam"

class ConfigViewController: UIViewController {
    
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
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == SegueConfigParam {
            let vc = segue.destinationViewController as? ConfigParamViewController
            vc?.configItem = sender as? ConfigItem
            vc?.completionHandler = { arg in
                self.tableView.reloadData() 
                self.dismissViewControllerAnimated(true, completion: nil)
            }
        }
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
            return 11
        case 1:
            return 11
        case 2:
            return 6
        default:
            return 0
        }
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ConfigTableViewCell") as? ConfigTableViewCell
        switch indexPath.section    {
        case 0:
            
            switch indexPath.row {
            case 0:
                cell?.configItem = config.video1.resolution
            case 1:
                cell?.configItem = config.video1.frameRate
            case 2:
                cell?.configItem = config.video1.timeLapse
            case 3:
                cell?.configItem = config.video1.sound
            case 4:
                cell?.configItem = config.video1.cycleTime
            case 5:
                cell?.configItem = config.video1.loopRecording
            case 6:
                cell?.configItem = config.video1.flip
            case 7:
                cell?.configItem = config.video1.timeStamp
            case 8:
                cell?.configItem = config.video1.quality
            case 9:
                cell?.configItem = config.video1.HDR
            case 10:
                cell?.configItem = config.video1.fileFormat
            default:
                cell?.textLabel!.text = "error"
                
            }
        case 1:
            switch indexPath.row {
            case 0:
                cell?.configItem = config.video2.resolution
            case 1:
                cell?.configItem = config.video2.frameRate
            case 2:
                cell?.configItem = config.video2.timeLapse
            case 3:
                cell?.configItem = config.video2.sound
            case 4:
                cell?.configItem = config.video2.cycleTime
            case 5:
                cell?.configItem = config.video2.loopRecording
            case 6:
                cell?.configItem = config.video2.flip
            case 7:
                cell?.configItem = config.video2.timeStamp
            case 8:
                cell?.configItem = config.video2.quality
            case 9:
                cell?.configItem = config.video2.HDR
            case 10:
                cell?.configItem = config.video2.fileFormat
            default:
                cell?.textLabel!.text = "error"
                
            }
        case 2:
            switch indexPath.row {
            case 0:
                cell?.configItem = config.photo.captureSize
            case 1:
                cell?.configItem = config.photo.timeLapse
            case 2:
                cell?.configItem = config.photo.flip
            case 3:
                cell?.configItem = config.photo.timeStamp
            case 4:
                cell?.configItem = config.photo.powerOn
            case 5:
                cell?.configItem = config.photo.powerOff
            default:
                cell?.textLabel!.text = "error"
            }
            
        default:
            cell?.textLabel!.text = "error"
        }
        return cell!
    }
}

extension ConfigViewController: UITableViewDelegate {
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let cell = tableView .cellForRowAtIndexPath(indexPath) as? ConfigTableViewCell
        let configItem = cell?.configItem
        performSegueWithIdentifier(SegueConfigParam, sender: configItem)
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



