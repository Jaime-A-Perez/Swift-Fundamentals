import UIKit

let oreangesAreOrange = true
let foodIsDelicius = false

var isAged : Bool

isAged = false

if isAged {
    print("Puedes entrar a la fiesta")
}else {
    print("NO puedes entrar a la fiesta")
}


var age = 31
if age >= 18 {
    print("puedes entrar en la fiesta")
}


// TUPLAS

let http404Error = (404, "Pagina no encontrada")
let (statusCode, statusMessage) = http404Error
print("El código del estado es: \(statusCode)")
print("El mensaje del estado es: \(statusMessage)")


let(justStatusCode, _) = http404Error
print("El código del estado es \(justStatusCode)")

print("El código del error es: \(http404Error.0)")


let http200Status = (statusCode: 200, description: "ok" )
print("El código del estad es: \(statusCode)")


// OPTIONALS and NIL

let possibleAge = "31"
let convertedAge = Int(possibleAge) // Int?

var serverREsponseCode: Int? = 404
serverREsponseCode = nil

var surveAnswer : String?

surveAnswer = "34"

print(surveAnswer)



// Force Unwrapping


if convertedAge != nil {
    print("la edad no es nil: \(convertedAge!)")
}else {
    print("la edad es nil")
}




// Optional Binding

if let actualAnswer = surveAnswer {
    print("El string \(surveAnswer) tiene el valor: \(actualAnswer)")
}


if let firstNumber = Int("4"),
   let secondNumber = Int("43"),
    firstNumber < secondNumber && secondNumber < 100{
    print("\(firstNumber) < \(secondNumber) < 100")
}



// Unwrap implicito

let possibleString: String? = "Un String Optional"
let forcedString: String = possibleString!

let assumeedString : String! = "Un String unwrapped de forma implicita a partir de un optional"
let implicitString : String = assumeedString

print(assumeedString)
print(implicitString)
