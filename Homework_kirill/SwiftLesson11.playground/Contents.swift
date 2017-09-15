//Closures Клоужеры Замыкания
// Тоже что и Блоки
import Foundation


let numbers = [4, 3, 12, 7, 6, 3, 56, 7, 8, 9, 10, 4, 3, 1, 8, 11]

func filterArray(array : [Int], funcBool: (Int) -> Bool) -> [Int] {
    
    var filtered = [Int]()
    
    for i in array {
        if funcBool(i) {
          filtered.append(i)
        }
    }
    
    return filtered
}


func compare(i: Int) -> Bool {
    
    return i % 2 == 0 ? true : false
}

func compareEven(i: Int) -> Bool {
    
    return i % 2 == 0 ? true : false
}

func compareOdd(i: Int) -> Bool {
    
    return i % 2 == 1 ? true : false
}

filterArray(array: numbers, funcBool: compareEven)
filterArray(array: numbers, funcBool: compareOdd)


//Inline Closures
//Блок
//MARK: simple form
//TODO: Fix it!
//FIXME: go

filterArray(array: numbers, funcBool: {(i: Int) -> Bool in
    return i % 2 == 0
});

filterArray(array: numbers, funcBool: {i in
    return i % 2 == 0
});

let a =
    filterArray(array: numbers, funcBool: {i in i % 2 == 1 })

//Short Heand
let b =
    filterArray(array: numbers, funcBool: {$0 % 3 == 0})

//Конечные Клоужерс Treilin Closures

let c =
    filterArray(array: numbers) {
    $0 % 3 == 0
}



//Пример использования

let array = [1, 2, 3, 5, 7, 123]

var count = 0

let inc =
filterArray(array: numbers) { value in
    
    for include in array {
        count += 1
        if include == value {
            return true
        }
    }
    return false
}

count
count = 0

//Делаем через Dictionary

var dict = [Int:Bool]()

for value in array {
    count += 1
    dict[value] = true
}

let sort =
    filterArray(array: numbers) { value in
      count += 1
        return dict[value] != nil
        
}
count

//Домашняя работа

//Задание 1

func calc(fPrint:()->()){
    for i in 0...10 {
        
        print(i)
        
    }
    fPrint()
}

func printClouser() {
    print("It's Clouser")
}


calc(fPrint: printClouser)
print("----")
calc{
    print("It's Clouser")
}

print("----")
print("")

//Задание 2

//Метод 1

let arrayStr = ["Кирилл", "Алла", "Антон", "Егор", "Слава", "Анна", "Яна"]
let resStr = arrayStr.sorted(by: {i,j in i<j})
let resStr2 = arrayStr.sorted(by: <)

print(resStr)
print(resStr2)

//Метод 2

let numberArray = [10, 8, 15, 2, 6, 1, 555, 321, 123, 7, 2]

var sortedArray = numberArray.sorted(by: {$0 < $1})

print(sortedArray)

//
print("----")
print("")

//Задание 3

func sortedArray(array: [Int], block: (Int, Int?) -> Bool) -> Int {
    
    var number:Int?
    
    for value in array {
        if block(value, number) {
            number = value
        }
    }
    
    
    return number ?? 0
}

let minimun = sortedArray(array: numberArray){
    $1 == nil || $0 < $1!
}
print("min= \(minimun)")

let maximum = sortedArray(array: numberArray){
    $1 == nil || $0 > $1!
}
print("max= \(maximum)")

//
print("----")
print("")

//Задание 4

let str = "Привет, давай поговорим о жизни! Как ты себя чувствуешь, что у тебя нового? И вообще, давай дружить и весело проводить время"


//Вариант 1

var stringArray = [String]()
for char in str.characters {
    stringArray.append(String(char))
}

func priority(string:String) -> Int {
    switch string.lowercased() {
    case "а","у","о","и","э","я","ю","ё","е":
        return 0
    case "б"..."я":
        return 1
    case "0"..."9":
        return 2
    default:
        return 3
    }
}

let sortedArr =
    stringArray.sorted{
        switch (priority(string: $0),priority(string: $1)){
        case let (x,y) where x<y : return true
        case let (x,y) where x>y : return false
        default: return String($0).lowercased() <= String($1).lowercased()
        }
}
print(sortedArr)


//Вариант 2

var charArray = Array(str.characters)
func getCharValue(c:Character) -> Int? {
    let alphabetRules = "ауоиэяюёебвгджзйклмнпрстфхцчшщ0123456789" as NSString
    let lowChar = String(c).lowercased()

    return alphabetRules.range(of: lowChar).location
}

getCharValue(c: "8")

charArray = charArray.sorted(by: {
    let a = getCharValue(c: $0)
    let b = getCharValue(c: $1)
    if a != nil && b != nil{
        if a == b {
            return (String($0).lowercased() == String($0))
        }
        return a! < b!
    }
    return a != nil
})

print(charArray)

print("----")
print("")
//Задание 5

func resultScalar(char: [String], block: (String, String?) -> Bool) -> String? {
    var result: String?
    for value in char {
        if block(value, result) {
            result = value
        }
    }
    return result ?? " "
    
}

let letters: [String] = ["a","c","m","d","m","f","g","w"]


let maxOfString = resultScalar(char: letters, block: {$1 == nil || $0 > $1!})
let minOfString = resultScalar(char: letters, block: {$1 == nil || $0 < $1!})

print("max = \(maxOfString ?? "")")
print("min = \(minOfString ?? "")")











