//Solution goes in Sources
struct Clock: Equatable {
    let hours: Int
    let minutes: Int

    init(hours: Int = 0, minutes: Int = 0) {
        var hours = (hours + (minutes / 60)) % 24
        var minutes = minutes % 60
        if minutes < 0 {
            hours -= 1
            minutes += 60
        }
        if hours < 0 {
            hours += 24
        }
        self.hours = hours
        self.minutes = minutes
    }

    func add(minutes: Int) -> Clock {
        Clock(hours: hours, minutes: self.minutes + minutes)
    }

    func subtract(minutes: Int) -> Clock {
        add(minutes: -minutes)
    }
}

extension Clock: CustomStringConvertible {
    var description: String {
        "\(hours.twoDigits):\(minutes.twoDigits)"
    }
}

private extension Int {
    var twoDigits: String {
        self < 10 ? "0\(self)" : "\(self)"
    }
}
