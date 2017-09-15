//Массивы

let constArray : Array<String> = ["a","b","c","d"]
let arrayType : [String] = ["a","b","c","d"]
constArray.count
constArray.count - 1
constArray.endIndex
constArray.startIndex
constArray[0]
constArray[1]
constArray[2]
constArray[3]

for i in constArray {
    print(i)
}
print("----")
for i in 0...constArray.count-1 {
    print("count \(i) and value \(constArray[i])")
}
//
print("----")
//Инициализация пустого массива
var array = [String]()

if array.isEmpty {
    print("Array is empty")
}else{
    print("Array have \(array.count) object")
}
//
print("----")
//Добавление в массив
array += constArray

array += ["e"]
array.append("f")
//

if array.isEmpty {
    print("Array is empty")
}else{
    print("Array have \(array.count) object")
    print(array)
}

//
print("----")
//

//Происходит копирование, а ссылка на объект
var array2 = array

array
array2

//Изменение с доступом по индексу
array2[0]="1"

array
array2

//

//Доступ к массиву по range
array[1...4]
array[1...4] = ["0"]
array
//

//Вставка между
var array3 = array2
array3.insert("-", at: 3)
//

//Удаление
array3.remove(at: 3)
array3
//

//ПРИМЕР С КОШЕЛЬКОМ

//Если нужно 100 элементов одинковых
let testArray = [Int](repeatElement(100, count: 10))
//

let money = [100, 1, 5, 20, 1, 50, 1, 1, 20, 1]

var sumMoney = 0

var index = 0
for value in money{
    sumMoney += value
    print("index = \(index) value= \(value)")
    index += 1
}
print("Сумма в кошельке: \(sumMoney) руб.")

print("----")
sumMoney = 0
for i in 0..<money.count {
    sumMoney += money[i]
    print("index = \(i) value= \(money[i])")
}
print("Сумма в кошельке: \(sumMoney) руб.")

//Классное решение для того что бы узнать индекс
print("----")
sumMoney = 0

for (index, value) in money.enumerated(){
    sumMoney += value
    print("index = \(index) value= \(value)")
}
print("Сумма в кошельке: \(sumMoney) руб.")
//

print("----")

/// Домашняя работа

//Задание 1 

//Дней в месяцах
let dayPerMonth = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
dayPerMonth.count

for value in dayPerMonth {
    print ("Дней в месяце: \(value)")
}

print("----")

//Дни и месяца без картежей
let nameOfMonth = ["Январь","Февраль","Март","Апрель","Май","Июнь","Июль","Август","Сентябрь","Октябрь","Нобярь","Декабрь"]


for i in 0..<nameOfMonth.count{
    print ("Месяц: \(nameOfMonth[i]) дней: \(dayPerMonth[i])")
}
print("----")



//Дни и месяцы с Картежами

//Создаем массив уже существующих данных
var arrayOfTupleMonth = [(month:String, days:Int)]()

for (index, value) in nameOfMonth.enumerated() {
    let monthDaysTuple = (month: value, days: dayPerMonth[index])
    arrayOfTupleMonth.append(monthDaysTuple)
}
arrayOfTupleMonth

//Прямой порядок
print("Прямой порядок")

for value in arrayOfTupleMonth {
    print ("Месяц: \(value.month) дней: \(value.days)")
}
print("----")

//Обратный порядок
print("Обратный порядок")

for i in (0..<arrayOfTupleMonth.count).reversed() {
    print ("Месяц: \(arrayOfTupleMonth[i].0) дней: \(arrayOfTupleMonth[i].1)")
}
print("----")
//

//29.03
var countDays = 0
let birthday = (day: 29, month: 3)

for (index,value) in dayPerMonth.enumerated(){
    let currentMonthCount = index + 1
    if currentMonthCount < birthday.month {
        countDays += dayPerMonth[index]
    } else if currentMonthCount == birthday.month {
        countDays += birthday.day
    }
}
print ("До дня рождения: \(countDays) дней")
print("----")

//Задание 2

let optionalArray: [Int?] = [29, 03, nil, 5, nil]

//Optional binding
print("Посчитаем используя Optional binding")

var sum = 0


//Внутри цикла можно использовать тоже самое имя
for value in optionalArray{
    if let value = value {
        sum += value
    }

}
print("СУММА \(sum)")

//Forced unwrapping
print("----")
sum = 0
print("Посчитаем используя Forced unwrapping")

for value in optionalArray{
    if value != nil {
        sum += value!
    }
    
}
print("СУММА \(sum)")
print("----")

//Используя ??
sum = 0
print("Посчитаем используя ??")

for value in optionalArray{
    
        sum += value ?? 0
    
}
print("СУММА \(sum)")
print("----")


//Задание 3
let alphabet = "abcdefghijklmnopqrstuvwxyz"
var backwardAlphabet = [String]()

for char in alphabet.characters {
    print(char)
    backwardAlphabet.insert(String(char), at: 0)
}
print("Массив алфавита в обратном порядке: \(backwardAlphabet)")
print("----")






















