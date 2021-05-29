//Solution goes in Sources
struct SumOfMultiples{
    static func toLimit(_ n:Int, inMultiples:[Int])-> Int {
        var sum = 0
        guard n != 0 else { return sum }
        for i in 1..<n {
            for num in inMultiples {
                if num != 0 && i % num == 0 {
                    sum += i
                    break
                }
            }
        }
        return sum
    }
}
