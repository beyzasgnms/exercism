//Solution goes in Sources
class NumberClassifier{
    enum Result {
        case perfect
        case abundant
        case deficient
    }
    public var classification: Result

    init (number: Int){
        var result = 0
        var subArray = [Int]()
        var i = 1
        while i < number {
            if number % i == 0 {
                subArray.append(i)
            }
            i = i + 1
        }
        for item in subArray {
            result += item
        }
        classification = result == number ? Result.perfect : (result > number ? Result.abundant : Result.deficient)
    }
}
