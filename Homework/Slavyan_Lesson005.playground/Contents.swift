//: Trening

/*
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

*/
// доМашка
// Zad 1


let birthDay = 15
let birthMonth = 10

let yearDay = (january: 31, february: 28, march: 31, april: 30, may: 31, june: 30, july: 31, august: 31, september: 30, oktober: 31, november: 30, december: 31)
let hoursInADay = 24
let minuteInAHour = 60
let secondInAMinutes = 60

let secondInADay = hoursInADay * minuteInAHour * secondInAMinutes


let sumSecond = Int(yearDay.january + yearDay.february + yearDay.march + yearDay.april + yearDay.may + yearDay.june + yearDay.july + yearDay.august + yearDay.september + (birthDay - 1)) * secondInADay

print ("Before my Birthday from the beginning of the year \(sumSecond) second")
print()

// Zad 2
//let quarterInAYears = 4
//let monthInAYears = 12
//let monthInAQuarters = monthInAYears / quarterInAYears


if birthMonth >= 1 && birthMonth < 4 {
    print("My birthday in 1 quarter ")
} else if birthMonth >= 4 && birthMonth < 7 {
    print("My birthday in 2 quarter ")
} else if birthMonth >= 7 && birthMonth < 10 {
    print("My birthday in 3 quarter ")
} else {
    print("My birthday in 4 quarter ")
}


// Zad 3 not relevant & actual

var one = 14
var two = 23
var three = 32
var four = 41

one = (one + 6) * 2
two *= 2

// Zad 4

var cell: (x: Int?, y: Int?)

cell.x = 4
cell.y = 9

if cell.x == nil || cell.y == nil {
    print("Нет нужного параметра!")
} else if (cell.x! < 1 || cell.x! > 8)  || (cell.y! < 1 || cell.y! > 8) {
    print("Заполни обязательные поля")
    if cell.x! < 1 || cell.x! > 8 {
        print("Х должен быть в диапазоне от 1 до 8")
        if cell.x! < 1 {
            print("Х должен быть от 1")
        } else if cell.x! > 8 {
            print("Х должен быть до 8")
        }
        
    }
    if (cell.y! < 1 || cell.y! > 8) {
        print("Y должен быть в диапазоне от 1 до 8")
        if cell.y! < 1 {
            print("Y должен быть от 1")
        } else if cell.y! > 8 {
            print("Y должен быть до 8")
        }
    }
    
    
} else {
    if cell.x! % 2 == cell.y! % 2 {
        print("BLACK")
    } else {
        print("WHITE")
    }
}




let (A,B,C,D,E,F,G,H) = (1, 2, 3, 4, 5, 6, 7, 8)

let dict = ["A" : 1, "B" : 2]

dict["A"]

let coordinateSystemY = (1, 2, 3, 4, 5, 6, 7, 8)

var runValue: (k: Int?, m: Int?)

runValue.k = E
runValue.m = 2


if runValue.k == nil || runValue.m == nil {
    print("Отсутствует необходимый параметр")
} else if (runValue.k! < 1 || runValue.k! > 8) || (runValue.m! < 1 || runValue.m! > 8){
    print("Параметры введены не верно")
    if runValue.k! < 1 {
        print("K не может быть меньше 1")
    } else if runValue.k! > 8 {
        print("K не может быть больше 8")
    }
    if runValue.m! < 1 {
        print("M не может быть меньше 1")
    } else if runValue.m! > 8 {
        print("M не может быть больше 8")
    }
} else {
    if runValue.k! % 2 == runValue.m! % 2 {
        print("BLACK")
    } else {
        print("WHITE")
    }

}
