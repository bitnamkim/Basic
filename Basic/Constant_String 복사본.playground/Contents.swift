import UIKit


// type inference 기능을 사용함.
var str = "Hello, playground"
var version = 1.0
let year = 2015
let hansome = true

print("str type is \(type(of: str))")
print("str type is \(type(of: version))")
print("str type is \(type(of: year))")
print("str type is \(type(of: hansome))")


// type annotation 기능을 사용

var myStr:String = "Hello, playground"
var myVersion:Double = 1.0
let myYear:Int = 2015
let myHansome:Bool = true
