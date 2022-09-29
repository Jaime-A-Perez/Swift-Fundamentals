import UIKit

// Array

var someInts = [Int]()
someInts.count
someInts.append(31)
someInts.count
someInts = []


var someDoubles = Array(repeating: 3.14, count: 3)
someDoubles.count

var moreDoubles = Array(repeating: 2.4, count: 4)

var aLotOfDoubles = someDoubles + moreDoubles
aLotOfDoubles.count


// MODIFICADORES DE ARRAYS

moreDoubles.append(2)
moreDoubles.count

moreDoubles += [3,5]
moreDoubles.count

var firstElement = moreDoubles[0]
moreDoubles[0] = 6

moreDoubles[2...6]
moreDoubles[1...2] = [2,4,5]
moreDoubles

let eight = moreDoubles.remove(at: 2)
moreDoubles

let _ = moreDoubles.removeLast()
moreDoubles


// Iterar por un Array

//for item in moreDoubles {
//    print(item)
//}

for (idx, item) in moreDoubles.enumerated() {
    print("Item \(idx + 1): \(item)")
}




// CONJUNTOS (SET)


var letters = Set<Character>()
letters.count
letters.insert("a")
letters.insert("w")
letters.insert("r")
letters

if let removedCharacter = letters.remove("a") {
    print("Se ha eliminado \"\(removedCharacter)\"")
}

for ch in letters.sorted() {
    print(ch)
}


// iteraciones y operaciones con conjuntos

let odddiDigits : Set = [1,3,5,7,9]
let evenDigits : Set = [0,2,4,6,8]
let primeNumbers : Set = [2,3,5,7]


// A union B = elementos que son o bien de A, o bien de B o de los dos
odddiDigits.union(evenDigits).sorted()

// A interseccion B = elementos que son a la vez de a y de B
evenDigits.intersection(primeNumbers).sorted()
odddiDigits.intersection(primeNumbers).sorted()

// A - B = elementos que son de A pero no son de B
odddiDigits.subtracting(primeNumbers).sorted()

// A + B = (A-B) union (B-a)
odddiDigits.symmetricDifference(primeNumbers).sorted()
