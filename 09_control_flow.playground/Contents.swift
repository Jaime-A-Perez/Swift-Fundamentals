import UIKit


// Cycle For in
let names = ["Ricardo", "Juan", "Edgar"]

for name in names {
    print("Hola \(names)")
}

let numbeOfLegs = ["Spider": 8, "ant": 6, "dog": 4]

for (animalName, letCountLegs) in numbeOfLegs {
    print("Animal: \(animalName) - número de patas: \(letCountLegs)")
}
     
for idx in 1...5 {
    print("\(idx) x 3 = \(idx * 2)")
}


let base = 2
let power = 10
var answer = 1

for _ in 1...power{
    answer *= base
    print(answer)
}

var hour = 0
let minutes = 60
for tickMark in 0..<minutes{
    print("\(hour) : \(tickMark)")
}

let miminuteInterval = 15
for numOfHour in 0...24 {
    for tickMark in stride(from: 0, to: minutes, by: miminuteInterval){
        print("\(hour): \(tickMark)")
    }
    hour += 1
}


// Cycle while

var i = 0
while i <= 10 {
    i += 1
}
print(i)


// Cycle repeat while

repeat {
    i += 1
}while i <= 10
print(i)


// Prim Numbers For

var countCycleFor = 0
var maxNum = 1000
var currentNum = 1
var numbersPrims : [Int] = []
for num in 2...maxNum {
    countCycleFor += 1
    for curentNum in 2..<num{
        countCycleFor += 1
        if (num % curentNum) == 0 {
             break
            }else {
                numbersPrims.append(num)
                break
        }
    }
}
print(numbersPrims)

// Prime Numbers

var countCybleWhile = 0
while maxNum >= 1 {
    countCybleWhile += 1
    var currentNum = 2
    while currentNum < maxNum {
        countCybleWhile += 1
        if (maxNum % currentNum) == 0 {
            break
        }else{
            numbersPrims.append(maxNum)
            currentNum += 1
            break
        }
    }
    maxNum -= 1
}
numbersPrims.sort()
print(numbersPrims)


print("For: \(countCycleFor) - While: \(countCybleWhile)" )



// If and else

var temp = 18
if temp <= 15 {
    print("Hace frio! Enciende la calefacció")
}else if temp > 25{// tem > 25
    print("Enoueza a hacer calor. Apaga la calefacción")
}else {
    print("La sensación termica es agradable. No hace falta modificarla")
}



//
let moons = 62
let phrase = "lunas en Saturno"
let naturalCount : String
switch moons {
case 0:
    naturalCount = "No hay"
case 1...5:
    naturalCount = "Hay unas pocas"
case 6...12:
    naturalCount = "Hay bastantes"
case 13...100:
    naturalCount = "Hay decenas de"
case 101...1000:
    naturalCount = "Hay centenares de"
default:
    naturalCount = "Hay muchiiiisimas"
}

print("\(naturalCount) \(phrase)")
    
