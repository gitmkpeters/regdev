//: Playground - noun: a place where people can play

import UIKit


//Working with some date formating stuff
let now = Date()
let myDtFomat = DateFormatter()
myDtFomat.dateFormat = "MM/dd/yyyy"
let viewDt = myDtFomat.string(from: now)


//Fundtion to calulate Age
// Usage:
// Parameter: Date {String mm/dd/yyyy format}
// Return: Age {Int}
func calcAge(birthday:String) -> Int{
    let dateFormater = DateFormatter()
    dateFormater.dateFormat = "MM/dd/yyyy"
    let birthdayDate = dateFormater.date(from: birthday)
    let calendar: NSCalendar! = NSCalendar(calendarIdentifier: NSCalendar.Identifier.gregorian)
    let now: NSDate! = NSDate()
    let calcAge = calendar.components(.year, from: birthdayDate!, to: now as Date, options: [])
    //let calcAge = calendar.components(.year, from: <#T##Date#>, to: <#T##Date#>, options: <#T##NSCalendar.Options#>)
    let age = calcAge.year
    return age!
}

print(calcAge(birthday: "06/29/1988"))
