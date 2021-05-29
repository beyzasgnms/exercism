//Solution goes in Sources
import Foundation.NSDate
class Gigasecond{
    init?(from: String) {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        formatter.timeZone = TimeZone(secondsFromGMT: 0)
        if var date = formatter.date(from: from) {
            date.addTimeInterval(1000000000)
            self.description = formatter.string(from: date)
        } else {
            return nil
        }
    }
    
    let description: String
}
