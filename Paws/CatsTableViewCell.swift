//
//  CatsTableViewCell.swift
//  Paws
//
//  Created by Leonardo Mendez on 17/11/15.
//  Copyright © 2015 Leonardo Mendez. All rights reserved.
//

import UIKit

class CatsTableViewCell: PFTableViewCell {
    
    @IBOutlet weak var catImageView:UIImageView?
    @IBOutlet weak var catNameLabel:UILabel?
    @IBOutlet weak var catVotesLabel:UILabel?
    @IBOutlet weak var catCreditLabel:UILabel?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
