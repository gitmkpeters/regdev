//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

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