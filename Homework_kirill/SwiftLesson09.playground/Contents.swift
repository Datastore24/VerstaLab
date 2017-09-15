// Control Flow
// Switch



//Leibl

mainLoop: for _ in 0...1000 {
    for i in 0..<20 {
       
        if i == 10 {
            break mainLoop
        }
        
    }
}
//

var age = 67
var name = "Alex"

//fallthrough переходит на следующую строку игнорируя ее условия
switch age {
    case 0...16:
        print("Школота")
        fallthrough
    
    case 17...21:
        print("Студент")
    
    case 22...50:
        break
    
    case 51,52,54:
        print("Сработало")
    
    case 53:
        print("Сработало 53")
    
    default:
        break
}

switch name {
case "Alex" where age < 50:
    print("Hi buddy!")
case "Alex" where age >= 50:
    print("I don't know you!")
default:
    break
}

var optional : Int? = 5

if let optional = optional {
    print("optional != nil")
}

//Работа с картежами

let tuple = (name, age)

switch tuple {
case ("Alex", 60):
    print("Hi Alex 60")
    
case ("Alex", 59):
    print("Hi Alex 60")
    
    
case (_, let age) where (age >= 65 && age <= 70):
    print("hi old man")
    
case ("Alex", _):
    print("Hi Alex")
    
default:
    break
}



let point = (5,-4)

switch point {
case let (x,y) where x == y:
    print("x == y")
case let (x,y) where x == -y:
    print("x == -y")
case let (_, y) where y < 0:
    print("y < 0")
default:
    break
}

//Узнать можно тип, с помощью кейса, так же можно указать CustomStringConvertible, тогда  в массиве могут быть Int, Double, Float
//Они не станут все Float
let array : [CustomStringConvertible]  = [5, 5.4, Float(5.4)]

switch array[0] {
case let a as Int:
    print("Int")
case _ as Float:
    print("Float")
case _ as Double:
    print("Double")
default:
    break
}



//Домашняя работа

//Задание 1

let phrase = "Оставаясь строго в рамках натуральных чисел, приходится различать деление с остатком и деление нацело, поскольку нулевой остаток не является натуральным числом; кроме того, неполное частное при делении меньшего числа на большее должно равняться нулю, что тоже выводит за рамки натуральных чисел. Все эти искусственные ограничения неоправданно усложняют формулировки, поэтому в источниках обычно либо рассматривается расширенный натуральный ряд, включающий ноль, либо теория сразу формулируется для целых чисел, как указано выше.123"


print("Количество символов \(phrase.characters.count)")

var counter = (vowels:0,consonants:0,digits:0)



for char in phrase.characters {
    
    let charLower = String(char).lowercased()
    
    switch charLower {
        case "б","в","г","д","ж","з","й","к","л","м","н","п","р","с","т","ф","х","ц","ч","ш","щ":
            counter.consonants += 1
        case "а","е","ё","и","о","у","ы","э","ю","я":
            counter.vowels += 1
        case "1","2","3","4","5","6","7","8","9","0":
            counter.digits += 1
    default:
        break
    }
    
}

print("Согласных: \(counter.consonants) Гласных: \(counter.vowels) Цифр: \(counter.digits)")


//Задание 2
print("----")
print("")

let myAge = 30

print("Мне \(age) лет")
print("Мой жизненный путь")

switch myAge {
case 0...18:
    print("Ученик")
case 19...65:
    print("Рабочий")
case 65...85:
    print("Старик")
case let age where age > 85:
    print ("Долгожитель")
default:
    break
}


//Задание 3
print("----")
print("")

let fullName = (surName: "Ковыршин", name: "Кирилл", patronymic: "Анатольевич")

switch fullName {
case let(_,name,_) where name.hasPrefix("А") || name.hasPrefix("О"):
    print("Уважаемый, \(fullName.name)")
    
case let(_,_,patronymic) where patronymic.hasPrefix("В")  || patronymic.hasPrefix("Д"):
    print("Уважаемый, \(fullName.name) \(fullName.patronymic)")
    
case let(surName,_,_) where surName.characters.first == "Е" || surName.characters.first == "З":
    print("Уважаемый, \(fullName.surName)")
    
default:
    print("Уважаемый, \(fullName.surName) \(fullName.name) \(fullName.patronymic)")
}

//Задание 4
print("----")
print("")

let board1 = [(x:"a",y:1),(x:"a",y:2),(x:"a",y:3)];
let board2 = [(x:"f",y:5),(x:"f",y:6)];
let board3 = [(x:"y",y:1)];

let ships = [board1, board2, board3]

let war = (x:"y",y:1)


var hits = 0
for ship in ships {
    
    for cell in ship {
        switch (war.x, war.y) {
        case (cell.x, cell.y):
            hits += 1
            
            if hits == ship.count {
                print("Убил")
            }else{
                print("Ранил")
            }
            
            
        default:
            break
        }
    }
    
    
}

hits == 0 ? print("Мимо") : print()

//


