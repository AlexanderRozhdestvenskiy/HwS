import SwiftUI

 // For _ in loop

let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for platform in platforms {
    print("Swift works great on \(platform).")
}

for i in 1...12 {
    print("5 x \(i) is \(5 * i)")
    
    for j in 1...12 {
        print("\(i * j)")
    }
    
    print()
}

var lyric = "Hatters gonna"
for _ in 1...5 {
    lyric += " hate"
}

print(lyric)

    // While loop

var count = 10

while count > 0 {
    print("\(count)...")
    count -= 1
}

var roll = 0
while roll != 20 {
    roll = Int.random(in: 1...20)
    print("I rolled a \(roll)")
}

    // Break and Continue

let filenames = ["me.jpg", "work.txt", "sophie.jpg", "logo.psd"]

for filename in filenames {
    if filename.hasSuffix(".jpg") == false {
        continue
    }
    print("Found picture: \(filename)")
}

let number1 = 7
let number2 = 13
var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)
        
        if multiples.count == 100 {
            break
        }
    }
}

print(multiples)

    // Checkpoint 3

for i in 1...100 {
    if i.isMultiple(of: 3) && i.isMultiple(of: 5) {
        print("FizzBuzz")
        continue
    }
    if i.isMultiple(of: 3) {
        print("Fizz")
        continue
    }
    if i.isMultiple(of: 5) {
        print("Buzz")
        continue
    }
    print("\(i)")
}
