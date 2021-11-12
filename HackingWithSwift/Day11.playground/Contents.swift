import Foundation

    // Access control

struct BankAccount {
    private(set) var funds = 0
    
    mutating func deposit(amount: Int) {
        funds += amount
    }
    
    mutating func withdraw(amount: Int) -> Bool {
        if funds > amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

var account = BankAccount()
account.deposit(amount: 100)
let success = account.withdraw(amount: 200)

if success {
    print("Withdrew money successfully")
} else {
    print("Failed to get the money")
}
account.funds

    // Static

struct School {
    static var studentCount = 0
    
    static func add(student: String) {
        print("\(student) joined the school.")
        studentCount += 1
    }
}
School.add(student: "Taylor Swift")
print(School.studentCount)

struct Employee {
    let username: String
    let password: String
    
    static let example = Employee(username: "Oleg", password: "1234")
}

 // Checkpoint 6

struct Car {
    let model: String
    let count: Int
    private(set) var gear: Int = 0
    
    mutating func gearUp() {
        if gear < 6 && gear >= 0 {
            gear += 1
        }
    }
    
    mutating func gearDown() {
        if gear > 0 && gear <= 6 {
            gear -= 1
        }
    }
}

var tesla = Car(model: "Tesla", count: 4)
tesla.gearDown()
tesla.gearUp()
print(tesla.gear)
