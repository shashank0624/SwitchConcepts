//: Playground - noun: a place where people can play
/*
 SWITCH STATEMENT CONCEPTS
 */
import UIKit

//SWITCH STATEMENT MUST BE EXHAUSTIVE. break is not required in swift.
let someCharacter1: Character = "z"
switch someCharacter1 {
case "a":
    print("The first letter of the alphabet.")
case "z":
    print("The last letter of the alphabet.")
default:
    print("Some other character.")
}


//Matching case in switch
let anotherCharacter : Character = "a"
switch anotherCharacter{
case "a", "A":
    print("The letter A")
default:
    print("Not the letter A")
}

//INTERVAL MATCHING
let approximateCount = 62
let countedThings = "moons orbiting Saturn"
let naturalCount: String
switch approximateCount {
case 0:
     naturalCount = "no"
case 1..<5:
    naturalCount = "a few"
case 5..<12:
    naturalCount = "several"
case 12..<100:
    naturalCount = "dozens of"
case 100..<1000:
    naturalCount = "hundreds of"
default:
    naturalCount = "many"
}
print("There are \(naturalCount) \(countedThings)")

//WILDCARD PATTERN IN TUPLES
let somepoint = (1,1)
switch somepoint {
case (0,0):
    print("\(somepoint) is at the origin.")
case (_,0):
    print("\(somepoint) is on the x-axis.")
case (0,_):
    print("\(somepoint) is on the y-axis.")
case (-2...2,-2...2):
    print("\(somepoint) is inside the box.")
default:
    print("\(somepoint) is outside the box.")
}

//Value Bindings
let anotherPoint = (2,0)
switch anotherPoint {
case (let x, 0):
    print("on the x-axis with an x value \(x)")
case (0,let y):
    print("on the y-axis with a y value \(y)")
case (let x, let y):
    print("somewhere else at (\(x),\(y)).")
}

//Switch can use a where clause
let yetAnotherPoint = (2,3)
switch yetAnotherPoint {
case let (x,y) where x == y:
    print("(\(x),\(y)) is on the line x==y")
case let (x,y) where x == -y:
    print("(\(x),\(y)) is on the line x==-y")
case let (x,y):
    print("(\(x),\(y) is just some point.")
}

//Compound cases
let someCharacter : Character = "e"
switch someCharacter {
case "a","e","i","o","u":
    print("\(someCharacter) is a vowel.")
default:
    print("\(someCharacter) is a consonant.")
}
