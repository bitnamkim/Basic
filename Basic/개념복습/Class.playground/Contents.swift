import UIKit

class Vehicle {     // class 안에서 초기화 안해주면 에러가 발생함
    var currentSpeed = 0.0      // Stored 프로퍼티
    var description:String {       // description은 Computed 프로퍼티
        return "Traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise() {
        print("noiseless")
    }
}

let someVehicle = Vehicle()     // 클래스 Vehicle로 인스턴스 만들어준거임.

someVehicle.currentSpeed = 1.0
print(someVehicle.currentSpeed)
someVehicle.makeNoise()

print(someVehicle.description)


class Bicycle: Vehicle {
    var hasBasket = false
}

let someBicycle = Bicycle()

someBicycle.currentSpeed = 15.0
print(someVehicle.currentSpeed)
print(someVehicle.description)
someBicycle.hasBasket = true
print(someBicycle.hasBasket)


class Tandem : Bicycle {
    var currentNumberOfPassengers = 0
    override var description: String{
        return "gogogo \(currentSpeed) and hihihi \(currentNumberOfPassengers)."
    }
}

let someTandem = Tandem()
someTandem.currentNumberOfPassengers = 30
someTandem.hasBasket = false
print(someTandem.description)

class Train: Vehicle {
    override func makeNoise() {
        print("Choo Choo")
    }
}
let someTrain = Train()
someTrain.makeNoise()

class Car: Vehicle {
    var gear = 1
    override init() {
        print("Car")
    }
    init(newGear:Int) {
        gear = newGear  // 파라미터 값을 넣어줘서 초기화 해주기
    }
}

let someCar = Car()     // 이렇게 객체만 만들어줘도 값이 출력됨. 이걸 Initializer 이니셜라이저. 자바에서는 생성자라고 함.

let someCar2 = Car(newGear: 5)
print(someCar2.gear)
