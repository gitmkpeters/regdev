//
//  ViewController.swift
//  HelloYou
//
//  Created by Mike on 8/30/16.
//  Copyright © 2016 msse650. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    //MARK:  Properties    
    @IBOutlet weak var uiTextFieldLabel: UILabel!
    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var segmentLabel: UILabel!
    @IBOutlet weak var incrementerLabel: UILabel!
    
    @IBOutlet weak var switchLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: Actions
    @IBAction func uiTextFieldButton(_ sender: AnyObject) {
        print("You hit the text button")
    }
    
    @IBAction func sliderForTextField(_ sender: AnyObject) {
    }

    @IBAction func segmentForSegmentTextField(_ sender: AnyObject) {
    }
    @IBAction func incrementerForIncrementTextField(_ sender: AnyObject) {
    }
        
    @IBAction func switchForSwitchTextField(_ sender: AnyObject) {
    }
    
}

