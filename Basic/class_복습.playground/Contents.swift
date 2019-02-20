import UIKit

class Vehicle{
    var currentSpeed = 0.0      // stored property
    var description:String {    // computed property임. 원래 여기에 get, set 설정을 해줘야 하는데, 설정을 안해주면 그냥 return 값만 받음
        return "Traveling at \(currentSpeed) miles per hour"    //returnd을 받을려면 타입 써주고 { 해주면 됨.
        
        
    }
    func makeNoise() {
        print("noiseless")
    }
}

let someVehicle = Vehicle()     // 변수에 인스턴스 만드는 방법. 클래스를 기반으로 인스턴스를 만든거임.
someVehicle.currentSpeed = 11.0
print(someVehicle.description)
someVehicle.makeNoise()

// 상속 예제

class Bicycle:Vehicle{
    var hasBasket = false
}

let someBicycle = Bicycle()
someBicycle.hasBasket = true
someBicycle.currentSpeed = 1.0
print(someBicycle.currentSpeed)
print(someBicycle.hasBasket)


class Tandem:Bicycle{
    var currentNumberOfPassengers = 0
    override var description: String{       // override로 위에 있는 description을 재정의 해줬음.
        return "Traveling at \(currentSpeed) miles per hour, number of passenger : \(currentNumberOfPassengers)"
    }
}

let someTandem = Tandem()
someTandem.hasBasket = true
someTandem.currentNumberOfPassengers = 2

print("Tandem : \(someTandem.description)")

// vehicle 클래스에서 method를 override 하는 예제


class Train : Bicycle{
    override func makeNoise() {
        print("Choo Choo")
    }
}
let someTrain = Train()
someTrain.makeNoise()

class Car : Vehicle{
    var gear = 1
    override init() {
        print("Car")
    }
    init(newGear:Int){
        gear = newGear
    }
}

let someCar = Car()
let someCar2 = Car(newGear: 5)
print(someCar2.gear)



