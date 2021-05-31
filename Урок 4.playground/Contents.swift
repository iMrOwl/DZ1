import UIKit

func a(place: String) -> String {
    print(place)
    return place
}

let aa = {
    print(1)
}

let aaa = a(place: "111")
aa()

//
//// Принятие параметров в закрытии
//
//let driving = { (place: String) in
//    print("I'm going to \(place) in my car")
//}
//
//driving("12dasdas3")


//// Возврат значений из закрытия
//
//let drivingWithReturn = { (place: String) -> String in
//    return "I'm going to \(place) in my car"
//}
//
//let message = drivingWithReturn("London")
//print(message)

// Замыкания как параметры

//let driving1 = {
//    print("I'm driving in my car")
//}
//
//func travel(name: String, action: () -> Void) {
//    print("I'm getting ready to go.")
//    action()
//    print("I arrived!")
//}
//
//travel(name: "1234", action: driving1)
//
//func dddd() -> Void {
//
//}

//// Синтаксис завершающего закрытия
//
//func travel1(action: () -> Void) {
//    print("I'm getting ready to go.")
//    action()
//    print("I arrived!")
//}
//
//travel1() {
//    print("I'm driving in my car")
//}
//
//travel1 { // можем исключить скобки
//    print("I'm driving in my car")
//}

//// Использование замыканий в качестве параметров, когда они принимают параметры
//
//func travel(action: (String) -> Void) {
//    print("I'm getting ready to go.")
//    action("London")
//    print("I arrived!")
//}
//
//travel { (place: String) in
//    print("I'm going to \(place) in my car")
//}


//// Использование замыканий в качестве параметров, когда они возвращают значения
//
//func travel(action: (String) -> String) {
//    print("I'm getting ready to go.")
//    let description = action("London")
//    print(description)
//    print("I arrived!")
//}
//
//travel { (place: String) -> String in
//    return "I'm going to \(place) in my car"
//}

// Сокращенные имена параметров

//func travel1(action: (String) -> String) {
//    print("I'm getting ready to go.")
//    let description = action("London")
//    print(description)
//    print("I arrived!")
//}
////
////travel1 { (place: String) -> String in
////    return "I'm going to \(place) in my car"
////}
////
////travel1 { place -> String in
////    return "I'm going to \(place) in my car"
////}
////
////travel1 { place in
////    return "I'm going to \(place) in my car"
////}
////
////travel1 { place in
////    "I'm going to \(place) in my car"
////}
//
//travel1 {
//    "I'm going to \($0) in my car"
//}

// Замыкания с несколькими параметрами

//func travel(action: (String, Int) -> String) {
//    print("I'm getting ready to go.")
//    let description = action("London", 60)
//    print(description)
//    print("I arrived!")
//}
//
//travel {
//    "I'm going to \($0) at \($1) miles per hour."
//}
//
//travel { rrr, rrrr -> String in
//    return "I'm going to \(rrr) at \(rrrr) miles per hour."
//}
//
class Transport {

    var name: String

    static var age = 10

    func summa(one: Int, two: Int) {
        print(one + two)
    }

    init(name: String) {
        self.name = name
    }
}

var people = Transport(name: "123")
people.name = "Ceprja"
people.name

Transport.age

people.summa(one: 2, two: 3)

//struct

//struct Peoole1 {
//
//    var name: String
//
////    init(name: String) {
////        self.name = name
////    }
//}
//
//let people1 = Peoole1(name: "ddd")

class Car: Transport {

    override func summa(one: Int, two: Int) {
        super.summa(one: 3, two: 5)
        print(1 + 2)
    }

}

let opel = Car(name: "ffdfsd")
opel.name
opel.summa(one: 3, two: 4)

class Piople {

    var name: String

    init(name: String) {
        self.name = name
    }
}

var student = Piople(name: "Gena")
student.name

var studentTwo = student

studentTwo.name
studentTwo.name = "Sveta"
studentTwo.name
student.name

struct Piople2 {
    
    var name: String
}

var student = Piople2(name: "Gena")
student.name
var studentTwo = student
studentTwo.name
studentTwo.name = "Sveta"
studentTwo.name
student.name
