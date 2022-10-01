import UIKit

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
