import Cocoa

let possibleNumber = "123"
// let possibleNumber = "f"  -> 이 값 넣으면 nil 값을 출력함
let convertedNumber = Int(possibleNumber)       // Int는 형변환에 실패하면 nil을 넣음

print(convertedNumber!)

if convertedNumber != nil{
    print(convertedNumber!)     // ! 붙이면 forced unwrapping 하는 거임. optional을 강제로 제거하는 기능.
}



// 아래는 optional binding 예제  -> 위에 문법 let, let, if 3줄을 짧게 사용한게 이 예제임.
if let actualNumber = Int(possibleNumber) {
    print(actualNumber)
    // optional binding -> nil 값이 아닌 경우에는 unwrapping을 사용해서 값을 바로 출력함. nil 값 때문에 오류가 나지 않게 해주는 문법.
}

if let actualNumber = Int(possibleNumber) {
    print(actualNumber)
    
}
print(possibleNumber)
