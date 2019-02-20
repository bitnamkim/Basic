//
//  main.swift
//  BookManager_Review
//
//  Created by 흠냐방구 on 09/11/2018.
//  Copyright © 2018 흠냐방구. All rights reserved.
//

import Foundation

var book1 = Book(name: "햄릿", genre: "비극", author:"셰익스피어")
var book2 = Book(name: "누구를 위하여 종을 울리나", genre: "전쟁소설", author: "해밍웨이")
var book3 = Book(name: "죄와벌", genre: "사실주의", author:"톨스토이")

var myBookManager = BookManager()

myBookManager.registerBook(bookObject: book1)
myBookManager.registerBook(bookObject: book2)
myBookManager.registerBook(bookObject: book3)

print(myBookManager.showAllBooks())
print("Number of Books : \(myBookManager.countBooks())")

if let searchResult = myBookManager.searchBook(name: "햄릿"){
    print("\(searchResult)")
} else {
    print("찾으시는 책이 없습니다.")
    
}

myBookManager.remove(name: "죄와벌")
print(myBookManager.showAllBooks())
print("Number of Books : \(myBookManager.countBooks())")



