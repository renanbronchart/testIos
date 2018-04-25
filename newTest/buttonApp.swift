//
//  buttonApp.swift
//  newTest
//
//  Created by Renan Bronchart on 24/04/2018.
//  Copyright © 2018 Renan Bronchart. All rights reserved.
//

import UIKit

class buttonApp: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let layer = self.layer
        
        layer.cornerRadius = 6
        layer.borderWidth = 1
        layer.borderColor = UIColor(red: 0.40, green: 0.2, blue: 0.8, alpha: 0.8).cgColor
        layer.backgroundColor = UIColor(red: 0.40, green: 0.2, blue: 0.8, alpha: 0.8).cgColor
        
        //TODO: Code for our button
    }
    

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
