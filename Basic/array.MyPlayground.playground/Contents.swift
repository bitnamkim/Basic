import UIKit

// emptyarray 설정하는 2가지 방법
// mutable array (값 수정, 변경이 가능한 배열)
var emptyArray = Array<String>()
var emptyArray2 = [String]()

print(emptyArray2)

emptyArray2.append("Anna")
emptyArray2.append("Alex")

print(emptyArray2)

var emptyArray3 = ["Anna", "Alex", "Brian", "Jack"]
emptyArray3 += ["Kim"]
emptyArray3 += ["Bit"]
emptyArray3 += ["Nam"]

print(emptyArray3)
print(emptyArray3[0])

emptyArray3[3] = "Hi"
print(emptyArray3[3])
print(emptyArray3)

emptyArray3[4...6] = ["A", "B", "C"]
print(emptyArray3)
print(emptyArray3.count)

// immutable array (값 수정, 변경이 불가능한 배열)

let emptyArray4 = ["Anna", "Alex", "Brian", "Jack"]
emptyArray4[3] = "Hello"
print(emptyArray4)

// 오류나는 이유 : let 으로 설정한거라서 값 변경이 불가능함
