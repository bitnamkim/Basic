import UIKit

func sayHello(){
    print("Hello")
}
sayHello()


func sayHello2(name:String) {
    print("Hello \(name)")
}
sayHello2(name: "Kim")


func sayHello3(name:String) -> String {
    return "Hello " + name
}
print(sayHello3(name: "Lee"))


func sayHello4(name:String = "Kang"){
    print("Hello \(name)")
}
sayHello4()


// argument label과 parameter name 두 개 다 써준 예제
func sayHello5(insertYourName name: String, internationalAge age: Int) {
    print("\(name) is \(age) years old.")
}

sayHello5(insertYourName: "Kim", internationalAge: 10)



// argument label을 _ (under score)로 생략해준 예제

func sayHello6(_ name:String, _ age:Int) -> String {
    return "\(name) is \(age) years old."
}
print(sayHello6("Kim", 20))


