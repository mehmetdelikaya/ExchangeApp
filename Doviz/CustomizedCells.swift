//
//  CustomizedCells.swift
//  Doviz
//
//  Created by Mehmet Delikaya on 1.07.2019.
//  Copyright © 2019 Mehmet Delikaya. All rights reserved.
//

import UIKit

class CustomizedCells: UITableViewCell {

    @IBOutlet weak var imgCountryFlag: UIImageView!
    @IBOutlet weak var labelCurrencyShortCode: UILabel!
    @IBOutlet weak var labelCurrencyFullName: UILabel!
    @IBOutlet weak var labelBuyingPrice: UILabel!
    @IBOutlet weak var labelSellingPrice: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
