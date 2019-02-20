import Cocoa


class Vehicle {
    var currentSpeed = 0.0
    var description:String {
        return "Traveling at \(     currentSpeed) miles hours."
    }
    func makeNoise(){
        print("noiseless")
    }
}

let someVehicle = Vehicle()     // Vehicle이라는 class로 someVehicle이라는 인스턴스를 만든거임. 인스턴스 만들때는 let으로 만들것.
print(someVehicle.currentSpeed)
someVehicle.currentSpeed = 1.1
print(someVehicle.currentSpeed)
someVehicle.makeNoise()
print(someVehicle.description)



class Bicycle : Vehicle{        // Bicycle : 하위 클래스,  Vehicle : super 클래스
    var hasBasket = false
}

let someBicycle = Bicycle()
print(someBicycle.hasBasket)
someBicycle.hasBasket = true
someBicycle.currentSpeed = 15.0
print(someBicycle.hasBasket)
print(someBicycle.currentSpeed)



class Tandem : Bicycle{
    var currentNumberOfPassenger = 0
    override var description: String{
        return "Traveling at \(currentSpeed) miles per hours, number of passenger : \(currentNumberOfPassenger)"
    }
}

let someTandem = Tandem()
someTandem.currentNumberOfPassenger = 2
someTandem.currentSpeed = 15.0
print(someTandem.currentNumberOfPassenger)
print(someTandem.currentSpeed)
print("Tandem : \(someTandem.description)")


class Car : Vehicle{
    var gear = 1
    override init() {       // init()은 기존에 default 값으로 설정된 인자가 출력되는거임.
        print("Hi")
    }
    init(newGear : Int) {   // init(변수 : 타입) 해주면, 새로운 인자의 값이 출력됨.
        gear = newGear      // gear의 값을 newGear에 넣어주면 됨.
    }
}

let someCar = Car()
let someCar2 = Car(newGear: 5)
print(someCar2.gear)


struct studnet{
    var name: String
    var age : Int
    var height : Int
}

let student1 = studnet(name: "Kim", age: 24, height:185)
let student2 = studnet(name: "Lee", age: 25, height:190)
print(student1.name, student1.age, student1.height)


struct school{
    var name2: String
    var age2: Int
    var height2: Int
}

let school1 = school(name2: "Kang", age2: 20, height2:190)
let school2 = school(name2: "Jung", age2: 30, height2:200)
print(school1.name2, school1.age2, school1.height2)






