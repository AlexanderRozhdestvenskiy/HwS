import SwiftUI

    // Array

var beatles = ["John", "Paul", "George", "Ringo"]
let numbers = [4, 5, 8, 64, 63, 97]
var temeratures = [23.4, 93.6, 85.9]

print(beatles[0])
print(numbers[1])
print(temeratures[2])

beatles.append("Adrian")
beatles.append("Vivian")

var scores = Array<Int>()
scores.append(22)
scores.append(34)
scores.append(99)
print(scores[1])

var albums = [String]()
albums.append("Red")
albums.append("Black")
print(albums[1])

var meets: [Double] = []
meets.append(66.3)
meets.append(11.2)
meets.append(9.2)
print(meets[1])

var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)

characters.remove(at: 2)
print(characters.count)

characters.removeAll()
print(characters.count)

let bondMovies = ["Casino Royale", "Spectre", "No time to die"]
print(bondMovies.contains("Skyfall"))
print(bondMovies.sorted())

    // Dictionares

let employee = ["name" : "Taylor Swift",
                "job" : "Singer",
                "location" : "Nashville"]

print(employee["name", default: "No"])
print(employee["job", default: "No"])
print(employee["location", default: "No"])

print(employee["go", default: "Unknown"])

let hasGraduated = ["Eric": false,
                    "Maeve": true,
                    "Otis": false]

let olympic = [2012: "London",
               2016: "Rio de Janeiro",
               2020: "Tokyo"]

print(olympic[2012, default: "?"])

var heights = [String : Int]()
heights["Yao Ming"] = 229
heights["Shaquille O'Neal"] = 216
heights["LeBron James"] = 206

    // Set

var actors = Set(["Denzel Washington", "Tom Cruize", "Nicolas Cage", "Samuel L Jackson"])
print(actors)

actors.insert("Tom Hardy")
print(actors)

    // Enum

enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

var day = Weekday.monday
day = .friday
day = .tuesday
