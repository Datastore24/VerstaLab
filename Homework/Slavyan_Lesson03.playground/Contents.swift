// Lesson 3 Tuples

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



kiraMaxParametrs
intermediatToReplaceKiraParametrs




let forDifferenceTuples = (differencePushUps: kiraMaxParametrs.0 - myMaxParametrs2.0, differencePullUps: kiraMaxParametrs.1 - myMaxParametrs2.1, differenceSquats: kiraMaxParametrs.2 - myMaxParametrs2.2)


print ("Та самая разница ТЮПЛОВ \(forDifferenceTuples)")




