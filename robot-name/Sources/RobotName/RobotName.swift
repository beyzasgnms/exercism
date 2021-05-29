//Solution goes in Sources
import Foundation

struct Robot {

    var name: String
    static var existingNames = Set<String>()

    init() {
        self.name = Robot.generateName()
    }

    mutating func resetName() {
        name = Robot.generateName()
    }

    private static func generateName() -> String {
        var name: String
        let prefixCharacters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        let suffixCharacters = "0123456789"
        repeat {
            let prefix = prefixCharacters.generateRandom(length: 2)
            let suffix = suffixCharacters.generateRandom(length: 3)
            name = prefix + suffix
        }
        while existingNames.contains(name)
        existingNames.insert(name)
        return name
    }
}

extension String {
    func generateRandom(length: Int = 1) -> String {
        var generated = ""

        for _ in 0..<length {
            let numberOfCharacters = UInt32(characters.count)
            let randIndex = IndexDistance(arc4random_uniform(numberOfCharacters))
            let cIndex = index(startIndex, offsetBy: randIndex)
            generated.append(characters[cIndex])
        }
        return generated
    }
}
