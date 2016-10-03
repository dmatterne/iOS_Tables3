//
//  MyTableViewCell.swift
//  TableCells
//
//  Created by Stannis Baratheon on 03/10/16.
//  Copyright © 2016 Training. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var nameValueLabel: UILabel!
    @IBOutlet weak var typeValueLabel: UILabel!
    
    @IBOutlet weak var image2: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
