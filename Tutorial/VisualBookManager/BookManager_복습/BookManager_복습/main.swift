//
//  main.swift
//  BookManager_복습
//
//  Created by 흠냐방구 on 30/10/2018.
//  Copyright © 2018 흠냐방구. All rights reserved.
//

import Foundation

// 책의 데이터를 넣어주고, 클래스로 인스턴스 생성해서. 책을 등록함.

var book1 = Book(name:"햄릿", genre: "비극", author: "셰익스피어")       // 여러 값을 넣어야 하니까
//book1.bookPrint()
var book2 = Book(name: "누구를 위하여 종을 울리나", genre: "전쟁소설", author: "해밍웨이")
//book2.bookPrint()
var book3 = Book(name: "죄와벌", genre: "사실주의", author: "톨스토이")
//book3.bookPrint()

var myBookManager = BookManager()
myBookManager.registerBook(bookObject: book1)
myBookManager.registerBook(bookObject: book2)
myBookManager.registerBook(bookObject: book3)

print(myBookManager.showAllBooks())
print("number of books : \(myBookManager.countBooks())")


// 아래 방식은 길게 다 써주는 방식임
// var searchResult = myBookManager.searchBook(name: "띠용")
//
// if searchResult != nil {
//    print("\(searchResult!)를 찾았습니다.")
//}else{
//    print("찾으시는 책이 없습니다.")
//}


// 위 방식과는 다르게 optional binding 방법으로 하는 예제. 코드 간편함.
if let searchResult = myBookManager.searchBook(name: "햄릿"){
    print("\(searchResult)를 찾았습니다.")
}else {
    print("찾으시는 책이 없습니다.")
}


myBookManager.removeBook(name: "죄와벌")
print(myBookManager.showAllBooks())
print("number of books : \(myBookManager.countBooks())")
