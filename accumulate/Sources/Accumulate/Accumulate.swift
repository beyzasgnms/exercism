//Solution goes in Sources
import Foundation
extension Array {
    func accumulate<T>(_ any: (Element) -> T) -> [T] {
        var result = [T]()
        for i in self {
            result.append(any(i))
        }
        return result
    }
}

