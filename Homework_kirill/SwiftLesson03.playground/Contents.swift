//Tuples - картеж
//составной тип из разных типов

//let simpleTuple  : (Int, String, Bool, Double) = (1, "Hello", true, 2.4)
let simpleTuple = (1, "Hello", true, 2.4)

//Decompose раскладывание

let (number, greatings, check, decimal) = simpleTuple

number
greatings
check
decimal

simpleTuple.0
simpleTuple.1
simpleTuple.2
simpleTuple.3

//Достать только одно значение
let (_, _,check2, _) = simpleTuple
check2

var tuple = (index:1, phrase:"Hello", registered:true, latency:2.4)
tuple.0
tuple.1
tuple.2
tuple.3

tuple.index
tuple.phrase
tuple.registered
tuple.latency

//Изменение картежа
tuple.index = 2
tuple.index

let a = (x:1,y:2)
var b = (x:2,y:3)

b = a

/*
let redColor = "red"
let greenColor = "green"
let blueColor = "blue"
*/

let (redColor, greenColor, blueColor) = ("red","green","blue")

redColor
greenColor
blueColor

let totalNumber = 5
let merchantName = "Alex"

print ("\(totalNumber)  \(merchantName)")
print((totalNumber, merchantName))
print(simpleTuple)


//Домашняя работа

//Задание 1

let myParams = (maxPushUps: 15, maxPullUps: 3, maxSquats: 50)

print(myParams)

//Задание 2
print("Отжимания: " + String(myParams.maxPullUps))
print("Подтягивания: " + String(myParams.1))
print("Приседания: " + String(myParams.maxPushUps))
print("---")
print(" ")
//Задание 3

let slavyanParams = (maxPushUps: 10, maxPullUps: 2, maxSquats: 25)
var myNewParams = myParams
myNewParams = slavyanParams

print("Мои старые парметры: \(myParams)\nНовые параметры \(myNewParams)")
print("---")
print(" ")
// Задание 4
let resultParam = (maxPushUps: myParams.maxPushUps - slavyanParams.maxPushUps, maxPullUps: myParams.maxPullUps - slavyanParams.maxPullUps, maxSquats: myParams.maxSquats - slavyanParams.maxSquats)
print("Разница между параметрами \(resultParam)")
print("---")
print(" ")





















