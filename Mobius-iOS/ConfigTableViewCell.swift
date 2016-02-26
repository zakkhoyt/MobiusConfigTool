//
//  ConfigTableViewCell.swift
//  Mobius
//
//  Created by Zakk Hoyt on 2/24/16.
//  Copyright © 2016 Zakk Hoyt. All rights reserved.
//

import UIKit

class ConfigTableViewCell: UITableViewCell {

    var configItem: ConfigItem? = nil {
        didSet{
            textLabel?.text = configItem?.title
            detailTextLabel!.text = configItem?.currentParam()
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        self.textLabel?.textColor = UIColor.whiteColor()
        self.detailTextLabel?.textColor = UIColor.lightGrayColor()
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
