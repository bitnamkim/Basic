import Cocoa

// While문 예제
var age = 0
while age < 5 {
    age += 1
    print(age)
}

let names = ["Anna", "Brian", "Brian", "Jack"]
for name in names {
    print("Hello, \(name)")
}


// Dictionary for문 예제. 변수 설정할 때 key값, value값이 들어감.
let animals = ["Snake":0, "Cheetah":3, "Dog":4]
for (animalName, animalLegs) in animals {
    print("This is a \(animalName), it has \(animalLegs) legs.")
}

for index in 1...5 {
    print("\(index) is better than \(index * 5)")
}

for _ in 1..<10 {
    print("Hello")
    
}

// 마지막 숫자 포함 안함. Closed range.
for alpha in 1..<10 {
    print(alpha)
}

print("-----------------")

// 마지막 숫자 포함 안함. Closed range.
let a = 60
for beta in 1..<a {
    print(beta)
}

// to 넣으면 마지막 숫자 포함 안함.
let minuteInterval = 5
for bitnam in stride(from: 0, to: a, by: minuteInterval){
    print(bitnam)
}

// through 넣으면 마지막 숫자 포함함.
let minuteInterval2 = 5
for kim in stride(from: 0, through: 60, by: minuteInterval2){
    print(kim)
}
