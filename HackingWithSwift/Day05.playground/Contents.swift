import SwiftUI

    // If

let someCondition = true

if someCondition {
    print("Yes")
}

let score = 90

if score > 85 {
    print("Great Job!")
}

let speed = 88
let percent = 85
let age = 18

if speed >= 85 || percent < 80 || age == 30 {
    print("Oh")
}

let ourName = "Dave Lister"
let friendName = "Arnold Rimmer"

if ourName < friendName {
    print("It's \(ourName) vs \(friendName)")
}

if ourName > friendName {
    print("It's \(friendName) vs \(ourName)")
}

var numbers = [1, 2, 3]
numbers.append(4)

if numbers.count > 3 {
    numbers.remove(at: 0)
}

print(numbers)

let country = "Canada"

if country == "Australia" {
    print("Good Day!")
}

if country != "Russia" {
    print(country)
}

var username = "Taylor"

if username.count == 0 {
    username = "Anonimus"
}

print(username)

    // If else

let a = 20
let b = 30
let c = 40

if a > 10 {
    print("Yes")
} else {
    print("No")
}

if b > 20 {
    if b < 40 {
        print("Ok")
    }
}

if b > 20 && b < 40 {
    print("Ok")
}

let userAge = 14
let hasParentalConsent = true

if userAge < 10 || hasParentalConsent == true {
    print("Go")
}

enum Transport {
    case airplane, helicopter, bicycle, car, escooter
}

let transport = Transport.car

if transport == .airplane || transport == .helicopter {
    print("Fly")
} else if transport == .bicycle {
    print("Bike")
} else if transport == .car {
    print("Traffic")
} else {
    print("Going")
}

    // Switch

switch transport {
case .car:
    print("Car")
case .bicycle:
    print("Bicycle")
case .helicopter:
    print("Helicopter")
default:
    print("Unknown")
}

let place = "Metropolis"

switch place {
case "Gotham":
    print("Batman")
case "Metropolis":
    print("Superman")
default:
    print("Thanos")
}

var day = 5
print("My true love gave to me...")

switch day {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A partridge in a pear tree")
}

    // Ternary operator

let goods = 18
let canVote = goods >= 18 ? "Yes" : "No"

let isActive = true
let onOff = isActive ? "On" : "Off"
    
let hour = 23
print(hour < 24 ? "Day" : "Nigth")
