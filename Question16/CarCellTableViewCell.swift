//
//  CarCellTableViewCell.swift
//  Question16
//
//  Created by Abouzar Moradian on 9/6/24.
//

import UIKit

class CarCellTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
