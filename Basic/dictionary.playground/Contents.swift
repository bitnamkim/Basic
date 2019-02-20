import UIKit


// 비어있는 dictionary 함수 만들어주기
// mutable dictionary, 값 변경이 가능한 dictionary
var emptyDictionary = Dictionary<String,Int>()
var emptyDictionary2 = [String:Int]()

if emptyDictionary2.isEmpty {
    print("nothing in dictionary")
}

print(emptyDictionary2.count)

// 딕셔너리 추가, 변경 하는거 연습. 다리길이로 연습.
emptyDictionary2["ant"] = 6
emptyDictionary2["snake"] = 0
print(emptyDictionary2.count)

var emptyDictionary3 = ["ant":6, "snake":0, "cheetah":4]

emptyDictionary3["snake"] = 1
emptyDictionary3["human"] = 2
print(emptyDictionary3)

print(emptyDictionary3["cheetah"]!) // 이건 optional value 인데, 뒤에 장에서 설명하기로 했음.


// immuatable dictionary, 값 변경이 불가능한 dictionary

let emptyDictionary4 = ["ant":6, "snake":0, "cheetah":4]
// emptyDictionary4["snake"] = 4 <- 이 코드 쓰면 오류남. let으로 설정했기 때문에 값 변경이 안됨. 이 코드 주석처리하고 프린트 하면 잘 나옴.
print(emptyDictionary4)

