//
//  ConfigViewController.swift
//  Mobius
//
//  Created by Zakk Hoyt on 2/24/16.
//  Copyright © 2016 Zakk Hoyt. All rights reserved.
//

import UIKit
import MessageUI

let SegueConfigParam = "SegueConfigParam"

enum ConfigViewControllerSection: Int {
    case General = 0
    case Video1 = 1
    case Video2 = 2
    case Photo = 3
    case System = 4
}

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
            let nc = segue.destinationViewController as? UINavigationController
            let vc = nc!.viewControllers.first as? ConfigParamViewController
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
    
    @IBAction func exportBarButtonAction(sender: AnyObject) {
        if let fileURL = config.exportToFile() {
            if MFMailComposeViewController.canSendMail() {
                let composer = MFMailComposeViewController()
                composer.navigationBar.tintColor = UIColor.yellowColor()
                composer.navigationController?.title = "Mail"
                composer.mailComposeDelegate = self
                composer.setSubject("Config file for your Mobius camera")
                if let data = NSData(contentsOfURL: fileURL) {
                    composer.addAttachmentData(data, mimeType: "text/plain", fileName: fileURL.lastPathComponent!)
                    
                    presentViewController(composer, animated: true, completion: nil)
                }
            }
        }
    }
}


extension ConfigViewController: UITableViewDataSource {
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 5
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case ConfigViewControllerSection.General.rawValue:
            return config.general.items.count
        case ConfigViewControllerSection.Video1.rawValue:
            return config.video1.items.count
        case ConfigViewControllerSection.Video2.rawValue:
            return config.video2.items.count
        case ConfigViewControllerSection.Photo.rawValue:
            return config.photo.items.count
        case ConfigViewControllerSection.System.rawValue:
            return config.system.items.count
        default:
            return 0
        }
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ConfigTableViewCell") as? ConfigTableViewCell
        switch indexPath.section    {
        case ConfigViewControllerSection.General.rawValue:
            let configItem = config.general.items[indexPath.item]
            cell?.configItem = configItem
        case ConfigViewControllerSection.Video1.rawValue:
            let configItem = config.video1.items[indexPath.item]
            cell?.configItem = configItem
        case ConfigViewControllerSection.Video2.rawValue:
            let configItem = config.video2.items[indexPath.item]
            cell?.configItem = configItem
        case ConfigViewControllerSection.Photo.rawValue:
            let configItem = config.photo.items[indexPath.item]
            cell?.configItem = configItem
        case ConfigViewControllerSection.System.rawValue:
            let configItem = config.system.items[indexPath.item]
            cell?.configItem = configItem
            
        default:
            cell?.textLabel!.text = "error"
        }
        return cell!
    }
}

extension ConfigViewController: UITableViewDelegate {
    
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let frame = CGRect(x: 0, y: 0, width: tableView.bounds.size.width, height: 30)
        let view = UITableViewHeaderFooterView(frame: frame)
        view.tintColor = UIColor.yellowColor()
//        view.textLabel?.textColor = UIColor.yellowColor()
//        view.backgroundView?.backgroundColor = UIColor.darkGrayColor()  
        return view
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let cell = tableView .cellForRowAtIndexPath(indexPath) as? ConfigTableViewCell
        let configItem = cell?.configItem
        performSegueWithIdentifier(SegueConfigParam, sender: configItem)
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case ConfigViewControllerSection.General.rawValue:
            return "General"
        case ConfigViewControllerSection.Video1.rawValue:
            return "Video Mode 1"
        case ConfigViewControllerSection.Video2.rawValue:
            return "Video Mode 2"
        case ConfigViewControllerSection.Photo.rawValue:
            return "Photo Mode"
        case ConfigViewControllerSection.System.rawValue:
            return "System"
        default:
            return nil
        }
    }
}


extension ConfigViewController: MFMailComposeViewControllerDelegate {
    func mailComposeController(controller: MFMailComposeViewController, didFinishWithResult result: MFMailComposeResult, error: NSError?) {
        print("Mail composer result: \(result.rawValue)")
        
        dismissViewControllerAnimated(true, completion: nil)
    }
}


