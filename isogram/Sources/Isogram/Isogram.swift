//Solution goes in Sources
struct Isogram {
    static func isIsogram(_ str: String) -> Bool {
            let filteredStr = str.filter { $0.isLetter }.lowercased()
            return Set(filteredStr).count == filteredStr.count
        }
}
