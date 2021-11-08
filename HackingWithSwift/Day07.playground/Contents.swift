import SwiftUI

    // Function

func showWelcome() {
    print("Welcome to my app!")
    print("By default This prints out a conversion")
    print("chart from cintimeters to inches, but you")
    print("can also set a custom range if you want.")
}

showWelcome()

func printTimesTables(number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(number: 5)

func printTimesTablesTwo(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTablesTwo(number: 2, end: 3)

    // Return values from function

let root = sqrt(169)
print(root)

func rollDice() -> Int {
    Int.random(in: 1...6)
}

let result = rollDice()
print(result)

func areLettersIdentical(string1: String, string2: String) -> Bool {
    let first = string1.sorted()
    let second = string2.sorted()
    return first == second
}

areLettersIdentical(string1: "goal", string2: "loag")

func pyphagoras(a: Double, b: Double) -> Double {
    let input = a * a + b * b
    let roots = sqrt(input)
    return roots
}

let c = pyphagoras(a: 3, b: 4)
print(c)

func getUser() -> [String] {
    ["Taylor", "Swift"]
}

let user = getUser()
print("Name: \(user[0]) \(user[1])")

func getUsers() -> [String: String] {
    [
        "firstName": "Taylor",
        "lastName": "Swift"
    ]
}

let users = getUsers()
print("Name: \(users["firstName", default: "Anonimus"]) \(users["lastName", default: "Anonimus"])")

func cortege1() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

func cortege2() -> (firstName: String, lastName: String) {
    ("Taylor", "Swift")
}

let cortage1 = cortege1()
print("Name: \(cortage1.firstName) \(cortage1.lastName)")

let cortage = cortege2()
print("Name: \(cortage.0) \(cortage.1)")

let (firstName, lastName) = cortege1()
print("Name: \(firstName) \(lastName)")

func printTimesTablesOne(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTablesOne(for: 5)
