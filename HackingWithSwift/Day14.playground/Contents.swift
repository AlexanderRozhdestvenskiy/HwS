import Foundation

let opposites = ["Mario": "Wario", "Luigi": "Waluigi"]
let peachOpposite = opposites["Peach"]

var num1 = 1_000_000
var num2 = 0
var num3: Int? = nil

var str1 = "Hello"
var str2 = ""
var str3: String? = nil

var arr1 = [0]
var arr2 = [Int]()
var arr3: [Int]? = nil

func square(number: Int) -> Int {
    number * number
}

var number: Int? = nil

if let unwrappedNumber = number {
    print(square(number: unwrappedNumber))
}

    // Guard

var myVar: Int? = 3

func printSquare(of number: Int?) {
    guard let number = number else {
        return print("No value")
    }
    print("\(number) * \(number) = \(number * number)")
}

printSquare(of: myVar)

    // Nil coalescing

let captains = [
    "Enterprise": "Picard",
    "Voyager": "Janeway",
    "Defiant": "Sisko"
]

let new = captains["Serenity", default: "N/A"]

let tvShow = ["Archer", "Babylon 5", "Ted Lasso"]
let favorite = tvShow.randomElement() ?? "None"

struct Book {
    let title: String
    let author: String?
}

let book = Book(title: "Lord", author: nil)
let author = book.author ?? "Anonimus"
print(author)

let input = ""
let numberInput = Int(input) ?? 0
print(numberInput)

    // Multiple optionals

let names = ["Arya", "Bran", "Rob", "Sans"]
let chosen = names.randomElement()?.uppercased() ?? "No one"
print("Next in line: \(chosen)")

var bookOptional: Book? = nil
let authorOptional = bookOptional?.author?.first?.uppercased() ?? "A"
print(authorOptional)

    // try

enum UserError: Error {
    case badID, networkFailed
}

func getUsers(id: Int) throws -> String {
    throw UserError.networkFailed
}

if let user = try? getUsers(id: 23) {
    print("User: \(user)")
}

let userTry = (try? getUsers(id: 23)) ?? "Anonymous"
print(userTry)

    // Checkpoint 9

print("")

func checkpoint(array: [Int]?) -> Int {
    array?.randomElement() ?? Int.random(in: 1...100)
}

let arrayOptional: [Int]? = [33, 57, 86, 47, 46, 79, 66, 35, 4]
print(checkpoint(array: arrayOptional))
