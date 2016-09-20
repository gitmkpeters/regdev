//
//  Person.swift
//  MVCTest
//
//  Created by Mike on 9/20/16.
//  Copyright © 2016 jpr. All rights reserved.
//

import Foundation

class Person{
    private var _firstName: String!
    private var _lastName: String!
    
    var firstName: String {
        get{
            return _firstName
        } set {
            _firstName = newValue
        }
        
    }
    
    var lastName: String {
        return _lastName
    }
    
    init(firstName: String, lastName: String ) {
        self._firstName = firstName
        self._lastName = lastName
    }
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    
    
}
