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
