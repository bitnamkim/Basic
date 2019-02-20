import UIKit

func sayHello() {
    print("Hello")
}
sayHello()

func sayHello2(name:String) {
    print("Hello \(name)")
}
sayHello2(name: "하하")

func sayHello3(name: String) -> String {
    return "Hello " + name
}
print(sayHello3(name: "호호"))

// name, age는 Parameter Label이고 writeYourName, putYourAge는 Argument Label임
func sayHello4(writeYourName name:String, putYourAge age:Int) {
    print("I'm \(name). And I'm \(age) years old.")
}
sayHello4(writeYourName: "Kim", putYourAge: 20)


// Argument Label 생략
func sayHello5(_ myName:String, _ yourAge:Int) {
    print("I'm \(myName). I'm \(yourAge)")
}
sayHello5("Lee", 22)
