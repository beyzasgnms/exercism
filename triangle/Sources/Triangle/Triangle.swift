//Solution goes in Sources
class Triangle {
    var kind: String!

    enum Types: String {
        case Equilateral
        case Isosceles
        case Scalene
        case ErrorKind
    }

    private func isTriangle(_ sides: [Double]) -> Bool {
        var total = 0.0
        for side in sides {
            total += side
            if (side < 0.0){
                return false
            }
        }
        if (total == 0.0){
            return false
        }
        if (sides[0] + sides[1] < sides[2] || sides[0] + sides[2] < sides[1] || sides[1] + sides[2] < sides[0] ){
            return false
        }
        return true
    }

    init(_ s1: Double, _ s2: Double, _ s3: Double) {
        let sides = [s1, s2, s3]
        let numberOfUniqueSides = Set(sides).count

        guard isTriangle(sides) else {
            self.kind = Types.ErrorKind.rawValue
            return
        }

        switch numberOfUniqueSides {
        case 1:
            self.kind = Types.Equilateral.rawValue
        case 2:
            self.kind = Types.Isosceles.rawValue
        case 3:
            self.kind = Types.Scalene.rawValue
        default:
            self.kind = Types.ErrorKind.rawValue
        }
    }
}
