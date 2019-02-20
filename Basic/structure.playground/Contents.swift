import UIKit


// structure (구조체)는 관련된 데이터들을 패키지처럼 사용하는 것.
// structrue 구조체는 관련된 데이터들을 패키지처럼 사용하는것. 패키지란? 메써드를 사용할 수 있게 도움주는 역할?

var name = ["Park", "Choi", "Kim", "Lee"]
var age = [3,4,5,6]
var height = [40,50,60,70]

print(name[0], age[0], height[0])

struct Student{
    var name:String
    var age:Int
    var height:Int
}

var student1 = Student(name: "Park", age: 40, height: 50)
var studnet2 = Student(name: "Choi", age: 50, height: 70)
print(student1.name, student1.age, student1.height)


struct friends{
    var name:String
    var age:Int
    var weight:Int
}

var friend1 = friends(name: "박성훈", age: 20, weight: 30)
var friend2 = friends(name: "이이이", age: 21, weight: 31)
var friend3 = friends(name: "김김김", age: 22, weight: 32)
print(friend1.age, friend2.name, friend3.weight)

