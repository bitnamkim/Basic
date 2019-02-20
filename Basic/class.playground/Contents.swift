import UIKit

class Vehicle{
    var currentSpeed = 0.0   // 1. 이건 stored property임. 2. 이렇게 0.0 으로 초기값 설정 안해주면 오류남.
    var description:String {
        return "Traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise() {
        print("noiseless")
    }
}

let someVehicle = Vehicle()
print(someVehicle.currentSpeed)
someVehicle.currentSpeed = 1.0
print(someVehicle.currentSpeed)
print(someVehicle.description)
someVehicle.makeNoise()


// 상속받는 예제
class Bicycle: Vehicle{
    var hasBasket = false
}

let someBicycle = Bicycle()  //위에 Bicycle 슈퍼클래스를 someBicycle 서브 클래스에 상속받는거임.
someBicycle.currentSpeed = 15.0
someBicycle.hasBasket = true
print(someBicycle.description)
print(someBicycle.hasBasket)



// override 사용해서 computed property, method 사용하는 예제
class Tandem:Bicycle{
    var currentNumberOfPassengers = 0
    override var description: String{
        return "Traveling at \(currentSpeed) miles per hour, number of passenger : \(currentNumberOfPassengers)"
    }
}
let someTandem = Tandem()
someTandem.hasBasket = true
someTandem.currentNumberOfPassengers = 2
someTandem.currentSpeed = 22.0

print("Tandem : \(someTandem.description)")


// vehicle에서 method를 override 하는 예제

class Train:Vehicle{
    override func makeNoise() {
        print("Choo Choo")
    }
}

let someTrain = Train()
someTrain.makeNoise()

// override 하고 init으로 초기화 할 거임.

class Car : Vehicle{
    var gear = 1
    override init(){
        print("Car")
    }
    init(newGear:Int) {
        gear = newGear
    }
}
let someCar = Car()
let someCar2 = Car(newGear: 5)
print(someCar2.gear)








