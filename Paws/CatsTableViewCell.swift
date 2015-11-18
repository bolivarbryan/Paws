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
    
    @IBOutlet weak var catPawIcon:UIImageView?

    override func awakeFromNib() {
        super.awakeFromNib()
        
        let gesture = UITapGestureRecognizer(target: self, action:Selector("onDoubleTap:"))
        gesture.numberOfTapsRequired = 2
        contentView.addGestureRecognizer(gesture)
        
        catPawIcon?.hidden = true
    }
    
    func onDoubleTap(sender:AnyObject) {
        catPawIcon?.hidden = false
        catPawIcon?.alpha = 1.0
        
        UIView.animateWithDuration(1.0, delay: 1.0, options:nil, animations: {
            
            self.catPawIcon?.alpha = 0
            
            }, completion: {
                (value:Bool) in
                
                self.catPawIcon?.hidden = true
        })
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
