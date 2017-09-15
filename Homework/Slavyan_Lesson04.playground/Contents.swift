// Slavan Lesson 04


// Разминка
var freeValue : Int? = 10


// freeValue = nil

// freeValue + 1 (так нельзя с Нилом!!!)


if freeValue == nil {
    print ("NIL freeValue")
} else {
    //print (freeValue)
    
    let aValue = freeValue! + 4
}



if var bValue = freeValue {
    bValue +=  5
} else {
    print ("NIL freeValue")
}

var str = String()
var int = Int()


if freeValue != nil {
    
    let aValue = freeValue! + 4
    int = aValue

} else {
    
    print ("NIL freeValue")
}

/*
 Так делать нельзя!!! Если значение freeValue = nil, то будет краш!!!
 int = freeValue!
*/


if freeValue == nil {
    
    print("NIL")
    
}else if freeValue == 14 {
    
    print(freeValue!)
    
}else if freeValue == 10 {
    
    print(freeValue!)
    
}else{
    
    print(freeValue!)
    
}

// перевод из стринга в инт

let age = "47"


if Int(age) != nil {
    
    let ageNumber = Int(age)!
}


if let ageNumber = Int(age) {
    
    print (ageNumber)
}


//Int
//Int?
//Int!


var apples2 : Int! = nil

apples2 = 3

assert(apples2 != nil, "PIPEC!!!")

apples2 = apples2 + 4


// ДомашжшКа

// Zad 1.

let firstOne   = "13"
let firstTwo   = "7k6"
let firstThree = "1423"
let firstFour  = "3241"
let firstFive  = "1423NW"

var sumFirst = Int()


if Int(firstOne) != nil {
    sumFirst += Int(firstOne)!
}



//if let firstTwo = Int(firstTwo) {
//    sumFirst += firstTwo
//}

if let tmp = Int(firstTwo) {
    sumFirst += tmp
}


if let firstThree = Int(firstThree) {
    sumFirst += firstThree
}

if Int(firstFour) != nil {
    sumFirst += Int(firstFour)!
}

if let firstFive = Int(firstFive) {
    sumFirst += firstFive
}


print("Сумма содержимого всех констант = \(sumFirst)")



// Zad 2.

let serverResponse: (statusCode: Int, message: String?, errorMessage: String?) = (200, "OK",  nil)



if serverResponse.statusCode > 199 && serverResponse.statusCode < 300 {
    if let serverMessage = serverResponse.message {
        print(serverMessage)
    }
} else {
    if let serverErrorMessage = serverResponse.errorMessage {
        print(serverErrorMessage)
    }
}



let serverResponse1: (message: String?, errorMessage: String?) = (nil,  nil)

if (serverResponse1.message != nil) && (serverResponse1.errorMessage != nil) {
    
    print("\(serverResponse1.message!) \(serverResponse1.errorMessage!)")
    
} else if serverResponse1.message != nil {
    
    print(serverResponse1.message!)
    
} else if serverResponse1.errorMessage != nil {
    
    print(serverResponse1.errorMessage!)
    
} else {
    
    print("ЭТО ПИЗДЕЦ СЕРВАКУ!")
    
}



//Zad 3.

var studentOne:   (name: String?, numberAuto: String?, resultOfTheControl: Int?)
var studentTwo:   (name: String?, numberAuto: String?, resultOfTheControl: Int?)
var studentThree: (name: String?, numberAuto: String?, resultOfTheControl: Int?)
var studentFour:  (name: String?, numberAuto: String?, resultOfTheControl: Int?)
var studentFive:  (name: String?, numberAuto: String?, resultOfTheControl: Int?)


/*studentOne = ("Alex", nil, 5)

studentOne.name
*/

studentOne.name = "Vladimir Zhirinovsky"
studentOne.numberAuto = "A323BK"
studentOne.resultOfTheControl = 5

studentTwo.name = "Dmitry Peskov"
studentTwo.resultOfTheControl = 3

studentThree.name = "Dmitry Medvedev"
studentThree.numberAuto = "E002KX"

studentFour.name = "Oleg Troicky"

studentFive.name = "Vladimir Putin"
studentFive.numberAuto = "E001KX"
studentFive.resultOfTheControl = 10

print()


// Первый студень

print(studentOne.name!)
if studentOne.numberAuto != nil {
    print("there is a car, State number: \(studentOne.numberAuto!)")
} else {
    print("no Car")
}

if studentOne.resultOfTheControl != nil {
    print("Result of the Control: \(studentOne.resultOfTheControl!)")
} else {
    print("Not fired on Control")
}

print()

// Второй студень

print(studentTwo.name!)
if studentTwo.numberAuto != nil {
    print("there is a car, State number: \(studentTwo.numberAuto!)")
} else {
    print("no Car")
}

if studentTwo.resultOfTheControl != nil {
    print("Result of the Control: \(studentTwo.resultOfTheControl!)")
} else {
    print("Not fired on Control")
}


print()


// Третий студень

print(studentThree.name!)
if studentThree.numberAuto != nil {
    print("there is a car, State number: \(studentThree.numberAuto!)")
} else {
    print("no Car")
}

if studentThree.resultOfTheControl != nil {
    print("Result of the Control: \(studentThree.resultOfTheControl!)")
} else {
    print("Not fired on Control")
}


print()

// Четвертый студень

print(studentFour.name!)
if studentFour.numberAuto != nil {
    print("there is a car, State number: \(studentFour.numberAuto!)")
} else {
    print("no Car")
}

if studentFour.resultOfTheControl != nil {
    print("Result of the Control: \(studentFour.resultOfTheControl!)")
} else {
    print("Not fired on Control")
}


print()

// Пятый студень

print(studentFive.name!)
if studentFive.numberAuto != nil {
    print("there is a car, State number: \(studentFive.numberAuto!)")
} else {
    print("no Car")
}

if studentFive.resultOfTheControl != nil {
    print("Result of the Control: \(studentFive.resultOfTheControl!)")
} else {
    print("Not fired on Control")
}

