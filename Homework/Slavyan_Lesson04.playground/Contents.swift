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

let age = '20'





