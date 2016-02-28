//
//  TableViewController.swift
//  Mobius
//
//  Created by Zakk Hoyt on 2/27/16.
//  Copyright © 2016 Zakk Hoyt. All rights reserved.
//

import Cocoa

class TableViewController: NSViewController {
    
    var configSection: ConfigSection? = nil {
        didSet{
            self.reloadTable()  
        }
    }
    
    @IBOutlet weak var tableView: NSTableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        reloadTable()
    }
    
    func reloadTable() {
        if let _ = configSection {
            tableView.reloadData()
        }
    }
}



extension TableViewController: NSTableViewDataSource {
    func numberOfRowsInTableView(tableView: NSTableView) -> Int {
        if let configSection = configSection {
            return configSection.items.count
        } else {
            return 0
        }
    }
}

extension TableViewController: NSTableViewDelegate {
    
    func tableViewSelectionIsChanging(notification: NSNotification) {
        print("selection is changing")
        
    }
    func tableView(tableView: NSTableView, viewForTableColumn tableColumn: NSTableColumn?, row: Int) -> NSView? {
        var cellID = ""
        var text = ""
        
        
        guard let configItem = configSection?.items[row] else {
            print("can't ref configItem")
            return nil
        }
        
        if tableColumn == tableView.tableColumns[0] {
            cellID = "ConfigItemKeyCell"
            text = configItem.title
            //                imageName = "picture"
        } else if tableColumn == tableView.tableColumns[1] {
            cellID = "ConfigItemValueCell"
            //                imageName = "resolution"
            //                text = String("\(configItem.selectedIndex)")
            text = configItem.params[configItem.selectedIndex]
        }
        
        if let view = tableView.makeViewWithIdentifier(cellID, owner: nil) as? NSTableCellView {
//            if let image = NSImage(named: imageName) {
//                view.imageView?.image = image
//            }
            view.textField?.stringValue = text
            return view
            
        }
        
        assert(false)
        return nil
    }
}

