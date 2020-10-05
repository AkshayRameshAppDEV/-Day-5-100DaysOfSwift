import UIKit

// Functions
// A block which can have multiple statements
// avoids copy pasting of the code
// modular
// Block Can be called in multiple places

// function
func printLog() {
    let message = """
Hello I am the \
message being \
logged
"""
    print(message)
}

printLog() // caller

// Function with params - params should have a variable name and data type
func printMeXTimes(numberOftimes: Int) {
    for _ in 1...numberOftimes {
        printLog()
    }
}

printMeXTimes(numberOftimes: 100)

// Function can return values should have '-> Data type' after function name
func numberCubed(num: Int) -> Int {
    return num * num * num
}
numberCubed(num: 102) // value can be captured because function returns and can be used elsewhere

// function can return multiple values
// can return array of values -> [String]
// can return dictionary of key value pairs -> [String: Int]
// can return tuple of params -> (first: String, last: String)
// Best candidate is tuple
func sayHelloToMeInPLanguage(first: String, last: String) -> (pFirst: String, pLast: String) {
    return (pFirst:"Hello P\(first)", pLast: "P\(last)")
}

sayHelloToMeInPLanguage(first: "Akshay", last: "Ramesh").pFirst
sayHelloToMeInPLanguage(first: "Samy", last: "Ramesh").pLast

// External and Internal param names for the function
func calculateSum(of elements: [Int]) -> Int {
    var result = 0
    for num in elements {
        result += num
    }
    return result
}

calculateSum(of: [1,2,3,4,5])


// Replace the parameter name with underscore for the external name to omit parameter name
func iDontHaveParam(_ string: String) {
    print("Hello from no param function: \(string)")
}
iDontHaveParam("Akshay")

// Default params - If param value is not given, it will take the default value if provided in the function creation
func sayHello(to name: String = "Alien") {
    print("Hello ---->, \(name)")
}
sayHello(to: "Akshay")
sayHello()

//Variadic function - function that can accept multiple params of same type
// three dots after the type
// in this function can be array of elements which can be looped over
func printArrayElementsAsOne(_ elements: [Int]...) {
    print(elements)
}
printArrayElementsAsOne([1],[2])


// Throw when something fails and follow these steps:
// 1. Create a enum of Error type
// throws should be mentioned after params and before return value (->)
// throw functions should be marked with try in the caller
// when calling throws function surround with do{...try{}..}catch{}
enum Exceptions: Error {
    case obvious
}
func checkPhoneNumber(_ number: String) throws -> Bool {
    if number == "911" {
        throw Exceptions.obvious
    }
    return true
}
try checkPhoneNumber("1111111111")
do {
    try checkPhoneNumber("911")
} catch {
    print(error)
    print("^Exception name")

}

// Inout - This lets you change the param value in place
// When calling the param inside calling function should be prepended with &
func changeMe(num: inout Int) {
    num * 2
}
var numberToBeChanged = 1000
changeMe(num: &numberToBeChanged)
numberToBeChanged
