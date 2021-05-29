//Solution goes in Sources
struct Raindrops {
    let sounds: String
    init(_ number: Int) {
        let sounds = (number.isMultiple(of: 3) ? "Pling" : "")
            + (number.isMultiple(of: 5) ? "Plang" : "")
            + (number.isMultiple(of: 7) ? "Plong" : "")

        self.sounds = sounds.isEmpty ? String(number) : sounds
    }
}
