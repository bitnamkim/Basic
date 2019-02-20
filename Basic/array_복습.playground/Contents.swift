import Cocoa

var emptyString2 = [String]()
// 배열에 string을 넣어줄거고, 초기화 해주는거임.
print(emptyString2.count)

emptyString2.append("Anna")
emptyString2.append("Alex")
print(emptyString2)

var emptyArray3 = ["Anna", "Alex", "Brian", "Jack"]

emptyArray3 += ["Choi"]
emptyArray3 += ["Jin"]
emptyArray3 += ["Young"]

print(emptyArray3)
print(emptyArray3[3])

emptyArray3[3] = "Hi"
print(emptyArray3[3])

emptyArray3[4...6] = ["A", "B", "C"]
print(emptyArray3)
print(emptyArray3.count)

