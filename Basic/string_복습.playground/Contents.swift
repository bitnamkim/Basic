import Cocoa

var str = "Hello, playground. Good to see you"

print(str)

var str2 = """
Hello, Good to see you. It was a nice meeting.
Good deed. "All I wanna do."
"""

print(str2)

//var emptyString = ""
//var anotherEmptyString = String()
//
//if emptyString.isEmpty {
//    print("아무것도 엄서용~")
//}
//
//print("=======")
//
//if anotherEmptyString.isEmpty{
//    print("이것도 아무것도 엄서용~")     -> string 초기화 해주는 2가지 방법.
//}

var string1 = "Hello"
var string2 = " there"

var welcome = string1 + string2
print(welcome)

var aaa = "look over "
aaa += string1

print(aaa)
print(aaa.count)


