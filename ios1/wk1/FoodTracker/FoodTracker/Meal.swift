//
//  Meal.swift
//  FoodTracker
//
//  Created by Mike on 8/26/16.
//  Copyright © 2016 msse650. All rights reserved.
//

import UIKit

class Meal {
    
    //MARK: Properties
    var name: String
    var photo: UIImage?
    var rating: Int
    
    //MARK: Initialization
    init?(name: String, photo: UIImage?, rating: Int) {
        
        //Initialize store properties
        self.name = name
        self.photo = photo
        self.rating = rating
        
        //If there is no name or rating Initialization should fail
        if name.isEmpty || rating < 0 {
            return nil
        }
    }
    
}
