import Cocoa



// conditional statement (조건문)

// switch문이 준내 중요함. swift에서 강력한 힘을 가지고 있음.


//let age = 7
//
//if age < 3 {
//    print("Baby")
//} else if age >= 3 && age < 10 {
//    print("Child")
//} else {
//    print("Adult")
//}

let age = 7
if age < 3 {
    print("baby")
} else if age >= 3 && age < 20 {
    print("Child")
} else {
    print("infant")
}

//switch age {
//case 1,2:
//    print("Baby")
//case 3...19:
//    print("Child")
//default:
//    print("Choo")
//}

switch age {
case 1,2:
    print("Baby")
case 3...5:
    print("Child")
case 6...20:
    print("Adult")
default:
    print("Infant")
}

// 메써드 예제

func sayHello(){
    print("안녕하세염")
}
sayHello()

let alpha = 50

switch alpha {
case 1...50:
    print("Correct")
default:
    print("None")
}
