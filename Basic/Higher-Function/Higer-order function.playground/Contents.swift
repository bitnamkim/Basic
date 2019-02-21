import UIKit


// 💥💥 고차함수(Higher-order function) : Sorted, Map, Filter, Reduce가 있음. 하나 이상의 함수를 인자로 취하고 있거나, 함수를 결과값으로 리턴하는 함수.


// 💥💥 Map
// : map은 컬렉션 내부의 기존 데이터를 변형해서 새로운 컬렉션을 생성하는 함수. 내부의 자료에 변형을 가하기 위해 함수의 각 요소에 함수를 적용해서 새로운 컬렉션을 만듦. 잘 사용하면 for 문을 사용하지 않고도 작업할 수 있음.

let numbers = [0, 1, 2, 3, 4]
var doubleNumbers = [Int]()
var strings = [String]()

/*for number in numbers {
    doubleNumbers.append(number * 2)
    strings.append("\(number)")
}
print(doubleNumbers)
print(strings)              ⭐️ 일반 for문을 사용한 형태! 이렇게 for문을 사용할 수도 있고, 아래처럼 고차함수를 사용할 수도 있음.
*/


doubleNumbers = numbers.map({ (numbers:Int) -> Int in
    return numbers * 2
})

strings = numbers.map({ (numbers:Int) -> String in
    return "\(numbers)"
})
print(doubleNumbers)
print(strings)


// Map의 축약형!
doubleNumbers = numbers.map { $0 * 2 }      // $0는 첫번째 파라미터, $1는 두번째 파라미터.
print(doubleNumbers)

strings = numbers.map { String($0) }
print(strings)






// 💥💥 Filter
// : 컨터이너 내부의 값을 걸러서 추출하는 함수


// 짝수를 골라내기 위한 for문
/*let allNumbers = [0, 1, 2, 3, 4, 5]
var evenNumbers = [Int]()

for number in allNumbers {
    if number % 2 != 0 { continue }
        evenNumbers.append(number)
    }
print(evenNumbers)
*/

// Filter로 짝수 뽑아내기

let realNumbers = [0, 1, 3, 5, 6, 8, 10]
var evenNumbers = [Int]()
var oddNumbers = [Int]()

//let realEvenNumbers = realNumbers.filter { (number: Int) -> Bool in
//    return number % 2 == 0
//}
//print(realEvenNumbers)


// 짝수 추출하는 예제 축약형
evenNumbers = realNumbers.filter { $0 % 2 == 0}
print(evenNumbers)

// 홀수 추출하는 예제
oddNumbers = realNumbers.filter { $0 % 2 != 0}
print(oddNumbers)

let descendingOrder = realNumbers.sorted { $0 > $1 }
print(descendingOrder)


evenNumbers

// 💥💥 Reduce
// : 컨테이너 내부의 컨텐츠를 하나로 통합하는 함수.

let yourNumbers = [2, 8, 15]
var kimSum = 0

/*for number in kimNumbers {
    kimSum += number
}

print(kimSum)
*/

// Reduce함수를 사용해서 내부 인자들 다 더하기
let hyperSum:Int = yourNumbers.reduce(0, { (first, second) -> Int in
    print("(first)+(second)")
    return first + second
})
print(hyperSum)


// Reduce함수를 사용해서 내부 인자들 다 빼기
kimSum = yourNumbers.reduce(2) {$0 - $1}
print(kimSum)

kimSum = yourNumbers.reduce(0) { $0 + $1 }
print(kimSum)

kimSum = yourNumbers.reduce(1, {( $0 + $1)})
print(kimSum)


let myAdd = [1, 2, 5]




// 접근제어(open, public, internal, file-private, private) 예제 연습
fileprivate class FileprivateClass {
    public init() {}
}

fileprivate var fileprivateInstance = FileprivateClass()

private class HyperClass {
    
    public init() {}
    
    private var name = "안녕하세요"
}



extension HyperClass {
    func sayHello() {
        print(name)
    }
}


