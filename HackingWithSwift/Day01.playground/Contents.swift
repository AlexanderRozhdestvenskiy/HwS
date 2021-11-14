import Foundation

    // String

var greeting = "Hello, playground"

var name = "Ted"
name = "Rebecca"

let character = "Daphne"
print(character)

let quote = "Then he tapped a sign saying \"Belive\" and walked away."

let movie = """
A day in
the life of a an
Apple engineer
"""

print(movie.count)
print(movie.uppercased())
print(movie.hasPrefix("A day"))
print(quote.hasSuffix("he"))

    // Int

let score = 10
let reallyBig = 100_000_000

let lowerScore = score - 2
let higherScore = score + 10
let doubleScore = score * 2
let squaredScore = score * score
let halvedScore = score / 2
print(score)

var counter = 10
counter = counter + 5
counter += 5
print(counter)

counter *= 2
counter -= 10
counter /= 2
print(counter)

let number = 120
print(number.isMultiple(of: 3))
print(120.isMultiple(of: 4))

    // Double

let chill = 0.1 + 0.2
print(chill)

let a = 1
let b = 2.0
let c = a + Int(b)
let d = Double(a) + b
