import UIKit

var emptyArray = [String]()

emptyArray.append("Hi")
emptyArray.append("gogogo")

print(emptyArray)

emptyArray.remove(at: 0)

print(emptyArray)

emptyArray.append("하이염")

print(emptyArray)

emptyArray[1] = "반가워요"

print(emptyArray)
