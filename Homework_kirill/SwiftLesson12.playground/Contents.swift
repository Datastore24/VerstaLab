//Enumarations Энумы
//Это некоторое Values type

//Новый тип данных Action

//enum Direction {
//    case Left
//    case Right
//}

enum Action {
    case Walk(meters: Int)
    case Run(meters: Int, speed: Double)
    case Stop
    case Turn(direction: Direction)
    //nested type
    enum Direction {
        case Left
        case Right
    }
}

var action = Action.Run(meters: 20, speed: 15.5)

//action = .Stop

//action = .Walk(meters: 10)


action = .Turn(direction: .Left)


//Ассоциативные значения
switch action {
case .Stop: print("Stop")
case .Walk(let meters) where meters < 100:
    print("short walk - \(meters) meters")
case .Walk(let meters):
    print("long walk - \(meters) meters")
case .Run(let meters, let speed):
    print("Run \(meters) meters with speed \(speed)")
case .Turn(let dir) where dir == .Left:
    print("Turn Left")
case .Turn(let dir) where dir == .Right:
    print("Turn Right")
    
default: break
}



//Сырое значение RawValue

enum Actions {
    case Walk(meters: Int)
    case Run(meters: Int, speed: Double)
    case Stop
    case Turn(direction: Test)
    //nested type
    
}

enum Test : String {
    case Left = "Лево"
    case Right = "Право"
}


var actions = Actions.Run(meters: 20, speed: 15.5)
var direction = Test(rawValue: "Право")!
actions = .Turn(direction: direction)

switch actions {
case .Stop: print("Stop")
case .Walk(let meters) where meters < 100:
    print("short walk - \(meters) meters")
case .Walk(let meters):
    print("long walk - \(meters) meters")
case .Run(let meters, let speed):
    print("Run \(meters) meters with speed \(speed)")
case .Turn(let dir) where dir == .Left:
    print("Turn \(Test.Left.rawValue)")
case .Turn(let dir) where dir == .Right:
    print("Turn \(Test.Right.rawValue)")
    
default: break
}

print(Test.Left.rawValue)

print(" ")
print("---")
//Домашняя работа

//Задание 1
enum Piece {
    case King(name: Name, color: ChessColor, column: String, row: Int)
    case Queen(name: Name, color: ChessColor, column: String, row: Int)
    case Rook(name: Name, color: ChessColor, column: String, row: Int)
    case Bishop(name: Name, color: ChessColor, column: String, row: Int)
    case Knight(name: Name, color: ChessColor, column: String, row: Int)
    case Pawn(name: Name, color: ChessColor, column: String, row: Int)
    
    enum ChessColor : String {
        case White = "Белый"
        case Black = "Черный"
    }
    
    enum Name : String {
        case KingName = "Король"
        case QueenName = "Королева"
        case RookName = "Ладья"
        case BishopName = "Слон"
        case KnightName = "Конь"
        case PawnName = "Пешка"
    }
}
var figureOne = Piece.Bishop(name: .BishopName, color: .White, column: "E", row: 2)
var figureTwo = Piece.King(name: .KingName, color: .White, column: "G", row: 2)
var figureThree = Piece.King(name: .KingName, color: .Black, column: "H", row: 1)

var chessBoard = [figureOne, figureTwo, figureThree]

//Задание 2

func printPiece(piece: Piece){
    switch piece {
    case .King(let name, let color, let column, let row):
        print(name.rawValue, color.rawValue, column, row)
    case .Queen(let name, let color, let column, let row):
        print(name.rawValue, color.rawValue, column, row)
    case .Rook(let name, let color, let column, let row):
        print(name.rawValue, color.rawValue, column, row)
    case .Bishop(let name, let color, let column, let row):
        print(name.rawValue, color.rawValue, column, row)
    case .Knight(let name, let color, let column, let row):
        print(name.rawValue, color.rawValue, column, row)
    case .Pawn(let name, let color, let column, let row):
        print(name.rawValue, color.rawValue, column, row)
    default:
        break
    }
}

for chess in chessBoard {
    printPiece(piece: chess)
}

//Задание 3
let letterRange = "ABCDEFGH"
let digitRange = 1...8

func chessPiece(piece: Piece) -> (String, String) {
    
    var position = ""
    var image = ""
    
    switch piece {
    case .King(_, let color, let column, let row):
        position = column + String(row)
        image = color.rawValue == "Черный" ? "\u{265A}" : "\u{2654}"
    case .Queen(_, let color, let column, let row):
        position = column + String(row)
        image = color.rawValue == "Черный" ? "\u{265B}" : "\u{2655}"
    case .Rook(_, let color, let column, let row):
        position = column + String(row)
        image = color.rawValue == "Черный" ? "\u{265C}" : "\u{2656}"
    case .Bishop(_, let color, let column, let row):
        position = column + String(row)
        image = color.rawValue == "Черный" ? "\u{265D}" : "\u{2657}"
    case .Knight(_, let color, let column, let row):
        position = column + String(row)
        image = color.rawValue == "Черный" ? "\u{265E}" : "\u{2658}"
    case .Pawn(_, let color, let column, let row):
        position = column + String(row)
        image = color.rawValue == "Черный" ? "\u{265F}" : "\u{2659}"
    default:
        break
    }
    
    return (position, image)
}

//Временный Dictionary
var onBoard = [String : String]()
for pc in chessBoard {
    let (position, image) = chessPiece(piece: pc)
    onBoard.updateValue(image, forKey: position)
}

func stringToInt(s: String) -> Int {
    var count = 1
    for char in letterRange.characters{
        if String(char) == s{
            return count
        } else {
            count += 1
        }
    }
    return 0
}

func printBoard() {
    
    var resultString = String()
    for char in digitRange.reversed() {
        resultString += String(char) + " "
        for val in letterRange.characters {
            if let img = onBoard[String(val) + String(char)] {
                resultString += img

            }else{
                char % 2 == stringToInt(s: (String(val))) % 2 ? (resultString += "\u{25A1}") : (resultString += "\u{25A0}")
            }
        }
        resultString += "\n"
        
    }
    resultString += " " + letterRange + "\n"
    print(resultString)
}


printBoard()






