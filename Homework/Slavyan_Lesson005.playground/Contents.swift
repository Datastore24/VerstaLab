//: Trening

let total = ((5 + 6) - (2 * 4) - (10 / 5))

let div = 10 / 3
let rest = 13 % 6

var small : UInt8 = 0xff

small = 0

small += 5


small = small &+ 5


let str = "Neu " + "Year"

let a = 6
let b = 3

if (a != b) {
    print("Yes")
} else {
    print("No")
}


var c : Int
/*
if a < b {
    c = a
} else {
    c = b
}
*/

c = (a > b || b == a) ? a : b


let text = "123"
let n = Int(text)

// это метод анрапт
/*
if n != nil {
    c = n!
} else {
    c = 0
}
*/

// это метод опшнал бандинг!!!

/*
if let opt = n {
    c = opt
} else {
    c = 0
}
*/

// или можно записать методом анрапта оператором возвращения
c = n ?? 0


var sum1 = 5

sum1 += 2

// ++ -- do & posle ubrali

// унарные операторы

let good = true

!good

// good = !good

if good {
    print("good")
} else {
    print("bad")
}


let i = 5
let j = 6
let k = 7
let m = 8

if i < 3 && j > k && m != k || m > i {
    
}

0...5
0..<5

for i in 0..<5 {
    print("\(i)")
}


// доМашка
// Zad 1


let yearDay = (january: 31, february: 28, mart: 31, april: 30, may: 31, june: 30, july: 31, august: 31, september: 30, oktober: 31, november: 30, december: 31)




