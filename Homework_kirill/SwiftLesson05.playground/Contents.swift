//Базовые операторы Унарные Бинарные Тинарные, чаще Бинарные

let total = 5 + 6 - 8 * 3 - 5 / 10

let div = 9 / 3

//Целое делим на целое, получим целое без остаткао
let div2 = 10 / 3

let div3 : Double = 10 / 3

//Остаток от деления
let rest =  13 % 3

//от 0 до 100
4231231112354322456 % 101

//Максимальное значение Uint8 = 255
var small : UInt8 = 0xff
UInt8.max

small = 0b0000000011111111

//Переполнение
small = small &+ 5

let str = "Hi, " + "there!"

let a = 6
let b = 3

var c : Int

if a < b {
    c = a
} else {
    c = b
}
c

//Упрощенная запись условия
//Условие ? Если да : Если нет
c = (a<b) ? a : b

var text : String? = "123"

//text = nil

var n: Int?

if text != nil {
    n = Int(text!)
}else{
    n = 0
}

print(n!)

if let opt = text{
    n = Int(opt)
} else {
    n = 0
}

print(n!)

//В случае если нил выведет 13
c = n ?? 13

// i...5
// i..<5

for i in 0..<5 {
    print(i)
}

















