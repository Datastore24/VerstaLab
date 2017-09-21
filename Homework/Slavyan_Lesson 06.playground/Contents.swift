
import Foundation

//Slavyan Lesson 6
var str = "c"

str += "a"
str += "b"

/*
var a = 5
var b = a

a += 1
b
*/

var str1 = "a"
var str2 = str1

str1
str2

//str1 = "b"

str1
str2

str1.isEmpty


let char1 : Character = "x"
/*
for c in "Hello world!" {
    print(c)
}
упразнено
*/

str1.append(char1)

//(str1 as NSString).length
//NSString(string: str1).length

let moto = "\u{1F3CD}"

let heart = "\u{1F496}\u{2B50}"

let rockBlack = "\u{1F918}\u{1F3FF}"

let eAcute: Character = "\u{E9}"
let combinedEAcute: Character = "e\u{301}"

//var fun : Character = "ъ"
let fun : Character = "ъ\u{301}\u{20dd}"

let funString = "what is this? -> \(fun)"

funString

//countElements (funString)
NSString(string: funString).length

if funString == "aa" {
    
} else {
    print("not eqtual")
}

funString.hasPrefix("what")

funString.hasSuffix("ъ")

funString.hasSuffix("ъ\u{301}\u{20dd}")

funString.hasSuffix("ъ\u{20dd}\u{301}")



//Zad 1

let first  = "1423"
let second = "1423NW"
let third  = "3241"
let fourth = "14NW23"
let fifth  = "14233241"

//var firstConv = Int()
//
//if firstConv == Int(first) ?? 0 {
//    firstConv += 0
//} else if firstConv == Int(second) ?? 0 {
//    firstConv += Int(second)
//} else if firstConv == Int(third) ?? 0 {
//    firstConv += Int(third)!
//} else if firstConv == Int(fourth) ?? 0 {
//    firstConv += Int(fourth)!
//} else if firstConv == Int(fifth) ?? 0 {
//    firstConv += Int(fifth)!
//}



//if firstConv == Int(first) ?? 0 {
//    firstConv += 0
//} else if firstConv == Int(second) ?? 0 {
//    firstConv += 0
//} else if firstConv == Int(third) ?? 0 {
//    firstConv += 0
//} else if firstConv == Int(fourth) ?? 0 {
//    firstConv += 0
//} else if firstConv == Int(fifth) ?? 0 {
//    firstConv += 0 {
//        print (firstConv)
//    }
//}

//var auxFirst = Int(first) ?? 0
//var auxSecond = Int(second) ?? 0
//var auxThird = Int(third) ?? 0
//var auxFourth = Int(fourth) ?? 0
//var auxFifth = Int(fifth) ?? 0

var sum2 = 0

sum2 += Int(first) ?? 0
sum2 += Int(second) ?? 0
sum2 += Int(third) ?? 0
sum2 += Int(fourth) ?? 0
sum2 += Int(fifth) ?? 0


//print("\(Int(first)) + \(Int(second)) + \(Int(third)) + \(Int(fourth)) + \(Int(fifth)) = \(sum2)")


//var sum = auxFifth + auxSecond + auxThird + auxFourth + auxFifth
//print ("\(auxFirst)  + \(auxSecond) + \(auxThird) + \(auxFourth) + \(auxFifth) = \(sum) ")


//let second2: Int? = 0
//
//var bbb = Int(first)!
//bbb += second2 ?? 0


//Zad 2

let firstTwo = ("\u{1F44A}\u{1F3FB}\u{1F43A}\u{1F30F}\u{264E}\u{1F1F7}\u{1F1FA}")

NSString(string: firstTwo).length
firstTwo.characters.count



//Zad 3

var abc = "abcdefghijklmnopqrstuvwxyz"

let symbol : Character = "n"

let char = abc.characters

//var index = 0

let indexChar = char.index(of: "n")
let indexOfElementChar = char.distance(from: char.startIndex, to: indexChar!)
print("index of char n is \(indexOfElementChar)")

for value in char {
    
    let index = char.index(of: value)
    let indexOfElement = char.distance(from: char.startIndex, to: index!)
    
    //print("index of \(value) is \(indexOfElement)")
    if value == symbol {
        print("index of \(symbol) is \(indexOfElement)")
    }
//    index += 1
}




