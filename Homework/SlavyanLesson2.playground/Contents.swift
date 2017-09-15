//:Lesson2

Int8.min
Int8.max

Int16.min
Int16.max

Int32.min
Int32.max

Int64.min
Int64.max

UInt8.max
UInt16.max
UInt32.max
UInt64.max


print("min значение Int8 = \(Int8.min)\nmax значение Int8 = \(Int8.max)")

print("min значение Int16 = \(Int16.min)\nmax значение Int16 = \(Int16.max)")

print("min значение Int32 = \(Int32.min)\nmax значение Int32 = \(Int32.max)")

print("min значение Int64 = \(Int64.min)\nmax значение Int64 = \(Int64.max)")



let ferstA = 16

let ferstB = 32.16

let ferstC :Float = 64.32


let amountInt = ferstA + Int(ferstB) + Int(ferstC)

let amountDouble = Double(ferstA) + ferstB + Double(ferstC)

let amountFloat = Float(ferstA) + Float(ferstB) + ferstC


print("Сумма трех костант в выражении Int = \(amountInt)")

print("Сумма трех констант в выражении Double = \(amountDouble)")

print("Сумма трех констант в выражении Float = \(amountFloat)")



let boolsZone = true

if boolsZone {
    print("Я и есть ПРАВДА!")
} else {
    print("Тута нету нихрена...")
}
