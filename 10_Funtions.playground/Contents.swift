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
