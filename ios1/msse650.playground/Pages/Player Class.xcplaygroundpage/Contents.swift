

import Foundation

class Player{
    var fname: String
    var lname: String
    var dob: String
    var age = 0
    var team: String
    
    init(fname: String, lname: String, dob: String, team: String) {
        self.fname = fname
        self.lname = lname
        self.dob = dob
        self.team = team
    }
    func palyerAge() -> Int{
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

let myPlayer = Player(fname: "Mike", lname: "Peterson", dob: "04/11/1977", team: "Denver")
let myPlayerTeam = myPlayer.team
let myPlayerAge = myPlayer.palyerAge()


