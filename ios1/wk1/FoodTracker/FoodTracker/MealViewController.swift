//
//  ViewController.swift
//  FoodTracker
//
//  Created by Mike on 8/24/16.
//  Copyright © 2016 msse650. All rights reserved.
//

import UIKit

class MealViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    
    
    //MARK: Properties
    @IBOutlet weak var mealNameTxtFld: UITextField!
    @IBOutlet weak var photoImageView: UIImageView!            
    @IBOutlet weak var ratingControl: RatingControl!
    @IBOutlet weak var saveMealButton: UIBarButtonItem!
    
    /*
     This value is either passed by `MealTableViewController` in `prepareForSegue(_:sender:)`
     or constructed as part of adding a new meal.
     */
    var meal: Meal?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Handle the text field’s user input through delegate callbacks.
        mealNameTxtFld.delegate = self
        
        
        //set up views if editing and existing Meal
        if let meal = meal{
            navigationItem.title = meal.name
            mealNameTxtFld.text = meal.name
            photoImageView.image = meal.photo
            ratingControl.rating = meal.rating
        }
        
        //Enable the Save Button only if the text field has a valid meal Name
        checkValidMealName()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        //Disable the Save button while editing.
        saveMealButton.isEnabled = false
    }
    
    func checkValidMealName(){
        //Disable the save button if the text field empty
        let text = mealNameTxtFld.text ?? ""
        saveMealButton.isEnabled = !text.isEmpty
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        checkValidMealName()
        navigationItem.title = textField.text
        
    }

    //MARK: UIImagePickerControllerDelegate
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        //Dismiss the picker if the user cancled
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        //The info in dictionary contains multiple representations of the image, and this uses the original
        let selectedImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        
        //Set the photoImage to display the selected image
        photoImageView.image = selectedImage
        
        //Dismiss the picker.
        dismiss(animated: true, completion: nil)
    }
    
    // MARK: Navigation
    
    @IBAction func cancel(_ sender: UIBarButtonItem) {
        //Depending on the style of the presentation (modal or push), this view controller needs to be dismissed in two differnt ways
        let isPresentInAddMealMode = presentedViewController is UINavigationController
        if isPresentInAddMealMode {
            dismiss(animated: true, completion: nil)
        }else{
            navigationController!.popViewController(animated: true)
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if saveMealButton.title == "Save"{
            let name = mealNameTxtFld.text ?? ""
            let photo = photoImageView.image
            let rating = ratingControl.rating
            
            meal = Meal(name: name, photo: photo, rating: rating)
            
            
        }
    }
    
    //MARK: Actions
    
    @IBAction func selectImageFromPhotoLibrary(_ sender: UITapGestureRecognizer) {
        //Hide the Keyboard
        mealNameTxtFld.resignFirstResponder()
        
        //UIImagePickerController is a view controller that lets a user pick media from their photo library.
        let imagePickerController = UIImagePickerController()
        
        //allows photos to be picked not taken
        imagePickerController.sourceType = .photoLibrary
        
        //Handle the ViewController is notified when the user picks an image.
        imagePickerController.delegate = self
        
        present(imagePickerController, animated: true, completion: nil)
    }
}

