//
//  RatingControl.swift
//  FoodTracker
//
//  Created by Mike on 8/25/16.
//  Copyright © 2016 msse650. All rights reserved.
//

import UIKit

class RatingControl: UIView {
    
    // MARK: Properties
    
    var rating = 0
    var ratingButtons = [UIButton]()
    let spacing = 5
    let starCount = 5

    // MARK: Initialization
    required init?(coder aDecoder: NSCoder) {
    
        super.init(coder: aDecoder)
        
        for _ in 0..<starCount {
            let filledStarImage = UIImage(named: "filledStar")
            let emptyStarImage = UIImage(named: "filledStar")
            //Create Button Intances
            let button = UIButton()
            button.setImage(emptyStarImage, for: .normal)
            button.setImage(filledStarImage, for: .selected)
            button.setImage(filledStarImage, for: [.highlighted, .selected])        
        
            //Show the button
            button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(button:)), for: .touchDown)
            ratingButtons += [button]
            addSubview(button)
        }
    }
    
    override func layoutSubviews() {
        // Set the button's width and height to a square the size of the frame's height.
        let buttonSize = Int(frame.size.height)
        var buttonFrame = CGRect(x: 0, y: 0, width: buttonSize, height: buttonSize)
        
        //Offset each button's origin by the length of the button plus spacing.
        for(index, button) in ratingButtons.enumerated(){
            buttonFrame.origin.x = CGFloat(index * (buttonSize + spacing))
            button.frame = buttonFrame
        }
    }
    
    override public var intrinsicContentSize: CGSize {
        //Set the height and width of the button size
        let buttonSize = Int(frame.size.height)
        let width = (buttonSize * starCount) + (spacing * (starCount - 1))
        
        return CGSize(width: width, height: buttonSize)
    }
    
    // MARK: Button Action
    func ratingButtonTapped(button: UIButton){
        print("Button Pressed");
    }
}
