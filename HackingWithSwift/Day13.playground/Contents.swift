import Foundation

    // Protocol

protocol Vehicle {
    var name: String { get }
    var currentPassengers: Int { get set }
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

protocol CanBeElectric {
    var countMass: Int { get set }
    func lock()
}

struct Car: Vehicle, CanBeElectric {
    var countMass: Int = 5
    var name: String = "Car"
    var currentPassengers: Int = 1
    
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }
    
    func travel(distance: Int) {
        print("I'm driving \(distance)km")
    }
    
    func lock() {
        countMass * 2
    }
    
    func openSunroof() {
        print("It's a nice day!")
    }
}

struct Bicycle: Vehicle {
    var name: String = "Bicycle"
    
    var currentPassengers: Int = 1
    
    func estimateTime(for distance: Int) -> Int {
        distance / 10
    }
    
    func travel(distance: Int) {
        print("I'm cycling \(distance)km")
    }
}

func commute(distance: Int, using vehicle: Vehicle) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("That's too slow!")
    } else {
        vehicle.travel(distance: distance)
    }
}

func getTravelEstimates(using vehicles: [Vehicle], distance: Int) {
    for vehicle in vehicles {
        let estimate = vehicle.estimateTime(for: distance)
        print("\(vehicle.name): \(estimate) hours to travel \(distance)km")
    }
}

let car = Car()
commute(distance: 100, using: car)

let bike = Bicycle()
commute(distance: 50, using: bike)

let array: [Vehicle] = [car, bike]

getTravelEstimates(using: array, distance: 175)

    // -> some

func getRandomNumber() -> some Equatable {
    Int.random(in: 1...6)
}

func getRandomBool() -> some Equatable {
    Bool.random()
}

    // Extension

var quote: String = "Extension"

extension String {
    func trim() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}

quote.trim()

struct Book {
    let title: String
    let pageCount: Int
    let readingHours: Int
}

extension Book {
    init(title: String, pageCount: Int) {
        self.title = title
        self.pageCount = pageCount
        self.readingHours = pageCount / 50
    }
}

let lort = Book(title: "Lord of the Rong", pageCount: 1178)
print(lort.readingHours)

    // Protocol extension

let guests = ["Mario", "Luigi", "Peach"]

if !guests.isEmpty {
    print("Guest count: \(guests.count)")
}

extension Collection {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}

if guests.isNotEmpty {
    print("Guest count: \(guests.count)")
}

protocol Person {
    var name: String { get }
    func sayHello()
}

extension Person {
    func sayHello() {
        print("Hi, I'm \(name)")
    }
}

struct Killer: Person {
    var name: String
}

let killer = Killer(name: "John")
killer.sayHello()

    // Checkpoint 8

print("")

protocol Building {
    var roomsCount: Int { get }
    var cost: Int { get set }
    var nameAgent: String { get set }
    func summary()
}

struct House: Building {
    let roomsCount: Int
    var cost: Int
    var nameAgent: String
    
    func summary() {
        print("\(nameAgent) sold a \(roomsCount)-rooms office for $\(cost)000.")
    }
}

struct Office: Building {
    let roomsCount: Int
    var cost: Int
    var nameAgent: String
    
    func summary() {
        print("\(nameAgent) sold a \(roomsCount)-rooms office for $\(cost)000.")
    }
}

let house = House(roomsCount: 3, cost: 120, nameAgent: "Kenet")
let office = Office(roomsCount: 5, cost: 500, nameAgent: "Ivan")

house.summary()
office.summary()
