import UIKit


let names = ["Cristian", "Ricardo", "Juan", "Fredy"]

func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}

backward("j", "s")

var reversedNames = names.sorted(by: backward)

/*
 { (params) -> return type in
    //Código del closure
 }
 */


reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in return s1 > s2})
reversedNames = names.sorted(by: { (s1, s2) in return s1 > s2})
reversedNames = names.sorted(by: { (s1, s2) in s1 > s2})
reversedNames = names.sorted(by: { $0 > $1 })
reversedNames = names.sorted(by: > )




// Trailing Closure

func someFunctionThatTakeAClosure(closure: () -> Void) {
//    Body of function
}

someFunctionThatTakeAClosure(closure: {
//    Body of Closure
})

someFunctionThatTakeAClosure {
//    Body of Closure
}


reversedNames = names.sorted{$0 < $1}



let digitNames = [0: "Cero", 1: "Uno", 2: "Dos", 3: "Tres", 4: "Cuatro",
                  5: "Cinco", 6: "Seis", 7: "Siete", 8: "Ocho", 9: "Nueve" ]

let numbers = [12, 58, 510, 2127]

let numberStrings = numbers.map { (number) -> String in
    var number = number
    var output = ""
    repeat{
        output = digitNames[number % 10]! + output  // All cases are contempled - Justify force and rapping
        number /= 10
    }while number > 0
    return output
}

let realNumbers = [-12, 58, 510, -2127]

let numbersRealStrings = realNumbers.map { (number) -> String in
    var number = number
    var output = ""
    if number < 0 {
        repeat{
            output = digitNames[-number % 10 ]! + output
            number /= 10
        }while number > 0 ? number > 0 : number < 0
        output = "Menos\(output)"
    }else {
        repeat{
            output = digitNames[number % 10]! + output
            number /= 10
        }while number > 0
    }
    return output
}
