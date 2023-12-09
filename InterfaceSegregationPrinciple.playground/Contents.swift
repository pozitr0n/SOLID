import UIKit
import PlaygroundSupport
import Foundation

protocol WorkerProtocol {
  func work(unit: String)
}
 
protocol SleepProtocol {
  func sleep(unit: String)
}
 
class Human: WorkerProtocol, SleepProtocol {
  func work(unit: String) {
    print("\(unit) work")
  }
 
  func sleep(unit: String) {
    print("\(unit) sleep")
  }
}
 
class Cyborg: WorkerProtocol {
    
  func work(unit: String) {
    print("\(unit) work")
  }
    
}
 
let jack = Human()
jack.sleep(unit: "Jack")
jack.work(unit: "Jack")
 
let t800 = Cyborg()
t800.work(unit: "T800")
