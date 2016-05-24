//
//  NouvelEchantillonTableViewCell.swift
//  Prototype02052016
//
//  Created by  administrateur on 24/05/2016.
//  Copyright © 2016 administrateur. All rights reserved.
//

import UIKit

class NouvelEchantillonTableViewCell: UITableViewCell {

    @IBOutlet weak var nomEchantillonLabel: UILabel!
    @IBOutlet weak var quantiteEchantillonLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
