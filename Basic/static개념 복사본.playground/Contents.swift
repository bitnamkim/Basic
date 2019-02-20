import UIKit

//  Static Variables are belong to a type rather than to instance of class. You can access the static variable by using the full name of the type.

//  A static variable is shared through all instances of a class. When you change the variable for the static property, that property is now changed in all future instances.

//  Static 변수는 인스턴스 클래스라기 보다는, 타입이라고 생각하는게 맞음. Static 변수의 풀네임을 써서 static 변수에 접근할 수 있음.

/*  var : used to create a variable
 let : used to create a constant
 static : used to create type properties with either let or var. These are shared between all objects of a class.
 
 static let key = "API_KEY" : type property that is constant
 static var cnt = 0 : type property that is a variable
 let id = 0 : constant (can be assigned only once, but can be assigned at run time)
    var price = 0 : variable
*/

class Vehicle {
    var car = "Lexus"
    static var suv = "Jeep"
    
    let animal = "Monkey"
    static let myAnimal = "Elephant"
}

// 일반 var
Vehicle().car
Vehicle().car = "KIA"   // 값이 변하지 않음. 이유 : 인스턴스화 해줘서 바꿔줘야 값이 바뀜.
Vehicle().car
let myVehicle = Vehicle()
myVehicle.car = "KIA"
print(myVehicle.car)    // 바꿔준 값 KIA가 출력됨.


// static var
Vehicle.suv
Vehicle.suv = "Hummer"  // 출력하면 Hummer로 바뀜. 타입이라서 그냥 클래스 이름 풀로 써주면 타입을 바꿀 수 있음.
Vehicle.suv = "BMW"// 최종적으로 BMW로 바뀜.
Vehicle.myAnimal

print(Vehicle.suv)


