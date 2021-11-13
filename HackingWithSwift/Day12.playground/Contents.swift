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
    
    func copy() -> User {
        let user = User()
        user.username = username
        return user
    }
}

var user1 = User()
var user2 = user1
user2.username = "Taylor"
print(user1.username)
print(user2.username)
user2.copy()
user2.username = "Fillini"
print(user2.username)

    // Deinitialized

class Human {
    let id: Int
    
    init(id: Int) {
        self.id = id
        print("Human \(id): I'm alive!")
    }
    
    deinit {
        print("Human \(id): I'm dead!")
    }
}

print(" ")

var humans = [Human]()

for i in 1...3 {
    let human = Human(id: i)
    print("Human \(human.id): I'm in control!")
    humans.append(human)
}

print("Loop is finished!")
humans.removeAll()
print("Array is Clear")

    // Variables inside classes

class Man {
    var name = "Alex"
}

var man = Man()
man.name = "Ivan"
man = Man()
print(man.name)

    // Checkpoint 7

class Animal {
    let legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
}

class Dog: Animal {
    func speak() {
        print("Dog")
    }
}

class Cat: Animal {
    var isTame: Bool
    
    init(isTame: Bool, legs: Int) {
        self.isTame = isTame
        super.init(legs: legs)
    }
    
    func speak() {
        print("Cat")
    }
}

class Corgi: Dog {
    override func speak() {
        print("Corgi")
    }
}

class Poodle: Dog {
    override func speak() {
        print("Poodle")
    }
}

class Persian: Cat {
    override func speak() {
        print("Persian")
    }
}

class Lion: Cat {
    override func speak() {
        print("Lion")
    }
}

let corgi = Corgi(legs: 4)
let poodle = Poodle(legs: 4)
let persian = Persian(isTame: false, legs: 4)
let lion = Lion(isTame: true, legs: 4)
