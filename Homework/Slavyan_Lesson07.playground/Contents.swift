//Slavyan Lesson 07
// Collection Types 
//массивы!!!

let constArray = ["a", "b", "c", "d"]
constArray.count


var array = [String]()

if array.count == 0 {
    print("array is empty")
}

// тоже самое сравнение с 0

if array.isEmpty {
    print("array is empty")
}

array += constArray
array += constArray
array += ["e"]
array.append("f")

var array2 = array

array
array2

array2[0] = "1"

array
array2
print()

//array[1..<4] = ["0"]

array

array.insert("-", at: 3)

array.remove(at: 3)

array

//let test = [Int](count: 10, repeatedValue: 100)

/*
let test = repeatElement("10", count: 100)
for index in 0..<test.count {
    print("index \(index) - \(test[index])")
}

for value in test {
    print(value)
}

var buttonOn = [Bool](repeatElement(false, count: 12))
let serverClickButton = [5,9]

for value in serverClickButton {
    buttonOn[value] = true
    buttonOn
}

for value in buttonOn {
    print(value)
}
*/


let money = [100, 1, 5, 20, 1, 50, 1, 1, 20, 1]

//for var i = 0; i < 9; i += 1 {
//    print("i = \(i)")
//}

var sum = 0

for i in 0..<9 {
    print("i = \(i)")
    sum += money[i]
}
sum

print()

sum = 0

for i in 0..<money.count {
    print("i = \(i)")
    sum += money[i]
}
sum

print()

sum = 0

for i in money {
    print("i = \(i)")
    sum += i
}
sum

print()

sum = 0

for i in 0..<money.count {
    print("index = \(i) value = \(money[i])")
    sum += money[i]
}
sum

print()

sum = 0

var index = 0
for value in money {
    print("index = \(index) value = \(value)")
    sum += value
    index += 1
}
sum

print()


sum = 0

for (index, value) in money.enumerated(){
    print("index = \(index) value = \(value)")
    sum += value
}
sum

print()


// Zad 1


var year = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]



for (index, value) in year.enumerated() {
   let tmpIndex = index + 1
    print("Month \(tmpIndex) Amount of days in a month = \(value)")
    
    }

//var numberMonth = 1
//for value in year {
//    print("Month \(numberMonth) Amount of days in a month = \(value)")
//    numberMonth += 1
//    
//}
//numberMonth - 1
print()


let nameMonth = ["jan", "feb", "mar", "apr", "may", "june", "july", "aug", "sep", "oct", "nov", "dec"]

for (index, value) in nameMonth.enumerated() {
    //print("index = \(index) - \(value)")
    //print("index = \(index) - \(year[index])")
    print("Month: \(value) - \(year[index])")
}

print("----")
print()


for i in 0..<nameMonth.count {
    print("\(nameMonth[i]) - \(year[i])")
}


print("_____")
print ()


for ind in year.reversed() {
    print(ind)
    //print("\(year[]) - \(nameMonth[ind])")
}

var reversedIndex = year.count - 1

for value in year.reversed() {

    print("index \(reversedIndex) month: \(nameMonth[reversedIndex]) - \(value)")
    reversedIndex -= 1
}

let tupleArray = [("jan",31),("feb",28)]

tupleArray[0].0
tupleArray[0].1



//Изменение массива


/*
for i in 0..<nameMonth.count {
    if i == 1 {
        year[i] = 29
        break
    }
}

print(year)

print("_____________")
print()

*/

//Прерывание цикла

/*
for k in 0...1000000 {
    if k == 3 {
     break
    }
    print("hi")
}
*/



// Zad 2


