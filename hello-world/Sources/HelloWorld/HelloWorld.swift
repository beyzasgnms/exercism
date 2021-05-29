//Solution goes in Sources

func hello(name: String? = nil) -> String {
    if let name = name {
        return "Hello, \(name)!"
    } else {
        return "Hello, World!"
    }
}
