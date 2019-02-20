//
//  BookManager.swift
//  BookManager
//
//  Created by 흠냐방구 on 24/10/2018.
//  Copyright © 2018 흠냐방구. All rights reserved.


import Foundation

class BookManager{
    var bookList = [Book]()
    
    func registerBook(bookObject:Book) {
        bookList += [bookObject]
    }
    
    
    func showAllBook() -> String {
        var strTemp = ""    // 이건 초기화 해주는 거임
        for bookTemp in bookList {
            strTemp += "Name : \(bookTemp.name!)\n"
            strTemp += "Genre : \(bookTemp.genre!)\n"   // unwrapping 해줘야 코드
                                                        // 제대로 작동함.
            strTemp += "Author : \(bookTemp.author!)\n"
            strTemp += "------------------\n"
        }
        return strTemp
        

    }
    
    func countBooks() -> Int {
        return bookList.count   // 배열의 개수를 가져오는 코드
        
    }
    
    func searchBook(name:String) -> String?{
        var strTemp = ""
        for bookTemp in bookList {
            if bookTemp.name == name {
                strTemp += "Name : \(bookTemp.name!)\n"
                strTemp += "Genre : \(bookTemp.genre!)\n"   // unwrapping 해줘야
                                                            // 코드 제대로 작동함.
                strTemp += "Author : \(bookTemp.author!)\n"
                strTemp += "------------------\n"
                return strTemp
            }
        }
        return nil
    }
    
    func removeBook(name:String){
        for (index, value) in bookList.enumerated() {
            if value.name == name {
                bookList.remove(at: index)
        }

    }
}
}
