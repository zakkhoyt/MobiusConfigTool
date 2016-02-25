//
//  ConfigParamViewController.swift
//  Mobius
//
//  Created by Zakk Hoyt on 2/24/16.
//  Copyright © 2016 Zakk Hoyt. All rights reserved.
//

import UIKit

class ConfigParamViewController: UIViewController {

    @IBOutlet weak var pickerView: UIPickerView!
    
    var configItem: ConfigItem? = nil {
        didSet{
            
        }
    }
    
    var completionHandler:(()->Void)!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        pickerView.selectRow((configItem?.selectedIndex)!, inComponent: 0, animated: false)

    }
    @IBAction func cancelButtonAction(sender: AnyObject) {
        if completionHandler != nil {
            completionHandler()
        }
    }
    
    @IBAction func doneButtonAction(sender: AnyObject) {
        if completionHandler != nil {
            completionHandler()
        }
    }
    
}

extension ConfigParamViewController: UIPickerViewDataSource {
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if let configItem = configItem {
            return configItem.params.count
        } else {
            return 0
        }
        
    }
}

extension ConfigParamViewController: UIPickerViewDelegate {
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return configItem?.params[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        configItem?.selectedIndex = row
    }
}
