//
//  ProductCell.swift
//  Product Application
//
//  Created by Mitul Sarvaiya on 07/04/20.
//  Copyright © 2020 Mitul Sarvaiya. All rights reserved.
//

import UIKit

class ProductCell: UITableViewCell {

    @IBOutlet weak var lblProductNAme: UILabel!
    @IBOutlet weak var lblPrice: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
