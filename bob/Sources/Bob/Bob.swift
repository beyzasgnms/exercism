//Solution goes in Sources
import Foundation
class Bob {
    static func hey(_ input: String) -> String {
        if input.uppercased() == input && input.components(separatedBy: .letters).joined() != input {
            return "Whoa, chill out!"
        } else if input.replacingOccurrences(of: " ", with: "").isEmpty {
            return "Fine. Be that way!"
        } else if input.last == "?" {
            return "Sure."
        } else {
            return "Whatever."
        }
    }
}
