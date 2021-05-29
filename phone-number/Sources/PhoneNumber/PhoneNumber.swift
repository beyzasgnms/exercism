//Solution goes in Sources
import Foundation

class PhoneNumber: CustomStringConvertible {
    private(set) var number: String = "0000000000"
    var areaCode: String {
        
        get {
            let spaceIndex = number.index(number.startIndex, offsetBy: 2)
            return String(number[number.startIndex...spaceIndex])
        }
    }
    
    var exchangeCode: String {
        get {
            let startIndex = number.index(number.startIndex, offsetBy: 3)
            let endIndex = number.index(number.startIndex, offsetBy: 5)
            return String(number[startIndex...endIndex])
        }
    }
    
    var subscriberCode: String {
        get {
            let startIndex = number.index(number.startIndex, offsetBy: 6)
            return String(number[startIndex...])
        }
    }
    
    var description: String {
        get {
            return "(\(self.areaCode)) \(self.exchangeCode)-\(self.subscriberCode)"
        }
    }
    
    init(_ n: String) {

        let number = String(n.filter() {
            if CharacterSet.punctuationCharacters.contains($0.unicodeScalars.first!) ||
                CharacterSet.whitespaces.contains($0.unicodeScalars.first!) {
                return false
            }
            else {
                return true
            }
        })
        
        if number.count == 10 {
            self.number = number
        }
        else if number.count == 11 {
            if number.first == "1" {
                self.number = String(number.dropFirst())
            }
        }
        
    }
}
