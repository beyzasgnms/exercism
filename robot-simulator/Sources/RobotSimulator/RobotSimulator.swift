//Solution goes in Sources
import Foundation
class SimulatedRobot {
  enum Direction {
    case east, west, north, south, unknown
  }
  
  enum Instruction : String {
    case turnRight = "R", turnLeft = "L", advance = "A"
  }
  
  private let heading: [Direction : (left: Direction, right: Direction, advanceX: Int , advanceY: Int)] =
    [.east  : (.north, .south,  1,  0),
     .west  : (.south, .north, -1,  0),
     .north : (.west,  .east,   0,  1),
     .south : (.east,  .west,   0, -1)]
  
  var bearing: Direction = .unknown
  var coordinates: [Int] = []
  
  func orient(_ direction: Direction) {
    bearing = direction
  }
  
  func at(x: Int, y: Int) {
    coordinates = [x, y]
  }
  
  func turnRight() {
    bearing = heading[self.bearing]?.right ?? .unknown
  }
  
  func turnLeft() {
    bearing = heading[self.bearing]?.left ?? .unknown
  }
  
  func advance() {
    coordinates = [coordinates[0] + (heading[bearing]?.advanceX ?? 0),
                   coordinates[1] + (heading[bearing]?.advanceY ?? 0)]
  }
  
  func instructions(_ code: String) -> [Instruction] {
    return code.compactMap { Instruction(rawValue: String($0)) ?? nil }
  }
  
  func place(x: Int, y: Int, direction: Direction) {
    at(x: x, y: y)
    orient(direction)
  }
  
  func evaluate (_ code: String) {
    for command in instructions(code) {
      switch command {
      case .turnRight : turnRight()
      case .turnLeft  : turnLeft()
      case .advance   : advance()
      }
    }
  }
}
