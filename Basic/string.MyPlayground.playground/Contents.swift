import UIKit


// \n을 이용해서 한칸씩 내려서 출력하기
var str = "Hello, playground. \nnice meeting you. \n\"I'm gonna make up you\""

print(str)
print("============")

var strkim = "안녕하세요. \n만나서 반갑습니다. \nIt was nice to see you."
print(strkim)
print("😘😘")

// """을 이용해서 멀티라인 \n없이 출력하기.
var(str2) = """
Hello, playground.
sooooooo nice meeting you.
"I'm gonna make up you"
"""
print(str2)

var str2kim = """
안녕하세요 방가
방가
방가
"""
print(str2kim)


// 비어있는 string 문자열 만들기. print 해서 비어있는 string 인지 확인할 수 있음.
var empty = ""
var anotherEmptyString = String()

if empty.isEmpty {
    print("Nothing to see here")
}

var emptykim = ""
if emptykim.isEmpty {
    print("붕신")
}

var emptykim2 = String()
if emptykim2.isEmpty {
    print("바보")
}

// welcome을 활용하여 문자열 합치기
let string1 = "Hello"
let string2 = " there"

var welcome = string1 + string2
print(welcome)

var instruction = "look over"
instruction += string2

print(instruction)
print(instruction.count)

let kim = "Hi"
let kim2 = "there"
var welcome2 = kim + kim2
print(welcome2)

var kim3 = "Hey, boy"
kim3 += welcome2
print(kim3.count)
print(kim3)
