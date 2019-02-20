import UIKit

var emptyDic = [String:Int]()

if emptyDic.isEmpty == true {
    print("진짜 비었네?!")
}


emptyDic["people"] = 6
print(emptyDic)

emptyDic["sarma"] = 3

print(emptyDic)



let age = 13

switch age {
case 0...9:
    print("아이")
case 10...13:
    print("으른")
default:
    print("냐하")
}
