//Solution goes in Sources

class Year{
    internal init(calendarYear: Int) {
        self.calendarYear = calendarYear
    }
    var isLeapYear: Bool{
        var leap = false
        if calendarYear % 4 == 0 {
              leap = true
        }
        if calendarYear % 100 == 0 {
              leap = false
          }
        if calendarYear % 400 == 0 {
              leap = true
          }
        return leap
    }
    func isLeap() -> Bool{
        var leap = false
        if calendarYear % 4 == 0 {
              leap = true
        }
        if calendarYear % 100 == 0 {
              leap = false
          }
        if calendarYear % 400 == 0 {
              leap = true
          }
        return leap
    }
    var calendarYear: Int
}
