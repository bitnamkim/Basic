//
//  BookManager.swift
//  VisualBookManager_Dec09
//
//  Created by 흠냐방구 on 09/12/2018.
//  Copyright © 2018 흠냐방구. All rights reserved.
//

import Foundation

var bookList = [Book]()
// 오브젝트화 해준거임. 언제라도 쓸 수 있게.

class BookManager {
    func registerBook(bookObject:Book){
        bookList += [bookObject]
}
    func countBooks() -> Int {
        return bookList.count
    }

    func searchBook(title:String) -> String?{
        var strTemp = ""
        for bookTemp in bookList {
            if bookTemp.title == title {
                // 찾는 책 이름이 같다면~
                strTemp += "Title : \(bookTemp.title!)\n"
                strTemp += "Author : \(bookTemp.author!)\n"
                strTemp += "Genre : \(bookTemp.genre!)\n"
                strTemp += "=======================\n"
                return strTemp
    }
}
    return nil
}

    func removeBook(title:String){
        for (index, value) in bookList.enumerated() {
            if value.title == title {
                // ==는 비교. =는 값을 할당.
                bookList.remove(at: index)
        }
        
    } 
    
}
    func showAllBooks() -> String {
        var strTemp = ""
        for bookTemp in bookList {
            strTemp += "Title: \(bookTemp.title!)\n"
            strTemp += "Author : \(bookTemp.author!)\n"
            strTemp += "Genre : \(bookTemp.genre!)\n"
            strTemp += "=======================\n"
    }
    return strTemp
}


}
