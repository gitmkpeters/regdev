//
//  ViewController.swift
//  HelloYou
//
//  Created by Mike on 8/30/16.
//  Copyright © 2016 msse650. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    //MARK:  Properties    
    
    
    @IBOutlet weak var uiTextFieldLabel: UILabel!
    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var segmentLabel: UILabel!
    @IBOutlet weak var incrementerLabel: UILabel!
    @IBOutlet weak var switchLabel: UILabel!
    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var mySlider: UISlider!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var muUIStepper: UIStepper!
    @IBOutlet weak var myUISwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // Handle the text field’s user input through delegate callbacks.
        myTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //Hide the Keyboard
        myTextField.resignFirstResponder()
        
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        uiTextFieldLabel.text = myTextField.text
    }

    //MARK: Actions
    @IBAction func uiTextFieldButton(_ sender: AnyObject) {
        print("You hit the text button",myTextField.text)
        if myTextField.text == ""{
            uiTextFieldLabel.text = "Text Field Label"
        }else{
            uiTextFieldLabel.text = myTextField.text
        }
        
    }
    
    @IBAction func sliderForTextField(_ sender: AnyObject) {
        //If send it updated value constantly if not it updated when slider is released
        mySlider.isContinuous = true
        sliderLabel.text = String(Int(self.mySlider.value))
        print(Int(self.mySlider.value))
    }

    @IBAction func segmentForSegmentTextField(_ sender: AnyObject) {
        switch (self.segmentedControl.selectedSegmentIndex)
        {
        case 0:
            self.segmentLabel.text = "His Items";
            print(self.segmentedControl.selectedSegmentIndex)
            break;
        case 1:
            self.segmentLabel.text = "Her Items";
            print(self.segmentedControl.selectedSegmentIndex)
            break;
        default: 
            break; 
        }
    }
    @IBAction func incrementerForIncrementTextField(_ sender: AnyObject) {
        
        print(muUIStepper.stepValue, muUIStepper.value)
        incrementerLabel.text = "My StepValue is: " + String(muUIStepper.stepValue) + " My Value is: " + String(muUIStepper.value)
    }
        
    @IBAction func switchForSwitchTextField(_ sender: AnyObject) {
        print(myUISwitch.isOn)
        
        switch(myUISwitch.isOn){
        case true:
            switchLabel.text = String(myUISwitch.isOn)
            break
        case false:
            switchLabel.text = String(myUISwitch.isOn)
            break
        }
    }
    
}

