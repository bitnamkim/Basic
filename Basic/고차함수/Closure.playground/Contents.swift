import UIKit


// 💥💥 Sorted도 고차함수임! Closure 개념 설명할려고 그냥 여기에 써준거임.

// 올림차순
let numbers = [0, 2, 1, 3, 6, 4, 9, 7, 8]

let ascendingNumbers = numbers.sorted()

print(numbers)
print(ascendingNumbers)



// 내림차순
let descendingNumbers = numbers.sorted { (a, b) -> Bool in
    return a > b
}

print(descendingNumbers)



// sorted method 로직 설명
let descendingNumbersLogic = numbers.sorted { (a, b) -> Bool in
    print("a = \(a)")
    print("b = \(b)")
    print(a > b)
    return a > b
}
print(descendingNumbersLogic)


// 위에 예제랑 똑같은거인데 생략해준거임.
let descendingNumberClosure = numbers.sorted(by: >)

print(descendingNumberClosure)

let myDescendingNumberClosure = numbers.sorted { $0 > $1 }      // $0는 첫번째 파라미터, $1는 두번째 파라미터
print(myDescendingNumberClosure)



// 매개 변수 타입과 리턴 타입 생략!
let names = ["haha", "hoho", "hehe", "hello"]
let reversed = names.sorted { (left, right) in
    return left > right
}
print(reversed)


// 생략 하지 않고 전부 다 써준 것!
let ourReversed = names.sorted { (left:String, right:String) -> Bool in
    return left > right
}
print(ourReversed)



// 💥💥 매개 변수 타입만 생략! 이게 제일 나은듯. 협업할때는 너무 축약형으로 쓰면 다른 사람이 못 알아먹음.
let newReversed: [String] = names.sorted { (left, right) -> Bool in
    return left > right
}
print(reversed)



// 파라미터, 리턴타입 생략
let myReversed: [String] = names.sorted {
    return $0 > $1
}
print(myReversed)



// 리턴타입, 파라미터, 리턴값 생략
let secondReversed = names.sorted { $0 > $1}
print(secondReversed)








