//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Mike on 8/24/16.
//  Copyright © 2016 msse650. All rights reserved.
//

import UIKit
import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    
    //MARK: FoodTracker Test
    
    //Tests to confirm that the Meal initializer returns when no name or a negative rating is provided.
    func testMealInitialization() {
        //Success
        let potentialItem = Meal(name:"Newest Meal", photo: nil, rating: 5)
        XCTAssertNotNil(potentialItem)
        
        //Failure cases.
        let noName = Meal(name: "", photo: nil, rating: 0)
        XCTAssertNil(noName, "Empty name is invalid")
        
        let badRating = Meal(name: "Really Bad Rating", photo: nil, rating: -1)
        XCTAssertNil(badRating,"Negative ratings are invalid, be positive")
    }
    
    
}

