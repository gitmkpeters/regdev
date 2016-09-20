//
//  BaseImage.swift
//  MVCTest
//
//  Created by Mike on 9/20/16.
//  Copyright © 2016 jpr. All rights reserved.
//

import UIKit

class BaseImage: UIImageView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override func awakeFromNib() {
        self.layer.cornerRadius = 10.0
        self.clipsToBounds = true
    }

}
