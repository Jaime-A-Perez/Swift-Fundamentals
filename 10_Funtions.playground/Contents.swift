import UIKit


func greeting(person: String) -> String {
    let greet = "¡Hola, \(person)!"
    return greet
}

greeting(person: "Ricardo")
greeting(person: "Edgar")
greeting(person: "Juan")


func sayHello() -> String {
    return "Hello"
}
sayHello()


// Input parameters

func greeting(person: String, isMale:Bool, age:Int) -> String {
    switch age {
    case 1...20:
        if isMale {
            return "Bienvenido Señorito \(person)"
        }else {
            return "Bienvenida Señorita \(person)"
        }
    case  20...110:
        if isMale {
            return "Bienvenido Caballero \(person)"
        }else {
            return "Bienvenida Señora \(person)"
        }
    default:
        return ""
    }
}
greeting(person: "Ricardo", isMale: true, age: 18)
greeting(person: "Ana", isMale: false, age: 21)



// Output parameters

func greet2(person: String) {
    print("Hola\(person)")
}
greet2(person: "Edgar")


func printAndCount(string:String) -> Int{
    print(string)
    return string.count
}
printAndCount(string: "hola que tal")

func printWithoutCounting(string:String){
    let _ = printAndCount(string: string)
}
printWithoutCounting(string: "hola que tal")


func minMax(array: [Int]) -> (min:Int, max:Int)?{
    
    if array.isEmpty{return nil}
    var currentMIn = array[0]
    var currentMax = array[0]
    
    for value in array[1..<array.count]{
        if value < currentMIn{
            currentMIn = value
        }else if value > currentMax{
            currentMax = value
        }
    }
    return (currentMIn, currentMax)
}




// Labels of parameters and Variadics

let bound = minMax(array: [23,4,4,65,67])
print("los valores se encuentran entre \(bound!.min) y \(bound!.max)")


func someFunction(f1 firsParamName:Int, f2 secondParamName:Int = 6){
    print(firsParamName + secondParamName)
}

someFunction(f1: 1, f2: 4)
someFunction(f1: 1)

func greeting(_ person:String, from hometown: String) -> String {
    return "hola \(person) un placer que nos visites desde \(hometown)"
}

greeting( "Juan", from: "Mayorca")



// Variadico (n numbers of parameters (of same type))
func mean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}

mean(1,2)




// Parameters type inout

var x = 5

func addOne(number: Int) {
    var number2 = number
    number2 += 1
    print("Now x number is  worth \(number2)")
}
print("x is worth \(x)")
addOne(number: x)
print("x is worth \(x)")
addOne(number: 2)


func swapTwoInts(_ a: inout Int, _ b: inout Int){
    let temA = a
    a = b
    b = temA
}

var someInt = 3
var otherInt = 7
print("someInt is worth \(someInt) and otherInt is worth  \(otherInt)")
swapTwoInts(&someInt, &otherInt)
print("someInt is worth \(someInt) and otherInt is worth  \(otherInt)")
