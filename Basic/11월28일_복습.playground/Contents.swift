import Cocoa


class Vehicle {
    var currentSpeed = 0
    var description : String {
        return "현재 귀하의 속도는 \(currentSpeed) 입니다."
    }
    func method(){
        print("서까지 가주셔야 겠습니다.")
    }
}
let someVehicle = Vehicle()
someVehicle.currentSpeed = 300
print("경찰입니다. \(someVehicle.description)")
someVehicle.method()

//

class Bicycle:Vehicle{
    var hasBasket = false
    override var description: String {
        return "삐뽀삐뽀. 당신의 현재 속도는 \(currentSpeed)km/h. 구속입니다."
    }
}
let someBicycle = Bicycle()
someBicycle.hasBasket = true
someBicycle.currentSpeed = 350
print("앗 과속단속이다. 경찰인가? \(someBicycle.description)")
print(someBicycle.hasBasket)

//

class Train : Bicycle{
    override func method() {
        print("Choo Choo")
    }
}
let someTrain = Train()
someTrain.method()

class Car : Vehicle{

    var gear = 1

    override init() {
        print("Car")
    }
    // 메써드 초기화.

    init(newGear:Int){
        gear = newGear
        // 초기화 된 메써드에 새로운 값을 넣어주는거임.
}
}

let someCar = Car()
// 초기화 된 메써드를 출력해주는 코드
let someCar2 = Car(newGear: 10)
print(someCar2.gear)

// 딕셔너리 초기화, 값 추가, 특정값 출력
var emptyDictionary = [String:String]()

if emptyDictionary.isEmpty {
    print("안녕하세요")
}

var emptyDictionary2 = ["지역":"일본", "나이":"삼십"]
print(emptyDictionary2.count)

emptyDictionary2["국가"] = "한국"
// 딕셔너리에 값 추가하는 코드
print(emptyDictionary2)
print(emptyDictionary2["지역"]!)

// Optional Binding


let possibleNumber = "123"
if let actualNumber = Int(possibleNumber){
    print(actualNumber)
    // 문자열을 숫자로 형변환 해준거임.
}

// While문

var age = 0
while age < 5 {
    age += 1
    print(age)
}
var names = ["1","2","3"]
for name in names {
    print("Hi! \(name)")
}

// 딕셔너리를 for문으로 돌리는 법.
let animals = ["Snake":0, "Cheetah":3,"Dog":4]
for (animalName, animalLegs) in animals{
    print("This is a \(animalName), it has \(animalLegs) legs.")
}

for index in 1...5 {
    print("\(index) is better than \(index * 5)")
}

for _ in 1..<10 {
    print("Hello")
}

for b in 1..<10{
    print(b)
}

let a = 60
for beta in 1..<a {
    print(beta)
}

let minuteInterval = 5
for bit in stride(from: 0, to: a, by: minuteInterval) {
    print(bit)
}
let minuteInterval2 = 5
for kim in stride(from: 0, through: 60, by: minuteInterval2){
    print(kim)
}

func sayHello(){
    print("안녕하세염")
}
sayHello()

//func sayHello2(name:String){
//    print("Hello \(name)")
//}
//sayHello2(name: "띨띨이")

func sayHello2(name:String){
    print("Hello \(name)")
}
sayHello2(name: "하하하")

func sayHello3(name:String) -> String {
    return "Hi! " + name
}
print(sayHello3(name: "이히히님"))


func sayHello4(name:String = "Kim") {
    print("Hello \(name)")
}

func sayHello5(WhatIsYourName name:String, HowOldAreYou age:Int){
    print("my name is \(name), I'm \(age) years old.")
}

func sayHello6(_ name:String, _ age:Int) -> String {
    return "Hi, I'm \(name). I'm \(age) years old so."
}
print(sayHello6("Kim", 21))
