import SwiftUI

    // Default values for parameters

func printTimesTables(for number: Int, end: Int = 12) { // default value
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5, end: 20)
printTimesTables(for: 4)

var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)
characters.removeAll(keepingCapacity: true)
print(characters.count)

    // Errors in function

enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }
    
    if password == "12345" {
        throw PasswordError.obvious
    }
    
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

let string = "15"

do {
    let result = try checkPassword(string)
    print(result)
} catch PasswordError.short {
    print("Pleace use a longer password.")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error.")
}

    // Checkpoint

enum InputError: Error {
    case outOfBounds, noRoot
}

func myFunc(go: Int) throws -> Int {
    if go < 1 || go > 10_000 {
        throw InputError.outOfBounds
    }
    for i in 1...100 {
        let x = i * i
        if x == go {
            return Int(i)
        }
    }
    throw InputError.noRoot
}

try myFunc(go: 16)

    // Final

do {
    let final = try myFunc(go: -22)
    print(final)
} catch InputError.outOfBounds {
    print("Out of Bounds")
} catch InputError.noRoot {
    print("No Root")
}

