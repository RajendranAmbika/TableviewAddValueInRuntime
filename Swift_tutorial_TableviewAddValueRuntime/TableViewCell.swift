//
//  TableViewCell.swift
//  Swift_tutorial_TableviewAddValueRuntime
//
//  Created by Rajendran Eshwaran on 5/24/18.
//  Copyright © 2018 RG Group of Industries. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var valueLbl: UILabel!
    
    @IBOutlet weak var customView: UIView!
    @IBOutlet weak var valueView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
