//Функции
//Принцип DRY - Do not repeat your self

//func Название(название: Тип) -> что возвращаем
//

func calcMoney(wallet: [Int]) -> Int {
    var sum = 0
    for value in wallet {
        sum += value
    }
    
    return sum
    
}


let wallet = [100, 5, 1, 5, 5, 20, 50, 100, 1, 1]

var sum = 0

for value in wallet {
    sum += value
}


let money = calcMoney(wallet: wallet)

print(money)

//Два параметра
func calcMoneyParam(wallet: [Int], type: Int) -> Int {
    var sum = 0
    for value in wallet {
        if value == type{
            sum += value
        }
    }
    
    return sum
    
}

let moneyParam = calcMoneyParam(wallet: wallet, type: 1)
print(moneyParam)


//Два возврата tuple
func calcMoneyParamWith(wallet: [Int], type: Int) -> (total:Int, count:Int) {
    var sum = 0
    var count = 0
    for value in wallet {
        if value == type{
            sum += value
            count += 1
        }
    }
    
    return (sum,count)
    
}

let moneyParamAndCount = calcMoneyParamWith(wallet: wallet, type: 20)
print(moneyParamAndCount)

//Опциональный парметр
//Можно объявить дефолтное значение type: Int? = nil
//Можно создавать псевдонимы переменных
print("----")
func calcMoneyParamWOptional(inWallet wallet: [Int], withType type: Int? = nil) -> (total:Int, count:Int) {
    var sum = 0
    var count = 0
    for value in wallet {
        
        if (type == nil) || (type != nil && value == type!){
            sum += value
            count += 1
        }
    }
    
    return (sum,count)
    
}

let moneyParamAOpt = calcMoneyParamWOptional(inWallet: wallet, withType: 20)
let moneyParamAOptTwo = calcMoneyParamWOptional(inWallet: wallet, withType: nil)
let moneyParamAOptThree = calcMoneyParamWOptional(inWallet: wallet).total
print(moneyParamAOpt,moneyParamAOptTwo,moneyParamAOptThree)

//variadic params, можно использовать ренджи
func calculateMoney(inSequence range: Int...) -> Int{
    
    var sum = 0
    for value in range {
        sum += value
    }
    
    return sum
}

calculateMoney(inSequence: 5,5,10,2,3,4,3,23,34,1,1)

func sayHi() {
    print("Hi")
}


sayHi()
sayHi()
sayHi()
sayHi()

func sayPhrase(phrase: String) -> Int? {
    print(phrase)
    return nil
}


sayPhrase(phrase: "aaa")

let phrase = sayPhrase

phrase("bbb")


///

func doSomething(whatToDo:()->())->(){
    whatToDo()
}

doSomething(whatToDo: sayHi)

func whatToDo() -> () ->() {
    
    func printSomething()->(){
        print("Hello world")
    }
    return printSomething
}

whatToDo()()

//РЕКУРСИЯ

func fact(_ number: Int) -> Int {
    
    if number <= 1 {
        return 1
    } else {
        return number * fact(number - 1)
    }
}

fact(1)
fact(2)
fact(3)
fact(4)
fact(5)



//Домашняя работа
print("")
print("----")

//Задание 1
func heart() -> String {
    return "\u{2665}"
}

func bigHeart() -> String {
    return "\u{1F496}"
}


print(heart() + bigHeart())

//Задание 2
print("")
print("----")


func letterToDigit(letter: String) -> Int {
    
    let abc = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    var position = 1
    
    for c in abc.characters {
        if String(c) != letter {
            position += 1
        }else{
          break
        }
    }
    return position
}

func chessBoardCell(letter: String, position: Int) -> String? {
    
    let tempLetter = letter
    var letterUp = String()
    if tempLetter.uppercased() != letter  {
        
        letterUp = letter.uppercased()
        print("Grown up letter: \(letter) -> \(letterUp)")
    }
    
    let horisontalPosition = letterToDigit(letter: letterUp)
    
    return horisontalPosition % 2 == position % 2 ? "черный" : "белый"
}

let e3 = chessBoardCell(letter: "E", position: 3)

let a1 = chessBoardCell(letter: "a", position: 1)
let a2 = chessBoardCell(letter: "b", position: 2)
let a3 = chessBoardCell(letter: "c", position: 3)


//Задание 3
print("")
print("----")

func reversedArray(array: [Any]) -> [Any] {
    
    var tempArray = [Any]()
    for value in array{
        tempArray.insert(value, at: 0)
    }
    
    return tempArray
}

func reversedArrayFromSequence (sequence: Any...) -> [Any]{
    
    var tempArray = [Any]()
    
    for value in sequence {
        tempArray.append(value)
    }
    return reversedArray(array: tempArray)
    
}

let exArray = [1,2,3,4,5,6,7,8,9,0]
print("Массив в обратном порядке: \(reversedArray(array: exArray))")

print("Последовательность в массив в обратном порядке: \(reversedArrayFromSequence(sequence: 1,2,3,4,5,6,7,8,9,0))")

//Задание 4
print("")
print("----")

var revArray: [Any] = [1,2,3,4,5,6,7,8,9,0]

func reversedArrayInout(array: inout [Any]) {
    
    var tempArray = [Any]()
    for value in array{
        tempArray.insert(value, at: 0)
    }
    array = tempArray
}


reversedArrayInout(array: &revArray)

print(revArray)

//Задание 5
print("")
print("----")

let string = "Привет! Давайте познакомимся? Меня зовут Кирилл, мне 30 лет и я буду рад живому общению с этой функцией."

func changeString(string: String) -> String {
    
    let number = ["zero","one","two","three","four","five","six","seven","eight","nine"]
    
    var resultString = ""
    
    let stringLow = string.lowercased()
    
    for char in stringLow.characters {
        
        switch char {
        case "!","?",".",",":
            resultString += ""
            
        case "а","е","ё","и","о","у","ы","э"..."я":
            resultString += String(char).uppercased()
            
        case "б"..."ъ":
            resultString += String(char)
            
        case "0"..."9":
            
            let charInt = Int(String(char))
            resultString += number[charInt!]
            
        case " ":
            resultString += " "
        default:
            break
        }
    }
    return resultString
}

print(changeString(string: string))















