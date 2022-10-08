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

let numbersRealStringsTwo = realNumbers.map { (number) -> String in
    var number = number
    var output = ""
    let minus = "menos"
    let negativeNumber = number < 0 ? true: false
    if number < 0 { number *= -1}
    
    repeat{
        output = digitNames[number % 10]! + output
        number /= 10
    }while number > 0
    if negativeNumber { output = minus + output}
    return output
}




// Capturing Closure

func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

let incrementByTen = makeIncrementer(forIncrement: 10)
incrementByTen()
incrementByTen()
incrementByTen()

let incrementByOne = makeIncrementer(forIncrement: 1)
incrementByOne()
incrementByOne()
incrementByOne()

incrementByTen()

// Count the number of characters in each word of a String
let sentence0 = "Esto es una prueba"
let charCountPerWord = sentence0.split(separator: " ").map { String($0.count) }
print(charCountPerWord)

let sentence = "Esto es una prueba"
let charCountPerWord1 = sentence.split(separator: " ")
var countOfWhichWord: [String:Int] = [:]
for sS in charCountPerWord1 {
    var sS = String(sS)
    var arrayS: [Character] = []
    var countOfCh = 0
    
    for ch in sS {
        countOfCh += 1
        arrayS.append(ch)
    }
    countOfWhichWord[sS] = countOfCh
    arrayS.count
}
print(countOfWhichWord)


let sentence1 = "Me gusta programar en Swift"
let replacedSentence = sentence1.replacingOccurrences(of: "Swift", with: "Python")


let sentence2 = "Apple, Banana, Cherry"
let firstThreeLetters = sentence2.split(separator: " ").map { String($0.prefix(3)) }

let text = "  Hola,    ¿cómo estás?  "
let trimmedText = text.trimmingCharacters(in: .whitespaces)
print("\"\(trimmedText)")


// Sum of elements of array of Ints
let num = [ 1,2,3,4,5,]
let sum =  num.reduce(0) { $0 + $1 }
print(sum)

// Find unique values in a String Array
let fruits = ["apple", "orange", "banana", "apple", "grape", "orange"]
let uniqueFruits = Array(Set(fruits))

// filter by a condition
let scores = ["John": 80, "Alice": 95, "Michael": 70, "Sophia": 90]
let passedStudents = scores.filter { $0.value >= 80 }
print(passedStudents)

// Get keys of students that have a score more than 85
let scores1 = ["John": 80, "Alice": 95, "Michael": 70, "Sophia": 90]
let topStudents = scores1.compactMap { $0.value > 85 ? $0.key : nil }

// Calculate the student's grade point average:
let scores2 = ["John": 80, "Alice": 95, "Michael": 70, "Sophia": 90]
let students = scores2.values.filter {$0 > 0}.count
let averageScore = scores2.values.reduce(0) { ($0 + $1)  }
print("\(averageScore/students)")

// Convert a dictionary of grades to a dictionary with ranges
let scores3 = ["John": 80, "Alice": 95, "Michael": 70, "Sophia": 90]
let scoreRanges = scores3.mapValues { score -> String in
    switch score {
    case 0..<60: return "F"
    case 60..<70: return "D"
    case 70..<80: return "C"
    case 80..<90: return "B"
    default: return "A"
    }
}

let boolArray = [false, false, true, false, false]
let anyTrue = boolArray.contains { $0 }

// Count the number of true elements in an array of booleans
let boolArray1 = [true, true, false, true, false]
let trueCount = boolArray1.filter { $0 }.count

// Invert the value of each element of an array of booleans
var boolArray2 = [true, false, true, false, true]
boolArray2 = boolArray2.map { !$0 }

// Check if all elements of two boolean arrays are equal
let boolArray4 = [true, false, true, true]
let boolArray5 = [true, false, true, true]
let areEqual = boolArray4.elementsEqual(boolArray5)



// Check if a set of numbers contains a specific number
let numberSet: Set<Int> = [1, 2, 3, 4, 5]
let containsNumber = numberSet.contains { $0 == 3 }


let set1: Set<String> = ["apple", "banana", "orange"]
let set2: Set<String> = ["orange", "banana"]
let containsAll = set1.isSuperset(of: set2)




// Escaping Closure
func fizzBuzz(n: Int) -> Void{
    for num in 1...n {
        if num % 3  == 0 && num % 5 == 0 {
            print("FizzBuzz")
        }else if num % 3  == 0 {
            print("Fizz")
        }else if num % 5 == 0{
            print("Buzz")
        }else {
            print(num)
        }
    }
}


func fizzBuzz1(n: Int) {
    for num in 1...n {
        switch (num % 3 == 0, num % 5 == 0) {
        case (true, true):
            print("FizzBuzz")
        case (true, false):
            print("Fizz")
        case (false, true):
            print("Buzz")
        default:
            print(num)
        }
    }
}

fizzBuzz1(n: 15)
