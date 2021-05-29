//Solution goes in Sources
class Hamming {
    static func compute(_ first:String, against: String) -> Int? {
    if first.count != against.count{
        return nil
    }
    var distance = 0
    var second = against
    for char in first{
        if char != second.removeFirst() {
            distance += 1
        }
    }
    return distance
    }
}
