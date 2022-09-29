import UIKit


//Asignation
let b = 10
var a = 5
a = b

let (x,y) = (1,2)



// Comparation

if a == b {
    print("los valores de a y b son iguales")
}


1+2
5-2
2*3
10.4/2.4
9/4 //cociente
9%4 //restante

"hello " + "World"


// Aritmeticas
let five = 5
let minusFive = -five
let plusFive = -minusFive

var number = 5
number += 3
number -= 2



//Compationes

1 == 1
1 == 2
1 != 2
2 > 1
2 < 1
2 >= 1
2 <= 1

let name = "Juan Gabriel"

if name == "Juan Gabriel" {
    print("Bienvenido \(name), eres invitado")
}else {
    print("Cuidado, ha aparecido un \(name) salvahe")
}


(1, "Juan")  < (2, "Ricardo") //con tuplas
(1, "juan") == (2, "Ricardo")



// Operador ternario

let contentHeight = 40
var hasImage = true
var rowHeight = 0
if hasImage {
    rowHeight = contentHeight + 50
}else {
    rowHeight = contentHeight + 10
}


rowHeight = contentHeight + (hasImage ? 50 : 10)


// Operador Nil coalescing

let defaultAge = 18
var userAge : Int?

var ageToBeUsed = userAge ?? defaultAge


let defaultColor = "red"
var userColor : String?

var colorName = userColor ?? defaultColor

