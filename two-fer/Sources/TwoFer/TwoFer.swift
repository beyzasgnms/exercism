//Solution goes in Sources
func twoFer(_ name: String? = nil) -> String {
    if let name = name {
        return "One for \(name), one for me."
    } else {
        return "One for you, one for me."
    }
}
