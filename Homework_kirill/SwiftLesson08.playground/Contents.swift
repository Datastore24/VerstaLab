//Dictionary

//let dict : [String:String] = ["машина" : "car", "мужик" : "man"]

let dict = ["машина" : "car", "мужик" : "man"]

let dict2 = [0 : "car", 1 : "man"]

dict["мужик"]
dict["мужик"]?.hashValue

dict2[1]

//Generic, Apple не приветствует такую запись
let dict3 : Dictionary<String, Double> = ["a" : 2.0]

var dictMutable = ["машина" : "car", "мужик" : "man"]

dictMutable.count

dictMutable.isEmpty

//
var dictEmpty = [String : String]()

dictEmpty.count
dictEmpty.isEmpty
//
dictMutable["комп"] = "computer"

dictMutable

//

print(Array(dictMutable.keys))
print(Array(dictMutable.values))

//Замена значения по ключу
dictMutable["комп"] = "mac"

dictMutable

//Замена значения по ключу с возвратом старого
dictMutable.updateValue("компьютер", forKey: "комп")

//Умеет возвращать nil, если значение новое
dictMutable.updateValue("mac", forKey: "комп2")

dictMutable

//Проверка на пустоту, или ошибочный ключ
let keyOfDict = "компы"
let comp = dictMutable[keyOfDict]

if let comp = comp {
    print(comp)
}else{
    print("no value for key \"\(keyOfDict)\"")
}

//Удаление ключа
dictMutable ["мужик"] = nil
print(Array(dictMutable.values))

dictMutable ["мужик"] = "man"
print(Array(dictMutable.values))

dictMutable.removeValue(forKey: "мужик")
print(Array(dictMutable.values))

//dictMutable = [:]
dictMutable.removeAll()
print(Array(dictMutable.values))
//


//цикл по Dictionary
dictMutable = ["машина" : "car", "мужик" : "man"]
for (key, value) in dictMutable {
    print("key = \(key) value = \(value)")
}
print("----")
for key in dictMutable.keys {
    print("key \(key) value \(dictMutable[key]!)")
}
print("----")
//

//Домашняя работа

var students = ["Ковыршин Кирилл" : 1, "Ковыршина Дарья" : 4, "Ковыршина Анна" : 5, "Ковыршин Клим" : 3]

print("Журнал студентов")

for (key, value) in students {
    print("\(key) - \(value)")
}

//Пересдача
students["Ковыршин Кирилл"] = 5
students["Ковыршина Дарья"] = 5
students["Ковыршин Клим"] = 5

students.updateValue(5, forKey: "Ковыршин Кирилл")
students.updateValue(5, forKey: "Ковыршина Дарья")
students.updateValue(5, forKey: "Ковыршин Клим")

print("----")
print("Пересдача")

for (key, value) in students {
    print("\(key) - \(value)")
}

print("----")
print("Новые студенты")
students["Ковыршина Ольга"] = 5
students["Ковыршина Наталья"] = 5
for (key, value) in students {
    print("\(key) - \(value)")
}

print("----")
print("Ушли студенты")
students.removeValue(forKey: "Ковыршина Дарья")
students.removeValue(forKey: "Ковыршин Клим")
for (key, value) in students {
    print("\(key) - \(value)")
}

var score = 0

for value in students.values {
        score += value
}

print("Общий балл: \(score)")

let averageScore = score / students.count
print("Средний балл: \(averageScore)")

//Задание 2
print("----")
print("")

let monthDay = ["Январь" : 31, "Февраль" : 28, "Март" : 31, "Апрель" : 30, "Май" : 28, "Июнь" : 28, "Июль" : 31, "Август" : 31, "Сентябрь" : 30, "Октябрь" : 31, "Ноябрь" : 30, "Декабрь" : 31]

for (month, days) in monthDay {
    print("\(month) - \(days)")
}

print("----")
print("")

for key in monthDay.keys {
   print("\(key) - \(monthDay[key]!)")
}

//Задание 3
print("----")
print("")

var chessBoard = [String:Bool]()

let letters = ["a", "b", "c", "d", "e", "f", "g", "h","g"]

var strLetters = " "
for letter in letters {
    strLetters.append("\(letter) ")
}
print (strLetters)

var strLine = ""
for number in (1..<letters.count+1).reversed() {
    strLine.append("\(number) ")
    for letter in 0..<letters.count{
        let key = "\(letters[letter])\(number)"
       
        //let value = (letter + number) % 2 == 0 ? true : false
        var value : Bool
        if (letter + number) % 2 == 0 {
            value = true
        }else{
            value = false
        }
        
        chessBoard[key] = value
        
        if value {
            strLine.append("\u{25A1} ")
        }else{
            strLine.append("\u{25A0} ")
        }
        
    }
    strLine.append("\(number)")
    print(strLine)
    strLine = ""
    
}
//false - черные true - белые
chessBoard["a9"]
chessBoard["b9"]

chessBoard["a8"]
chessBoard["b8"]







