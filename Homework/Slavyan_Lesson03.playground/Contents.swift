// Lesson 3 Tuples


//Развертывание и именование тюпла

// let testTuple :  (name2, age2, auth2) = ("Kirill", 30, true)

//v1
let testTuple = ("Kirill", 30, true)
var (name, age, auth) = testTuple


//v2
let (name2, age2, auth2) = ("Kirill", 30, true)

//v3
let test = (name: "Kirill", age: 30, auth: true)

//Tuple Optional Type
var test3: (name: String,  age: Int?, auth: Bool?) = (name: "", age: nil, auth: nil)

//

if test3.age != nil {
    print(test3.age!)
}else{
    print("AGE NIL")
}

if let test = test3.age {
    print(test)
} else {
    print("NIL")
}

//

let apples: Int? = nil

if let apples = apples {
    print(apples)
}else{
    print("APPLES NIL")
}




name2
age2
auth2


name
age
auth


//


let myMaxParametrs = (pushUps:10, pullUps:2, squats:25)

//var (push, pull, squats) = (10, 2, 25)

myMaxParametrs.0
myMaxParametrs.1
myMaxParametrs.2

myMaxParametrs.pushUps
myMaxParametrs.pullUps
myMaxParametrs.squats


print ("Мои максимальные параметры до тренинга \(myMaxParametrs)")


var myMaxParametrs2 = myMaxParametrs

myMaxParametrs2.pushUps += 2
myMaxParametrs2.pullUps += 3
myMaxParametrs2.squats  -= 1


print ("Мои максимальные параметры после тренинга \(myMaxParametrs2)")

myMaxParametrs2.pushUps
myMaxParametrs2.pullUps
myMaxParametrs2.squats

myMaxParametrs2.0
myMaxParametrs2.1
myMaxParametrs2.2



/*

var myParametrs2 = (10, 2, 25)

var (push, pull, squats) = myParametrs2

push
*/

let kiraMaxParametrs = (pushUpsKira:30, pullUpsKira:4, squatsKira:50)


var intermediatToReplaceKiraParametrs = kiraMaxParametrs


intermediatToReplaceKiraParametrs.0 = myMaxParametrs2.0
intermediatToReplaceKiraParametrs.pullUpsKira = myMaxParametrs2.1
intermediatToReplaceKiraParametrs.2 = myMaxParametrs2.squats

//Вариант решения по ТЗ
let kiraMaxParams = (pushUps:30, pullUps:4, squats:50)

var kiraToSlavyanParams = kiraMaxParams

kiraToSlavyanParams = myMaxParametrs


//



kiraMaxParametrs
intermediatToReplaceKiraParametrs




let forDifferenceTuples = (differencePushUps: kiraToSlavyanParams.pushUps - myMaxParametrs2.pushUps, differencePullUps: kiraMaxParametrs.1 - myMaxParametrs2.1, differenceSquats: kiraMaxParametrs.2 - myMaxParametrs2.2)


print ("Та самая разница ТЮПЛОВ \(forDifferenceTuples)")




