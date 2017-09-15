//Строки
import Foundation

var str = "с"

str = str + "a"
str += "b"

var string = String()

//Строка в Swift это структура, а в Obj-c объект
//Два типа типов: тип - значение, тип - ссылка
//Var - Mutable
//Let - constant unMutable
// тип - значение, просиходит копирование значения
var a = 5
var b = a

a += 1
b

var str1 = "a"
var str2 = str1

str1
str2

str1 = "b"

str1
str2

//

str1.isEmpty


//Character - символ
let char1 : Character = "x"

//Добавление символа
str1.append(char1)

//Перевод строки в Objective-c
(str1 as NSString).length
NSString(string: str1).length

//Unicode symbol
//HEX 2 байта
let heart = "\u{1F496}"



let eAcute: Character = "\u{E9}"
let combinedEAcute: Character = "\u{65}\u{301}"
let combinedEAcute2: Character = "e\u{301}"

let fun : Character = "ъ\u{301}\u{20dd}"

let funString = "What is this? -> \(fun)"
//Посчитать количество элементов вместо  countElements
//Проходит по каждому символу, понимает что это один символ
//Работает довольно долго, потому что проходит по каждому символу
funString.characters.count

//UTF8 считает как 20, Unicode считается каждый
NSString(string: funString).length


if funString == "aa" {
    print("YES")
}else{
    print("NO")
}

funString.hasPrefix("What")
funString.hasSuffix("ъ")
//Даже когда Unicode символы меняешь местами, строка идентична
funString.hasSuffix("ъ\u{20dd}\u{301}")










































