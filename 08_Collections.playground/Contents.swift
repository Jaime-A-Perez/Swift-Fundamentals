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


