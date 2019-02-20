import Cocoa

// return type, parameter type 둘 다 없는거

func sayHello(){
    print("Hello")
}
sayHello()

// parameter type 있는 예제

func sayHello2(name:String){
    print("Hello \(name)")
}
sayHello2(name: "haha")

// return type 있는 예제

func sayHello3(name:String) -> String {
    return "Hi " + name     // return 값에 파라미터 더해줄때는 1개만 플러스 할 수 있음.
}
print(sayHello3(name:"Bitnam"))



// parameter 기본값이 있는 예제

func sayHello4(name:String = "Kim") {
    print("Hello \(name)")
}
sayHello4()

// argument label, parameter name 있는 예제

func sayHello5(WhatIsYourName name:String, HowOldYourAge age:Int){
    print("My Name is \(name), I'm \(age) years old so.")
}
sayHello5(WhatIsYourName: "Bitnam", HowOldYourAge: 21)

func sayHello6(_ name:String, _ age:Int) -> String {        // return 값 줄때는 -> String 이거 해줘야함.
    return "Hi. I'm \(name). I'm \(age) years old so."      // retrun 값 입력할 때는 "" 여기 안에 다 넣어줘야함. parameter는 1개만 더할 수 있음.
}
print(sayHello6("Bitnam", 16))



