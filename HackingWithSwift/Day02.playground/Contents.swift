import SwiftUI

    // Bool

let goodDogs = true
var gameOver = false

var isAuthenticated = false
isAuthenticated = !isAuthenticated
print(isAuthenticated)

gameOver.toggle()
print(gameOver)

    // String + String

let firstPart = "Hello, "
let secondPart = "World!"
let part = firstPart + secondPart
print(part)

let nameT = "Taylor"
let age = 26
let message = "Hello, my name is \(nameT) and I'm \(age) years"
print(message)

    // Checkpoint 1

let celsius = 26.6
let fahrenheit = (celsius * 9 / 5) + 32
print("Temperature \(celsius)°C or \(fahrenheit)°F")

