//
//  CustomTableViewCell.swift
//  Doviz
//
//  Created by Mehmet Delikaya on 24.06.2019.
//  Copyright © 2019 Mehmet Delikaya. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    
    @IBOutlet weak var sellingPrice: UILabel!
    @IBOutlet weak var buyingPrice: UILabel!
    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
