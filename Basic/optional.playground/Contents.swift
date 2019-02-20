import UIKit

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)

if convertedNumber != nil {
}

// optional binding 예제 -> nil 값 때문에 오류가 나지 않게 사용하는 문법임. 위에 3개 문장을 합쳐서 간단하게 쓴 문법임.
if let actualNumber = Int(possibleNumber){
    print(actualNumber)
}

var serverResponseCode:Int? = 404
serverResponseCode = nil // 8번째 코드 Int 뒤에 ? 안 붙이면 오류남.

print(serverResponseCode!)
