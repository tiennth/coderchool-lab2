//
//  SliderCell.swift
//  GithubDemo
//
//  Created by Tien on 3/16/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit

class SliderCell: UITableViewCell {

    @IBOutlet weak var theLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
