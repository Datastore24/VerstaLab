//Классы, структуры

//Пример реализаци с тюплами

let student1 = (name: "Alex", age: 20)
let student2 = (name: "Kirill", age: 22)

student1.name
student2.name

let student3 = (nam: "Sam", ag: 23)

student3.nam

//Класс - это инструкция, какие должны быть методы, свойства

class StudentClass {
    
    //Property или свойства
    var name = "no name"
    var age = 20
    
    //Конструкции, если не указано, что они опциональные, то они обязательны для заполнения
    //при создании экземпляра класса требует конструктор
    var nameInfo : String
    var ageInfo : Int
    
    //Самая простая конструкция
    init() {
        nameInfo = "No Name"
        ageInfo = 20
    }
    //
    
    //Готовы параметры, свой собственный конструктор
    init(name: String, age: Int) {
        self.nameInfo = name
        self.ageInfo = age
    }
}

//Стуктура
//Для стурктуры SWIFT создает автоматом конструктор

struct StudentStruct {
    
    var nameInfo : String
    var ageInfo : Int
}
//

//Создаем экземпляр класса
let studentOne = StudentClass()

print(studentOne.name)
print(studentOne.age)

studentOne.name = "Kirill"
studentOne.age = 21


//Второе отличие между структурой и классом
//Класс даже, если let можно меня
//Структуру нет, нужно использовать var

let stClass = StudentClass(name: "Bob", age: 18)

print(stClass.nameInfo)
print(stClass.ageInfo)

var stStruct1 = StudentStruct(nameInfo: "Sam", ageInfo: 24)

//stStruct1.ageInfo = 21
//stStruct1.nameInfo = "Sam2"


//Происходит копирование структуры - это Value Type
var stStruct2 = stStruct1

stStruct2.ageInfo = 25
stStruct2.nameInfo = "Kirill"

stStruct1.ageInfo
stStruct1.nameInfo

stStruct2.ageInfo
stStruct2.nameInfo
//

//Классы - Reference Type ссылающиеся на класс

//Создается указатель класса
let stClass2 = stClass

stClass2.ageInfo = 47
stClass2.nameInfo = "Slava"

stClass.ageInfo
stClass.nameInfo

//

//Если использовать функции

func addOneYear(student: StudentClass) {
    student.age += 1
}

//Не будет воспроизведено действие для стурктуры, потому что   var studentStuct = student создают копию, но не меняет текущего

func addOneYear(student: StudentStruct){
    var studentStuct = student
    studentStuct.ageInfo += 1
}


//Для структуры
stStruct1.ageInfo
addOneYear(student: stStruct1)

stStruct1.ageInfo

//Для класса

stClass.age

addOneYear(student: stClass)

stClass.age

//

//Можно заставить производить действие над стурктурой, не создавая копию испольюзуя inout
//Не стоит этим злоупотреблять

func addOneYearInout(student: inout StudentStruct){
    
    student.ageInfo += 1
}

//Для структуры
stStruct1.ageInfo

addOneYearInout(student: &stStruct1)

stStruct1.ageInfo

//Тоже самое с массивами

//Для Структуры
var arrayStruct = [stStruct1]
arrayStruct[0].ageInfo
arrayStruct[0].ageInfo = 50
arrayStruct[0].ageInfo

stStruct1.ageInfo

//Для Класса
var arrayClass = [stClass]
arrayClass[0].ageInfo
arrayClass[0].ageInfo = 53
arrayClass[0].ageInfo

stClass.ageInfo

//

print("----")
print("")

//Домашнее задание

//Задание 1

struct SchoolStruct {
    var firstName : String
    var lastName : String
    var birthday : String
    var averageScore : Double
}

let studentOnes = SchoolStruct(firstName: "Ковыршин", lastName: "Кирилл", birthday: "29.03.1987", averageScore: 4.5)
let studentTwo = SchoolStruct(firstName: "Калязин", lastName: "Славян", birthday: "15.11.1969", averageScore: 3.2)
let studentThree = SchoolStruct(firstName: "Ковыршина", lastName: "Дарья", birthday: "11.03.2009", averageScore: 4.0)
let studentFour = SchoolStruct(firstName: "Ковыршина", lastName: "Анна", birthday: "01.12.1995", averageScore: 2.3)
let studentFive = SchoolStruct(firstName: "Ковыршин", lastName: "Клим", birthday: "30.08.2013", averageScore: 1.3)

let journal = [studentOnes, studentTwo, studentThree, studentFour, studentFive]



//Задание 2

func printJournal(array: [SchoolStruct]) {
    var count = 1
    for valueStruct in array {
        print("Номер в журнале: \(count)")
        print("\(valueStruct.firstName) \(valueStruct.lastName) - \(valueStruct.birthday) - \(valueStruct.averageScore)")
        print("----")
        count += 1
    }
}

printJournal(array: journal)


//Задание 3
print("")
print("Задание 3")
print("----")

var sortedJournal = journal
printJournal(array: sortedJournal.sorted{$0.averageScore > $1.averageScore})

//Задание 4
print("")
print("Задание 4")
print("----")

//func convertStringToFirstCharInt(string: String) -> Int? {
//    
//    let firstChar = string.hashValue
//    
//    return firstChar
//    
//}

//print(convertStringToFirstCharInt(string: journal[0].firstName))
//print(convertStringToFirstCharInt(string: journal[1].firstName))

var sortedByName = journal

func sortByNameFunc(firstStudent: SchoolStruct, secondStudent: SchoolStruct) -> Bool {
    if firstStudent.firstName != secondStudent.firstName {
        //print("\(firstStudent.firstName) - \(secondStudent.firstName)")
        //print(firstStudent.firstName < secondStudent.firstName)
        //print("---")
        return firstStudent.firstName < secondStudent.firstName
    }
    
    return firstStudent.lastName < secondStudent.lastName
    
    
}


printJournal(array: journal.sorted(by: sortByNameFunc))

//Задание 5
print("")
print("Задание 5")
print("----")

var newJournal = journal
newJournal.count

newJournal[0].firstName = "XPEH"
newJournal[1].firstName = "Какойто"
newJournal[2].birthday = "01.01.1900"
newJournal[3].lastName = "Петя"
newJournal[4].averageScore = 5.0


print("Старый журнал")
printJournal(array: journal)

print("----")

print("Новый журнал")
printJournal(array: newJournal)


//Задание 6
print("")
print("Задание 6")
print("----")

class SchoolClass {
    var firstName : String
    var lastName : String
    var birthday : (day: String, month: String, year: String)
    var averageScore : Double
    
    init(firstName: String, lastName: String, birthday: (day: String, month: String, year: String), averageScore: Double) {
        self.firstName = firstName
        self.lastName = lastName
        self.birthday = (birthday.day, birthday.month, birthday.year)
        self.averageScore = averageScore
        
    }
}

let stOne = SchoolClass(firstName: "Кирилл", lastName: "Ковыршин", birthday: (day:"29", month: "Март", year: "1987"), averageScore: 5)
print(stOne.firstName)
print(stOne.lastName)
print(stOne.birthday.day)
print(stOne.birthday.month)
print(stOne.birthday.year)
print(stOne.averageScore)
print("----")
let stTwo = stOne

stTwo.firstName = "Анна"
stTwo.lastName = "Ковыршина"
stTwo.birthday = (day: "01", month: "12", year: "1995")
stTwo.averageScore = 4

print(stOne.firstName)
print(stOne.lastName)
print(stOne.birthday.day)
print(stOne.birthday.month)
print(stOne.birthday.year)
print(stOne.averageScore)









