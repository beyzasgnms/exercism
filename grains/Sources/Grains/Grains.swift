//Solution goes in Sources
enum GrainsError: Error {
    case inputTooLow(message: String)
    case inputTooHigh(message: String)
}

func square(_ n : Int) throws -> Double{
    if n <= 0{
        throw GrainsError.inputTooLow(message: "Input[\(n)] invalid. Input should be between 1 and 64 (inclusive)")
    }else if n > 64{
        throw GrainsError.inputTooHigh(message: "Input[\(n)] invalid. Input should be between 1 and 64 (inclusive)")
    }
    
    if n == 1{
        return 1
    }
    return try square(n - 1) * 2
}


func totalCalc() -> Double{
    var temp = Double(0)
    for i in 1...64{
        temp += try! square(i)
    }
    return temp
}

let total = totalCalc()
