

import UIKit

class Player {
    var fname: String
    var lname: String
    var team:  String
    var dob: String
    var age = 0
    
    init(fname: String,lname: String,team: String,dob: String) {
        self.fname = fname
        self.lname = lname
        self.team = team
        self.dob = dob
    }
    
    //Fundtion to calulate Age
    // Usage:
    // Parameter: Date {String mm/dd/yyyy format}
    // Return: Age {Int}
    func calcAge(birthday:String) -> Int{
        let dateFormater = DateFormatter()
        dateFormater.dateFormat = "MM/dd/yyyy"
        let birthdayDate = dateFormater.date(from: self.dob)
        let calendar: NSCalendar! = NSCalendar(calendarIdentifier: NSCalendar.Identifier.gregorian)
        let now: NSDate! = NSDate()
        let calcAge = calendar.components(.year, from: birthdayDate!, to: now as Date, options: [])
        //let calcAge = calendar.components(.year, from: <#T##Date#>, to: <#T##Date#>, options: <#T##NSCalendar.Options#>)
        let age = calcAge.year
        return age!
    }
        
}