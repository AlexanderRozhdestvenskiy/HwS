import Foundation

 // Class

class Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var newGame = Game()
newGame.score = 10

class Employee {
    let hours: Int
    
    init(hours: Int) {
        self.hours = hours
    }
    
    func printSummary() {
        print("I work \(hours) hours a day")
    }
}

final class Developer: Employee {
    func work() {
        print("I'm writing code for \(hours) hours.")
    }
    override func printSummary() {
        print("Override function!")
    }
}

final class Manadger: Employee {
    func work() {
        print("I'm going to meeting for \(hours) hours.")
    }
}

let robert = Developer(hours: 10)
let joseph = Manadger(hours: 2)

robert.work()
joseph.work()

let karl = Manadger(hours: 6)
karl.printSummary()
robert.printSummary()

    // Initializers

class Vehicle {
    let isElectric: Bool
    
    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConverteble: Bool
    
    init(isElectric: Bool, isConverteble: Bool) {
        self.isConverteble = isConverteble
        super.init(isElectric: isElectric)
    }
}

let teslaX = Car(isElectric: true, isConverteble: false)

    // Copy Class

class User {
    var username = "Anonimus"
}

var user1 = User()
var user2 = user1
user2.username = "Taylor"
print(user1.username)
print(user2.username)
