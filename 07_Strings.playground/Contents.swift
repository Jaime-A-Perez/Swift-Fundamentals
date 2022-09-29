import UIKit


//Strings

let someString = "String cualquiera" // String literal (Una unica linea)

let multiLIneString = """
    String\
    multilinea
""" //

let wiseWords = "\"La imaginacion es mas grande que el saber\"- Alber Einsten"
print(wiseWords)




// Inicializacion y mutabilidad

var emptyString = ""
var anotherEmptyString = String()

if emptyString.isEmpty {
    print("Noting")
}else {
    print("String con valor")
}


var newSomeString = "Un Caballo"
newSomeString += " y un carruaje"
//tipo de dato evaluado




//Characteres

let name = "Juan"
for ch in name {
    print(ch)
}


let exclamatioMark : Character = "!"

let nameCahars : [Character] = ["J", "u", "a", "n"]
var nameString = String(nameCahars)

let compoundName = "Juan " + "Gabriel"

nameString.append(exclamatioMark)

let multiplier = 3
var message = "El producto de \(multiplier) x 2.4 da \(multiplier * 2)"
message.append(exclamatioMark)


// Subindices

let greeting = "Hola, ¿que tal?"
greeting[greeting.startIndex]
//greeting[greeting.endIndex]
greeting[greeting.index(before: greeting.endIndex)]
greeting[greeting.index(after: greeting.startIndex)]


for idx in greeting.indices {
    print("\(greeting[idx]) - \(idx)", terminator: "\n")
}

var welcome = "Hola"

welcome.insert("!", at: welcome.endIndex)

welcome.insert(contentsOf: " que tal", at: welcome.index(before: welcome.endIndex))

welcome.remove(at: welcome.index(before: welcome.endIndex))
welcome


let range = welcome.index(welcome.endIndex, offsetBy: -7)..<welcome.endIndex

range


welcome.removeSubrange(range)



// SubString

let index = greeting.firstIndex(of: ",") ?? greeting.endIndex

let fistPart = greeting[..<index] // Esto es un Substring

let newString = String(fistPart) // Esto es un String


// Prefijos y sufijos

let newGreeting = "Hola, soy Juan"
newGreeting.hasPrefix("Hola")
newGreeting.hasSuffix("an")
