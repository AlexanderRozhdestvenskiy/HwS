import Foundation

    // Struct

struct Album {
    let title: String
    let artist: String
    let year: Int
    func printSummary() {
        print("\(title) (\(year)) by \(artist)")
    }
}

let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
let wings = Album(title: "Wings", artist: "BTS", year: 2016)

print(red.title)
print(wings.artist)

red.printSummary()
wings.printSummary()

struct Employee {
    let name: String
    var vacationRemaining: Int
    
    mutating func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationRemaining -= days
            print("I'm going on vacation!")
            print("Days remaining: \(vacationRemaining)")
        } else {
            print("Oops! There aren't enough days remaining.")
        }
    }
}

var archer = Employee(name: "Sterling", vacationRemaining: 14)
archer.takeVacation(days: 5)
print(archer.vacationRemaining)

    // Computed property values dynamicaly

struct Man {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    var vacationRemaining: Int {
        get {
            vacationAllocated - vacationTaken
        }
        
        set {
            vacationAllocated = vacationTaken + newValue
        }
    }
}

var man = Man(name: "Jo", vacationAllocated: 14)
man.vacationTaken += 4
man.vacationRemaining = 5
print(man.vacationAllocated)

    // Property Observes

struct Game {
    var score = 0
}

var game = Game()
game.score += 10
print("Score is now \(game.score)")
game.score -= 3
print("Score is now \(game.score)")
game.score += 1

struct Go {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var go = Go()
go.score += 10
go.score -= 3
go.score += 1

print(" ")

struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }
        
        didSet {
            print("There are now \(contacts.count) contacts.")
            print("Old value was \(oldValue)")
        }
    }
}

var app = App()

app.contacts.append("Adrian E")
print(" ")
app.contacts.append("Allen W")
print(" ")
app.contacts.append("Ish S")

    // Custom initializers

struct Player {
    let name: String
    let number: Int
    
    init(ggg: String) {
        self.name = ggg
        number = Int.random(in: 1...100)
    }
}

let player = Player(ggg: "Megan R")
print(player.number)
