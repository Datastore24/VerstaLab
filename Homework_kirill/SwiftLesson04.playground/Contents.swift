//Опциональные типы

//Ссылка на несуществующий объект - nil - черная дыра

//Продажи

//Понедельник 50 + 20 = 70 - значение
//Вторник 10 - 10 = 0 - результат вычисления
//Среда 0 - nil

// is it Saturday?
// ответ от сервера: true / false если прервалось соединение - nil


//Петя в кармане 5 яблок
//Вася нет карманов
//Objective-c : Петя -5 Вася - 0 яблок
//Swift: Петя - 5 Вася - nil



//Unreapen - разворачивание из опционального Int в Int

var apples : Int? = 5 //int

//НЕЛЬЗя apples = nil
//МОЖНО apples : Int? = 5
//Если мы знаем, что может быть nil


//apples = nil


//НЕЛЬЗЯ apples + 1 после nil

//Если будет разворачивать силой, то нужно проверять на nil


if apples == nil {
    print("nil apples")
}else{
    //print(apples)
    
    //Forsten upreapen - силовое разворачивание
    apples! += 2
}


//Короткая запись проверка Optional Biding Опциональное связывание
if var number = apples {
    number += 2
}else{
    print("nil apples")
}




let age = "60"

if Int(age) != nil {
   let ageNumber = Int(age)!
}

Int(age)

if let ageNumber = Int(age){
    ageNumber
}

//Есть Int?(опциональный) Int int!(не явно развернутый Int)
//Изначально может быть nil

var apples2 : Int! = nil

apples2 = 2

//Прерывание и показание ошибки в консоле
assert(apples2 != nil, "Oh no!!!")

//Правила работы с неявно развернутый Int

apples2 = apples2 + 5

//Домашнее задание


//Задание 1
var sum : Int = 0

let a = "12"
let b = "aaaa123"
let c = "14"
let d = "cccc1"
let e = "14"

if let aNumber = Int(a){
    sum += aNumber
}

sum

if Int(b) != nil {
    sum += Int(b)!
}

sum

if Int(c) != nil {
    sum += Int(c)!
}

sum

if let dNumber = Int(d){
    
    sum += dNumber
}

sum

if Int(e) != nil {
    sum += Int(e)!
}

sum

print("Sum = \(sum)");

//Задание 2

let serverResponse : (statusCode : Int?, message : String?, errorMessage : String?) = (200, "OK",  nil)

if serverResponse.statusCode != nil {
    if (serverResponse.statusCode! > 199) && (serverResponse.statusCode! < 300) {
        if serverResponse.message != nil {
            print("Server message: \(serverResponse.message!)")
        } else {
            print("Fatal Error")
        }
    } else {
        if serverResponse.errorMessage != nil {
            print("ERROR: \(serverResponse.errorMessage!)")
        }else{
            print("Fatal Error Message")
        }
    }
}else{
    print("Server is OffLine")
}



//Без  StatusCode
let serverResponseTwo : (message : String?, errorMessage : String?) = (nil,  nil)

if let serverMessage = serverResponseTwo.message {
    print("Server Message: \(serverMessage)")
} else if let serverError = serverResponseTwo.errorMessage {
    print("Server Error: \(serverError)")
}else{
    print("Server is OffLine")
}


//Задание 3
var student1 : (name: String?, carNumber: String?, exam: UInt8?)
var student2 : (name: String?, carNumber: String?, exam: UInt8?)
var student3 : (name: String?, carNumber: String?, exam: UInt8?)
var student4 : (name: String?, carNumber: String?, exam: UInt8?)
var student5 : (name: String?, carNumber: String?, exam: UInt8?)

student1.name = "Кирилл"
student1.carNumber = "88"
student1.exam = 5

student2.name = "Слава"
student2.exam = 4

student3.name = "Алексей"
student3.exam = 3

student4.name = "Маруся"

student5.name = "Фиг"
student5.carNumber = "16"

print("Имя студента 1: \(student1.name!)")

if student1.carNumber != nil {
    print("Машина студента 1: \(student1.carNumber!)")
}else{
    print("У студента 1 нет машины")
}

if student1.exam != nil {
    print("Оценка студента 1 на экзамене: \(student1.exam!)")
}else{
    print("Студент 1 не сдавал экзамен")
}

print("-----")
print("Имя студента 2: \(student2.name!)")

if student2.carNumber != nil {
    print("Машина студента 2: \(student2.carNumber!)")
}else{
    print("У студента 2 нет машины")
}

if student2.exam != nil {
    print("Оценка студента 2 на экзамене: \(student2.exam!)")
}else{
    print("Студент 2 не сдавал экзамен")
}

print("-----")
print("Имя студента 3: \(student1.name!)")

if let carNumberStudent3 = student3.carNumber {
    print("Машина студента 3: \(carNumberStudent3)")
}else{
    print("У студента 3 нет машины")
}

if let examStudent3 = student3.exam{
    print("Оценка студента 3 на экзамене: \(examStudent3)")
}else{
    print("Студент 3 не сдавал экзамен")
}

print("-----")
print("Имя студента 4: \(student4.name!)")

if student4.carNumber != nil {
    print("Машина студента 4: \(student4.carNumber!)")
}else{
    print("У студента 4 нет машины")
}

if student4.exam != nil {
    print("Оценка студента 4 на экзамене: \(student4.exam!)")
}else{
    print("Студент 4 не сдавал экзамен")
}
print("-----")
print("Имя студента 5: \(student5.name!)")

if let carNumberStudent5 = student5.carNumber {
    print("Машина студента 5: \(carNumberStudent5)")
}else{
    print("У студента 5 нет машины")
}

if let examStudent5 = student5.exam{
    print("Оценка студента 5 на экзамене: \(examStudent5)")
}else{
    print("Студент 5 не сдавал экзамен")
}


























