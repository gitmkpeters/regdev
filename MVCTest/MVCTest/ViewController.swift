//
//  ViewController.swift
//  MVCTest
//
//  Created by Mike on 9/20/16.
//  Copyright © 2016 jpr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var changeNameTextField: UITextField!
    
    let person = Person(firstName: "John", lastName: "Hankcock")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        //Get data from model do not do it it Controller
        //fullNameLabel.text = "\(person.firstName) \(person.lastName)"
        
        //Get Name from Model
        fullNameLabel.text = person.fullName
        lastNameLabel.text = person.lastName
        firstNameLabel.text = person.firstName                
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func changeNamePressed(_ sender: AnyObject) {
        
        //Change the name
        if let txt = changeNameTextField.text{
            person.firstName = txt
            fullNameLabel.text = person.fullName
            firstNameLabel.text = person.firstName
        }
        
    }
}

