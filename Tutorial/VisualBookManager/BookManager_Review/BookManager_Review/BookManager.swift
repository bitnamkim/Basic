//
//  BookManager.swift
//  BookManager_Review
//
//  Created by 흠냐방구 on 09/11/2018.
//  Copyright © 2018 흠냐방구. All rights reserved.
//

import Foundation

class BookManager{
    var bookList = [Book]()
    //bookList라는 변수에 배열 Book을 선언
    func registerBook(bookObject:Book){
        bookList += [bookObject]
        // 책을 등록하는 메써드 생성. 파라미터는 Book을 넣을거임.
        // bookList에 파라미터 Book을 += 해줌.
    }
    
    func showAllBooks() -> String {
        var strTemp = ""
        for bookTemp in bookList{
            strTemp += "Name : \(bookTemp.name!)\n"
            strTemp += "Genre : \(bookTemp.genre!)\n"
            strTemp += "Author : \(bookTemp.author!)\n"
            strTemp += "---------------\n"
        }
        return strTemp
    }
    func countBooks() -> Int{
        return bookList.count
    }
    
    func searchBook(name:String) -> String? {
        var strTemp = ""
        for bookTemp in bookList {
            if bookTemp.name == name {
                strTemp += "Name : \(bookTemp.name!)\n"
                strTemp += "Genre : \(bookTemp.genre!)\n"
                strTemp += "Author : \(bookTemp.author!)\n"
                return strTemp
            }
        }
        return nil      // 메써드 안에서 작동해야하므로 }} 2개 뒤에 이 코드 써줌.
}
    func remove(name:String) {
        for (index, value) in bookList.enumerated() {
            if value.name == name{
                bookList.remove(at: index)
            }
        }
    }
}
