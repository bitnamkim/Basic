//
//  BookManager.swift
//  BookManager_복습
//
//  Created by 흠냐방구 on 30/10/2018.
//  Copyright © 2018 흠냐방구. All rights reserved.
//

import Foundation

class BookManager {
    var bookList = [Book]()     //Book 이라는 데이터 타입이 들어가는 비어있는 배열을 만든거임. 가변배열이라서 늘어났다 줄어들었다함.
    
    func registerBook(bookObject:Book) {        // bookObject에 배열을 파라미터로 넣은거임.
        bookList += [bookObject]                // 배열에다가 book에 넘어오는 객체를 bookList에 계속 쌓을거라고 함. 파라미터를 추가하
                                                // 는거라고함. 이해가 잘 안됨.
    }
    
    func showAllBooks() -> String {             // for문으로 배열에 있는 structure들이 제대로 출력되나 찍어보는거임.
        var strTemp = ""
        for bookTemp in bookList{
            strTemp += "Name :   \(bookTemp.name)\n"
            strTemp += "Genre:   \(bookTemp.genre)\n"
            strTemp += "Author : \(bookTemp.author)\n"
            strTemp += "---------------------\n"
        
 }
        return strTemp
    }

    func countBooks() -> Int {      // 배열의 갯수를 가져오는 함수
        return bookList.count
}

    func searchBook(name:String) -> String? {    // ? 넣어서 optional value 포함시켜줌.
        var strTemp = ""
        for bookTemp in bookList {
            if bookTemp.name == name {
                strTemp += "Name :   \(bookTemp.name)\n"
                strTemp += "Genre:   \(bookTemp.genre)\n"
                strTemp += "Author : \(bookTemp.author)\n"
                strTemp += "---------------------\n"
                return strTemp
            }
        }
        return nil

}

    func removeBook(name:String){
        for (index, value) in bookList.enumerated() {
            if value.name == name {             // value에는 book struct 들이 넘어올거임. 넘어오는 name이 파라미터의 name
                                                // 과 인덱스를 지우는거임.
                bookList.remove(at: index)
                
            }
            
        }

}



}
