import Cocoa

var emptyDictionary = Dictionary<String,Int>()  // 딕셔너리 초기화 하는 방식. 밑에 방식이랑 똑같은 건데 표현방식만 다른거임.
var emptyDictionary2 = [String:Int]()       // shorthand 코딩으로 빈 딕셔너리 만드는 방식.

if emptyDictionary2.isEmpty {
    print("아무것도 엄서용~")
}

emptyDictionary2["ant"] = 6
emptyDictionary2["snake"] = 0

print(emptyDictionary2.count)

// 딕셔너리 literal 방식으로 초기화 하면서 바로 쓰는 방식

var emptyDictionary3 = ["ant":6, "snake":0, "cheetah":4]
print(emptyDictionary3)

emptyDictionary3["human"] = 2   // 새로운 key, value 값 넣는 방식
   // 기존 key 값을 바꿔주는 방식

print(emptyDictionary3)

print(emptyDictionary3["cheetah"]!)     // ! 뺴면 optional 표시된 값이 나옴. ! 해주면 optional 없어짐.


// immutable dictionary

//let emptyDictionary4 = ["ant":6, "snake":0, "cheetah":4]
//emptyDictionary4["snake"] = 3
//print(emptyDictionary3)       ** let 받아서 key, value 값 변경이 안됨.




